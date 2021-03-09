view: shipowner_processing_queue {
  sql_table_name: public.shipowner_processing_queue ;;
  drill_fields: [id]

  dimension: id {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: shipowner_id {
    type: number
    sql: ${TABLE}."shipowner_id";;
  }

  dimension: bl {
    type: string
    sql: ${TABLE}."bl" ;;
  }

  dimension: tracking_bl_order_id {
    type: number
    sql: ${TABLE}."tracking_bl_order_id";;
  }

  dimension: status {
    type: string
    sql: ${TABLE}."status" ;;
  }

  dimension: last_pid {
    type: number
    sql: ${TABLE}."last_pid";;
  }

  dimension: tries {
    type: number
    sql: ${TABLE}."tries";;
  }

  dimension_group: shipowner_processing_queue {
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
    sql: ${TABLE}."shipowner_processing_queue" ;;
  }

  dimension: failed_description {
    type: string
    sql: ${TABLE}."failed_description" ;;
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

  measure: count {
    type: count
    drill_fields: [id]
  }
}
