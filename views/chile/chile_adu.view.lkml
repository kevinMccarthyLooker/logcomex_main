view: chile_adu {
  sql_table_name: public.chile_adu ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: cod_adu {
    type: number
    sql: ${TABLE}."cod_adu" ;;
  }

  dimension: nm_aduana {
    type: string
    sql: ${TABLE}."nm_aduana" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
