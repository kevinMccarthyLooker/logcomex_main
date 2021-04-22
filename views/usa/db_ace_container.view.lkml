view: db_ace_container {
  sql_table_name: public.db_ace_container ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: cod_descr_equip {
    type: string
    sql: ${TABLE}."cod_descr_equip" ;;
  }

  dimension: container_heigth {
    type: number
    sql: ${TABLE}."container_heigth" ;;
  }

  dimension: container_length {
    type: number
    sql: ${TABLE}."container_length" ;;
  }

  dimension: container_width {
    type: number
    sql: ${TABLE}."container_width" ;;
  }

  dimension_group: estimated_arrival {
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
    sql: ${TABLE}."estimated_arrival_date" ;;
  }

  dimension: id_type_service {
    type: number
    sql: ${TABLE}."id_type_service" ;;
  }

  dimension: identifier {
    type: number
    sql: ${TABLE}."identifier" ;;
  }

  dimension: mark_num {
    type: string
    sql: ${TABLE}."mark_num" ;;
  }

  dimension: num_container {
    type: string
    sql: ${TABLE}."num_container" ;;
  }

  dimension: num_seal1 {
    type: string
    sql: ${TABLE}."num_seal1" ;;
  }

  dimension: num_seal2 {
    type: string
    sql: ${TABLE}."num_seal2" ;;
  }

  dimension: qty_teus {
    type: number
    sql: ${TABLE}."qty_teus" ;;
  }

  dimension: status_load {
    type: string
    sql: ${TABLE}."status_load" ;;
  }

  dimension: type_container {
    type: string
    sql: ${TABLE}."type_container" ;;
  }

  dimension: type_service {
    type: string
    sql: ${TABLE}."type_service" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
