view: chile_porto {
  sql_table_name: public.chile_porto ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: cd_pais {
    type: number
    sql: ${TABLE}."cd_pais" ;;
  }

  dimension: cd_porto {
    type: number
    sql: ${TABLE}."cd_porto" ;;
  }

  dimension: nm_porto {
    type: string
    sql: ${TABLE}."nm_porto" ;;
  }

  dimension: pais {
    type: string
    sql: ${TABLE}."pais" ;;
  }

  dimension: tpo_porto {
    type: string
    sql: ${TABLE}."tpo_porto" ;;
  }

  dimension: zona_geo {
    type: string
    sql: ${TABLE}."zona_geo" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
