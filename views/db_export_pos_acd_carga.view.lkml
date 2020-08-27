view: db_export_pos_acd_carga {
  sql_table_name: public.db_export_pos_acd_carga ;;
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

  dimension: descricao {
    type: string
    sql: ${TABLE}."descricao" ;;
  }

  dimension: export_pos_acd_details_id {
    type: number
    sql: ${TABLE}."export_pos_acd_details_id" ;;
  }

  dimension: qtd_estocada {
    type: number
    sql: ${TABLE}."qtd_estocada" ;;
  }

  dimension: qtd_total {
    type: number
    sql: ${TABLE}."qtd_total" ;;
  }

  dimension: saldo {
    type: number
    sql: ${TABLE}."saldo" ;;
  }

  dimension: sdo_codigo {
    type: string
    sql: ${TABLE}."sdo_codigo" ;;
  }

  dimension: sdo_descricao {
    type: string
    sql: ${TABLE}."sdo_descricao" ;;
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
