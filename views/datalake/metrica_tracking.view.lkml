view: metrica_tracking {
  sql_table_name: cs_risco_churn.metrica_tracking ;;

  dimension: customer_id {
    type: number
    sql: ${TABLE}.customer_id ;;
  }

  dimension: media_90_dias {
    type: number
    sql: ${TABLE}.media_90_dias ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: nota {
    type: number
    sql: ${TABLE}.nota ;;
  }

  dimension: percentage {
    type: number
    sql: ${TABLE}.percentage ;;
  }

  dimension: qtde_90_dias {
    type: number
    sql: ${TABLE}.qtde_90_dias ;;
  }

  dimension: qtde_ultimos_30_dias {
    type: number
    sql: ${TABLE}.qtde_ultimos_30_dias ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
