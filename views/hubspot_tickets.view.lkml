view: hubspot_tickets {
  sql_table_name: public.hubspot_tickets ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: attendance_n1_time {
    type: number
    sql: ${TABLE}."attendance_n1_time" ;;
  }

  dimension: attendance_n2_time {
    type: number
    sql: ${TABLE}."attendance_n2_time" ;;
  }

  dimension: attendance_n3_time {
    type: number
    sql: ${TABLE}."attendance_n3_time" ;;
  }

  dimension: attendance_tracking_time {
    type: number
    sql: ${TABLE}."attendance_tracking_time" ;;
  }

  dimension: awaiting_return_time {
    type: number
    sql: ${TABLE}."awaiting_return_time" ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}."category" ;;
  }

  dimension_group: close_date_ticket {
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
    sql: ${TABLE}."close_date_ticket" ;;
  }

  dimension_group: create_date_ticket {
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
    sql: ${TABLE}."create_date_ticket" ;;
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

  dimension: cs_team_time {
    type: number
    sql: ${TABLE}."cs_team_time" ;;
  }

  dimension: customer_api_relations_id {
    type: number
    sql: ${TABLE}."customer_api_relations_id" ;;
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

  dimension: demand {
    type: string
    sql: ${TABLE}."demand" ;;
  }

  dimension: development_team_time {
    type: number
    sql: ${TABLE}."development_team_time" ;;
  }

  dimension: new_time {
    type: number
    sql: ${TABLE}."new_time" ;;
  }

  dimension: nps_follow_up_answer {
    type: string
    sql: ${TABLE}."nps_follow_up_answer" ;;
  }

  dimension: nps_number_question {
    type: number
    sql: ${TABLE}."nps_number_question" ;;
  }

  dimension: nps_score {
    type: number
    sql: ${TABLE}."nps_score" ;;
  }

  dimension: pipeline {
    type: string
    sql: ${TABLE}."pipeline" ;;
  }

  dimension: priority {
    type: string
    sql: ${TABLE}."priority" ;;
  }

  dimension: service {
    type: string
    sql: ${TABLE}."service" ;;
  }

  dimension: source_type {
    type: string
    sql: ${TABLE}."source_type" ;;
  }

  dimension: squad {
    type: string
    sql: ${TABLE}."squad" ;;
  }

  dimension: stage {
    type: string
    sql: ${TABLE}."stage" ;;
  }

  dimension: situation {
    type: string
    sql: case
         when ${TABLE}."stage" = 'Closed' then 'Closed'
         else 'Open' end;;
  }

  dimension: subject {
    type: string
    sql: ${TABLE}."subject" ;;
  }

  dimension: ticket_id {
    type: number
    sql: ${TABLE}."ticket_id" ;;
  }

  dimension: ticket_owner {
    type: string
    sql: ${TABLE}."ticket_owner" ;;
  }

  dimension: time_to_close {
    type: number
    sql: ${TABLE}."time_to_close" ;;
  }

  dimension: time_to_first_agent_reply {
    type: number
    sql: ${TABLE}."time_to_first_agent_reply" ;;
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
    drill_fields: [id]
  }
}
