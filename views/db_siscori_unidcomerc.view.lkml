view: db_siscori_unidcomerc {
  sql_table_name: public.db_siscori_unidcomerc ;;
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

  dimension: tp_unid_comerc {
    type: string
    sql: ${TABLE}."tp_unid_comerc" ;;
  }

  dimension: tp_unid_comerc_norm {
    type: string
    sql: ${TABLE}."tp_unid_comerc_norm" ;;
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
