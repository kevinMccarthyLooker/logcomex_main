view: log_plan_info {
  sql_table_name: public.log_plan_info ;;
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

  dimension: api_massive_lines {
    type: yesno
    sql: ${TABLE}."api_massive_lines" ;;
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

  dimension: deadline_month_new_data {
    type: number
    sql: ${TABLE}."deadline_month_new_data" ;;
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

  dimension: expo_average_shipment_functionality {
    type: yesno
    sql: ${TABLE}."expo_average_shipment_functionality" ;;
  }

  dimension: expo_dashbard_chart_year_to_date {
    type: yesno
    sql: ${TABLE}."expo_dashbard_chart_year_to_date" ;;
  }

  dimension: expo_product_functionality {
    type: yesno
    sql: ${TABLE}."expo_product_functionality" ;;
  }

  dimension: expo_real_exporter_functionality {
    type: yesno
    sql: ${TABLE}."expo_real_exporter_functionality" ;;
  }

  dimension: filter_possible_guys_limit {
    type: number
    sql: ${TABLE}."filter_possible_guys_limit" ;;
  }

  dimension: monthly_searches {
    type: number
    sql: ${TABLE}."monthly_searches" ;;
  }

  dimension_group: plan_info_creation {
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
    sql: ${TABLE}."plan_info_creation_date" ;;
  }

  dimension: plan_info_id {
    type: number
    sql: ${TABLE}."plan_info_id" ;;
  }

  dimension_group: plan_info_update {
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
    sql: ${TABLE}."plan_info_update_date" ;;
  }

  dimension: search_days_limit {
    type: number
    sql: ${TABLE}."search_days_limit" ;;
  }

  dimension: search_days_range {
    type: number
    sql: ${TABLE}."search_days_range" ;;
  }

  dimension: search_lines_limit {
    type: number
    sql: ${TABLE}."search_lines_limit" ;;
  }

  dimension: tags_for_filter {
    type: yesno
    sql: ${TABLE}."tags_for_filter" ;;
  }

  dimension: taxes_functionality {
    type: yesno
    sql: ${TABLE}."taxes_functionality" ;;
  }

  dimension: update_period {
    type: string
    sql: ${TABLE}."update_period" ;;
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

  dimension: upload_size_limit_mb {
    type: number
    sql: ${TABLE}."upload_size_limit_mb" ;;
  }

  dimension: use_bi_condition_filter {
    type: yesno
    sql: ${TABLE}."use_bi_condition_filter" ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}."user_id" ;;
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
