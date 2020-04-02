view: customer {
  sql_table_name: public.customer ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: address {
    type: string
    sql: ${TABLE}."address" ;;
  }

  dimension: api_key {
    type: string
    sql: ${TABLE}."api_key" ;;
  }

  dimension: cnpj {
    type: string
    sql: ${TABLE}."cnpj" ;;
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

  dimension: custom_hex_color {
    type: string
    sql: ${TABLE}."custom_hex_color" ;;
  }

  dimension: custom_logo {
    type: string
    sql: ${TABLE}."custom_logo" ;;
  }

  dimension: custom_name {
    type: string
    sql: ${TABLE}."custom_name" ;;
  }

  dimension: customer_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."customer_type_id" ;;
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

  dimension: email_notify_disabled {
    type: yesno
    sql: ${TABLE}."email_notify_disabled" ;;
  }

  dimension: email_notify_hour {
    type: number
    sql: ${TABLE}."email_notify_hour" ;;
  }

  dimension: email_notify_immediate {
    type: yesno
    sql: ${TABLE}."email_notify_immediate" ;;
  }

  dimension: email_reply_to {
    type: string
    sql: ${TABLE}."email_reply_to" ;;
  }

  dimension: executive_id {
    type: number
    sql: ${TABLE}."executive_id" ;;
  }

  dimension: fake_customer {
    type: yesno
    sql: ${TABLE}."fake_customer" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."name" ;;
  }

  dimension: pay_day {
    type: number
    sql: ${TABLE}."pay_day" ;;
  }

  dimension: phones {
    type: string
    sql: ${TABLE}."phones" ;;
  }

  dimension: site {
    type: string
    sql: ${TABLE}."site" ;;
  }

  dimension: slug {
    type: string
    sql: ${TABLE}."slug" ;;
  }

  dimension: status_id {
    type: number
    sql: ${TABLE}."status_id" ;;
  }

  dimension: tracking_aerial_days_to_archive {
    type: number
    sql: ${TABLE}."tracking_aerial_days_to_archive" ;;
  }

  dimension: tracking_maritime_days_to_archive {
    type: number
    sql: ${TABLE}."tracking_maritime_days_to_archive" ;;
  }

  dimension: tracking_processed_loads {
    type: yesno
    sql: ${TABLE}."tracking_processed_loads" ;;
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
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      name
    ]
  }
}
