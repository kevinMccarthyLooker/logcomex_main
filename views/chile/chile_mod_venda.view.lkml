view: chile_mod_venda {
  sql_table_name: public.chile_mod_venda ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: cod_mod_venda {
    type: number
    sql: ${TABLE}."cod_mod_venda" ;;
  }

  dimension: desc_mod_venda {
    type: string
    sql: ${TABLE}."desc_mod_venda" ;;
  }

  dimension: nm_mod_venda {
    type: string
    sql: ${TABLE}."nm_mod_venda" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
