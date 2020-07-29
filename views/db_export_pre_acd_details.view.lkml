view: db_export_pre_acd_details {
  sql_table_name: public.db_export_pre_acd_details ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: cdncm {
    type: number
    sql: ${TABLE}."cdncm" ;;
  }

  dimension: cdncm_desc {
    type: string
    sql: ${TABLE}."cdncm_desc" ;;
  }

  dimension: cod_ra {
    type: string
    sql: ${TABLE}."cod_ra" ;;
  }

  dimension: cod_urf {
    type: number
    sql: ${TABLE}."cod_urf" ;;
  }

  dimension: condutor_cnpj {
    type: string
    sql: ${TABLE}."condutor_cnpj" ;;
  }

  dimension: condutor_nome {
    type: string
    sql: ${TABLE}."condutor_nome" ;;
  }

  dimension: condutor_pais {
    type: string
    sql: ${TABLE}."condutor_pais" ;;
  }

  dimension: condutor_tipo {
    type: string
    sql: ${TABLE}."condutor_tipo" ;;
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

  dimension: desc_avarias {
    type: string
    sql: ${TABLE}."desc_avarias" ;;
  }

  dimension: desc_ra {
    type: string
    sql: ${TABLE}."desc_ra" ;;
  }

  dimension: desc_urf {
    type: string
    sql: ${TABLE}."desc_urf" ;;
  }

  dimension: doc_desc_sit {
    type: string
    sql: ${TABLE}."doc_desc_sit" ;;
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

  dimension: latitude {
    type: number
    sql: ${TABLE}."latitude" ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}."longitude" ;;
  }

  dimension: motivo_nao_pesagem {
    type: string
    sql: ${TABLE}."motivo_nao_pesagem" ;;
  }

  dimension: nf_dest_cnpj {
    type: string
    sql: ${TABLE}."nf_dest_cnpj" ;;
  }

  dimension: nf_dest_nome {
    type: string
    sql: ${TABLE}."nf_dest_nome" ;;
  }

  dimension: nf_dest_pais {
    type: string
    sql: ${TABLE}."nf_dest_pais" ;;
  }

  dimension: nf_dest_tipo {
    type: string
    sql: ${TABLE}."nf_dest_tipo" ;;
  }

  dimension: nf_emissao {
    type: string
    sql: ${TABLE}."nf_emissao" ;;
  }

  dimension: nf_emitente_cnpj {
    type: string
    sql: ${TABLE}."nf_emitente_cnpj" ;;
  }

  dimension: nf_emitente_nome {
    type: string
    sql: ${TABLE}."nf_emitente_nome" ;;
  }

  dimension: nf_emitente_pais {
    type: string
    sql: ${TABLE}."nf_emitente_pais" ;;
  }

  dimension: nf_emitente_tipo {
    type: string
    sql: ${TABLE}."nf_emitente_tipo" ;;
  }

  dimension: nf_modelo {
    type: string
    sql: ${TABLE}."nf_modelo" ;;
  }

  dimension: nf_num {
    type: string
    sql: ${TABLE}."nf_num" ;;
  }

  dimension: nf_serie {
    type: string
    sql: ${TABLE}."nf_serie" ;;
  }

  dimension: nf_uf {
    type: string
    sql: ${TABLE}."nf_uf" ;;
  }

  dimension: num_due {
    type: string
    sql: ${TABLE}."num_due" ;;
  }

  dimension: num_item {
    type: number
    sql: ${TABLE}."num_item" ;;
  }

  dimension: pais_dest {
    type: string
    sql: ${TABLE}."pais_dest" ;;
  }

  dimension: peso_aferido {
    type: number
    sql: ${TABLE}."peso_aferido" ;;
  }

  dimension: pu_export_urf_pre_data_id {
    type: number
    sql: ${TABLE}."pu_export_urf_pre_data_id" ;;
  }

  dimension: qtd_export {
    type: number
    sql: ${TABLE}."qtd_export" ;;
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

  dimension: saldo_tipo {
    type: number
    sql: ${TABLE}."saldo_tipo" ;;
  }

  dimension: seq_deposito {
    type: number
    sql: ${TABLE}."seq_deposito" ;;
  }

  dimension: transp_cnpj {
    type: string
    sql: ${TABLE}."transp_cnpj" ;;
  }

  dimension: transp_nome {
    type: string
    sql: ${TABLE}."transp_nome" ;;
  }

  dimension: transp_pais {
    type: string
    sql: ${TABLE}."transp_pais" ;;
  }

  dimension: transp_tipo {
    type: string
    sql: ${TABLE}."transp_tipo" ;;
  }

  dimension: unid_estatistica {
    type: string
    sql: ${TABLE}."unid_estatistica" ;;
  }

  dimension: valor_tipo {
    type: number
    sql: ${TABLE}."valor_tipo" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
