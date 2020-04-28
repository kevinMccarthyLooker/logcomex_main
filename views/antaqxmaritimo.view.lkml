view: antaqxmaritimo {
  derived_table: {
    indexes: ["dtoperacao"]
    sql: select destino,  mes,ano,sum(teu) as Teus_Antaq, (SELECT sum(teus) as Teus_Log
                                        from view_AntaqMaritimo
                                        where dtoperacao >='2019-01-01'
                                        and categoriacarga = 'I'
                                        and cdportodescarregamento = c.destino
                                        and LPAD(EXTRACT(MONTH FROM dtoperacao)::TEXT, 2, '0') = a.mes
                                        and extract(year from dtoperacao) = a.ano)
from antaq_carga c
inner join antaq_atracacao a on a.idatracacao = c.idatracacao
where c.tponave = 'LONGO CURSO'
and c.natucarga = 'CARGA CONTEINERIZADA'
and c.conteineest = 'CHEIO'
and length(destino) = 5
and destino like 'BR%'
and sentido = 'DESEMBARCADOS'
group by  destino, mes,ano
order by ano,mes
 ;;
    sql_trigger_value: SELECT FLOOR(EXTRACT(epoch from NOW())/(720*60*60)) ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: destino {
    type: string
    sql: ${TABLE}."destino" ;;
  }

  dimension: mes {
    type: string
    sql: ${TABLE}."mes" ;;
  }

  dimension: ano {
    type: number
    sql: ${TABLE}."ano" ;;
  }

  measure: teus_antaq {
    type: sum
    sql: ${TABLE}."teus_antaq" ;;
  }

  measure: teus_log {
    type: sum
    sql: ${TABLE}."teus_log" ;;
  }

  set: detail {
    fields: [destino, mes, ano, teus_antaq, teus_log]
  }
}
