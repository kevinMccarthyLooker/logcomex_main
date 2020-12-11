view: robots {
  sql_table_name: public.robots ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: active {
    type: yesno
    sql: ${TABLE}."active" ;;
  }

  dimension: amount_for_round {
    type: number
    sql: ${TABLE}."amount_for_round" ;;
  }

  dimension: class {
    type: string
    sql: ${TABLE}."class" ;;
  }

  dimension: code_shipowner {
    type: string
    sql: ${TABLE}."code_shipowner" ;;
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

  dimension: days_week_run {
    type: string
    sql: ${TABLE}."days_week_run" ;;
  }

  dimension: debug_mode {
    type: yesno
    sql: ${TABLE}."debug_mode" ;;
  }

  dimension_group: finish_hour {
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
    sql: ${TABLE}."finish_hour" ;;
  }

  dimension: id_shipowner {
    type: number
    sql: ${TABLE}."id_shipowner" ;;
  }

  dimension: machine {
    type: number
    sql: ${TABLE}."machine" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."name" ;;
  }

  dimension: run_holidays {
    type: yesno
    sql: ${TABLE}."run_holidays" ;;
  }

  dimension: running {
    type: yesno
    sql: ${TABLE}."running" ;;
  }

  dimension_group: start_hour {
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
    sql: ${TABLE}."start_hour" ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}."type" ;;
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
    drill_fields: [id, name]
  }
}
