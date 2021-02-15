view: consumo_customers_excel {
  sql_table_name: customers.consumo_customers_excel ;;

  dimension: customer_id {
    type: number
    sql: ${TABLE}.customer_id ;;
  }

  dimension: customer_plan_id {
    type: number
    sql: ${TABLE}.customer_plan_id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: plano {
    type: string
    sql: ${TABLE}.plano ;;
  }

  dimension: qtd_excel {
    type: number
    sql: ${TABLE}.qtd_excel ;;
  }

  dimension: service_id {
    type: number
    sql: ${TABLE}.service_id ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }

  measure: sum_qtd_excel {
    type: sum
    sql: ${qtd_excel};;
  }
}
