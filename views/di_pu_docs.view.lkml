view: di_pu_docs {
  sql_table_name: public.di_pu_docs ;;
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

  dimension: di_pu_id {
    type: number
    sql: ${TABLE}."di_pu_id" ;;
  }

  dimension: identificacao {
    type: string
    sql: ${TABLE}."identificacao" ;;
  }

  dimension: tipo_documento {
    type: string
    sql: ${TABLE}."tipo_documento" ;;
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

  measure: count {
    type: count
    drill_fields: [id]
  }
}
