view: extra_data_container_history {
  sql_table_name: public.extra_data_container_history ;;
  drill_fields: [extra_data_container_history_id]

  dimension: extra_data_container_history_id {
    primary_key: yes
    type: number
    sql: ${TABLE}."extra_data_container_history_id" ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}."city" ;;
  }

  dimension: container {
    type: string
    sql: ${TABLE}."container" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
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

  dimension_group: date {
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
    sql: ${TABLE}."date" ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}."description" ;;
  }

  dimension: description_about_container {
    type: string
    sql: ${TABLE}."description_about_container" ;;
  }

  dimension: dimension {
    type: string
    sql: ${TABLE}."dimension" ;;
  }

  dimension_group: eta {
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
    sql: ${TABLE}."eta" ;;
  }

  dimension: final_pod {
    type: string
    sql: ${TABLE}."finalPod" ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: inserted_updated_by {
    type: string
    sql: ${TABLE}."inserted_updated_by" ;;
  }

  dimension: is_current {
    type: yesno
    sql: ${TABLE}."is_current" ;;
  }

  dimension: location {
    type: string
    sql: ${TABLE}."location" ;;
  }

  dimension: max_payload {
    type: string
    sql: ${TABLE}."maxPayload" ;;
  }

  dimension_group: price_calculation {
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
    sql: ${TABLE}."price_calculation_date" ;;
  }

  dimension: shipped_to {
    type: string
    sql: ${TABLE}."shippedTo" ;;
  }

  dimension: tare {
    type: string
    sql: ${TABLE}."tare" ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}."type" ;;
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

  dimension: vessel {
    type: string
    sql: ${TABLE}."vessel" ;;
  }

  dimension: voyage {
    type: string
    sql: ${TABLE}."voyage" ;;
  }

  measure: count {
    type: count
    drill_fields: [extra_data_container_history_id]
  }
}
