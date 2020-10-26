view: recinto_aduaneiro {
  sql_table_name: public.recinto_aduaneiro ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: nome {
    type: string
    sql: ${TABLE}."nome" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
