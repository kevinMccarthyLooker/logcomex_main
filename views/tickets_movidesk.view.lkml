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

  dimension: ticket_status {
    type: string
    sql: case
          when tickets_movidesk.closing_date is not null then 'Fechado'
          when tickets_movidesk.category is null then 'Cancelado'
          else 'Aberto'
          end
    ;;
  }

  dimension_group: tempo_fechamento {
    type: duration
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql_start: ${ticket_created_date_raw};;
    sql_end: ${ticket_closing_date_raw} ;;
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


# ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      service_first,
      service_second,
      service_third,
      subject,
      ticket_created_date_raw,
      ticket_closing_date_raw
    ]
  }
}
