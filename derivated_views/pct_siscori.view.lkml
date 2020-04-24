view: pct_siscori {
  derived_table: {
    sql: SELECT anomes,
            count(sel_siscori.num_ord) as num_siscori
     FROM (
             SELECT DISTINCT anomes,
                             num_ord
             FROM di_commodities
             GROUP BY 1, 2
             ORDER BY 1, 2) as sel_siscori
GROUP BY 1
 ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: anomes {
    type: number
    label: "Ano Mês"
    sql: ${TABLE}."anomes" ;;
  }

  dimension: num_siscori {
    type: number
    label: "Siscori"
    sql: ${TABLE}."num_siscori" ;;
  }

  set: detail {
    fields: [anomes, num_siscori]
  }
}
