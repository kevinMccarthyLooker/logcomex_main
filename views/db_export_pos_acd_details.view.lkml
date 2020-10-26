view: db_export_pos_acd_details {
  sql_table_name: public.db_export_pos_acd_details ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: cod_aduana_dest {
    type: string
    sql: ${TABLE}."cod_aduana_dest" ;;
  }

  dimension: cod_ra {
    type: string
    sql: ${TABLE}."cod_ra" ;;
  }

  dimension: cod_urf {
    type: number
    sql: ${TABLE}."cod_urf" ;;
  }

  dimension: consolidacao_ruc {
    type: string
    sql: ${TABLE}."consolidacao_ruc" ;;
  }

  dimension: consolidador_cnpj {
    type: string
    sql: ${TABLE}."consolidador_cnpj" ;;
  }

  dimension: consolidador_nome {
    type: string
    sql: ${TABLE}."consolidador_nome" ;;
  }

  dimension: consolidador_pais {
    type: string
    sql: ${TABLE}."consolidador_pais" ;;
  }

  dimension: consolidador_tipo {
    type: string
    sql: ${TABLE}."consolidador_tipo" ;;
  }

  dimension_group: data_entrada_estoque {
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
    sql: ${TABLE}."data_entrada_estoque" ;;
  }

  dimension: desc_aduana_dest {
    type: string
    sql: ${TABLE}."desc_aduana_dest" ;;
  }

  dimension: desc_ra {
    type: string
    sql: ${TABLE}."desc_ra" ;;
  }

  dimension: desc_urf {
    type: string
    sql: ${TABLE}."desc_urf" ;;
  }

  dimension: importador_cnpj {
    type: string
    sql: ${TABLE}."importador_cnpj" ;;
  }

  dimension: importador_nome {
    type: string
    sql: ${TABLE}."importador_nome" ;;
  }

  dimension: importador_pais {
    type: string
    sql: ${TABLE}."importador_pais" ;;
  }

  dimension: importador_tipo {
    type: string
    sql: ${TABLE}."importador_tipo" ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}."latitude" ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}."longitude" ;;
  }

  dimension: nmconsignatario {
    type: string
    sql: ${TABLE}."nmconsignatario" ;;
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

  dimension: pais_origem {
    type: string
    sql: ${TABLE}."pais_origem" ;;
  }

  dimension: pu_export_urf_pos_data_id {
    type: number
    sql: ${TABLE}."pu_export_urf_pos_data_id" ;;
  }

  dimension: qtd_autoriz_embq_antecip {
    type: number
    sql: ${TABLE}."qtd_autoriz_embq_antecip" ;;
  }

  dimension: responsavel_cnpj {
    type: string
    sql: ${TABLE}."responsavel_cnpj" ;;
  }

  dimension: responsavel_nome {
    type: string
    sql: ${TABLE}."responsavel_nome" ;;
  }

  dimension: responsavel_pais {
    type: string
    sql: ${TABLE}."responsavel_pais" ;;
  }

  dimension: responsavel_tipo {
    type: string
    sql: ${TABLE}."responsavel_tipo" ;;
  }

  dimension: seq_carga {
    type: number
    sql: ${TABLE}."seq_carga" ;;
  }

  dimension: seq_deposito {
    type: number
    sql: ${TABLE}."seq_deposito" ;;
  }

  dimension: situacao_especial {
    type: string
    sql: ${TABLE}."situacao_especial" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
