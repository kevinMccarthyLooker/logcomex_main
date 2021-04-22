view: db_chile_exp_bultos {
  sql_table_name: public.db_chile_exp_bultos ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: cantidadbulto {
    type: number
    sql: ${TABLE}."cantidadbulto" ;;
  }

  dimension_group: fechaacept {
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
    sql: ${TABLE}."fechaacept" ;;
  }

  dimension: identificacionbulto {
    type: string
    sql: ${TABLE}."identificacionbulto" ;;
  }

  dimension: numerobulto {
    type: number
    sql: ${TABLE}."numerobulto" ;;
  }

  dimension: numeroident {
    type: number
    sql: ${TABLE}."numeroident" ;;
  }

  dimension: tipobulto {
    type: number
    sql: ${TABLE}."tipobulto" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
