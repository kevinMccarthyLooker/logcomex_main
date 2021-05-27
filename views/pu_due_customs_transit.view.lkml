view: pu_due_customs_transit {
  sql_table_name: public.pu_due_customs_transit ;;
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

  dimension: dat {
    type: string
    sql: ${TABLE}."dat" ;;
  }

  dimension: internacional_bill_of_landing {
    type: string
    sql: ${TABLE}."internacional_bill_of_landing" ;;
  }

  dimension: pu_due_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."pu_due_id" ;;
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

  dimension: via_internacional_transportation {
    type: string
    sql: ${TABLE}."via_internacional_transportation" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, pu_due.id]
  }
}
