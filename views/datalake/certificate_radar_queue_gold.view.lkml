view: certificate_radar_queue_gold {
  derived_table: {
    sql: SELECT * FROM comex_analytics_teste.certificate_radar_queue_gold
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: cert_id {
    type: number
    sql: ${TABLE}.cert_id ;;
  }

  dimension_group: processed_at {
    type: time
    sql: ${TABLE}.processed_at ;;
  }

  dimension: successfully_processed {
    type: string
    sql: ${TABLE}.successfully_processed ;;
  }

  dimension: error_message {
    type: string
    sql: ${TABLE}.error_message ;;
  }

  dimension: total_consignees_found {
    type: number
    sql: ${TABLE}.total_consignees_found ;;
  }

  dimension_group: created_at {
    type: time
    sql: ${TABLE}.created_at ;;
  }

  dimension_group: updated_at {
    type: time
    sql: ${TABLE}.updated_at ;;
  }

  dimension: access_error {
    type: string
    sql: ${TABLE}.access_error ;;
  }

  dimension: tries {
    type: number
    sql: ${TABLE}.tries ;;
  }

  dimension: is_priority {
    type: string
    sql: ${TABLE}.is_priority ;;
  }

  dimension: cnpj_consignee {
    type: string
    sql: ${TABLE}.cnpj_consignee ;;
  }

  dimension_group: deleted_consignee {
    type: time
    sql: ${TABLE}.deleted_consignee ;;
  }

  dimension: id_radar {
    type: number
    sql: ${TABLE}.id_radar ;;
  }

  dimension: id_radar_certificate {
    type: number
    sql: ${TABLE}.id_radar_certificate ;;
  }

  dimension: id_radar_consignee {
    type: number
    sql: ${TABLE}.id_radar_consignee ;;
  }

  dimension_group: deleted_radar {
    type: time
    sql: ${TABLE}.deleted_radar ;;
  }

  dimension_group: deleted_certificate {
    type: time
    sql: ${TABLE}.deleted_certificate ;;
  }

  dimension: certificate_valid {
    type: date
    sql: ${TABLE}.certificate_valid ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: cpf {
    type: string
    sql: ${TABLE}.cpf ;;
  }

  dimension: id_customer {
    type: number
    sql: ${TABLE}.id_customer ;;
  }

  dimension: name_customer {
    type: string
    sql: ${TABLE}.name_customer ;;
  }

  dimension: cnpj_customer {
    type: string
    sql: ${TABLE}.cnpj_customer ;;
  }

  dimension_group: deleted_customer {
    type: time
    sql: ${TABLE}.deleted_customer ;;
  }

  set: detail {
    fields: [
      id,
      cert_id,
      processed_at_time,
      successfully_processed,
      error_message,
      total_consignees_found,
      created_at_time,
      updated_at_time,
      access_error,
      tries,
      is_priority,
      cnpj_consignee,
      deleted_consignee_time,
      id_radar,
      id_radar_certificate,
      id_radar_consignee,
      deleted_radar_time,
      deleted_certificate_time,
      certificate_valid,
      name,
      cpf,
      id_customer,
      name_customer,
      cnpj_customer,
      deleted_customer_time
    ]
  }

  ##======================================================
  ## Campos adicionados


  measure: created_at_max {
    type: date
    sql: MAX(${created_at_raw}) ;;
    convert_tz: no
  }

  measure: updated_at_max {
    type: date_minute
    sql: MAX ${TABLE}.updated_at ;;
  }

  measure: processed_at_max {
    type: date_minute
    sql: MAX ${TABLE}.processed_at ;;
  }

  measure: created_at_min {
    type: date_minute
    sql: MIN ${TABLE}.created_at ;;
  }

  measure: updated_at_min {
    type: date_minute
    sql: MIN ${TABLE}.updated_at ;;
  }

  measure: processed_at_min {
    type: date_minute
    sql: MIN ${TABLE}.processed_at ;;
  }

  measure: created_at_dif {
    type: date_minute
    sql: ((MAX ${TABLE}."created_at") - (MIN ${TABLE}."created_at"));;
  }

  measure: updated_at_dif {
    type: date_minute
    sql: ((MAX ${TABLE}."update_at_max" -  (MIN ${TABLE}."update_at_max"));;
  }

  measure: processed_at_dif {
    type: date_minute
    sql: ((MAX ${TABLE}."processed_at") -  (MIN ${TABLE}."processed_at"));;
  }
}
