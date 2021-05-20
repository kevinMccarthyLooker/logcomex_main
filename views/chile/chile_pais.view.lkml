view: chile_pais {
  sql_table_name: public.chile_pais ;;
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

  dimension: nm_continente {
    type: string
    sql: ${TABLE}."nm_continente" ;;
  }

  dimension: nm_pais {
    type: string
    sql: ${TABLE}."nm_pais" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
