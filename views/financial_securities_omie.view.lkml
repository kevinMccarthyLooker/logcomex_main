view: financial_securities_omie {
  sql_table_name: public.financial_securities_omie ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: amount_paid {
    type: number
    value_format_name: id
    sql: ${TABLE}."amount_paid" ;;
  }

  dimension_group: cancellation {
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
    sql: ${TABLE}."cancellation_date" ;;
  }

  dimension: category_code {
    type: string
    sql: ${TABLE}."category_code" ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."created_at" ;;
  }

  dimension_group: date_issue {
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
    sql: ${TABLE}."date_issue" ;;
  }

  dimension_group: forecast {
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
    sql: ${TABLE}."forecast_date" ;;
  }

  dimension_group: maturity {
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
    sql: ${TABLE}."maturity_date" ;;
  }

  dimension: number_installments {
    type: string
    sql: ${TABLE}."number_installments" ;;
  }

  dimension: number_security {
    type: string
    sql: ${TABLE}."number_security" ;;
  }

  dimension: number_service_order {
    type: string
    sql: ${TABLE}."number_service_order" ;;
  }

  dimension: open_value {
    type: number
    sql: ${TABLE}."open_value" ;;
  }

  dimension: order_id {
    type: number
    sql: ${TABLE}."order_id" ;;
  }

  dimension_group: register {
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
    sql: ${TABLE}."register_date" ;;
  }

  dimension: security_id {
    type: number
    sql: ${TABLE}."security_id" ;;
  }

  dimension: service_order_id {
    type: number
    sql: ${TABLE}."service_order_id" ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}."status" ;;
  }

  dimension: total_value {
    type: number
    sql: ${TABLE}."total_value" ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}."type" ;;
  }

  dimension_group: updated {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."updated_at" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
