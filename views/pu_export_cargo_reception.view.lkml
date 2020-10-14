view: pu_export_cargo_reception {
  sql_table_name: public.pu_export_cargo_reception ;;
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

  dimension: empty_list {
    type: yesno
    sql: ${TABLE}."empty_list" ;;
  }

  dimension_group: filter {
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
    sql: ${TABLE}."filter_date" ;;
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

  dimension: status {
    type: number
    sql: ${TABLE}."status" ;;
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

  dimension: urf_code {
    type: string
    sql: ${TABLE}."urf_code" ;;
  }

  dimension: urf_ra_code {
    type: string
    sql: ${TABLE}."urf_ra_code" ;;
  }

  measure: count_filtros {
    type: count_distinct
    sql:  ${id} ;;
    drill_fields: [id, pu_export_cargo_reception_detail.count]
  }

  measure: count_filtros_com_recinto {
    type: count_distinct
    sql:  ${id} ;;
    filters: [urf_ra_code : "-NULL"]
    drill_fields: [id, pu_export_cargo_reception_detail.count]
  }

  measure: count_filtros_sem_recinto {
    type: count_distinct
    sql:  ${id} ;;
    filters: [urf_ra_code : "NULL"]
    drill_fields: [id, pu_export_cargo_reception_detail.count]
  }

}
