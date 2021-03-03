view: big_data_impo_air_gold {
  derived_table: {
    sql: SELECT * FROM big_data_impo_air.big_data_impo_air_gold
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: di_control_pu_id {
    type: number
    sql: ${TABLE}.di_control_pu_id ;;
  }

  dimension: number_di {
    type: string
    sql: ${TABLE}.number_di ;;
  }

  dimension: cpf {
    type: string
    sql: ${TABLE}.cpf ;;
  }

  dimension_group: data_hora_registro {
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
    sql: ${TABLE}.data_hora_registro ;;
  }

  dimension: tipo_recolhimento {
    type: string
    sql: ${TABLE}.tipo_recolhimento ;;
  }

  dimension: uf {
    type: string
    sql: ${TABLE}.uf ;;
  }

  dimension_group: data_pagamento {
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
    sql: ${TABLE}.data_pagamento ;;
  }

  dimension: urf_despacho {
    type: string
    sql: ${TABLE}.urf_despacho ;;
  }

  dimension_group: data_registro_despacho {
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
    sql: ${TABLE}.data_registro_despacho ;;
  }

  dimension_group: data_desembaraco {
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
    sql: ${TABLE}.data_desembaraco ;;
  }

  dimension: modalidade_despacho {
    type: string
    sql: ${TABLE}.modalidade_despacho ;;
  }

  dimension: tipo_declaracao {
    type: string
    sql: ${TABLE}.tipo_declaracao ;;
  }

  dimension: canal {
    type: string
    sql: ${TABLE}.canal ;;
  }

  dimension: importador_cnpj {
    type: string
    sql: ${TABLE}.importador_cnpj ;;
  }

  dimension: importador_nome {
    type: string
    sql: ${TABLE}.importador_nome ;;
  }

  dimension: importador_endereco {
    type: string
    sql: ${TABLE}.importador_endereco ;;
  }

  dimension: reponsavel {
    type: string
    sql: ${TABLE}.reponsavel ;;
  }

  dimension: responsavel {
    type: string
    sql: ${TABLE}.responsavel ;;
  }

  dimension_group: data_chegada_carga {
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
    sql: ${TABLE}.data_chegada_carga ;;
  }

  dimension: urf_entrada_carga {
    type: string
    sql: ${TABLE}.urf_entrada_carga ;;
  }

  dimension: peso_bruto {
    type: number
    sql: ${TABLE}.peso_bruto ;;
  }

  dimension: peso_liquido {
    type: number
    sql: ${TABLE}.peso_liquido ;;
  }

  dimension: recinto_aduaneiro {
    type: string
    sql: ${TABLE}.recinto_aduaneiro ;;
  }

  dimension: qtde_volume {
    type: number
    sql: ${TABLE}.qtde_volume ;;
  }

  dimension: embalagem {
    type: string
    sql: ${TABLE}.embalagem ;;
  }

  dimension: moeda {
    type: string
    sql: ${TABLE}.moeda ;;
  }

  dimension: total_prepaid {
    type: number
    sql: ${TABLE}.total_prepaid ;;
  }

  dimension: total_collect {
    type: number
    sql: ${TABLE}.total_collect ;;
  }

  dimension: total_dolares {
    type: number
    sql: ${TABLE}.total_dolares ;;
  }

  dimension: total_reais {
    type: number
    sql: ${TABLE}.total_reais ;;
  }

  dimension: total_dolares_loc_emb {
    type: number
    sql: ${TABLE}.total_dolares_loc_emb ;;
  }

  dimension: total_reais_loc_emb {
    type: number
    sql: ${TABLE}.total_reais_loc_emb ;;
  }

  dimension: total_dolares_loc_desc {
    type: number
    sql: ${TABLE}.total_dolares_loc_desc ;;
  }

  dimension: total_reais_loc_desc {
    type: number
    sql: ${TABLE}.total_reais_loc_desc ;;
  }

  dimension: via_transporte {
    type: string
    sql: ${TABLE}.via_transporte ;;
  }

  dimension: doc_chegada_carga_tipo {
    type: string
    sql: ${TABLE}.doc_chegada_carga_tipo ;;
  }

  dimension: doc_chegada_carga_identificacao {
    type: string
    sql: ${TABLE}.doc_chegada_carga_identificacao ;;
  }

  dimension: local_embarque {
    type: string
    sql: ${TABLE}.local_embarque ;;
  }

  dimension: data_embarque {
    type: string
    sql: ${TABLE}.data_embarque ;;
  }

  dimension: multa {
    type: string
    sql: ${TABLE}.multa ;;
  }

  dimension: informacoes_complementares {
    type: string
    sql: ${TABLE}.informacoes_complementares ;;
  }

  dimension: awb {
    type: string
    sql: ${TABLE}.awb ;;
  }

  dimension: hwb {
    type: string
    sql: ${TABLE}.hwb ;;
  }

  dimension: cnpj_notify_int {
    type: number
    sql: ${TABLE}.cnpj_notify_int ;;
  }

  dimension: cnpj_notify {
    type: string
    sql: ${TABLE}.cnpj_notify ;;
  }

  dimension: nome_notify {
    type: string
    sql: ${TABLE}.nome_notify ;;
  }

  dimension_group: notify_processed_at {
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
    sql: ${TABLE}.notify_processed_at ;;
  }

  dimension_group: updated_maritimo_notify_at {
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
    sql: ${TABLE}.updated_maritimo_notify_at ;;
  }

  dimension: addition_quantity {
    type: number
    sql: ${TABLE}.addition_quantity ;;
  }

  dimension: di_control_pu_addition_id {
    type: number
    sql: ${TABLE}.di_control_pu_addition_id ;;
  }

  dimension: addition_number {
    type: string
    sql: ${TABLE}.addition_number ;;
  }

  dimension: desc_relac_exp_fabr {
    type: string
    sql: ${TABLE}.desc_relac_exp_fabr ;;
  }

  dimension: desc_vinc_imp_exp {
    type: string
    sql: ${TABLE}.desc_vinc_imp_exp ;;
  }

  dimension: nm_pais_aquis {
    type: string
    sql: ${TABLE}.nm_pais_aquis ;;
  }

  dimension: id_pais_aquis {
    type: number
    sql: ${TABLE}.id_pais_aquis ;;
  }

  dimension: nm_shipper {
    type: string
    sql: ${TABLE}.nm_shipper ;;
  }

  dimension: endereco_shipper {
    type: string
    sql: ${TABLE}.endereco_shipper ;;
  }

  dimension: nm_pais_origem {
    type: string
    sql: ${TABLE}.nm_pais_origem ;;
  }

  dimension: id_pais_origem {
    type: number
    sql: ${TABLE}.id_pais_origem ;;
  }

  dimension: nm_fabric {
    type: string
    sql: ${TABLE}.nm_fabric ;;
  }

  dimension: endereco_fabric {
    type: string
    sql: ${TABLE}.endereco_fabric ;;
  }

  dimension: cod_ncm {
    type: number
    sql: ${TABLE}.cod_ncm ;;
  }

  dimension: desc_mercadoria {
    type: string
    sql: ${TABLE}.desc_mercadoria ;;
  }

  dimension: desc_aplicacao {
    type: string
    sql: ${TABLE}.desc_aplicacao ;;
  }

  dimension: unid_med_estat {
    type: string
    sql: ${TABLE}.unid_med_estat ;;
  }

  dimension: qtd_med_estat {
    type: number
    sql: ${TABLE}.qtd_med_estat ;;
  }

  dimension: destq_ncm {
    type: string
    sql: ${TABLE}.destq_ncm ;;
  }

  dimension: incoterm {
    type: string
    sql: ${TABLE}.incoterm ;;
  }

  dimension: procedencia_carga {
    type: string
    sql: ${TABLE}.procedencia_carga ;;
  }

  dimension: procedencia_pais {
    type: string
    sql: ${TABLE}.procedencia_pais ;;
  }

  dimension: val_frete {
    type: number
    sql: ${TABLE}.val_frete ;;
  }

  set: detail {
    fields: [
      id,
      di_control_pu_id,
      number_di,
      cpf,
      data_hora_registro_time,
      tipo_recolhimento,
      uf,
      data_pagamento_time,
      urf_despacho,
      data_registro_despacho_time,
      data_desembaraco_time,
      modalidade_despacho,
      tipo_declaracao,
      canal,
      importador_cnpj,
      importador_nome,
      importador_endereco,
      reponsavel,
      responsavel,
      data_chegada_carga_time,
      urf_entrada_carga,
      peso_bruto,
      peso_liquido,
      recinto_aduaneiro,
      qtde_volume,
      embalagem,
      moeda,
      total_prepaid,
      total_collect,
      total_dolares,
      total_reais,
      total_dolares_loc_emb,
      total_reais_loc_emb,
      total_dolares_loc_desc,
      total_reais_loc_desc,
      via_transporte,
      doc_chegada_carga_tipo,
      doc_chegada_carga_identificacao,
      local_embarque,
      data_embarque,
      multa,
      informacoes_complementares,
      awb,
      hwb,
      cnpj_notify_int,
      cnpj_notify,
      nome_notify,
      notify_processed_at_time,
      updated_maritimo_notify_at_time,
      addition_quantity,
      di_control_pu_addition_id,
      addition_number,
      desc_relac_exp_fabr,
      desc_vinc_imp_exp,
      nm_pais_aquis,
      id_pais_aquis,
      nm_shipper,
      endereco_shipper,
      nm_pais_origem,
      id_pais_origem,
      nm_fabric,
      endereco_fabric,
      cod_ncm,
      desc_mercadoria,
      desc_aplicacao,
      unid_med_estat,
      qtd_med_estat,
      destq_ncm,
      incoterm,
      procedencia_carga,
      procedencia_pais,
      val_frete
    ]
  }
  ##===================++++++++Campos adicionados===========================
  measure: total_frete {
    type: sum
    sql: ${TABLE}."val_frete" ;;
  }

  measure: media_frete {
    type: average
    sql: ${TABLE}."total_frete" ;;
  }

}
