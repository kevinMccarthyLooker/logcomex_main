view: puc_embarques {
  sql_table_name: public.puc_embarques ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: cert_id {
    type: number
    sql: ${TABLE}."cert_id" ;;
  }

  dimension: conhecimento {
    type: number
    sql: ${TABLE}."conhecimento" ;;
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

  dimension_group: dt_update_embarque {
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
    sql: ${TABLE}."dt_update_embarque" ;;
  }

  dimension: duimp {
    type: string
    sql: ${TABLE}."duimp" ;;
  }

  dimension: is_valid {
    type: yesno
    sql: ${TABLE}."is_valid" ;;
  }

  dimension: payload {
    type: string
    sql: ${TABLE}."payload" ;;
  }

  dimension_group: printed {
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
    sql: ${TABLE}."printed_at" ;;
  }

  dimension_group: processed {
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
    sql: ${TABLE}."processed_at" ;;
  }

  dimension: proxy_ip {
    type: string
    sql: ${TABLE}."proxy_ip" ;;
  }

  dimension: response {
    type: string
    sql: ${TABLE}."response" ;;
  }

  dimension: time_request {
    type: number
    sql: ${TABLE}."time_request" ;;
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

  dimension_group: verified {
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
    sql: ${TABLE}."verified_at" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
