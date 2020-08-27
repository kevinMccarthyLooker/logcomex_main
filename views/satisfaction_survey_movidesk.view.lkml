view: satisfaction_survey_movidesk {
  sql_table_name: public.satisfaction_survey_movidesk ;;
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

  dimension: response_id {
    type: number
    sql: ${TABLE}."response_id" ;;
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
    drill_fields: [id]
  }
}
