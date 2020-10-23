view: satisfaction_survey_movidesk {
  sql_table_name: public.satisfaction_survey_movidesk ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: commentary {
    type: string
    sql: ${TABLE}."commentary" ;;
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

  dimension: question_id {
    type: string
    sql: ${TABLE}."question_id" ;;
  }

  dimension: question {
    type: string
    sql: case
         when ${question_id} = 'D76M' then 'Sua solicitação foi atendida?'
         when ${question_id} = 'l8zW' then 'Este atendimento foi satisfatório?'
         when ${question_id} = 'n7rK' then 'Qual é seu grau de satisfação com este atendimento?'
         else 'ERRO'
         END;;
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
    type: string
    sql: ${TABLE}."response_id" ;;
  }

  dimension: tickets_movidesk_id {
    type: number
    sql: ${TABLE}."tickets_movidesk_id" ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}."type" ;;
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

  dimension: value_response {
    type: number
    sql: ${TABLE}."value_response" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
