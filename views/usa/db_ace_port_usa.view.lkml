view: db_ace_port_usa {
  sql_table_name: public.db_ace_port_usa ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: city_name {
    type: string
    sql: ${TABLE}."city_name" ;;
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

  dimension: id_port_ace {
    type: number
    sql: ${TABLE}."id_port_ace" ;;
  }

  dimension: port_usa {
    type: string
    sql: ${TABLE}."port_usa" ;;
  }

  dimension: version {
    type: number
    sql: ${TABLE}."version" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, city_name]
  }
}
