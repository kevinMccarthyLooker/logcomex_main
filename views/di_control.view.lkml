view: di_control {
  sql_table_name: public.di_control ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: canal {
    type: string
    sql: ${TABLE}."canal" ;;
  }

  dimension: cod_situacao {
    type: string
    sql: ${TABLE}."cod_situacao" ;;
  }

  dimension: codigo {
    type: string
    sql: ${TABLE}."codigo" ;;
  }

  dimension: conhecimento {
    type: string
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

  dimension_group: data_hora_consulta {
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
    sql: ${TABLE}."data_hora_consulta" ;;
  }

  dimension_group: data_hora_registro {
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
    sql: ${TABLE}."data_hora_registro" ;;
  }

  dimension_group: data_hora_situacao {
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
    sql: ${TABLE}."data_hora_situacao" ;;
  }

  dimension: di_number {
    type: number
    sql: ${TABLE}."di_number" ;;
  }

  dimension: digit {
    type: number
    sql: ${TABLE}."digit" ;;
  }

  dimension: historico {
    type: string
    sql: ${TABLE}."historico" ;;
  }

  dimension: server_name {
    type: string
    sql: ${TABLE}."server_name" ;;
  }

  dimension: situacao {
    type: string
    sql: ${TABLE}."situacao" ;;
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

  dimension: used_ip {
    type: string
    sql: ${TABLE}."used_ip" ;;
  }

  dimension: via_transporte {
    type: string
    sql: ${TABLE}."via_transporte" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, server_name, di_control_pu.count]
  }
}
