view: di_siscomex_tax_item {
  sql_table_name: public.di_siscomex_tax_item ;;
  drill_fields: [id]

  dimension: id {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: di_siscomex_tax_list_id {
    type: number
    sql: ${TABLE}."di_siscomex_tax_list_id";;
  }

  dimension: di_number {
    type: number
    sql: ${TABLE}."di_number";;
  }

  dimension: digit{
    type: number
    sql: ${TABLE}."digit";;
  }

  dimension: status {
    type: number
    sql: ${TABLE}."status";;
  }

  dimension: status_message {
    type: string
    sql: ${TABLE}."status_message" ;;
  }

  dimension_group: processed_at {
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
    sql: ${TABLE}."processed_at" ;;
  }

  dimension: is_base_pending {
    type: yesno
    sql: ${TABLE}."is_base_pending" ;;
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

  dimension_group: updated_at {
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

  dimension_group: pending_date {
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
    sql: ${TABLE}."pending_date" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
