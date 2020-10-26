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

  dimension: blocked {
    type: yesno
    sql: ${TABLE}."blocked" ;;
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

  dimension: executive_name {
    type: string
    sql:  CASE WHEN (customer.executive_id = 39) THEN 'Renan'
              WHEN (customer.executive_id = 44) THEN 'Irene'
              WHEN (customer.executive_id = 17) THEN 'Elaine'
              WHEN (customer.executive_id = 16) THEN 'Nickelson'
              WHEN (customer.executive_id = 37) THEN 'Jessica Moreira'
              WHEN (customer.executive_id = 52) THEN 'Mirele'
              WHEN (customer.executive_id = 59) THEN 'Valeria'
              WHEN (customer.executive_id = 50) THEN 'Jessica Steinheusen'
              WHEN (customer.executive_id = 10) THEN 'Andreza'
              WHEN (customer.executive_id = 4) THEN 'Helmuth'
              WHEN (customer.executive_id = 55) THEN 'Danilo'
              WHEN (customer.executive_id = 36) THEN 'Gabriela'
              WHEN (customer.executive_id = 72) THEN 'Sthephanny'
              WHEN (customer.executive_id = 71) THEN 'Rafael'
              WHEN (customer.executive_id = 75) THEN 'Maxi'
              WHEN (customer.executive_id = 76) THEN 'Leandro'
              WHEN (customer.executive_id = 11) THEN 'Laryssa Andrade'
              WHEN (customer.executive_id = 12) THEN 'Daniela Vasconcelos'
              WHEN (customer.executive_id = 41) THEN 'Caroline Bilibio'
              WHEN (customer.executive_id = 43) THEN 'Gilson Almeida'
              WHEN (customer.executive_id = 77) THEN 'Bruna Soares'
              when (customer.executive_id is null) then CAST ( customer.executive_id AS TEXT )
          else CAST ( customer.executive_id AS TEXT ) end
    ;;
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

  measure: count_distinc {
    type: count_distinct
    sql: ${customer.id} ;;
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      name,
      executive_name,
      report_log.count
    ]
  }
}
