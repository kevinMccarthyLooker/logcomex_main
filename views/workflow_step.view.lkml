view: workflow_step {
  sql_table_name: public.workflow_step ;;
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

  dimension: color {
    type: string
    sql: ${TABLE}."color" ;;
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

  dimension: end_step {
    type: yesno
    sql: ${TABLE}."end_step" ;;
  }

  dimension: event_id {
    type: number
    sql: ${TABLE}."event_id" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."name" ;;
  }

  dimension: ordem {
    type: number
    sql: ${TABLE}."ordem" ;;
  }

  dimension: org_id {
    type: number
    sql: ${TABLE}."org_id" ;;
  }

  dimension: sla {
    type: number
    sql: ${TABLE}."sla" ;;
  }

  dimension: sla_field_id {
    type: number
    sql: ${TABLE}."sla_field_id" ;;
  }

  dimension: sla_type {
    type: string
    sql: ${TABLE}."sla_type" ;;
  }

  dimension: step_color {
    type: string
    sql: ${TABLE}."step_color" ;;
  }

  dimension: token {
    type: string
    sql: ${TABLE}."token" ;;
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

  dimension: workflow_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."workflow_id" ;;
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
      workflow.name,
      workflow.id,
      users.name,
      users.user_id,
      account.account_id
    ]
  }
}
