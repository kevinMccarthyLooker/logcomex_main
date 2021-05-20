view: antaqxmaritimo_cab_emb {
  derived_table: {
    sql: select origem, mes,ano,sum(teu) as Teus_Antaq, (SELECT sum(teus) as Teus_Log
                                        from view_AntaqMaritimo
                                        where dtoperacao >='2020-01-01'
                                        and categoriacarga = 'N'
                                        and tptrafego != "0B"
                                        and cdportocarregamento = c.origem
                                        and LPAD(EXTRACT(MONTH FROM dtoperacao)::TEXT, 2, '0') = a.mes
                                        and extract(year from dtoperacao) = a.ano)
from antaq_carga c
inner join antaq_atracacao a on a.idatracacao = c.idatracacao
where c.tponave = 'CABOTAGEM'
and c.natucarga = 'CARGA CONTEINERIZADA'
and c.conteineest = 'CHEIO'
and length(origem) = 5
and sentido = 'EMBARCADOS'
group by  origem, mes,ano
order by ano,mes
 ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: origem {
    type: string
    sql: ${TABLE}."origem" ;;
  }

  dimension: mes {
    type: string
    sql: ${TABLE}."mes" ;;
  }

  dimension: ano {
    type: number
    value_format: "0"
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
    fields: [origem, mes, ano, teus_antaq, teus_log]
  }
}
