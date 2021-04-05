view: captation_ctrl_gold {
  derived_table: {
    sql: SELECT * FROM comex_analytics_teste.captation_ctrl_gold
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: id_ctrl {
    type: number
    sql: ${TABLE}.id_ctrl ;;
  }

  dimension: customer_id {
    type: number
    sql: ${TABLE}.customer_id ;;
  }

  dimension: consignee_id {
    type: number
    sql: ${TABLE}.consignee_id ;;
  }

  dimension: certificate_id {
    type: number
    sql: ${TABLE}.certificate_id ;;
  }

  dimension: start_date_ctrl {
    type: date
    sql: ${TABLE}.start_date_ctrl ;;
  }

  dimension: end_date_ctrl {
    type: date
    sql: ${TABLE}.end_date_ctrl ;;
  }

  dimension: status_ctrl {
    type: number
    sql: ${TABLE}.status_ctrl ;;
  }

  dimension: status_message_ctrl {
    type: string
    sql: ${TABLE}.status_message_ctrl ;;
  }

  dimension_group: created_at_ctrl {
    type: time
    sql: ${TABLE}.created_at_ctrl ;;
  }

  dimension_group: updated_at_ctrl {
    type: time
    sql: ${TABLE}.updated_at_ctrl ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: file_hash {
    type: string
    sql: ${TABLE}.file_hash ;;
  }

  dimension: id_list {
    type: number
    sql: ${TABLE}.id_list ;;
  }

  dimension: di_captation_ctrl_id {
    type: number
    sql: ${TABLE}.di_captation_ctrl_id ;;
  }

  dimension: stat_date_list {
    type: date
    sql: ${TABLE}.stat_date_list ;;
  }

  dimension: end_date_list {
    type: date
    sql: ${TABLE}.end_date_list ;;
  }

  dimension: exceeded_limit {
    type: number
    sql: ${TABLE}.exceeded_limit ;;
  }

  dimension: proxy_used {
    type: string
    sql: ${TABLE}.proxy_used ;;
  }

  dimension: total_di {
    type: number
    sql: ${TABLE}.total_di ;;
  }

  dimension: status_list {
    type: number
    sql: ${TABLE}.status_list ;;
  }

  dimension: status_message_list {
    type: string
    sql: ${TABLE}.status_message_list ;;
  }

  dimension_group: created_at_list {
    type: time
    sql: ${TABLE}.created_at_list ;;
  }

  dimension_group: updated_at_list {
    type: time
    sql: ${TABLE}.updated_at_list ;;
  }

  dimension: tries {
    type: number
    sql: ${TABLE}.tries ;;
  }

  dimension: id_item {
    type: number
    sql: ${TABLE}.id_item ;;
  }

  dimension: di_captation_list_ctrl_id {
    type: number
    sql: ${TABLE}.di_captation_list_ctrl_id ;;
  }

  dimension: di_number {
    type: number
    sql: ${TABLE}.di_number ;;
  }

  dimension: digit {
    type: number
    sql: ${TABLE}.digit ;;
  }

  dimension: status_item {
    type: number
    sql: ${TABLE}.status_item ;;
  }

  dimension: status_message_item {
    type: string
    sql: ${TABLE}.status_message_item ;;
  }

  dimension: processed_at_item {
    type: date
    sql: ${TABLE}.processed_at_item ;;
  }

  dimension_group: created_at_item {
    type: time
    sql: ${TABLE}.created_at_item ;;
  }

  dimension_group: updated_at_item {
    type: time
    sql: ${TABLE}.updated_at_item ;;
  }

  dimension: cnpj_consignee {
    type: string
    sql: ${TABLE}.cnpj_consignee ;;
  }

  dimension_group: deleted_consignee {
    type: time
    sql: ${TABLE}.deleted_consignee ;;
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
      id_ctrl,
      customer_id,
      consignee_id,
      certificate_id,
      start_date_ctrl,
      end_date_ctrl,
      status_ctrl,
      status_message_ctrl,
      created_at_ctrl_time,
      updated_at_ctrl_time,
      type,
      file_hash,
      id_list,
      di_captation_ctrl_id,
      stat_date_list,
      end_date_list,
      exceeded_limit,
      proxy_used,
      total_di,
      status_list,
      status_message_list,
      created_at_list_time,
      updated_at_list_time,
      tries,
      id_item,
      di_captation_list_ctrl_id,
      di_number,
      digit,
      status_item,
      status_message_item,
      processed_at_item,
      created_at_item_time,
      updated_at_item_time,
      cnpj_consignee,
      deleted_consignee_time,
      deleted_radar_time,
      deleted_certificate_time,
      certificate_valid,
      name,
      cpf,
      name_customer,
      cnpj_customer,
      deleted_customer_time
    ]
  }

  ## ================ Campos adicionados ========================


}
