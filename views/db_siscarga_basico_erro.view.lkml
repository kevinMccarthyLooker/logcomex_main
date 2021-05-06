view: db_siscarga_basico_erro {
  sql_table_name: public.db_siscarga_basico_erro ;;
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

  dimension: erro_mensagem {
    type: string
    sql: ${TABLE}."erro_mensagem" ;;
  }

  dimension: erro_stack {
    type: string
    sql: ${TABLE}."erro_stack" ;;
  }

  dimension: num_ce {
    type: number
    sql: ${TABLE}."num_ce" ;;
  }

  dimension: numero {
    type: string
    sql: ${TABLE}."numero" ;;
  }

  dimension: resolvido {
    type: yesno
    sql: ${TABLE}."resolvido" ;;
  }

  dimension: tipo {
    type: string
    sql: ${TABLE}."tipo" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
