view: customer_plan {
  sql_table_name: public.customer_plan ;;
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
    # hidden: yes
    sql: ${TABLE}."customer_id" ;;
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
    # hidden: yes
    sql: ${TABLE}."plan_complete_id" ;;
  }

  dimension: plan_info_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."plan_info_id" ;;
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

#custom status fields
#trial
#active
#not in trial

  dimension: active {
    type: yesno
    sql: current_date between ${start_raw} and ${expiration_raw}
        and ${deleted_raw} is null
    ;;
  }

  dimension: trial {
    type: yesno
    sql: current_date between ${trial_start_raw} and ${trial_end_raw}
    and ${deleted_raw} is null
    ;;
  }


  measure: count {
    label: "Plan Count"
    type: count
    drill_fields: [detail*]
    filters:{
      field: id
      value: "NOT NULL"
    }
  }

  measure: active_plan_count {
    type: count
    drill_fields: [customer_detail*]
    filters: [active: "Yes"]
  }

  measure: active_trial_count {
    type: count
    drill_fields: [customer_detail*]
    filters: [trial: "Yes"]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      customer.id,
      customer.name,
      customer.custom_name,
      plan_complete.id,
      plan_info.id,
      report_log.count
    ]
  }
  set: customer_detail {
    fields: [
      customer.id,
      customer.name,
    ]
  }
}
