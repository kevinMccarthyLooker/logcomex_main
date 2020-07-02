view: workflow {
  sql_table_name: public.workflow ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: account_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."account_id" ;;
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

  dimension: descricao {
    type: string
    sql: ${TABLE}."descricao" ;;
  }

  dimension: icone {
    type: string
    sql: ${TABLE}."icone" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."name" ;;
  }

  dimension: org_id {
    type: number
    sql: ${TABLE}."org_id" ;;
  }

  dimension: public {
    type: yesno
    sql: ${TABLE}."public" ;;
  }

  dimension: template_id {
    type: number
    sql: ${TABLE}."template_id" ;;
  }

  dimension: token {
    type: string
    sql: ${TABLE}."token" ;;
  }

  dimension: type {
    type: string
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

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."user_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      name,
      users.name,
      users.user_id,
      account.account_id,
      processos.count,
      workflow_step.count
    ]
  }
}
