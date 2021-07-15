view: comex_analytics_di {
  derived_table: {
    sql: SELECT * FROM comex_analytics_teste.comex_analytics_gold_certificate;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: di_number {
    type: number
    sql: ${TABLE}.di_completo ;;
    value_format: "##/#######-#"
  }

  dimension_group: data_hora_registro {
    type: time
    sql: ${TABLE}.data_hora_registro ;;
  }

  dimension: cpf_representante {
    type: string
    sql: ${TABLE}.cpf_representante ;;
  }

  dimension: nome_representante {
    type: string
    sql: ${TABLE}.nome_representante ;;
  }

  dimension: tipo_recolhimento {
    type: string
    sql: ${TABLE}.tipo_recolhimento ;;
  }

  dimension: mandato_judicial {
    type: string
    sql: ${TABLE}.mandato_judicial ;;
  }

  dimension: uf_icms {
    type: string
    sql: ${TABLE}.uf_icms ;;
  }

  dimension_group: data_pagamento {
    type: time
    sql: ${TABLE}.data_pagamento ;;
  }

  dimension: urf_despacho {
    type: string
    sql: ${TABLE}.urf_despacho ;;
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
    sql: case
      when ${TABLE}.canal = '-' then 'Ag. Processamento'
      when ${TABLE}.canal = 'Verde' then 'Verde'
      when ${TABLE}.canal = 'Amarelo' then 'Amarelo'
      when ${TABLE}.canal = 'Cinza' then 'Cinza'
      when ${TABLE}.canal = 'Vermelho' then 'Vermelho'
      else 'ERRO'
    end ;;
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

  dimension: numero_ce {
    type: string
    sql: ${TABLE}.numero_ce ;;
  }

  dimension: cd_pais_proced {
    type: string
    sql: ${TABLE}.cd_pais_proced ;;
  }

  dimension: nm_pais_proced {
    type: string
    sql: ${TABLE}.nm_pais_proced ;;
  }

  dimension_group: data_chegada {
    type: time
    sql: ${TABLE}.data_chegada ;;
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

  dimension: armazem {
    type: string
    sql: ${TABLE}.armazem ;;
  }

  dimension: qtde_volume {
    type: number
    sql: ${TABLE}.qtde_volume ;;
  }

  dimension: embalagem {
    type: string
    sql: ${TABLE}.embalagem ;;
  }

  dimension: moeda_frete {
    type: string
    sql: ${TABLE}.moeda_frete ;;
  }

  dimension: prepaid {
    type: number
    sql: ${TABLE}.prepaid ;;
  }

  dimension: collect {
    type: number
    sql: ${TABLE}."collect" ;;
  }

  dimension: terr_nacional {
    type: number
    sql: ${TABLE}.terr_nacional ;;
  }

  dimension: val_frete_moeda {
    type: number
    sql: ${TABLE}.val_frete_moeda ;;
  }

  dimension: val_frete_us {
    type: number
    sql: ${TABLE}.val_frete_us ;;
  }

  dimension: val_frete_reais {
    type: number
    sql: ${TABLE}.val_frete_reais ;;
  }

  dimension: moeda_seguro {
    type: string
    sql: ${TABLE}.moeda_seguro ;;
  }

  dimension: val_segur_moeda {
    type: number
    sql: ${TABLE}.val_segur_moeda ;;
  }

  dimension: val_segur_us {
    type: number
    sql: ${TABLE}.val_segur_us ;;
  }

  dimension: val_segur_reais {
    type: number
    sql: ${TABLE}.val_segur_reais ;;
  }

  dimension: val_vmle_us {
    type: number
    sql: ${TABLE}.val_vmle_us ;;
  }

  dimension: val_vmle_reais {
    type: number
    sql: ${TABLE}.val_vmle_reais ;;
  }

  dimension: val_vmld_us {
    type: number
    sql: ${TABLE}.val_vmld_us ;;
  }

  dimension: val_vmld_reais {
    type: number
    sql: ${TABLE}.val_vmld_reais ;;
  }

  dimension: via_transp {
    type: string
    sql: ${TABLE}.via_transp ;;
  }

  dimension: multimodal {
    type: string
    sql: ${TABLE}.multimodal ;;
  }

  dimension: embarcacao {
    type: string
    sql: ${TABLE}.embarcacao ;;
  }

  dimension: transportador {
    type: string
    sql: ${TABLE}.transportador ;;
  }

  dimension: doc_chegada_tipo {
    type: string
    sql: ${TABLE}.doc_chegada_tipo ;;
  }

  dimension: doc_chegada_identificacao {
    type: string
    sql: ${TABLE}.doc_chegada_identificacao ;;
  }

  dimension: local_embarque {
    type: string
    sql: ${TABLE}.local_embarque ;;
  }

  dimension_group: data_embarque {
    type: time
    sql: ${TABLE}.data_embarque ;;
  }

  dimension: utilizacao {
    type: string
    sql: ${TABLE}.utilizacao ;;
  }

  dimension: val_multa {
    type: string
    sql: ${TABLE}.val_multa ;;
  }

  dimension: awb {
    type: string
    sql: ${TABLE}.awb ;;
  }

  dimension: hwb {
    type: string
    sql: ${TABLE}.hwb ;;
  }

  dimension: setor {
    type: number
    sql: ${TABLE}.setor ;;
  }

  dimension: crt {
    type: string
    sql: ${TABLE}.crt ;;
  }

  dimension: adquirente_cnpj {
    type: string
    sql: ${TABLE}.adquirente_cnpj ;;
  }

  dimension: adquirente_nome {
    type: string
    sql: ${TABLE}.adquirente_nome ;;
  }

  dimension: informacoes_complementares {
    type: string
    sql: ${TABLE}.informacoes_complementares ;;
  }

  dimension: id_customer {
    type: number
    sql: ${TABLE}.id_customer ;;
  }

  dimension: name_customer {
    type: string
    sql: ${TABLE}.name_customer ;;
  }

  dimension: cnpj_customer {
    type: string
    sql: ${TABLE}.cnpj_customer ;;
  }

  dimension: cnpj_consignee {
    type: string
    sql: ${TABLE}.cnpj_consignee ;;
  }

  set: detail {
    fields: [
      di_number,
      data_hora_registro_time,
      cpf_representante,
      nome_representante,
      tipo_recolhimento,
      mandato_judicial,
      uf_icms,
      data_pagamento_time,
      urf_despacho,
      data_desembaraco_time,
      modalidade_despacho,
      tipo_declaracao,
      canal,
      importador_cnpj,
      importador_nome,
      importador_endereco,
      numero_ce,
      cd_pais_proced,
      nm_pais_proced,
      data_chegada_time,
      urf_entrada_carga,
      peso_bruto,
      peso_liquido,
      recinto_aduaneiro,
      armazem,
      qtde_volume,
      embalagem,
      moeda_frete,
      prepaid,
      collect,
      terr_nacional,
      val_frete_moeda,
      val_frete_us,
      val_frete_reais,
      moeda_seguro,
      val_segur_moeda,
      val_segur_us,
      val_segur_reais,
      val_vmle_us,
      val_vmle_reais,
      val_vmld_us,
      val_vmld_reais,
      via_transp,
      multimodal,
      embarcacao,
      transportador,
      doc_chegada_tipo,
      doc_chegada_identificacao,
      local_embarque,
      data_embarque_time,
      utilizacao,
      val_multa,
      awb,
      hwb,
      setor,
      crt,
      adquirente_cnpj,
      adquirente_nome,
      informacoes_complementares
    ]
  }


  #==================================================================================================
  #dados inseridos

  dimension: id_radar_certificate {
    type: number
    sql: ${TABLE}.id_radar_certificate ;;
  }

  measure: valor_vmle_us {
    type: sum
    sql: ${TABLE}."val_vmle_us";;
  }

  measure: valor_vmle_reais {
    type: sum
    sql: ${TABLE}."val_vmle_reais";;
  }

  measure: valor_vmld_us {
    type: sum
    sql: ${TABLE}."val_vmld_us";;
  }

  measure: valor_vmld_reais {
    type: sum
    sql: ${TABLE}."val_vmld_reais";;
  }

  measure: peso_bruto_total {
    type: sum
    sql: ${TABLE}."peso_bruto";;
    drill_fields: [DI*]
  }

  measure: peso_liquido_total {
    type: sum
    sql: ${TABLE}."peso_liquido";;
    drill_fields: [DI*]
  }

  measure: di_total {
    type: count_distinct
    sql: ${TABLE}."di_completo";;
    drill_fields: [DI*]
  }

  measure: valor_multa_total {
    type: sum
    sql: ${TABLE}."val_multa";;
    drill_fields: [DI*]
  }

  measure: data_hora_registro {
    type: date
    sql: MAX (${TABLE}."data_hora_registro");;
    drill_fields: [DI*]
  }

  measure: representante_cpf{
    type: string
    sql: replace(replace(${TABLE}."cpf_representante", '.', ''),'-','');;
  }

  dimension_group: presenca_x_registro {
    type: duration
    intervals: [day, hour, minute]
    sql_start: ${TABLE}.data_chegada;;
    sql_end: ${TABLE}.data_hora_registro;;
    drill_fields: [DI*]
  }

  dimension_group: presenca_x_desembaraco {
    type: duration
    intervals: [day, hour, minute]
    sql_start: ${TABLE}.data_chegada;;
    sql_end: ${TABLE}.data_desembaraco;;
    drill_fields: [DI*]
  }

  set: DI {
    fields: [
      di_number,
      cpf_representante,
      nome_representante,
      importador_cnpj,
      importador_nome,
    ]
  }

}
