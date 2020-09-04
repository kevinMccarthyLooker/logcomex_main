include: "/**/tickets_movidesk.view"
view: jira_tasks {
  extends: [tickets_movidesk]
  sql_table_name: public.jira_tasks ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: assignee {
    type: string
    sql: ${TABLE}."assignee" ;;
  }

  dimension_group: jira_created {
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

  dimension: issue_type {
    type: string
    sql: ${TABLE}."issue_type" ;;
  }

  dimension: log_key {
    type: string
    sql: ${TABLE}."log_key" ;;

    link: {
      label: "Jira"
      url: "https://logcomex.atlassian.net/browse/{{ value }}"
      icon_url: "https://is5-ssl.mzstatic.com/image/thumb/Purple124/v4/f4/88/3e/f4883e3a-c1af-53dd-d0ba-a3a80cf856eb/AppIcon-0-1x_U007emarketing-0-7-0-85-220.png/246x0w.png"
    }

  }

  dimension: priority {
    type: string
    sql: ${TABLE}."priority" ;;
  }

  dimension: reporter {
    type: string
    sql: ${TABLE}."reporter" ;;
  }

  dimension_group: resolution {
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
    sql: ${TABLE}."resolution_date" ;;
  }


  dimension_group: tempo_aberto_jira {
    type: duration
    sql_start: ${task_created_raw};;
    sql_end: case
             when ${status} = 'Concluído' then ${resolution_date}
             else now()
             end
    ;;
    intervals: [day, hour, minute]
  }

  dimension: jira_status {
    type: string
    sql: ${TABLE}."status" ;;
  }

  dimension_group: task_created {
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
    sql: ${TABLE}."task_created" ;;
  }

  dimension_group: task_updated {
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
    sql: ${TABLE}."task_updated" ;;
  }

  dimension: tickets_movidesk_id {
    type: number
    sql: ${TABLE}."tickets_movidesk_id" ;;
  }

  dimension: time_original_estimate {
    type: number
    sql: ${TABLE}."time_original_estimate" ;;
  }

  dimension: time_spent {
    type: number
    sql: ${TABLE}."time_spent" ;;
  }

  dimension_group: jira_updated {
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

  measure: jira_count {
    type: count
    drill_fields: [id]
  }

  measure: jira_fechados_count {
    type: count
    #drill_fields: [detail*]
    filters: [status: "Concluído"]
  }
  #-----------------campos movidesk---------------------

  dimension: id_ticket_movidesk {hidden: yes primary_key:no}

  dimension: category {hidden: yes}

  dimension: ticket_category {hidden: yes}


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

  dimension_group: created {hidden: yes}

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

  dimension: id_customer {hidden: yes}

  dimension: id_movidesk {hidden: yes}

  dimension: id_movidesk_user {hidden: yes}

  dimension: id_protocol {hidden: yes}

  dimension: id_user {hidden: yes}

  dimension: service_first {hidden: yes}

  dimension: ticket_service_first {hidden: yes}

  dimension: service_second {hidden: yes}

  dimension: ticket_service_second {hidden: yes}

  dimension: service_third {hidden: yes}

  dimension: ticket_service_third {hidden: yes}

  dimension: subject {hidden: yes}

  dimension: status {hidden: yes}

  dimension: ticket_status {hidden: yes}

  dimension_group: tempo_fechamento {hidden: yes}

  dimension_group: tempo_aberto_movidesk {hidden: yes}

  dimension_group: updated {hidden: yes}

  dimension: urgency {hidden: yes}

  dimension: ticket_urgency {hidden: yes}

  dimension: ticket_origin {hidden: yes}

  dimension: ticket_owner {hidden: yes}

  dimension: ticket_squad {hidden: yes}

  dimension_group: last_action {hidden: yes}

  dimension_group: reopened_at {hidden: yes}

  dimension: sla_response_time_min {hidden: yes}

  dimension: sla_solution_time_min {hidden: yes}


  measure: count {hidden: yes}

  measure: tickets_abertos_count {hidden: yes}

  measure: tickets_fechados_count {hidden: yes}

  measure: tickets_cancelados_count {hidden: yes}

  measure: tempo_medio_fechamento_em_dias {hidden: yes}

  measure: tempo_mediana_fechamento_em_horas {hidden: yes}


}
