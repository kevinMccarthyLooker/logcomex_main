view: pu_due_container_list {
  sql_table_name: public.pu_due_container_list ;;
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

  dimension: identification {
    type: string
    sql: ${TABLE}."identification" ;;
  }

  dimension: pu_due_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."pu_due_id" ;;
  }

  dimension: seal {
    type: string
    sql: ${TABLE}."seal" ;;
  }

  dimension: tare {
    type: string
    sql: ${TABLE}."tare" ;;
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
    drill_fields: [id, pu_due.id]
  }
}
