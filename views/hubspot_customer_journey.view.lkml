view: hubspot_customer_journey {
  sql_table_name: public.hubspot_customer_journey ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension_group: churn_signal_dates {
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
    sql: ${TABLE}."churn_signal_dates" ;;
  }

  dimension: customer_api_relations_id {
    type: number
    sql: ${TABLE}."customer_api_relations_id" ;;
  }

  dimension: duration_of_implementation {
    type: number
    sql: ${TABLE}."duration_of_implementation" ;;
  }

  dimension: expansion {
    type: yesno
    sql: ${TABLE}."expansion" ;;
  }

  dimension: hubspot_customer_id {
    type: number
    sql: ${TABLE}."hubspot_customer_id" ;;
  }

  dimension: hubspot_deal_id {
    type: number
    sql: ${TABLE}."hubspot_deal_id" ;;
  }

  dimension: implementer {
    type: string
    sql: ${TABLE}."implementer" ;;
  }

  dimension: markdowns {
    type: number
    sql: ${TABLE}."markdowns" ;;
  }

  dimension: released_without_payment {
    type: yesno
    sql: ${TABLE}."released_without_payment" ;;
  }

  dimension: signaled_churn {
    type: yesno
    sql: ${TABLE}."signaled_churn" ;;
  }

  dimension: stage {
    type: string
    sql: ${TABLE}."stage" ;;
  }

  dimension: status_onboarding {
    type: string
    sql: ${TABLE}."status_onboarding" ;;
  }

  dimension_group: training_date_one {
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
    sql: ${TABLE}."training_date_one" ;;
  }

  dimension_group: training_date_three {
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
    sql: ${TABLE}."training_date_three" ;;
  }

  dimension_group: training_date_two {
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
    sql: ${TABLE}."training_date_two" ;;
  }

  dimension: training_duration_one {
    type: string
    sql: ${TABLE}."training_duration_one" ;;
  }

  dimension: training_duration_three {
    type: string
    sql: ${TABLE}."training_duration_three" ;;
  }

  dimension: training_duration_two {
    type: string
    sql: ${TABLE}."training_duration_two" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
