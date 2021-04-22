view: db_chile_exp_transp {
  sql_table_name: public.db_chile_exp_transp ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
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

  dimension_group: fechadoctransp {
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
    sql: ${TABLE}."fechadoctransp" ;;
  }

  dimension: nombrenave {
    type: string
    sql: ${TABLE}."nombrenave" ;;
  }

  dimension: nsecdoctransp {
    type: number
    sql: ${TABLE}."nsecdoctransp" ;;
  }

  dimension: numerodoctransp {
    type: string
    sql: ${TABLE}."numerodoctransp" ;;
  }

  dimension: numeroident {
    type: number
    sql: ${TABLE}."numeroident" ;;
  }

  dimension: numeroviaje {
    type: string
    sql: ${TABLE}."numeroviaje" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
