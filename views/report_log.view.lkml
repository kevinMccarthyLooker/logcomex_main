view: report_log {
  sql_table_name: public.report_log ;;
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

  dimension: customer_plan_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."customer_plan_id" ;;
  }

  dimension: hash {
    type: string
    sql: ${TABLE}."hash" ;;
  }

  dimension: ip {
    type: string
    sql: ${TABLE}."ip" ;;
  }

  dimension: json_filter {
    type: string
    sql: ${TABLE}."json_filter" ;;
  }

  dimension: line_numbers {
    type: number
    sql: ${TABLE}."line_numbers" ;;
  }

  dimension: link_excel {
    type: string
    sql: ${TABLE}."link_excel" ;;
  }

  dimension: report_type_id {
    type: number
    sql: ${TABLE}."report_type_id" ;;
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

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."user_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, customer_plan.id, users.id, users.name]
  }
  measure: total_line_numbers {
    type: sum
    sql:  ${line_numbers};;
  }
}
