view: db_export_pos_acd_shipper {
  sql_table_name: public.db_export_pos_acd_shipper ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: export_pos_acd_details_id {
    type: number
    sql: ${TABLE}."export_pos_acd_details_id" ;;
  }

  dimension: shipper_cnpj {
    type: string
    sql: ${TABLE}."shipper_cnpj" ;;
  }

  dimension: shipper_nome {
    type: string
    sql: ${TABLE}."shipper_nome" ;;
  }

  dimension: shipper_pais {
    type: string
    sql: ${TABLE}."shipper_pais" ;;
  }

  dimension: shipper_tipo {
    type: string
    sql: ${TABLE}."shipper_tipo" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
