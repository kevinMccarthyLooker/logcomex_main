view: di_pu_pagamentos {
  sql_table_name: public.di_pu_pagamentos ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension_group: created {
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
    sql: ${TABLE}."created_at" ;;
  }

  dimension: dados_bancarios {
    type: string
    sql: ${TABLE}."dados_bancarios" ;;
  }

  dimension_group: data {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."data" ;;
  }

  dimension: di_pu_id {
    type: number
    sql: ${TABLE}."di_pu_id" ;;
  }

  dimension: juros {
    type: number
    sql: ${TABLE}."juros" ;;
  }

  dimension: multa {
    type: number
    sql: ${TABLE}."multa" ;;
  }

  dimension: receita {
    type: string
    sql: ${TABLE}."receita" ;;
  }

  dimension: retif {
    type: string
    sql: ${TABLE}."retif" ;;
  }

  dimension: tipo {
    type: string
    sql: ${TABLE}."tipo" ;;
  }

  dimension_group: updated {
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
    sql: ${TABLE}."updated_at" ;;
  }

  dimension: valor_receita {
    type: number
    sql: ${TABLE}."valor_receita" ;;
  }

  dimension: valor_total {
    type: number
    sql: ${TABLE}."valor_total" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
