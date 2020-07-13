view: tracking_aerial {
  sql_table_name: public.tracking_aerial ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: aereo_awb_list_id {
    type: number
    sql: ${TABLE}."aereo_awb_list_id" ;;
  }

  dimension: airline_id {
    type: number
    sql: ${TABLE}."airline_id" ;;
  }

  dimension_group: archived {
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
    sql: ${TABLE}."archived_at" ;;
  }

  dimension: awb {
    type: string
    sql: ${TABLE}."awb" ;;
  }

  dimension: comments {
    type: string
    sql: ${TABLE}."comments" ;;
  }

  dimension: commodities {
    type: string
    sql: ${TABLE}."commodities" ;;
  }

  dimension: consignee_id {
    type: number
    sql: ${TABLE}."consignee_id" ;;
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

  dimension: destination_airport_id {
    type: number
    sql: ${TABLE}."destination_airport_id" ;;
  }

  dimension_group: eta {
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
    sql: ${TABLE}."eta" ;;
  }

  dimension_group: ets {
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
    sql: ${TABLE}."ets" ;;
  }

  dimension_group: executed {
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
    sql: ${TABLE}."executed_at" ;;
  }

  dimension: first_event_only {
    type: yesno
    sql: ${TABLE}."first_event_only" ;;
  }

  dimension: free_load {
    type: yesno
    sql: ${TABLE}."free_load" ;;
  }

  dimension_group: hawb_emit {
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
    sql: ${TABLE}."hawb_emit_date" ;;
  }

  dimension: hwb {
    type: string
    sql: ${TABLE}."hwb" ;;
  }

  dimension: incoterm_id {
    type: number
    sql: ${TABLE}."incoterm_id" ;;
  }

  dimension: internal_status {
    type: number
    sql: ${TABLE}."internal_status" ;;
  }

  dimension: origin_airport_id {
    type: number
    sql: ${TABLE}."origin_airport_id" ;;
  }

  dimension: reference {
    type: string
    sql: ${TABLE}."reference" ;;
  }

  dimension: token {
    type: string
    sql: ${TABLE}."token" ;;
  }

  dimension: tracking_aerial_status_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."tracking_aerial_status_id" ;;
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
    drill_fields: [id, tracking_aerial_status.id]
  }
}
