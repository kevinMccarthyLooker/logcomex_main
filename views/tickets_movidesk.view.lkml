view: tickets_movidesk {
  sql_table_name: public.tickets_movidesk ;;
  drill_fields: [id_ticket_movidesk]

  dimension: id_ticket_movidesk {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}."category" ;;
  }

  dimension: ticket_category {
    type: string
    sql: Coalesce(tickets_movidesk.category,'Não Informado')
    ;;
  }


  dimension_group: ticket_closing_date {
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
    sql: ${TABLE}."closing_date" ;;
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

  dimension_group: ticket_created_date {
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
    sql: ${TABLE}."created_date" ;;
  }

  dimension: id_customer {
    type: number
    sql: ${TABLE}."id_customer" ;;
  }

  dimension: id_movidesk {
    type: string
    sql: ${TABLE}."id_movidesk" ;;
  }

  dimension: id_movidesk_user {
    type: string
    sql: ${TABLE}."id_movidesk_user" ;;
  }

  dimension: id_protocol {
    type: number
    sql: ${TABLE}."id_protocol" ;;
    link: {
      label: "Movidesk"
      url: "https://logcomex.movidesk.com/Ticket/Edit/{{ value }}"
    }
  }

  dimension: id_user {
    type: number
    sql: ${TABLE}."id_user" ;;
  }

  dimension: service_first {
    type: string
    sql: ${TABLE}."service_first" ;;
  }

  dimension: ticket_service_first {
    type: string
    sql: Coalesce(tickets_movidesk.service_first ,'Não Informado');;
  }

  dimension: service_second {
    type: string
    sql: ${TABLE}."service_second" ;;
  }

  dimension: ticket_service_second {
    type: string
    sql: Coalesce(tickets_movidesk.service_second ,'Não Informado');;
  }

  dimension: service_third {
    type: string
    sql: ${TABLE}."service_third" ;;
  }

  dimension: ticket_service_third {
    type: string
    sql: Coalesce(tickets_movidesk.service_third ,'Não Informado');;
  }

  dimension: subject {
    type: string
    sql: ${TABLE}."subject" ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}."status" ;;
  }

  dimension: ticket_status {
    type: string
    sql: case
          when tickets_movidesk.status = 'Fechado' then 'Fechado'
          when tickets_movidesk.status = 'Cancelado' then 'Cancelado'
          when tickets_movidesk.status is null then 'Cancelado'
          else 'Aberto'
          end
    ;;
  }

  dimension_group: tempo_fechamento {
    type: duration
    sql_start: ${ticket_created_date_raw};;
    sql_end: ${ticket_closing_date_raw} ;;
    intervals: [day, hour, minute]
  }

  dimension_group: tempo_aberto_movidesk {
    type: duration
    sql_start: ${ticket_created_date_raw};;
    sql_end: case
             when tickets_movidesk.status = 'Fechado' then ${ticket_closing_date_raw}
             when tickets_movidesk.status = 'Cancelado' then ${ticket_closing_date_raw}
             when tickets_movidesk.status is null then ${ticket_closing_date_raw}
             else now()
             end
    ;;
    intervals: [day, hour, minute]
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

  dimension: urgency {
    type: string
    sql: ${TABLE}."urgency" ;;
  }

  dimension: ticket_urgency {
    type: string
    sql: Coalesce(tickets_movidesk.urgency,'Não Informado');;
  }

  dimension: ticket_origin {
    type: string
    sql: Coalesce(${TABLE}."origin",'Não Informado');;
  }

  dimension: ticket_owner {
    type: string
    sql: Coalesce(${TABLE}."owner",'Não Informado');;
  }

  dimension: ticket_squad {
    type: string
    sql: Coalesce(${TABLE}."squad",'Não Informado');;
  }

  dimension_group: last_action {
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
    sql: ${TABLE}."last_action_date" ;;
  }

  dimension_group: reopened_at {
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
    sql: ${TABLE}."reopened_at" ;;
  }

  dimension: sla_response_time_min {
    type: number
    sql: ${TABLE}.sla_response_time_min;;
  }


  dimension: sla_solution_time_min {
    type: number
    sql: ${TABLE}.sla_solution_time_min;;
  }


  measure: count {
    type: count
    drill_fields: [detail*]
  }

  measure: tickets_abertos_count {
    type: count
    drill_fields: [detail*]
    filters: [ticket_status: "Aberto"]
  }

  measure: tickets_fechados_count {
    type: count
    drill_fields: [detail*]
    filters: [ticket_status: "Fechado"]
  }

  measure: tickets_cancelados_count {
    type: count
    drill_fields: [detail*]
    filters: [ticket_status: "Cancelado"]
  }

measure: tempo_medio_fechamento_em_dias {
  type: average
  sql: ${days_tempo_fechamento} ;;
  value_format: "0.00 \" Days\""
}

  measure: tempo_mediana_fechamento_em_horas {
    type: median
    sql: ${hours_tempo_fechamento};;
    value_format: "0.0 \" Hours\""
  }

# ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id_protocol,
      service_first,
      service_second,
      service_third,
      subject,
      ticket_created_date_raw,
      ticket_closing_date_raw
    ]
  }
}
