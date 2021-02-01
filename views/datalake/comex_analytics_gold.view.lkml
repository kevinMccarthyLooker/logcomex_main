view: comex_analytics_gold {
  derived_table: {
    sql: SELECT * FROM comex_analytics.comex_analytics_gold LIMIT 9000000;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: di_number {
    type: number
    sql: ${TABLE}.di_number ;;
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
    type: number
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

  dimension: add_ncm {
    type: number
    sql: ${TABLE}.add_ncm ;;
  }

  dimension: add_incoterm {
    type: string
    sql: ${TABLE}.add_incoterm ;;
  }

  dimension: add_qtd_estat {
    type: number
    sql: ${TABLE}.add_qtd_estat ;;
  }

  dimension: add_fornecedor_nome {
    type: string
    sql: ${TABLE}.add_fornecedor_nome ;;
  }

  dimension: add_fornecedor_endereco {
    type: string
    sql: ${TABLE}.add_fornecedor_endereco ;;
  }

  dimension: add_desc_prod {
    type: string
    sql: ${TABLE}.add_desc_prod ;;
  }

  dimension: add_nm_pais_origem {
    type: string
    sql: ${TABLE}.add_nm_pais_origem ;;
  }

  dimension: add_nm_pais_aquis {
    type: string
    sql: ${TABLE}.add_nm_pais_aquis ;;
  }

  dimension: add_qtd_item {
    type: number
    sql: ${TABLE}.add_qtd_item ;;
  }

  dimension: add_peso_liq_item {
    type: number
    sql: ${TABLE}.add_peso_liq_item ;;
  }

  dimension: ac_moedanegociadanome {
    type: string
    sql: ${TABLE}.ac_moedanegociadanome ;;
  }

  dimension: ac_valormoedanegociada {
    type: number
    sql: ${TABLE}.ac_valormoedanegociada ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: customer_id {
    type: number
    sql: ${TABLE}.customer_id ;;
  }

  dimension: cnpj {
    type: string
    sql: ${TABLE}.cnpj ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: comments {
    type: string
    sql: ${TABLE}.comments ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.user_id ;;
  }

  dimension_group: deleted_at {
    type: time
    sql: ${TABLE}.deleted_at ;;
  }

  dimension_group: created_at {
    type: time
    sql: ${TABLE}.created_at ;;
  }

  dimension_group: updated_at {
    type: time
    sql: ${TABLE}.updated_at ;;
  }

  dimension_group: dt_sync_mercante {
    type: time
    sql: ${TABLE}.dt_sync_mercante ;;
  }

  dimension_group: dt_sync_siscomex {
    type: time
    sql: ${TABLE}.dt_sync_siscomex ;;
  }

  dimension_group: dt_sync_history_sart {
    type: time
    sql: ${TABLE}.dt_sync_history_sart ;;
  }

  dimension_group: dt_sync_history_done {
    type: time
    sql: ${TABLE}.dt_sync_history_done ;;
  }

  dimension: cert_id {
    type: number
    sql: ${TABLE}.cert_id ;;
  }

  dimension: consignee_type_id {
    type: number
    sql: ${TABLE}.consignee_type_id ;;
  }

  dimension: country_id {
    type: number
    sql: ${TABLE}.country_id ;;
  }

  dimension: token {
    type: string
    sql: ${TABLE}.token ;;
  }

  dimension: v2_cert_id {
    type: number
    sql: ${TABLE}.v2_cert_id ;;
  }

  dimension: ibroker_integration {
    type: string
    sql: ${TABLE}.ibroker_integration ;;
  }

  dimension: id0 {
    type: number
    sql: ${TABLE}.id0 ;;
  }

  dimension: name0 {
    type: string
    sql: ${TABLE}.name0 ;;
  }

  dimension: cnpj0 {
    type: string
    sql: ${TABLE}.cnpj0 ;;
  }

  dimension: address {
    type: string
    sql: ${TABLE}.address ;;
  }

  dimension: phones {
    type: string
    sql: ${TABLE}.phones ;;
  }

  dimension: site {
    type: string
    sql: ${TABLE}.site ;;
  }

  dimension: status_id {
    type: number
    sql: ${TABLE}.status_id ;;
  }

  dimension: slug {
    type: string
    sql: ${TABLE}.slug ;;
  }

  dimension: customer_type_id {
    type: number
    sql: ${TABLE}.customer_type_id ;;
  }

  dimension_group: deleted_at0 {
    type: time
    sql: ${TABLE}.deleted_at0 ;;
  }

  dimension_group: created_at0 {
    type: time
    sql: ${TABLE}.created_at0 ;;
  }

  dimension_group: updated_at0 {
    type: time
    sql: ${TABLE}.updated_at0 ;;
  }

  dimension: pay_day {
    type: number
    sql: ${TABLE}.pay_day ;;
  }

  dimension: custom_hex_color {
    type: string
    sql: ${TABLE}.custom_hex_color ;;
  }

  dimension: custom_logo {
    type: string
    sql: ${TABLE}.custom_logo ;;
  }

  dimension: custom_name {
    type: string
    sql: ${TABLE}.custom_name ;;
  }

  dimension: email_notify_immediate {
    type: string
    sql: ${TABLE}.email_notify_immediate ;;
  }

  dimension: email_notify_hour {
    type: number
    sql: ${TABLE}.email_notify_hour ;;
  }

  dimension: email_reply_to {
    type: string
    sql: ${TABLE}.email_reply_to ;;
  }

  dimension: tracking_processed_loads {
    type: string
    sql: ${TABLE}.tracking_processed_loads ;;
  }

  dimension: api_key {
    type: string
    sql: ${TABLE}.api_key ;;
  }

  dimension: tracking_maritime_days_to_archive {
    type: number
    sql: ${TABLE}.tracking_maritime_days_to_archive ;;
  }

  dimension: tracking_aerial_days_to_archive {
    type: number
    sql: ${TABLE}.tracking_aerial_days_to_archive ;;
  }

  dimension: email_notify_disabled {
    type: string
    sql: ${TABLE}.email_notify_disabled ;;
  }

  dimension: executive_id {
    type: number
    sql: ${TABLE}.executive_id ;;
  }

  dimension: fake_customer {
    type: string
    sql: ${TABLE}.fake_customer ;;
  }

  dimension: blocked {
    type: string
    sql: ${TABLE}.blocked ;;
  }

  dimension: pld {
    type: string
    sql: ${TABLE}.pld ;;
  }

  dimension: id1 {
    type: number
    sql: ${TABLE}.id1 ;;
  }

  dimension: certificate_id {
    type: number
    sql: ${TABLE}.certificate_id ;;
  }

  dimension: consignee_id {
    type: number
    sql: ${TABLE}.consignee_id ;;
  }

  dimension_group: deleted_at1 {
    type: time
    sql: ${TABLE}.deleted_at1 ;;
  }

  dimension_group: created_at1 {
    type: time
    sql: ${TABLE}.created_at1 ;;
  }

  dimension_group: updated_at1 {
    type: time
    sql: ${TABLE}.updated_at1 ;;
  }

  dimension_group: ces_processed_at {
    type: time
    sql: ${TABLE}.ces_processed_at ;;
  }

  dimension: owner_name {
    type: string
    sql: ${TABLE}.owner_name ;;
  }

  dimension: owner_cpf {
    type: string
    sql: ${TABLE}.owner_cpf ;;
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
      informacoes_complementares,
      add_ncm,
      add_incoterm,
      add_qtd_estat,
      add_fornecedor_nome,
      add_fornecedor_endereco,
      add_desc_prod,
      add_nm_pais_origem,
      add_nm_pais_aquis,
      add_qtd_item,
      add_peso_liq_item,
      ac_moedanegociadanome,
      ac_valormoedanegociada,
      id,
      customer_id,
      cnpj,
      name,
      comments,
      user_id,
      deleted_at_time,
      created_at_time,
      updated_at_time,
      dt_sync_mercante_time,
      dt_sync_siscomex_time,
      dt_sync_history_sart_time,
      dt_sync_history_done_time,
      cert_id,
      consignee_type_id,
      country_id,
      token,
      v2_cert_id,
      ibroker_integration,
      id0,
      name0,
      cnpj0,
      address,
      phones,
      site,
      status_id,
      slug,
      customer_type_id,
      deleted_at0_time,
      created_at0_time,
      updated_at0_time,
      pay_day,
      custom_hex_color,
      custom_logo,
      custom_name,
      email_notify_immediate,
      email_notify_hour,
      email_reply_to,
      tracking_processed_loads,
      api_key,
      tracking_maritime_days_to_archive,
      tracking_aerial_days_to_archive,
      email_notify_disabled,
      executive_id,
      fake_customer,
      blocked,
      pld,
      id1,
      certificate_id,
      consignee_id,
      deleted_at1_time,
      created_at1_time,
      updated_at1_time,
      ces_processed_at_time,
      owner_name,
      owner_cpf
    ]
  }

  #==================================================================================================
  #dados inseridos

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
  }

  measure: peso_liquido_total {
    type: sum
    sql: ${TABLE}."peso_liquido";;
  }

  measure: di_total {
    type: count_distinct
    sql: ${TABLE}."di_number";;
  }

  measure: valor_multa_total {
    type: sum
    sql: ${TABLE}."val_multa";;
  }

  measure: data_hora_registro {
    type: date
    sql: MAX (${TABLE}."data_hora_registro");;
  }

}
