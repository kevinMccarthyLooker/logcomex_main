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
    sql: ${TABLE}.data_pagamento ;;
  }

  dimension: urf_despacho {
    type: string
    sql: ${TABLE}.urf_despacho ;;
  }

  dimension_group: data_registro_despacho {
    type: time
    sql: ${TABLE}.data_registro_despacho ;;
  }

  dimension_group: data_desembaraco {
    type: time
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

  dimension: frete_prepaid_moeda {
    type: number
    sql: ${TABLE}.frete_prepaid_moeda ;;
  }

  dimension: frete_collect_moeda {
    type: number
    sql: ${TABLE}.frete_collect_moeda ;;
  }

  dimension: frete_total_moeda {
    type: number
    sql: ${TABLE}.frete_total_moeda ;;
  }

  dimension: frete_total_dolares {
    type: number
    sql: ${TABLE}.frete_total_dolares ;;
  }

  dimension: frete_total_reais {
    type: number
    sql: ${TABLE}.frete_total_reais ;;
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

  dimension: di_control_pu_addition_id {
    type: number
    sql: ${TABLE}.di_control_pu_addition_id ;;
  }

  dimension: cod_ncm {
    type: number
    sql: ${TABLE}.cod_ncm ;;
  }

  dimension: unid_med_estat {
    type: string
    sql: ${TABLE}.unid_med_estat ;;
  }

  dimension: qtd_med_estat {
    type: number
    sql: ${TABLE}.qtd_med_estat ;;
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
      frete_prepaid_moeda,
      frete_collect_moeda,
      frete_total_moeda,
      frete_total_dolares,
      frete_total_reais,
      total_dolares_loc_emb,
      total_reais_loc_emb,
      total_dolares_loc_desc,
      total_reais_loc_desc,
      doc_chegada_carga_tipo,
      doc_chegada_carga_identificacao,
      local_embarque,
      data_embarque,
      multa,
      informacoes_complementares,
      awb,
      hwb,
      di_control_pu_addition_id,
      cod_ncm,
      unid_med_estat,
      qtd_med_estat,
      incoterm,
      procedencia_carga,
      procedencia_pais
    ]
  }

  ##===================++++++++Campos adicionados===========================

  measure: total_frete_prepaid_moeda {
    type: sum
    value_format: "$#.00;($#.00)"
    sql: ${TABLE}."frete_prepaid_moeda" ;;
  }

  measure: total_frete_collect_moeda {
    type: sum
    value_format: "$#.00;($#.00)"
    sql: ${TABLE}."frete_collect_moeda" ;;
  }

  measure: total_frete {
    type: sum
    value_format: "$#.00;($#.00)"
    sql: ${TABLE}."frete_total_moeda" ;;
  }

  measure: total_frete_total_dolares {
    type: sum
    value_format: "$#.00;($#.00)"
    sql: ${TABLE}."frete_total_dolares" ;;
  }

  measure: total_frete_total_reais{
    type: sum
    value_format: "$#.00;($#.00)"
    sql: ${TABLE}."frete_total_reais" ;;
  }

  measure: total_loc_emb_usd{
    type: sum
    value_format: "$#.00;($#.00)"
    sql: ${TABLE}."total_dolares_loc_emb" ;;
  }

  measure: total_loc_emb_reais{
    type: sum
    value_format: "$#.00;($#.00)"
    sql: ${TABLE}."total_reais_loc_emb" ;;
  }

  measure: total_loc_des_usd{
    type: sum
    value_format: "$#.00;($#.00)"
    sql: ${TABLE}."total_dolares_loc_desc" ;;
  }

  measure: total_loc_des_reais{
    type: sum
    value_format: "$#.00;($#.00)"
    sql: ${TABLE}."total_reais_loc_desc" ;;
  }

  measure: media_frete{
    type: average
    value_format: "$#.00;($#.00)"
    sql: ${TABLE}."frete_total_moeda" ;;
  }

}
