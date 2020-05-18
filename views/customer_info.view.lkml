view: customer_info {
  sql_table_name: public.customer_info ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    hidden:  yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: customer_id {
    type: number
    hidden:  yes
    sql: ${TABLE}."customer_id" ;;
  }

  dimension: total_valor_pag {
    type: number
    sql: ${TABLE}."total_valor_pag" ;;
  }
}
