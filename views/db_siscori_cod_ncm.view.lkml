view: db_siscori_cod_ncm {
  sql_table_name: public.db_siscori_cod_ncm ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: cdncm {
    type: number
    value_format: "0"
    sql: ${TABLE}."cdncm" ;;
  }

  dimension: cdncm_compl {
    type: number
    value_format: "0#######"
    sql: ${TABLE}."cdncm_compl" ;;
  }

  dimension_group: date_from {
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
    sql: ${TABLE}."date_from" ;;
  }

  dimension_group: date_to {
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
    sql: ${TABLE}."date_to" ;;
  }

  dimension: ncm_desc {
    type: string
    sql: ${TABLE}."ncm_desc" ;;
  }

  dimension: nome_ncm_en {
    type: string
    sql: ${TABLE}."nome_ncm_en" ;;
  }

  dimension: nome_ncm_es {
    type: string
    sql: ${TABLE}."nome_ncm_es" ;;
  }

  dimension: nome_ncm_pt {
    type: string
    sql: ${TABLE}."nome_ncm_pt" ;;
  }

  dimension: version {
    type: number
    sql: ${TABLE}."version" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }

  measure: ncm_hscode {
    type: string
    value_format: "0"
    sql: left ${TABLE}."cdncm_compl",4;;
  }
}
