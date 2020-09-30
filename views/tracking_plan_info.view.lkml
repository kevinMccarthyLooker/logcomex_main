view: tracking_plan_info {
  sql_table_name: public.tracking_plan_info ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: api_access {
    type: yesno
    sql: ${TABLE}."api_access" ;;
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

  dimension_group: credit_warning_column {
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
    sql: ${TABLE}."credit_warning_column" ;;
  }

  dimension: force_certificate {
    type: yesno
    sql: ${TABLE}."force_certificate" ;;
  }

  dimension: monthly_bl {
    type: number
    sql: ${TABLE}."monthly_bl" ;;
  }

  dimension: only_international_logistics {
    type: yesno
    sql: ${TABLE}."only_international_logistics" ;;
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

  dimension: user_limit {
    type: number
    sql: ${TABLE}."user_limit" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
