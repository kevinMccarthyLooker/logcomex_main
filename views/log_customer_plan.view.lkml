view: log_customer_plan {
  sql_table_name: public.log_customer_plan ;;
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

  dimension: customer_id {
    type: number
    sql: ${TABLE}."customer_id" ;;
  }

  dimension: customer_origin_id {
    type: number
    sql: ${TABLE}."customer_origin_id" ;;
  }

  dimension_group: customer_plan_creation {
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
    sql: ${TABLE}."customer_plan_creation_date" ;;
  }

  dimension_group: customer_plan_deleted {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."customer_plan_deleted" ;;
  }

  dimension: customer_plan_id {
    type: number
    sql: ${TABLE}."customer_plan_id" ;;
  }

  dimension_group: customer_plan_update {
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
    sql: ${TABLE}."customer_plan_update_date" ;;
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

  dimension_group: expiration {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."expiration" ;;
  }

  dimension: plan_complete_id {
    type: number
    sql: ${TABLE}."plan_complete_id" ;;
  }

  dimension: plan_info_id {
    type: number
    sql: ${TABLE}."plan_info_id" ;;
  }

  dimension: plan_submodule_id {
    type: number
    sql: ${TABLE}."plan_submodule_id" ;;
  }

  dimension: platform_user_id {
    type: number
    sql: ${TABLE}."platform_user_id" ;;
  }

  dimension: restrict_period {
    type: yesno
    sql: ${TABLE}."restrict_period" ;;
  }

  dimension_group: restriction_end {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."restriction_end" ;;
  }

  dimension_group: restriction_start {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."restriction_start" ;;
  }

  dimension_group: start {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."start" ;;
  }

  dimension: tracking_plan_info_id {
    type: number
    sql: ${TABLE}."tracking_plan_info_id" ;;
  }

  dimension_group: trial_end {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."trial_end" ;;
  }

  dimension_group: trial_start {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."trial_start" ;;
  }

  dimension: type_of_contract_id {
    type: number
    sql: ${TABLE}."type_of_contract_id" ;;
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
    sql: ${TABLE}."user_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
