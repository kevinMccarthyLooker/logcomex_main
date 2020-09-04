view: jira_tasks {
  sql_table_name: public.jira_tasks ;;
  drill_fields: [id]

  dimension: id {
    primary_key: no
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: assignee {
    type: string
    sql: ${TABLE}."assignee" ;;
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

  dimension: status {
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

  measure: jira_fechados_count {
    type: count
    #drill_fields: [detail*]
    filters: [status: "Concluído"]
  }
}
