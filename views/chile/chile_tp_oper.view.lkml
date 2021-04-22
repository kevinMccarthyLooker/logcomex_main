view: chile_tp_oper {
  sql_table_name: public.chile_tp_oper ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: cod {
    type: number
    sql: ${TABLE}."cod" ;;
  }

  dimension: ingresso_saida {
    type: string
    sql: ${TABLE}."ingresso_saida" ;;
  }

  dimension: nm_a_consignar {
    type: string
    sql: ${TABLE}."nm_a_consignar" ;;
  }

  dimension: nm_tpo_oper {
    type: string
    sql: ${TABLE}."nm_tpo_oper" ;;
  }

  dimension: operacao {
    type: string
    sql: ${TABLE}."operacao" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
