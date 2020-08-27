view: db_export_pos_acd {
  sql_table_name: public.db_export_pos_acd ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: ano_carga {
    type: number
    sql: ${TABLE}."ano_carga" ;;
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

  dimension: cd_sit_esp {
    type: string
    sql: ${TABLE}."cd_sit_esp" ;;
  }

  dimension: cod_ra {
    type: number
    sql: ${TABLE}."cod_ra" ;;
  }

  dimension: cod_urf {
    type: number
    sql: ${TABLE}."cod_urf" ;;
  }

  dimension: conhecimento {
    type: string
    sql: ${TABLE}."conhecimento" ;;
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

  dimension: nm_sit_esp {
    type: string
    sql: ${TABLE}."nm_sit_esp" ;;
  }

  dimension: nrcemercante {
    type: string
    sql: ${TABLE}."nrcemercante" ;;
  }

  dimension: num_due {
    type: string
    sql: ${TABLE}."num_due" ;;
  }

  dimension: num_duimp {
    type: string
    sql: ${TABLE}."num_duimp" ;;
  }

  dimension: num_ruc {
    type: string
    sql: ${TABLE}."num_ruc" ;;
  }

  dimension: pais_dest_initials {
    type: string
    sql: ${TABLE}."pais_dest_initials" ;;
  }

  dimension: pu_export_urf_pos_data_id {
    label: "id_embarque"
    type: number
    sql: ${TABLE}."pu_export_urf_pos_data_id" ;;
  }

  dimension: seq_carga {
    type: number
    sql: ${TABLE}."seq_carga" ;;
  }

  dimension: seq_deposito {
    type: number
    sql: ${TABLE}."seq_deposito" ;;
  }

  dimension: sit_esp {
    type: string
    sql: ${TABLE}."sit_esp" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }

  measure: count_embarques {
    type: count_distinct
    sql: ${pu_export_urf_pos_data_id} ;;
  }

}
