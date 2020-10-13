view: pu_export_cargo_reception_detail {
  sql_table_name: public.pu_export_cargo_reception_detail ;;
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

  dimension: has_error {
    type: yesno
    sql: ${TABLE}."has_error" ;;
  }

  dimension: json_data {
    type: string
    sql: ${TABLE}."json_data" ;;
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

  dimension_group: processed_time {
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
    sql: ${TABLE}."processed_time" ;;
  }

  dimension: proxy_ip {
    type: string
    sql: ${TABLE}."proxy_ip" ;;
  }

  dimension: pu_export_cargo_reception_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."pu_export_cargo_reception_id" ;;
  }

  dimension: sequential_number {
    type: number
    sql: ${TABLE}."sequential_number" ;;
  }

  dimension: status {
    type: number
    sql: ${TABLE}."status" ;;
  }

  dimension: type {
    type: number
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

  dimension: year {
    type: string
    sql: ${TABLE}."year" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, pu_export_cargo_reception.id]
  }
}
