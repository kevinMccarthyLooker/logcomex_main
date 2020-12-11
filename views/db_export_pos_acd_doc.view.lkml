view: db_export_pos_acd_doc {
  sql_table_name: public.db_export_pos_acd_doc ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: doc_codigo {
    type: string
    sql: ${TABLE}."doc_codigo" ;;
  }

  dimension: doc_desc_sit {
    type: string
    sql: ${TABLE}."doc_desc_sit" ;;
  }

  dimension: doc_descricao {
    type: string
    sql: ${TABLE}."doc_descricao" ;;
  }

  dimension_group: doc_dt_emiss {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."doc_dt_emiss" ;;
  }

  dimension: doc_num {
    type: string
    sql: ${TABLE}."doc_num" ;;
  }

  dimension: doc_saldo {
    type: number
    sql: ${TABLE}."doc_saldo" ;;
  }

  dimension: doc_sit_chave {
    type: string
    sql: ${TABLE}."doc_sit_chave" ;;
  }

  dimension: doc_tipo_chave {
    type: string
    sql: ${TABLE}."doc_tipo_chave" ;;
  }

  dimension: doc_tipo_desc {
    type: string
    sql: ${TABLE}."doc_tipo_desc" ;;
  }

  dimension: export_pos_acd_details_id {
    type: number
    sql: ${TABLE}."export_pos_acd_details_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
