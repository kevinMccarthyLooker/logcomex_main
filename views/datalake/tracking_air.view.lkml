view: tracking_air {
  derived_table: {
    sql: SELECT * FROM tracking.air_tracking_gold
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

  dimension: user_id {
    type: number
    sql: ${TABLE}.user_id ;;
  }

  dimension: tracking_aerial_status_id {
    type: number
    sql: ${TABLE}.tracking_aerial_status_id ;;
  }

  dimension: reference {
    type: string
    sql: ${TABLE}.reference ;;
  }

  dimension: token {
    type: string
    sql: ${TABLE}.token ;;
  }

  dimension_group: archived_at {
    type: time
    sql: ${TABLE}.archived_at ;;
  }

  dimension: hawb_emit_date {
    type: date
    sql: ${TABLE}.hawb_emit_date ;;
  }

  dimension: awb {
    type: string
    sql: ${TABLE}.awb ;;
  }

  dimension: hwb {
    type: string
    sql: ${TABLE}.hwb ;;
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

  dimension: first_event_only {
    type: string
    sql: ${TABLE}.first_event_only ;;
  }

  dimension: internal_status {
    type: number
    sql: ${TABLE}.internal_status ;;
  }

  dimension_group: executed_at {
    type: time
    sql: ${TABLE}.executed_at ;;
  }

  dimension: consignee_id {
    type: number
    sql: ${TABLE}.consignee_id ;;
  }

  dimension: free_load {
    type: string
    sql: ${TABLE}.free_load ;;
  }

  dimension: aereo_awb_list_id {
    type: number
    sql: ${TABLE}.aereo_awb_list_id ;;
  }

  dimension: airline_id {
    type: number
    sql: ${TABLE}.airline_id ;;
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

  dimension: origin_airport_id {
    type: number
    sql: ${TABLE}.origin_airport_id ;;
  }

  dimension: destination_airport_id {
    type: number
    sql: ${TABLE}.destination_airport_id ;;
  }

  dimension: commodities {
    type: string
    sql: ${TABLE}.commodities ;;
  }

  dimension: comments {
    type: string
    sql: ${TABLE}.comments ;;
  }

  dimension: is_api {
    type: string
    sql: ${TABLE}.is_api ;;
  }

  dimension_group: robot_updated_at {
    type: time
    sql: ${TABLE}.robot_updated_at ;;
  }

  dimension: shipper_name {
    type: string
    sql: ${TABLE}.shipper_name ;;
  }

  dimension: cargo_unavailability {
    type: string
    sql: ${TABLE}.cargo_unavailability ;;
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

  dimension: status_id {
    type: number
    sql: ${TABLE}.status_id ;;
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
      user_id,
      tracking_aerial_status_id,
      reference,
      token,
      archived_at_time,
      hawb_emit_date,
      awb,
      hwb,
      created_at_time,
      updated_at_time,
      deleted_at_time,
      first_event_only,
      internal_status,
      executed_at_time,
      consignee_id,
      free_load,
      aereo_awb_list_id,
      airline_id,
      incoterm_id,
      ets,
      eta,
      origin_airport_id,
      destination_airport_id,
      commodities,
      comments,
      is_api,
      robot_updated_at_time,
      shipper_name,
      cargo_unavailability,
      id0,
      name,
      cnpj,
      address,
      phones,
      site,
      status_id,
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
