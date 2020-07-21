view: tracking {
  sql_table_name: public.tracking ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
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

  dimension_group: bl_emit {
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
    sql: ${TABLE}."bl_emit_date" ;;
  }

  dimension: bl_number {
    type: string
    sql: ${TABLE}."bl_number" ;;
  }

  dimension_group: ce_emit {
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
    sql: ${TABLE}."ce_emit_date" ;;
  }

  dimension: ce_number {
    type: number
    sql: ${TABLE}."ce_number" ;;
  }

  dimension: comments {
    type: string
    sql: ${TABLE}."comments" ;;
  }

  dimension: commodities {
    type: string
    sql: ${TABLE}."commodities" ;;
  }

  dimension_group: completed {
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
    sql: ${TABLE}."completed_at" ;;
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

  dimension: custom_last_status {
    type: yesno
    sql: ${TABLE}."custom_last_status" ;;
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

  dimension: destination_port_id {
    type: number
    sql: ${TABLE}."destination_port_id" ;;
  }

  dimension_group: di_desembaracada {
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
    sql: ${TABLE}."di_desembaracada_date" ;;
  }

  dimension: di_id {
    type: number
    sql: ${TABLE}."di_id" ;;
  }

  dimension: dta_id {
    type: number
    sql: ${TABLE}."dta_id" ;;
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

  dimension: has_error {
    type: yesno
    sql: ${TABLE}."has_error" ;;
  }

  dimension: incoterm_id {
    type: number
    sql: ${TABLE}."incoterm_id" ;;
  }

  dimension: internal_status_id {
    type: number
    sql: ${TABLE}."internal_status_id" ;;
  }

  dimension: is_master {
    type: yesno
    sql: ${TABLE}."is_master" ;;
  }

  dimension_group: load_presence {
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
    sql: ${TABLE}."load_presence_date" ;;
  }

  dimension_group: locked {
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
    sql: ${TABLE}."locked_at" ;;
  }

  dimension_group: manifest {
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
    sql: ${TABLE}."manifest_date" ;;
  }

  dimension_group: notified {
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
    sql: ${TABLE}."notified_at" ;;
  }

  dimension_group: operation {
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
    sql: ${TABLE}."operation_date" ;;
  }

  dimension: origin_port_id {
    type: number
    sql: ${TABLE}."origin_port_id" ;;
  }

  dimension: reference {
    type: string
    sql: ${TABLE}."reference" ;;
  }

  dimension_group: release_loading {
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
    sql: ${TABLE}."release_loading_date" ;;
  }

  dimension: shipowner_id {
    type: number
    sql: ${TABLE}."shipowner_id" ;;
  }

  dimension: status_id {
    type: number
    sql: ${TABLE}."status_id" ;;
  }

  dimension: token {
    type: string
    sql: ${TABLE}."token" ;;
  }

  dimension: tracking_robot_id {
    type: number
    sql: ${TABLE}."tracking_robot_id" ;;
  }

  dimension: treated_bl_number {
    type: string
    sql: ${TABLE}."treated_bl_number" ;;
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
    drill_fields: [id]
  }
}
