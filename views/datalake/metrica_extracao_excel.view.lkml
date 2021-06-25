view: metrica_extracao_excel {
  sql_table_name: cs_risco_churn.metrica_extracao_excel ;;

  dimension: consumo_excel {
    type: number
    sql: ${TABLE}.consumo_excel ;;
  }

  dimension: customer_id {
    type: number
    sql: ${TABLE}.customer_id ;;
  }

  dimension: customer_name {
    type: string
    sql: ${TABLE}.customer_name ;;
  }

  dimension_group: mes_consumo {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.mes_consumo ;;
  }

  dimension: percent_consumo {
    type: number
    sql: ${TABLE}.percent_consumo ;;
  }

  dimension: plano_excel {
    type: number
    sql: ${TABLE}.plano_excel ;;
  }

  dimension: service {
    type: string
    sql: ${TABLE}.service ;;
  }

  dimension: service_id {
    type: number
    sql: ${TABLE}.service_id ;;
  }

  measure: count {
    type: count
    drill_fields: [customer_name]
  }
}
