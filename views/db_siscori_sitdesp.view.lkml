view: db_siscori_sitdesp {
  sql_table_name: public.db_siscori_sitdesp ;;
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

  dimension: tp_sit_desp {
    type: string
    sql: ${TABLE}."tp_sit_desp" ;;
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
