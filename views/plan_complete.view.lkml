view: plan_complete {
  sql_table_name: public.plan_complete ;;
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

  dimension: customer_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."customer_type_id" ;;
  }

  dimension_group: deleted {
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
    sql: ${TABLE}."deleted_at" ;;
  }

  dimension: plan_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."plan_id" ;;
  }

  dimension: plan_info_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."plan_info_id" ;;
  }

  dimension: service_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."service_id" ;;
  }

  dimension: tracking_plan_info_id {
    type: number
    sql: ${TABLE}."tracking_plan_info_id" ;;
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
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      plan.id,
      plan.name,
      service.id,
      service.name,
      customer_type.id,
      customer_type.name,
      plan_info.id,
      customer_plan.count
    ]
  }
}
