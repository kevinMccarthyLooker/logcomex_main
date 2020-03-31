view: user_profile_customer {
  sql_table_name: public.user_profile_customer ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: avatar {
    type: string
    sql: ${TABLE}."avatar" ;;
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

  dimension: customer_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."customer_id" ;;
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

  dimension: group_id {
    type: number
    sql: ${TABLE}."group_id" ;;
  }

  dimension: job {
    type: string
    sql: ${TABLE}."job" ;;
  }

  dimension: language {
    type: string
    sql: ${TABLE}."language" ;;
  }

  dimension: phones {
    type: string
    sql: ${TABLE}."phones" ;;
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

  dimension: who_attributed_permission_id {
    type: number
    sql: ${TABLE}."who_attributed_permission_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      users.id,
      users.name,
      customer.id,
      customer.name,
      customer.custom_name
    ]
  }
}
