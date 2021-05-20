view: certificate_control {
  sql_table_name: public.certificate_control ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: certificate_id {
    type: number
    sql: ${TABLE}."certificate_id" ;;
  }

  dimension: cert_id {
    type: number
    sql: ${TABLE}."cert_id" ;;
  }

  dimension: certificado_id {
    type: number
    sql: ${TABLE}."certificado_id" ;;
  }

  dimension: status {
    type: number
    sql: ${TABLE}."status" ;;
  }

  dimension: status_message {
    type: string
    sql: ${TABLE}."status_message" ;;
  }

  dimension: filename {
    type: string
    sql: ${TABLE}."filename" ;;
  }

  dimension: file_hash {
    type: string
    sql: ${TABLE}."file_hash" ;;
  }

  dimension: password {
    type: string
    sql: ${TABLE}."password" ;;
  }

  dimension: owner {
    type: string
    sql: ${TABLE}."owner" ;;
  }

  dimension: owner_cpf {
    type: string
    sql: ${TABLE}."owner_cpf" ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}."url" ;;
  }

  dimension: mercante_access {
    type: yesno
    sql: ${TABLE}."mercante_access" ;;
  }

  dimension: siscarga_access {
    type: yesno
    sql: ${TABLE}."siscarga_access" ;;
  }

  dimension: transit_access {
    type: yesno
    sql: ${TABLE}."transit_access" ;;
  }

  dimension: profile {
    type: string
    sql: ${TABLE}."profile" ;;
  }

  dimension: token {
    type: string
    sql: ${TABLE}."token" ;;
  }

  dimension_group: deleted_at {
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

  dimension: customer_id {
    type: number
    sql: ${TABLE}."customer_id" ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}."user_id" ;;
  }

  dimension_group: valid_until {
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
    sql: ${TABLE}."valid_until" ;;
  }

  dimension_group: access_updated_at {
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
    sql: ${TABLE}."access_updated_at" ;;
  }

  dimension: file_size {
    type: number
    sql: ${TABLE}."file_size" ;;
  }

  dimension_group: profile_verified_at {
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
    sql: ${TABLE}."profile_verified_at" ;;
  }

  dimension: siscomex_consult_di {
    type: yesno
    sql: ${TABLE}."siscomex_consult_di" ;;
  }

  dimension: siscomex_register_di {
    type: yesno
    sql: ${TABLE}."siscomex_register_di" ;;
  }

  dimension: mercante_manifest {
    type: yesno
    sql: ${TABLE}."mercante_manifest" ;;
  }

  dimension: siscarga_cargo_delivery {
    type: yesno
    sql: ${TABLE}."siscarga_cargo_delivery" ;;
  }

  measure: count {
    type: count
    drill_fields: [id,created_at_date,owner_cpf,owner,profile,valid_until_date,customer_id]
  }

}
