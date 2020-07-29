view: db_export_pre_acd {
  sql_table_name: public.db_export_pre_acd ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: ano_deposito {
    type: number
    sql: ${TABLE}."ano_deposito" ;;
  }

  dimension: cd_pais_dest {
    type: number
    sql: ${TABLE}."cd_pais_dest" ;;
  }

  dimension: cd_responsavel {
    type: string
    sql: ${TABLE}."cd_responsavel" ;;
  }

  dimension: cdncm {
    type: number
    sql: ${TABLE}."cdncm" ;;
  }

  dimension: cod_ra {
    type: number
    sql: ${TABLE}."cod_ra" ;;
  }

  dimension: cod_urf {
    type: number
    sql: ${TABLE}."cod_urf" ;;
  }

  dimension_group: dt_emissao_nf {
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
    sql: ${TABLE}."dt_emissao_nf" ;;
  }

  dimension_group: filter {
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
    sql: ${TABLE}."filter_date" ;;
  }

  dimension: is_conteiner {
    type: string
    sql: ${TABLE}."is_conteiner" ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}."latitude" ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}."longitude" ;;
  }

  dimension: nm_pais_dest {
    type: string
    sql: ${TABLE}."nm_pais_dest" ;;
  }

  dimension: nm_responsavel {
    type: string
    sql: ${TABLE}."nm_responsavel" ;;
  }

  dimension: num_documento {
    type: string
    sql: ${TABLE}."num_documento" ;;
  }

  dimension: num_due {
    type: string
    sql: ${TABLE}."num_due" ;;
  }

  dimension: num_item {
    type: number
    sql: ${TABLE}."num_item" ;;
  }

  dimension: num_nf {
    type: string
    sql: ${TABLE}."num_nf" ;;
  }

  dimension: pais_dest_initials {
    type: string
    sql: ${TABLE}."pais_dest_initials" ;;
  }

  dimension: pu_export_urf_pre_data_id {
    type: number
    sql: ${TABLE}."pu_export_urf_pre_data_id" ;;
  }

  dimension: seq_deposito {
    type: number
    sql: ${TABLE}."seq_deposito" ;;
  }

  dimension: tipo {
    type: string
    sql: ${TABLE}."tipo" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
