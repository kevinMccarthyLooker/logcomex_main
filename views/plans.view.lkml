view: plans {
  sql_table_name: public.plans ;;
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

  dimension: org_id {
    type: number
    sql: ${TABLE}."org_id" ;;
  }

  dimension: plan_active {
    type: yesno
    sql: ${TABLE}."plan_active" ;;
  }

  dimension: plan_code {
    type: string
    sql: ${TABLE}."plan_code" ;;
  }

  dimension: plan_name {
    type: string
    sql: ${TABLE}."plan_name" ;;
  }

  dimension: plan_orgs {
    type: number
    sql: ${TABLE}."plan_orgs" ;;
  }

  dimension: plan_price {
    type: number
    sql: ${TABLE}."plan_price" ;;
  }

  dimension: plan_price_net {
    type: number
    sql: ${TABLE}."plan_price_net" ;;
  }

  dimension: plan_public {
    type: yesno
    sql: ${TABLE}."plan_public" ;;
  }

  dimension: plan_qtde {
    type: number
    sql: ${TABLE}."plan_qtde" ;;
  }

  dimension: plan_storage {
    type: number
    sql: ${TABLE}."plan_storage" ;;
  }

  dimension: plan_users {
    type: number
    sql: ${TABLE}."plan_users" ;;
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

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      plan_name,
      users.name,
      users.user_id,
      account.account_id,
      account.count
    ]
  }
}
