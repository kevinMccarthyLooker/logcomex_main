view: antaqxmaritimo_exp {
  derived_table: {
    indexes: ["origem"]
    persist_for: "24 hours"
    sql: select origem,  mes,ano,sum(teu) as Teus_Antaq, (SELECT sum(teus) as Teus_Log
                                        from view_AntaqMaritimo
                                        where dtoperacao >='2019-01-01'
                                        and categoriacarga = 'E'
                                        and cdportocarregamento like 'BR%'
                                        and cdportocarregamento = c.origem
                                        and LPAD(EXTRACT(MONTH FROM dtoperacao)::TEXT, 2, '0') = a.mes
                                        and extract(year from dtoperacao) = a.ano)
from antaq_carga c
inner join antaq_atracacao a on a.idatracacao = c.idatracacao
where c.tpoopercarga like 'LONGO CURSO EXPORTAÇÃO%'
and c.natucarga = 'CARGA CONTEINERIZADA'
and c.conteineest = 'CHEIO'
and length(origem) = 5
and origem like 'BR%'
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
    label: "Origem"
  }

  dimension: mes {
    type: string
    sql: ${TABLE}."mes" ;;
    label: "Mes"
  }

  dimension: ano {
    type: number
    value_format: "0"
    sql: ${TABLE}."ano" ;;
    label: "Ano"
  }

  measure: teus_antaq {
    type: sum
    sql: ${TABLE}."teus_antaq" ;;
    label: "Teus Antaq"
  }

  measure: teus_log {
    type: sum
    sql: ${TABLE}."teus_log" ;;
    label: "Teus Log"
  }

  set: detail {
    fields: [origem, mes, ano, teus_antaq, teus_log]
  }
}
