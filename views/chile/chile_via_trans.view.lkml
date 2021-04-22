view: chile_via_trans {
  sql_table_name: public.chile_via_trans ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: cod_via_trans {
    type: number
    sql: ${TABLE}."cod_via_trans" ;;
  }

  dimension: nm_via_trans {
    type: string
    sql: ${TABLE}."nm_via_trans" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
