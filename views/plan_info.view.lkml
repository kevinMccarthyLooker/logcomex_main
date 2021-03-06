view: plan_info {
  sql_table_name: public.plan_info ;;
  drill_fields: [id]

  dimension: id {
    hidden: yes
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

  dimension: excel_downloads {
    type: number
    sql: ${TABLE}."excel_downloads" ;;
  }

  dimension: excel_export {
    type: yesno
    sql: ${TABLE}."excel_export" ;;
  }

  dimension: excel_lines {
    type: number
    sql: ${TABLE}."excel_lines" ;;
  }

  dimension: monthly_searches {
    type: number
    sql: ${TABLE}."monthly_searches" ;;
  }

  dimension: search_days_limit {
    type: number
    sql: ${TABLE}."search_days_limit" ;;
  }

  dimension: search_days_range {
    type: number
    sql: ${TABLE}."search_days_range" ;;
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

  dimension: use_bi_condition_filter {
    type: yesno
    sql: ${TABLE}."use_bi_condition_filter" ;;
  }

  dimension: user_limit {
    type: number
    sql: ${TABLE}."user_limit" ;;
  }

  dimension: search_lines_limit{
    type: number
    sql: ${TABLE}."search_lines_limit" ;;
  }

  dimension: filter_possible_guys_limit {
    type: number
    sql: ${TABLE}."filter_possible_guys_limit" ;;
  }

  dimension: update_period {
    type: string
    sql: ${TABLE}."update_period" ;;
  }

  dimension: deadline_month_new_data {
    type: number
    sql: ${TABLE}."deadline_month_new_data" ;;
  }

  dimension: api_massive_lines {
    type: yesno
    sql: ${TABLE}."api_massive_lines" ;;
  }

  dimension: expo_product_functionality {
    type: yesno
    sql: ${TABLE}."expo_product_functionality" ;;
  }

  dimension: expo_dashboard_chart_year_to_date {
    type: yesno
    sql: ${TABLE}."expo_dashbard_chart_year_to_date" ;;
  }

  dimension: expo_real_exporter_functionality {
    type: yesno
    sql: ${TABLE}."expo_real_exporter_functionality" ;;
  }

  dimension: expo_average_shipment_functionality {
    type: yesno
    sql: ${TABLE}."expo_average_shipment_functionality" ;;
  }

  dimension: upload_size_limit_mb {
    type: number
    sql: ${TABLE}."upload_size_limit_mb" ;;
  }

  dimension: alerts_data_functionality {
    type: yesno
    sql: ${TABLE}."alerts_data_functionality" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, customer_plan.count, plan_complete.count]
  }
}
