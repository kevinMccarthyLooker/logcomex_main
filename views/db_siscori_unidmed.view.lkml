view: db_siscori_unidmed {
  sql_table_name: public.db_siscori_unidmed ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
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

  dimension: desc_unid_med {
    type: string
    sql: ${TABLE}."desc_unid_med" ;;
  }

  dimension: desc_unid_med_en {
    type: string
    sql: ${TABLE}."desc_unid_med_en" ;;
  }

  dimension: tp_unid_estat {
    type: number
    sql: ${TABLE}."tp_unid_estat" ;;
  }

  dimension: version {
    type: number
    sql: ${TABLE}."version" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
