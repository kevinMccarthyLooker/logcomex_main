view: chile_clau_venda {
  sql_table_name: public.chile_clau_venda ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: cd_compra {
    type: number
    sql: ${TABLE}."cd_compra" ;;
  }

  dimension: nm_clausula {
    type: string
    sql: ${TABLE}."nm_clausula" ;;
  }

  dimension: sigla_clausula {
    type: string
    sql: ${TABLE}."sigla_clausula" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
