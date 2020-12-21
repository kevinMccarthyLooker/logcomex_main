view: filter_history {
  sql_table_name: public.filter_history ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
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

  dimension: customer_id {
    type: number
    sql: ${TABLE}."customer_id" ;;
  }

  dimension: filters {
    type: string
    sql: ${TABLE}."filters" ;;
  }

  dimension: month {
    type: string
    sql: ${TABLE}."month" ;;
  }

  dimension: service_id {
    type: number
    sql: ${TABLE}."service_id" ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}."source" ;;
  }

  dimension: source_hash {
    type: string
    sql: ${TABLE}."source_hash" ;;
  }

  dimension: total_lines {
    type: number
    sql: ${TABLE}."total_lines" ;;
  }

  dimension: debited {
    type: yesno
    sql: ${TABLE}."debited" ;;
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

  dimension: user_id {
    type: number
    sql: ${TABLE}."user_id" ;;
  }

  dimension: year {
    type: string
    sql: ${TABLE}."year" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }

  measure: count_consulta {
    type: count_distinct
    sql: ${source_hash} ;;
    drill_fields: [id]
  }

  measure: count_consulta_expo {
    type: count_distinct
    filters: [service_id: "21"]
    sql: ${source_hash} ;;
    drill_fields: [id]
  }

  measure: count_consulta_last_30_days {
    type: count_distinct
    filters: [created_date: "30 days"]
    sql: ${source_hash} ;;
    drill_fields: [id]
  }

  measure: count_consulta_this_month {
    type: count_distinct
    filters: [created_date: "this month"]
    sql: ${source_hash} ;;
    drill_fields: [id]
  }

  measure: count_consulta_6_months {
    type: count_distinct
    filters: [created_date: "6 months"]
    sql: ${source_hash} ;;
    drill_fields: [id]
  }

  measure: min_created{
    type: date
    sql: min(${created_raw}) ;;
    convert_tz: no
  }

}
