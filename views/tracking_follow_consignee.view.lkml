view: tracking_follow_consignee {
  sql_table_name: public.tracking_follow_consignee ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: all_destination_ports {
    type: yesno
    sql: ${TABLE}."all_destination_ports" ;;
  }

  dimension: all_origin_ports {
    type: yesno
    sql: ${TABLE}."all_origin_ports" ;;
  }

  dimension: all_shipowners {
    type: yesno
    sql: ${TABLE}."all_shipowners" ;;
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

  dimension: destination_port_id {
    type: number
    sql: ${TABLE}."destination_port_id" ;;
  }

  dimension: group_token {
    type: string
    sql: ${TABLE}."group_token" ;;
  }

  dimension: ignore_old_shipments {
    type: yesno
    sql: ${TABLE}."ignore_old_shipments" ;;
  }

  dimension: origin_port_id {
    type: number
    sql: ${TABLE}."origin_port_id" ;;
  }

  dimension: shipowner_id {
    type: number
    sql: ${TABLE}."shipowner_id" ;;
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
    drill_fields: [id]
  }
}
