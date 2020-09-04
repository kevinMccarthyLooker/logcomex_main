view: jira_tasks {
  derived_table: {
    sql: select jt.id as id,
jt.tickets_movidesk_id as tickets_movidesk_id,
jt.status as status,
jt.log_key as log_key,
jt.issue_type as issue_type,
jt.assignee as assignee,
jt.reporter as reporter,
jt.task_created as task_created,
jt.task_updated as task_updated,
jt.resolution_date as resolution_date,
jt.time_original_estimate as time_original_estimate,
jt.time_spent as time_spent,
jt.priority as priority,
jt.created_at as created_at,
jt.updated_at as updated_at,
(jt.task_created - tm.created_date) as diff_abertura,
(jt.resolution_date - tm.closing_date ) as diff_fechamento
from jira_tasks jt
inner join tickets_movidesk tm on tm.id = jt.tickets_movidesk_id  ;;
  }
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
             when ${jira_status} = 'Concluído' then ${resolution_date}
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

  dimension_group: diff_abertura {
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
    sql: ${TABLE}.diff_abertura ;;

  }

  dimension_group: diff_fechamento {
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
    sql: ${TABLE}.diff_fechamento ;;

  }

  measure: media_abertura_sistemas {
    type: average
   # filters: [diff_abertura_time: ">=0"]
    sql: ${diff_abertura_time};;

  }

  measure: media_fechamento_sistemas {
    type: average
   # filters: [diff_fechamento_time: ">=0"]
    sql: ${diff_fechamento_time};;

  }


  measure: jira_count {
    type: count
    drill_fields: [id]
  }

  measure: jira_fechados_count {
    type: count
    #drill_fields: [detail*]
    filters: [jira_status: "Concluído"]
  }
 }
