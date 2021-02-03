view: di_control_pu_token {
  sql_table_name: public.di_control_pu_token ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: di_control_id {
    type: number
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

  dimension: token {
    type: string
    sql: ${TABLE}."token" ;;
  }

  dimension: proxy {
    type: string
    sql: ${TABLE}."proxy" ;;
  }

  dimension: message {
    type: string
    sql: ${TABLE}."message" ;;
  }

  dimension: status {
    type: number
    sql: ${TABLE}."status" ;;
  }

  dimension: tries {
    type: number
    sql: ${TABLE}."tries" ;;
  }

  dimension: created_today {
    type: yesno
    sql: case when ${TABLE}."created_at" >= current_date then true else false end;;
  }

  dimension_group: created_at {
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

  dimension_group: updated_at {
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

  dimension: cert_id {
    type: number
    sql: ${TABLE}."cert_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
