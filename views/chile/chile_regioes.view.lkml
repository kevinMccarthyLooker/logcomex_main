view: chile_regioes {
  sql_table_name: public.chile_regioes ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: cod_reg_ori {
    type: number
    sql: ${TABLE}."cod_reg_ori" ;;
  }

  dimension: nm_reg {
    type: string
    sql: ${TABLE}."nm_reg" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
