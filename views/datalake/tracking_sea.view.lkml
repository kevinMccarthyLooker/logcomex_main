view: tracking_sea {
  derived_table: {
    sql: SELECT * FROM tracking.sea_tracking_gold
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

  dimension: customer_id {
    type: number
    sql: ${TABLE}.customer_id ;;
  }

  dimension_group: archived_at {
    type: time
    sql: ${TABLE}.archived_at ;;
  }

  dimension: status_id {
    type: number
    sql: ${TABLE}.status_id ;;
  }

  dimension: bl_number {
    type: string
    sql: ${TABLE}.bl_number ;;
  }

  dimension: ce_number {
    type: number
    sql: ${TABLE}.ce_number ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.user_id ;;
  }

  dimension_group: created_at {
    type: time
    sql: ${TABLE}.created_at ;;
  }

  dimension_group: updated_at {
    type: time
    sql: ${TABLE}.updated_at ;;
  }

  dimension_group: deleted_at {
    type: time
    sql: ${TABLE}.deleted_at ;;
  }

  dimension: reference {
    type: string
    sql: ${TABLE}.reference ;;
  }

  dimension: token {
    type: string
    sql: ${TABLE}.token ;;
  }

  dimension: bl_emit_date {
    type: date
    sql: ${TABLE}.bl_emit_date ;;
  }

  dimension: ce_emit_date {
    type: date
    sql: ${TABLE}.ce_emit_date ;;
  }

  dimension: manifest_date {
    type: date
    sql: ${TABLE}.manifest_date ;;
  }

  dimension: load_presence_date {
    type: date
    sql: ${TABLE}.load_presence_date ;;
  }

  dimension: release_loading_date {
    type: date
    sql: ${TABLE}.release_loading_date ;;
  }

  dimension: dta_id {
    type: number
    sql: ${TABLE}.dta_id ;;
  }

  dimension: di_id {
    type: number
    sql: ${TABLE}.di_id ;;
  }

  dimension: first_event_only {
    type: string
    sql: ${TABLE}.first_event_only ;;
  }

  dimension_group: executed_at {
    type: time
    sql: ${TABLE}.executed_at ;;
  }

  dimension: treated_bl_number {
    type: string
    sql: ${TABLE}.treated_bl_number ;;
  }

  dimension: consignee_id {
    type: number
    sql: ${TABLE}.consignee_id ;;
  }

  dimension: internal_status_id {
    type: number
    sql: ${TABLE}.internal_status_id ;;
  }

  dimension: free_load {
    type: string
    sql: ${TABLE}.free_load ;;
  }

  dimension_group: notified_at {
    type: time
    sql: ${TABLE}.notified_at ;;
  }

  dimension: custom_last_status {
    type: string
    sql: ${TABLE}.custom_last_status ;;
  }

  dimension: is_master {
    type: string
    sql: ${TABLE}.is_master ;;
  }

  dimension: shipowner_id {
    type: number
    sql: ${TABLE}.shipowner_id ;;
  }

  dimension: incoterm_id {
    type: number
    sql: ${TABLE}.incoterm_id ;;
  }

  dimension: ets {
    type: date
    sql: ${TABLE}.ets ;;
  }

  dimension: eta {
    type: date
    sql: ${TABLE}.eta ;;
  }

  dimension: origin_port_id {
    type: number
    sql: ${TABLE}.origin_port_id ;;
  }

  dimension: destination_port_id {
    type: number
    sql: ${TABLE}.destination_port_id ;;
  }

  dimension: commodities {
    type: string
    sql: ${TABLE}.commodities ;;
  }

  dimension: comments {
    type: string
    sql: ${TABLE}.comments ;;
  }

  dimension_group: locked_at {
    type: time
    sql: ${TABLE}.locked_at ;;
  }

  dimension_group: completed_at {
    type: time
    sql: ${TABLE}.completed_at ;;
  }

  dimension: has_error {
    type: string
    sql: ${TABLE}.has_error ;;
  }

  dimension: tracking_robot_id {
    type: number
    sql: ${TABLE}.tracking_robot_id ;;
  }

  dimension: operation_date {
    type: date
    sql: ${TABLE}.operation_date ;;
  }

  dimension_group: di_desembaracada_date {
    type: time
    sql: ${TABLE}.di_desembaracada_date ;;
  }

  dimension: shipper_name {
    type: string
    sql: ${TABLE}.shipper_name ;;
  }

  dimension: is_api {
    type: string
    sql: ${TABLE}.is_api ;;
  }

  dimension_group: robot_updated_at {
    type: time
    sql: ${TABLE}.robot_updated_at ;;
  }

  dimension: tracking_maritime_type_id {
    type: number
    sql: ${TABLE}.tracking_maritime_type_id ;;
  }

  dimension: id0 {
    type: number
    sql: ${TABLE}.id0 ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: cnpj {
    type: string
    sql: ${TABLE}.cnpj ;;
  }

  dimension: address {
    type: string
    sql: ${TABLE}.address ;;
  }

  dimension: phones {
    type: string
    sql: ${TABLE}.phones ;;
  }

  dimension: site {
    type: string
    sql: ${TABLE}.site ;;
  }

  dimension: status_id0 {
    type: number
    sql: ${TABLE}.status_id0 ;;
  }

  dimension: slug {
    type: string
    sql: ${TABLE}.slug ;;
  }

  dimension: customer_type_id {
    type: number
    sql: ${TABLE}.customer_type_id ;;
  }

  dimension_group: deleted_at0 {
    type: time
    sql: ${TABLE}.deleted_at0 ;;
  }

  dimension_group: created_at0 {
    type: time
    sql: ${TABLE}.created_at0 ;;
  }

  dimension_group: updated_at0 {
    type: time
    sql: ${TABLE}.updated_at0 ;;
  }

  dimension: pay_day {
    type: number
    sql: ${TABLE}.pay_day ;;
  }

  dimension: custom_hex_color {
    type: string
    sql: ${TABLE}.custom_hex_color ;;
  }

  dimension: custom_logo {
    type: string
    sql: ${TABLE}.custom_logo ;;
  }

  dimension: custom_name {
    type: string
    sql: ${TABLE}.custom_name ;;
  }

  dimension: email_notify_immediate {
    type: string
    sql: ${TABLE}.email_notify_immediate ;;
  }

  dimension: email_notify_hour {
    type: number
    sql: ${TABLE}.email_notify_hour ;;
  }

  dimension: email_reply_to {
    type: string
    sql: ${TABLE}.email_reply_to ;;
  }

  dimension: tracking_processed_loads {
    type: string
    sql: ${TABLE}.tracking_processed_loads ;;
  }

  dimension: api_key {
    type: string
    sql: ${TABLE}.api_key ;;
  }

  dimension: tracking_maritime_days_to_archive {
    type: number
    sql: ${TABLE}.tracking_maritime_days_to_archive ;;
  }

  dimension: tracking_aerial_days_to_archive {
    type: number
    sql: ${TABLE}.tracking_aerial_days_to_archive ;;
  }

  dimension: email_notify_disabled {
    type: string
    sql: ${TABLE}.email_notify_disabled ;;
  }

  dimension: executive_id {
    type: number
    sql: ${TABLE}.executive_id ;;
  }

  dimension: fake_customer {
    type: string
    sql: ${TABLE}.fake_customer ;;
  }

  dimension: blocked {
    type: string
    sql: ${TABLE}.blocked ;;
  }

  dimension: pld {
    type: string
    sql: ${TABLE}.pld ;;
  }

  set: detail {
    fields: [
      id,
      customer_id,
      archived_at_time,
      status_id,
      bl_number,
      ce_number,
      user_id,
      created_at_time,
      updated_at_time,
      deleted_at_time,
      reference,
      token,
      bl_emit_date,
      ce_emit_date,
      manifest_date,
      load_presence_date,
      release_loading_date,
      dta_id,
      di_id,
      first_event_only,
      executed_at_time,
      treated_bl_number,
      consignee_id,
      internal_status_id,
      free_load,
      notified_at_time,
      custom_last_status,
      is_master,
      shipowner_id,
      incoterm_id,
      ets,
      eta,
      origin_port_id,
      destination_port_id,
      commodities,
      comments,
      locked_at_time,
      completed_at_time,
      has_error,
      tracking_robot_id,
      operation_date,
      di_desembaracada_date_time,
      shipper_name,
      is_api,
      robot_updated_at_time,
      tracking_maritime_type_id,
      id0,
      name,
      cnpj,
      address,
      phones,
      site,
      status_id0,
      slug,
      customer_type_id,
      deleted_at0_time,
      created_at0_time,
      updated_at0_time,
      pay_day,
      custom_hex_color,
      custom_logo,
      custom_name,
      email_notify_immediate,
      email_notify_hour,
      email_reply_to,
      tracking_processed_loads,
      api_key,
      tracking_maritime_days_to_archive,
      tracking_aerial_days_to_archive,
      email_notify_disabled,
      executive_id,
      fake_customer,
      blocked,
      pld
    ]
  }
}
