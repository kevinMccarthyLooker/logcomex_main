view: di_control_pu_addition {
  sql_table_name: public.di_control_pu_addition ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: addition_number {
    type: string
    sql: ${TABLE}."addition_number" ;;
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

  dimension: di_control_pu_id {
    type: number
    sql: ${TABLE}."di_control_pu_id" ;;
  }

  dimension: file_path {
    type: string
    sql: ${TABLE}."file_path" ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}."status" ;;
  }

  dimension: status_message {
    type: string
    sql: ${TABLE}."status_message" ;;
  }

  dimension: tries {
    type: number
    sql: ${TABLE}."tries" ;;
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
