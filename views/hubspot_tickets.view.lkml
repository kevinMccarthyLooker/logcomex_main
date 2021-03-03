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

  dimension: treated_priority {
    type: string
    sql: case
         when ${TABLE}."priority" = 'Urgente' then 'Urgente'
         when ${TABLE}."priority" = 'Alta' then 'Alta'
         when ${TABLE}."priority" = 'HIGH' then 'Alta'
         when ${TABLE}."priority" = 'Médio' then 'Média'
         when ${TABLE}."priority" = 'MEDIUM' then 'Média'
         when ${TABLE}."priority" = 'Baixo' then 'Baixa'
         when ${TABLE}."priority" = 'LOW' then 'Baixa'
         when ${TABLE}."priority" is null then 'Indefinido'
         else ${TABLE}."priority" end ;;
  }

  dimension: sla_posicionamento { #tempo em segundos
    type: number
    sql: case
         when ${treated_priority} = 'Urgente' then 14400
         when ${treated_priority} = 'Alta' then 21600
         when ${treated_priority} = 'Média' then 28800
         when ${treated_priority} = 'Baixa' then 57600
         else 0 end  ;;
  }

  dimension: sla_resposta { #tempo em segundos
    type: number
    sql: case
         when ${treated_priority} = 'Urgente' then 57600
         when ${treated_priority} = 'Alta' then 86400
         when ${treated_priority} = 'Média' then 144000
         when ${treated_priority} = 'Baixa' then 288000
         else 0 end  ;;
  }

  dimension: sla_primeira_resposta { #tempo em segundos
    type: number
    sql: case
         when ${treated_priority} = 'Urgente' then 300
         when ${treated_priority} = 'Alta' then 300
         when ${treated_priority} = 'Média' then 300
         when ${treated_priority} = 'Baixa' then 300
         else 0 end  ;;
  }

  dimension: sla_p_resposta_no_prazo {
    type: yesno
    sql: case
         when ${sla_primeira_resposta} - ${time_to_first_agent_reply} >= 0 then true
         else false
         end;;
  }

  dimension: sla_resposta_no_prazo {
    type: yesno
    sql: case
         when ${sla_resposta} - (${time_to_close} - coalesce(${awaiting_return_time},0)) >= 0 then true
         else false
         end;;
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
