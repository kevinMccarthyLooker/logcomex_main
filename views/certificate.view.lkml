view: certificate {
  sql_table_name: public.certificate ;;
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

  dimension: error_message {
    type: string
    sql: ${TABLE}."error_message" ;;
  }

  dimension: file {
    type: string
    sql: ${TABLE}."file" ;;
  }

  dimension: file_hash {
    type: string
    sql: ${TABLE}."file_hash" ;;
  }

  dimension: mercante_access {
    type: yesno
    sql: ${TABLE}."mercante_access" ;;
  }

  dimension: owner_cpf {
    type: string
    sql: ${TABLE}."owner_cpf" ;;
  }

  dimension: owner_name {
    type: string
    sql: ${TABLE}."owner_name" ;;
  }

  dimension: password {
    type: string
    sql: ${TABLE}."password" ;;
  }

  dimension: payload_puc {
    type: string
    sql: ${TABLE}."payload_puc" ;;
  }

  dimension: profile {
    type: string
    sql: ${TABLE}."profile" ;;
  }

  dimension_group: sent_invalid_mail {
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
    sql: ${TABLE}."sent_invalid_mail" ;;
  }

  dimension: siscarga_access {
    type: yesno
    sql: ${TABLE}."siscarga_access" ;;
  }

  dimension: siscomex_access {
    type: yesno
    sql: ${TABLE}."siscomex_access" ;;
  }

  dimension: token {
    type: string
    sql: ${TABLE}."token" ;;
  }

  dimension: transit_access {
    type: yesno
    sql: ${TABLE}."transit_access" ;;
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

  dimension: url {
    type: string
    sql: ${TABLE}."url" ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}."user_id" ;;
  }

  dimension: user_profile_customer_id {
    type: number
    sql: ${TABLE}."user_profile_customer_id" ;;
  }

  dimension: v2_id {
    type: number
    sql: ${TABLE}."v2_id" ;;
  }

  dimension_group: valid_until {
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
    sql: ${TABLE}."valid_until" ;;
  }

  dimension: is_valid {
    type: yesno
    sql: case when ${TABLE}."valid_until" >= current_date then true else false end;;
  }

  measure: count {
    type: count
    drill_fields: [id,created_date, owner_name, profile, valid_until_date]
  }
}
