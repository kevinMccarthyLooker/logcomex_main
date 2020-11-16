view: cargo_reception_datalake {
  derived_table: {
    sql: SELECT * FROM exp_mar.cargo_reception_cooked
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: filter_date {
    type: date
    sql: ${TABLE}.filter_date ;;
  }

  dimension: desc_urf {
    type: string
    sql: ${TABLE}.desc_urf ;;
  }

  dimension: conteiner {
    type: string
    sql: ${TABLE}.conteiner ;;
  }

  set: detail {
    fields: [id, filter_date, desc_urf, conteiner]
  }
}
