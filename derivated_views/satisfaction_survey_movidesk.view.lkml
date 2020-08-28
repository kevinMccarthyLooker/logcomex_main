view: satisfaction_survey_movidesk {

  derived_table: {

    sql: select
max(id),
tickets_movidesk_id,
max(response_date) as response_date,
survey_model,
score_response,
positive_negative_response,
smiley_faces_response,
created_at,
updated_at
from satisfaction_survey_movidesk ssm
group by tickets_movidesk_id, survey_model,
score_response, positive_negative_response, smiley_faces_response,
created_at, updated_at
;;
  }

  dimension: survey_movidesk_id {
    type: number
    primary_key: yes
    sql: ${TABLE}.id ;;
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

  dimension: positive_negative_response {
    type: number
    sql: ${TABLE}."positive_negative_response" ;;
  }

  dimension_group: response {
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
    sql: ${TABLE}."response_date" ;;
  }


  dimension: score_response {
    type: number
    sql: ${TABLE}."score_response" ;;
  }

  dimension: smiley_faces_response {
    type: number
    sql: ${TABLE}."smiley_faces_response" ;;
  }

  dimension: survey_model {
    type: number
    sql: ${TABLE}."survey_model" ;;
  }

  dimension: tickets_movidesk_id {
    type: number
    sql: ${TABLE}."tickets_movidesk_id" ;;
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
    drill_fields: [tickets_movidesk_id]
  }

 }
