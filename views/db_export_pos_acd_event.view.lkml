view: db_export_pos_acd_event {
  sql_table_name: public.db_export_pos_acd_event ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: ano_event {
    type: number
    sql: ${TABLE}."ano_event" ;;
  }

  dimension: ano_manifesto {
    type: number
    sql: ${TABLE}."ano_manifesto" ;;
  }

  dimension_group: data_registro {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."data_registro" ;;
  }

  dimension: desc_event {
    type: string
    sql: ${TABLE}."desc_event" ;;
  }

  dimension: export_pos_acd_details_id {
    type: number
    sql: ${TABLE}."export_pos_acd_details_id" ;;
  }

  dimension: id_responsavel {
    type: string
    sql: ${TABLE}."id_responsavel" ;;
  }

  dimension: num_due {
    type: string
    sql: ${TABLE}."num_due" ;;
  }

  dimension: num_ruc {
    type: string
    sql: ${TABLE}."num_ruc" ;;
  }

  dimension: seq_event {
    type: number
    sql: ${TABLE}."seq_event" ;;
  }

  dimension: seq_manifesto {
    type: number
    sql: ${TABLE}."seq_manifesto" ;;
  }

  dimension: url_consulta {
    type: string
    sql: ${TABLE}."url_consulta" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
