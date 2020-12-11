view: db_export_pos_acd_volume {
  sql_table_name: public.db_export_pos_acd_volume ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: codigo {
    type: string
    sql: ${TABLE}."codigo" ;;
  }

  dimension: export_pos_acd_details_id {
    type: number
    sql: ${TABLE}."export_pos_acd_details_id" ;;
  }

  dimension: qtd_volume {
    type: number
    sql: ${TABLE}."qtd_volume" ;;
  }

  dimension: unid_med {
    type: string
    sql: ${TABLE}."unid_med" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
