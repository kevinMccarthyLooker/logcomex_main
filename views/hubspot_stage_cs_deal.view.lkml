view: hubspot_stage_cs_deal {
  sql_table_name: public.hubspot_stage_cs_deal ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: billing_month {
    type: string
    sql: ${TABLE}."billing_month" ;;
  }

  dimension: changed_cs_system {
    type: yesno
    sql: ${TABLE}."changed_cs_system" ;;
  }

  dimension: churn_reason {
    type: string
    sql: ${TABLE}."churn_reason" ;;
  }

  dimension: contract_time {
    type: string
    sql: ${TABLE}."contract_time" ;;
  }

  dimension: contract_time_made {
    type: string
    sql: ${TABLE}."contract_time_made" ;;
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

  dimension: customer_api_relations_id {
    type: number
    sql: ${TABLE}."customer_api_relations_id" ;;
  }

  dimension: farmer {
    type: string
    sql: ${TABLE}."farmer" ;;
  }

  dimension: guardian {
    type: string
    sql: ${TABLE}."guardian" ;;
  }

  dimension: hubspot_deal_id {
    type: number
    sql: ${TABLE}."hubspot_deal_id" ;;
  }

  dimension: negotiation_status {
    type: string
    sql: ${TABLE}."negotiation_status" ;;
  }

  dimension: negotiation_type {
    type: string
    sql: ${TABLE}."negotiation_type" ;;
  }

  dimension: negotiation_value {
    type: number
    sql: ${TABLE}."negotiation_value" ;;
  }

  dimension: new_recipe_type {
    type: string
    sql: ${TABLE}."new_recipe_type" ;;
  }

  dimension: observation_negotiation {
    type: string
    sql: ${TABLE}."observation_negotiation" ;;
  }

  dimension: old_value {
    type: number
    sql: ${TABLE}."old_value" ;;
  }

  dimension: pipeline {
    type: string
    sql: ${TABLE}."pipeline" ;;
  }

  dimension: product {
    type: string
    sql: ${TABLE}."product" ;;
  }

  dimension_group: renovation_closed {
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
    sql: ${TABLE}."renovation_closed_on" ;;
  }

  dimension_group: request {
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
    sql: ${TABLE}."request_date" ;;
  }

  dimension: responsible_sector {
    type: string
    sql: ${TABLE}."responsible_sector" ;;
  }

  dimension: send_to_financial {
    type: yesno
    sql: ${TABLE}."send_to_financial" ;;
  }

  dimension: signaled_by {
    type: string
    sql: ${TABLE}."signaled_by" ;;
  }

  dimension: stage {
    type: string
    sql: ${TABLE}."stage" ;;
  }

  dimension: type_of_loss {
    type: string
    sql: ${TABLE}."type_of_loss" ;;
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

  dimension: was_under_renovation {
    type: yesno
    sql: ${TABLE}."was_under_renovation" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
