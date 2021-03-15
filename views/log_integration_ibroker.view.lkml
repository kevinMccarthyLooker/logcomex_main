view: log_integration_ibroker {
  sql_table_name: public.log_integration_ibroker ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
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
    sql: ${TABLE}."customer_id" ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}."description" ;;
  }

  dimension: execution_token {
    type: string
    sql: ${TABLE}."execution_token" ;;
  }

  dimension: token_tracking {
    type: string
    sql: ${TABLE}."token_tracking" ;;
  }

  dimension: reference {
    type: string
    sql: ${TABLE}."token_tracking" ;;
  }

  dimension: has_error {
    type: yesno
    sql: ${TABLE}."has_error" ;;
  }

  dimension: is_robot_update {
    type: yesno
    sql: ${TABLE}."is_robot_update" ;;
  }

  dimension: payload {
    type: string
    sql: ${TABLE}."payload" ;;
  }

  dimension: type_tracking {
    type: string
    sql: ${TABLE}."type_tracking" ;;
  }

  dimension: modal {
    type: string
    sql:  CASE WHEN (log_integration_ibroker.type_tracking = '0') THEN 'Marítimo'
               WHEN (log_integration_ibroker.type_tracking = '1') THEN 'Aéreo'
          else 'Outros' end
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

  measure: count {
    type: count
    drill_fields: [id]
  }

  measure: count_error {
    type: count
    filters: [has_error: "yes"]
    drill_fields: [id]
  }

  measure: count_integracoes {
    type: count_distinct
    sql: ${execution_token} ;;
    drill_fields: [id]
  }

  measure: count_embarques {
    type: count_distinct
    sql: ${token_tracking} ;;
    drill_fields: [id]
  }

  measure: data_ultima_integracao {
    type:  max
    sql: ${created_raw} ;;
  }

}
