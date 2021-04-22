view: chile_tpo_carga {
  sql_table_name: public.chile_tpo_carga ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: cd_tpo_carga {
    type: string
    sql: ${TABLE}."cd_tpo_carga" ;;
  }

  dimension: desc_tpo_carga {
    type: string
    sql: ${TABLE}."desc_tpo_carga" ;;
  }

  dimension: nm_tpo_carga {
    type: string
    sql: ${TABLE}."nm_tpo_carga" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
