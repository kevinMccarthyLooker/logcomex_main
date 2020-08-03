view: follow_up {
  sql_table_name: public.follow_up ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: comment {
    type: string
    sql: ${TABLE}."comment" ;;
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

  dimension_group: date {
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
    sql: ${TABLE}."date_time" ;;
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

  dimension: emails_notify {
    type: yesno
    sql: ${TABLE}."emails_notify" ;;
  }

  dimension: follow_up_category_id {
    type: number
    sql: ${TABLE}."follow_up_category_id" ;;
  }

  dimension: tracking_aerial_id {
    type: number
    sql: ${TABLE}."tracking_aerial_id" ;;
  }

  dimension: tracking_aerial_status_id {
    type: number
    sql: ${TABLE}."tracking_aerial_status_id" ;;
  }

  dimension: tracking_id {
    type: number
    sql: ${TABLE}."tracking_id" ;;
  }

  dimension: tracking_status_id {
    type: number
    sql: ${TABLE}."tracking_status_id" ;;
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
