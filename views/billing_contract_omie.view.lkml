view: billing_contract_omie {
  sql_table_name: public.billing_contract_omie ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: billing_day {
    type: number
    sql: ${TABLE}."billing_day" ;;
  }

  dimension: billing_type {
    type: string
    sql: ${TABLE}."billing_type" ;;
  }

  dimension: contract_id {
    type: number
    sql: ${TABLE}."contract_id" ;;
  }

  dimension_group: billing_created {
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

  dimension: customer_api_relations_id {
    type: number
    sql: ${TABLE}."customer_api_relations_id" ;;
  }

  dimension_group: billing_end {
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
    sql: ${TABLE}."end_date" ;;
  }

  dimension_group: billing_start {
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
    sql: ${TABLE}."start_date" ;;
  }

  dimension: billing_status {
    type: string
    sql: ${TABLE}."status" ;;
  }

  dimension_group: billing_updated {
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

  measure: billing_count {
    type: count
    drill_fields: [id]
  }
}
