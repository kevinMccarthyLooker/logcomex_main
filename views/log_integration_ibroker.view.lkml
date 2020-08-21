view: log_integration_ibroker {
  sql_table_name: public.log_integration_ibroker ;;
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

  dimension: description {
    type: string
    sql: ${TABLE}."description" ;;
  }

  dimension: execution_token {
    type: string
    sql: ${TABLE}."execution_token" ;;
  }

  dimension: has_error {
    type: yesno
    sql: ${TABLE}."has_error" ;;
  }

  dimension: is_robot_update {
    type: yesno
    sql: ${TABLE}."is_robot_update" ;;
  }

  dimension: payload {
    type: string
    sql: ${TABLE}."payload" ;;
  }

  dimension: type_tracking {
    type: string
    sql: ${TABLE}."type_tracking" ;;
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
