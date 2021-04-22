view: chile_uni_medida {
  sql_table_name: public.chile_uni_medida ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: cd_uni_med {
    type: number
    sql: ${TABLE}."cd_uni_med" ;;
  }

  dimension: nm_uni_med {
    type: string
    sql: ${TABLE}."nm_uni_med" ;;
  }

  dimension: uni_med {
    type: string
    sql: ${TABLE}."uni_med" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
