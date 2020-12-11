view: db_export_cargo_reception_carga {
  sql_table_name: public.db_export_cargo_reception_carga ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension_group: created {
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
    sql: ${TABLE}."created_at" ;;
  }

  dimension: id_exp_cargo_details {
    type: number
    sql: ${TABLE}."id_exp_cargo_details" ;;
  }

  dimension: num_due {
    type: string
    sql: ${TABLE}."num_due" ;;
  }

  dimension: num_ruc {
    type: string
    sql: ${TABLE}."num_ruc" ;;
  }

  dimension: qtd_operada {
    type: number
    sql: ${TABLE}."qtd_operada" ;;
  }

  dimension: sgl_unid_medida {
    type: string
    sql: ${TABLE}."sgl_unid_medida" ;;
  }

  dimension: tp_codigo {
    type: string
    sql: ${TABLE}."tp_codigo" ;;
  }

  dimension: tp_descr {
    type: string
    sql: ${TABLE}."tp_descr" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
