view: db_siscori_natinf {
  sql_table_name: public.db_siscori_natinf ;;
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

  dimension: tp_nat_inf {
    type: string
    sql: ${TABLE}."tp_nat_inf" ;;
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
