view: consignee {
  sql_table_name: public.consignee ;;
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

  dimension: cnpj {
    type: string
    sql: ${TABLE}."cnpj" ;;
  }

  dimension: cpf {
    type: yesno
    sql: case when char_length(${TABLE}."cnpj") >11 then false else true end ;;
  }

  dimension: comments {
    type: string
    sql: ${TABLE}."comments" ;;
  }

  dimension: consignee_type_id {
    type: number
    sql: ${TABLE}."consignee_type_id" ;;
  }

  dimension: country_id {
    type: number
    sql: ${TABLE}."country_id" ;;
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

  dimension_group: dt_sync_history_done {
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
    sql: ${TABLE}."dt_sync_history_done" ;;
  }

  dimension_group: dt_sync_history_sart {
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
    sql: ${TABLE}."dt_sync_history_sart" ;;
  }

  dimension_group: dt_sync_mercante {
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
    sql: ${TABLE}."dt_sync_mercante" ;;
  }

  dimension_group: dt_sync_siscomex {
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
    sql: ${TABLE}."dt_sync_siscomex" ;;
  }

  dimension: ibroker_integration {
    type: yesno
    sql: ${TABLE}."ibroker_integration" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."name" ;;
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

  dimension: v2_cert_id {
    type: number
    sql: ${TABLE}."v2_cert_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, certificate_consignee_radar.count]
  }

  measure: count_distinct_cnpj {
    type: count_distinct
    filters: [cpf: "no"]
    sql: ${cnpj} ;;
  }
}
