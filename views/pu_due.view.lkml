view: pu_due {
  sql_table_name: public.pu_due ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
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

  dimension: digit {
    type: string
    sql: ${TABLE}."digit" ;;
  }

  dimension: due_number {
    type: string
    sql: ${TABLE}."due_number" ;;
  }

  dimension: empty_list {
    type: yesno
    sql: ${TABLE}."empty_list" ;;
  }

  dimension: has_complement {
    type: yesno
    sql: ${TABLE}."has_complement" ;;
  }

  dimension: inspection_indicator {
    type: yesno
    sql: ${TABLE}."inspection_indicator" ;;
  }

  dimension: json_data {
    type: string
    sql: ${TABLE}."json_data" ;;
  }

  dimension: last_error_message {
    type: string
    sql: ${TABLE}."last_error_message" ;;
  }

  dimension_group: processed {
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
    sql: ${TABLE}."processed_at" ;;
  }

  dimension: proxy_ip {
    type: string
    sql: ${TABLE}."proxy_ip" ;;
  }

  dimension: queue {
    type: number
    sql: ${TABLE}."queue" ;;
  }

  dimension: rectified {
    type: yesno
    sql: ${TABLE}."rectified" ;;
  }

  dimension: requirement_indicator {
    type: yesno
    sql: ${TABLE}."requirement_indicator" ;;
  }

  dimension: status {
    type: number
    sql: ${TABLE}."status" ;;
  }

  dimension: ta_boarding_impediment_indicator {
    type: yesno
    sql: ${TABLE}."ta_boarding_impediment_indicator" ;;
  }

  dimension: tries {
    type: number
    sql: ${TABLE}."tries" ;;
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

  dimension: year {
    type: string
    sql: ${TABLE}."year" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, pu_due_complement.count, pu_due_container_list.count, pu_due_customs_transit.count, pu_due_flow.count]
  }
}
