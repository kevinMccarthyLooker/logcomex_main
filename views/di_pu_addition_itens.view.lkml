view: di_pu_addition_itens {
  sql_table_name: public.di_pu_addition_itens ;;
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

  dimension: desc_item {
    type: string
    sql: ${TABLE}."desc_item" ;;
  }

  dimension: di_pu_addition_id {
    type: number
    sql: ${TABLE}."di_pu_addition_id" ;;
  }

  dimension: num_item {
    type: number
    sql: ${TABLE}."num_item" ;;
  }

  dimension: qtd_item {
    type: number
    sql: ${TABLE}."qtd_item" ;;
  }

  dimension: unid_med {
    type: string
    sql: ${TABLE}."unid_med" ;;
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

  dimension: valor_item {
    type: number
    sql: ${TABLE}."valor_item" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
