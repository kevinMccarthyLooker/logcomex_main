view: chile_reg_imp {
  sql_table_name: public.chile_reg_imp ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: cod_reg_imp {
    type: number
    sql: ${TABLE}."cod_reg_imp" ;;
  }

  dimension: nm_reg_imp {
    type: string
    sql: ${TABLE}."nm_reg_imp" ;;
  }

  dimension: sigla_reg_imp {
    type: string
    sql: ${TABLE}."sigla_reg_imp" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
