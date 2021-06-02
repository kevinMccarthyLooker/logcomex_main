view: hubspot_tickets {

  derived_table: {
    sql:select *,
        case
        when qq1.tempo_util - qq1.awaiting_return_time < 0 then null
        else qq1.tempo_util - coalesce(qq1.awaiting_return_time,0)
        end as tempo_real
        from
          (
            select ht.*,
            (case
            when date(ht.create_date_ticket) = date(ht.close_date_ticket) -- aberto e fechado no mesmo dia
            then extract(EPOCH from (ht.close_date_ticket - ht.create_date_ticket))
            when ht.create_date_ticket > date(ht.create_date_ticket) + interval '18 hours'
            then 0 + ((sum(case when extract(dow from s) in (1,2,3,4,5) then 1 else 0 end) - 2) * 9 * 3600) + extract(EPOCH from ( ht.close_date_ticket - (date(ht.close_date_ticket) + interval '8 hours')))
            else extract(EPOCH from (date(ht.create_date_ticket) + interval '18 hours' - ht.create_date_ticket)) + ((sum(case when extract(dow from s) in (1,2,3,4,5) then 1 else 0 end) - 2) * 9 * 3600) + extract(EPOCH from ( ht.close_date_ticket - (date(ht.close_date_ticket) + interval '8 hours')))
            end) as tempo_util
            from hubspot_tickets ht
            left join generate_series(date(ht.create_date_ticket) ,date(ht.close_date_ticket), '1 day'::interval) s on true
            group by ht.id
          ) as qq1 ;;
  }

#  drill_fields: [id]

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

  dimension: tempo_util { # tempo entre a abertura do chamado e o fechamento, considerando 9h de servico por dia e descontando final de semana
    type: number
    sql: ${TABLE}."tempo_util" ;;
  }

  dimension: tempo_real { # tempo util menos o tempo de espera da resposta do cliente
    type: number
    sql: ${TABLE}."tempo_real" ;;
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

  dimension: nps_score_type {
    type: string
    sql: case
         when ${nps_score} is null then 'Sem Resposta'
         when ${nps_score} between 6 and 7 then 'Satisfeito'
         when ${nps_score} between 3 and 5 then 'Neutro'
         when ${nps_score} between 1 and 2 then 'Insatisfeito'
         else ${nps_score}--'Verificar'
         end;;
  }

  dimension: satisfacao_normalizado {
    type: number
    sql:
    case
    when ${TABLE}."nps_score" between 1 and 2 then 1
    when ${TABLE}."nps_score" = 3 then 2
    when ${TABLE}."nps_score" = 4 then 3
    when ${TABLE}."nps_score" = 5 then 3
    when ${TABLE}."nps_score" = 6 then 4
    when ${TABLE}."nps_score" = 7 then 5
    end   ;;
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
    type: string
    sql: case
         when ${sla_primeira_resposta} - ${time_to_first_agent_reply} >= 0 then 'yes'
         when ${time_to_first_agent_reply} is null then null
         else 'no'
         end;;
  }

  dimension: sla_resposta_no_prazo {
    type: string
    sql: case
         when ${sla_resposta} - (${tempo_real}) >= 0 then 'yes'
         when ${tempo_real} is null then null
         else 'no'
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
    drill_fields: [id,ticket_id,customer.name,ticket_owner,squad,satisfacao_normalizado,create_date_ticket_date,close_date_ticket_date]
  }

  measure: count_satisfeitos {
    type: count
    filters: [nps_score: "6,7"]
    drill_fields: [id,ticket_id,customer.name,ticket_owner,squad,satisfacao_normalizado,nps_score,create_date_ticket_date,close_date_ticket_date]
  }

  measure: count_neutros{
    type: count
    filters: [nps_score: "3,4,5"]
    drill_fields: [id,ticket_id,customer.name,ticket_owner,squad,satisfacao_normalizado,nps_score,create_date_ticket_date,close_date_ticket_date]
  }

  measure: count_insatisfeitos {
    type: count
    filters: [nps_score: "1,2,3"]
    drill_fields: [id,ticket_id,customer.name,ticket_owner,squad,satisfacao_normalizado,nps_score,create_date_ticket_date,close_date_ticket_date]
  }
}
