view: di_control_pu {
  sql_table_name: public.di_control_pu ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: cert_id {
    type: number
    sql: ${TABLE}."cert_id" ;;
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

  dimension: di_control_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."di_control_id" ;;
  }

  dimension: di_number {
    type: number
    sql: ${TABLE}."di_number" ;;
  }

  dimension: digit {
    type: number
    sql: ${TABLE}."digit" ;;
  }

  dimension: file_path {
    type: string
    sql: ${TABLE}."file_path" ;;
  }

  dimension: locked {
    type: yesno
    sql: ${TABLE}."locked" ;;
  }

  dimension: created_today {
    type: yesno
    sql: case when ${TABLE}."created_at" >= current_date then true else false end;;
  }

  dimension_group: processed_successfully {
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
    sql: ${TABLE}."processed_successfully_at" ;;
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

  dimension: used_ip {
    type: string
    sql: ${TABLE}."used_ip" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, di_control.id, di_control.server_name]
  }
}
