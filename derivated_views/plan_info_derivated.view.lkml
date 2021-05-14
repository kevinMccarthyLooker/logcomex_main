view: plan_info_derivated {

  derived_table: {
    sql:
    select
    concat(cp.id,'|',pi_custom.id,'|',pi_default.id) as id,
    cp.id as customer_plan_id,
    pi_custom.id as plan_info_id_custom,  -- id plan_info ligado a tabela customer_plan
    pi_default.id as plan_info_id_default, -- id plan_info ligado a tabela plan_complete
    case
    when (pi_custom.monthly_searches = 0 or pi_custom.monthly_searches is null) then pi_default.monthly_searches
    else pi_custom.monthly_searches
    end as monthly_searches,
    case
    when (pi_custom.search_days_limit = 0 or pi_custom.search_days_limit is null) then pi_default.search_days_limit
    else pi_custom.search_days_limit
    end as search_days_limit,
    case
    when (pi_custom.filter_possible_guys_limit = 0 or pi_custom.filter_possible_guys_limit is null) then pi_default.filter_possible_guys_limit
    else pi_custom.filter_possible_guys_limit
    end as filter_possible_guys_limit,
    case
    when (pi_custom.excel_export is null) then pi_default.excel_export
    else pi_custom.excel_export
    end as excel_export,
    case
    when (pi_custom.excel_downloads = 0 or pi_custom.excel_downloads is null) then pi_default.excel_downloads
    else pi_custom.excel_downloads
    end as excel_downloads,
    case
    when (pi_custom.excel_lines = 0 or pi_custom.excel_lines is null) then pi_default.excel_lines
    else pi_custom.excel_lines
    end as excel_lines,
    case
    when (pi_custom.search_days_range = 0 or pi_custom.search_days_range is null) then pi_default.search_days_range
    else pi_custom.search_days_range
    end as search_days_range,
    case
    when (pi_custom.user_limit = 0 or pi_custom.user_limit is null) then pi_default.user_limit
    else pi_custom.user_limit
    end as user_limit,
    case
    when (pi_custom.api_access is null) then pi_default.api_access
    else pi_custom.api_access
    end as api_access,
    case
    when (pi_custom.use_bi_condition_filter is null) then pi_default.use_bi_condition_filter
    else pi_custom.use_bi_condition_filter
    end as use_bi_condition_filter,
    case
    when (pi_custom.search_lines_limit = 0 or pi_custom.search_lines_limit is null) then pi_default.search_lines_limit
    else pi_custom.search_lines_limit
    end as search_lines_limit,
    case
    when (pi_custom.tags_for_filter is null) then pi_default.tags_for_filter
    else pi_custom.tags_for_filter
    end as tags_for_filter,
    case
    when (pi_custom.taxes_functionality is null) then pi_default.taxes_functionality
    else pi_custom.taxes_functionality
    end as taxes_functionality,
    case
    when (pi_custom.update_period is null) then pi_default.update_period
    else pi_custom.update_period
    end as update_period,
    case
    when (pi_custom.deadline_month_new_data = 0 or pi_custom.deadline_month_new_data is null) then pi_default.deadline_month_new_data
    else pi_custom.deadline_month_new_data
    end as deadline_month_new_data,
    case
    when (pi_custom.expo_real_exporter_functionality is true or pi_default.expo_real_exporter_functionality is true) then true
    else false
    end as expo_real_exporter_functionality,
    pi_custom.created_at as created_at_pi_custom,
    pi_default.created_at as created_at_pi_default,
    pi_custom.updated_at as updated_at_pi_custom,
    pi_default.updated_at as updated_at_pi_default
    from customer_plan cp
    inner join plan_complete pc on pc.id = cp.plan_complete_id
    LEFT JOIN plan_info as pi_custom ON cp.plan_info_id = pi_custom.id
    LEFT JOIN plan_info as pi_default ON pc.plan_info_id = pi_default.id ;;

  }



    dimension: id {
      hidden: yes
      primary_key: yes
      type: string
      sql: ${TABLE}."id" ;;
    }

    dimension: customer_plan_id {
      type: number
      sql: ${TABLE}."customer_plan_id" ;;
    }

    dimension: plan_info_id_custom {
      type: number
      sql: ${TABLE}."plan_info_id_custom" ;;
    }

    dimension: plan_info_id_default {
      type: number
      sql: ${TABLE}."plan_info_id_default" ;;
    }

    dimension: api_access {
      type: yesno
      sql: ${TABLE}."api_access" ;;
    }

    dimension_group: created_at_pi_custom {
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
      sql: ${TABLE}."created_at_pi_custom" ;;
    }


    dimension_group: created_at_pi_default {
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
      sql: ${TABLE}."created_at_pi_default" ;;
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

    dimension: expo_real_exporter_functionality {
      type: number
      sql: ${TABLE}."expo_real_exporter_functionality" ;;
    }

    dimension: search_days_limit {
      type: number
      sql: ${TABLE}."search_days_limit" ;;
    }

    dimension: search_days_range {
      type: number
      sql: ${TABLE}."search_days_range" ;;
    }

    dimension_group: updated_at_pi_default {
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
      sql: ${TABLE}."updated_at_pi_default" ;;
    }


    dimension_group: updated_at_pi_custom {
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
      sql: ${TABLE}."updated_at_pi_custom" ;;
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

    measure: count {
      type: count
    }
  }
