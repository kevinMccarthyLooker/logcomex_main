view: access_log {
  sql_table_name: public.access_log ;;
  drill_fields: [id]

  dimension: id {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}."city" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
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

  dimension: dia_da_semana_created_at {
    type: string
    sql:  CASE WHEN (extract(DOW FROM ${TABLE}."created_at") = 0) THEN '(0) Domingo'
           WHEN (extract(DOW FROM ${TABLE}."created_at") = 1) THEN '(1) Segunda'
           WHEN (extract(DOW FROM ${TABLE}."created_at") = 2) THEN '(2) Terça'
           WHEN (extract(DOW FROM ${TABLE}."created_at") = 3) THEN '(3) Quarta'
           WHEN (extract(DOW FROM ${TABLE}."created_at") = 4) THEN '(4) Quinta'
           WHEN (extract(DOW FROM ${TABLE}."created_at") = 5) THEN '(5) Sexta'
           WHEN (extract(DOW FROM ${TABLE}."created_at") = 6) THEN '(6) Sábado'
          else 'Outro' end
    ;;
  }


  dimension: customer_id {
    type: number
    sql: ${TABLE}."customer_id" ;;
  }

  dimension: ip {
    type: string
    sql: ${TABLE}."ip" ;;
  }

  dimension: ip_info {
    type: string
    sql: ${TABLE}."ip_info" ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}."region" ;;
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

  dimension: user_agent {
    type: string
    sql: ${TABLE}."user_agent" ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}."user_id" ;;
  }

  measure: count_users_distinc {
    type: count_distinct
    sql: ${TABLE}."user_id" ;;
    drill_fields: [user_id]
  }

  measure: count_customers_distinc {
    type: count_distinct
    sql: ${TABLE}."customer_id" ;;
    drill_fields: [user_id]
  }

  measure: count_ip_distinc {
    type: count_distinct
    sql: ${TABLE}."ip" ;;
    drill_fields: [user_id, created_raw, ip]
  }

    measure: count_access_log {
    type: count
    drill_fields: [users.name]
  }

  measure: ultimo_acesso{
    type: date
    sql: MAX (${TABLE}."created_at");;
  }

}
