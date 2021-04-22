view: chile_moeda {
  sql_table_name: public.chile_moeda ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: cd_moeda {
    type: number
    sql: ${TABLE}."cd_moeda" ;;
  }

  dimension: moeda {
    type: string
    sql: ${TABLE}."moeda" ;;
  }

  dimension: pais_moeda {
    type: string
    sql: ${TABLE}."pais_moeda" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
