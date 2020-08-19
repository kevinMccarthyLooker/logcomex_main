view: excel_controller {
  sql_table_name: public.excel_controller ;;
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

  dimension: id_excel {
    type: string
    sql: concat(Extract(YEAR FROM ${TABLE}."created_at"),lpad(Extract(MONTH from ${TABLE}."created_at")::text, 2, '0'), ${TABLE}."customer_id") ;;

  }

  dimension: ano {
    type: string
    sql: REPLACE(date_part('year', ${TABLE}."created_at")::text, '.0', '' );;
  }

  dimension: mes {
    type: string
    sql: lpad(Extract(MONTH from ${TABLE}."created_at")::text, 2, '0') ;;
  }

  dimension: customer_id {
    type: number
    sql: ${TABLE}."customer_id" ;;
  }

  dimension_group: deleted {
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
    sql: ${TABLE}."deleted_at" ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}."email" ;;
  }

  dimension: excel_controller_status_id {
    type: number
    sql: ${TABLE}."excel_controller_status_id" ;;
  }

  dimension: generation_failure_reason {
    type: string
    sql: ${TABLE}."generation_failure_reason" ;;
  }

  dimension: generation_payload {
    type: string
    sql: ${TABLE}."generation_payload" ;;
  }

  dimension: server_link_download {
    type: string
    sql: ${TABLE}."server_link_download" ;;
  }

  dimension: service_id {
    type: number
    sql: ${TABLE}."service_id" ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}."source" ;;
  }

  dimension: token {
    type: string
    sql: ${TABLE}."token" ;;
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

  measure: count {
    type: count
    drill_fields: [id]
  }
}
