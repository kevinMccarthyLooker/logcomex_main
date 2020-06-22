view: pct_match_search {
  derived_table: {
    sql: SELECT anomes,
                qtde_total,
                qtde_com_match,
                cast( cast (qtde_com_match as NUMERIC)/ qtde_total AS NUMERIC(5,4)) as pct_match
         FROM (SELECT anomes,
               SUM(CASE WHEN tp_match IS NOT NULL THEN 1 ELSE 0 END) AS qtde_com_match,
               COUNT(*) AS qtde_total
               FROM "di_commodities"
               GROUP BY 1) AS sel_di
 ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: anomes {
    type: number
    value_format: "0"
    label: "Ano Mês"
    sql: ${TABLE}."anomes" ;;
  }

  dimension: qtde_total {
    type: number
    label: "Qtd Itens Total"
    sql: ${TABLE}."qtde_total" ;;
  }

  dimension: qtde_com_match {
    type: number
    label: "Qtd Itens Match"
    sql: ${TABLE}."qtde_com_match" ;;
  }

  dimension: pct_match {
    type: number
    label: "Pct Itens Match"
    sql: ${TABLE}."pct_match" ;;
  }

  set: detail {
    fields: [anomes, pct_match]
  }
}
