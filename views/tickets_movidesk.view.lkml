view: tickets_movidesk {
  sql_table_name: public.tickets_movidesk ;;
  drill_fields: [id]

  dimension: id {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}."category" ;;
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
    hidden:  yes
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
  }

  dimension: id_user {
    type: number
    sql: ${TABLE}."id_user" ;;
  }

  dimension: service_first {
    type: string
    sql: ${TABLE}."service_first" ;;
  }

  dimension: service_second {
    type: string
    sql: ${TABLE}."service_second" ;;
  }

  dimension: service_third {
    type: string
    sql: ${TABLE}."service_third" ;;
  }

  dimension: subject {
    type: string
    sql: ${TABLE}."subject" ;;
  }

  dimension: ticket_aberto {
    type: yesno
    sql: case when tickets_movidesk.closing_date is null then true else false end
    ;;
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

  measure: count {
    type: count
    drill_fields: [service_first, service_second, service_third, users.name, users.email, created_date]
  }
}
