view: extra_data_container {
  sql_table_name: public.extra_data_container ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: already_treated {
    type: string
    sql: ${TABLE}."already_treated" ;;
  }

  dimension: bl {
    type: string
    sql: ${TABLE}."bl" ;;
  }

  dimension: bl_issued_by {
    type: string
    sql: ${TABLE}."bl_issued_by" ;;
  }

  dimension: booking {
    type: string
    sql: ${TABLE}."booking" ;;
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

  dimension: destination {
    type: string
    sql: ${TABLE}."destination" ;;
  }

  dimension: destination_city {
    type: string
    sql: ${TABLE}."destination_city" ;;
  }

  dimension: destination_country {
    type: string
    sql: ${TABLE}."destination_country" ;;
  }

  dimension: destination_state {
    type: string
    sql: ${TABLE}."destination_state" ;;
  }

  dimension: done {
    type: yesno
    sql: ${TABLE}."done" ;;
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

  dimension: failed {
    type: yesno
    sql: ${TABLE}."failed" ;;
  }

  dimension: id_armador {
    type: number
    sql: ${TABLE}."id_armador" ;;
  }

  dimension: inserted_updated_by {
    type: string
    sql: ${TABLE}."inserted_updated_by" ;;
  }

  dimension: origin {
    type: string
    sql: ${TABLE}."origin" ;;
  }

  dimension: origin_city {
    type: string
    sql: ${TABLE}."origin_city" ;;
  }

  dimension: origin_country {
    type: string
    sql: ${TABLE}."origin_country" ;;
  }

  dimension: origin_state {
    type: string
    sql: ${TABLE}."origin_state" ;;
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

  dimension: transhipment {
    type: string
    sql: ${TABLE}."transhipment" ;;
  }

  dimension: type_error_id {
    type: number
    sql: ${TABLE}."type_error_id" ;;
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

  dimension: urgent {
    type: yesno
    sql: ${TABLE}."urgent" ;;
  }

  dimension: vessel {
    type: string
    sql: ${TABLE}."vessel" ;;
  }

  dimension_group: vgm_received {
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
    sql: ${TABLE}."vgm_received" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
