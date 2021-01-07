view: api_request {
  sql_table_name: public.api_request ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: api_agent {
    type: string
    sql: ${TABLE}."api_agent" ;;
  }

  dimension: api_forma {
    type: string
    sql: ${TABLE}."api_forma" ;;
  }

  dimension: api_ip {
    type: string
    sql: ${TABLE}."api_ip" ;;
  }

  dimension: api_key {
    type: string
    sql: ${TABLE}."api_key" ;;
  }

  dimension: api_method {
    type: string
    sql: ${TABLE}."api_method" ;;
  }

  dimension: api_origem {
    type: string
    sql: ${TABLE}."api_origem" ;;
  }

  dimension: api_query_string {
    type: string
    sql: ${TABLE}."api_query_string" ;;
  }

  dimension: api_response {
    type: string
    sql: ${TABLE}."api_response" ;;
  }

  dimension: api_sucess {
    type: string
    sql: ${TABLE}."api_sucess" ;;
  }

  dimension: api_time {
    type: string
    sql: ${TABLE}."api_time" ;;
  }

  dimension: cert_id {
    type: number
    sql: ${TABLE}."cert_id" ;;
  }

  dimension: cert_key {
    type: string
    sql: ${TABLE}."cert_key" ;;
  }

  dimension_group: data_registro {
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
    sql: ${TABLE}."data_registro" ;;
  }

  dimension: ide {
    type: number
    sql: ${TABLE}."ide" ;;
  }

  dimension: idu {
    type: number
    sql: ${TABLE}."idu" ;;
  }

  dimension: login_id {
    type: number
    sql: ${TABLE}."login_id" ;;
  }

  dimension: login_key {
    type: string
    sql: ${TABLE}."login_key" ;;
  }

  dimension: time_request {
    type: number
    sql: ${TABLE}."time_request" ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}."user_id" ;;
  }

  dimension: user_key {
    type: string
    sql: ${TABLE}."user_key" ;;
  }

  dimension: versao {
    type: string
    sql: ${TABLE}."versao" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
