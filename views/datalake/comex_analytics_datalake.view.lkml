view: comex_analytics_datalake {
  derived_table: {
    sql: SELECT * FROM di.comex_analytics_gold
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: armazenamento_recinto_aduaneiro_codigo {
    type: string
    sql: ${TABLE}.armazenamentoRecintoAduaneiroCodigo ;;
  }

  dimension: armazenamento_recinto_aduaneiro_nome {
    type: string
    sql: ${TABLE}.armazenamentoRecintoAduaneiroNome ;;
  }

  dimension: armazenamento_setor {
    type: string
    sql: ${TABLE}.armazenamentoSetor ;;
  }

  dimension: canal_selecao_parametrizada {
    type: string
    sql: ${TABLE}.canalSelecaoParametrizada ;;
  }

  dimension: caracterizacao_operacao_codigo_tipo {
    type: string
    sql: ${TABLE}.caracterizacaoOperacaoCodigoTipo ;;
  }

  dimension: caracterizacao_operacao_descricao_tipo {
    type: string
    sql: ${TABLE}.caracterizacaoOperacaoDescricaoTipo ;;
  }

  dimension: carga_data_chegada {
    type: string
    sql: ${TABLE}.cargaDataChegada ;;
  }

  dimension: carga_numero_agente {
    type: string
    sql: ${TABLE}.cargaNumeroAgente ;;
  }

  dimension: carga_pais_procedencia_codigo {
    type: string
    sql: ${TABLE}.cargaPaisProcedenciaCodigo ;;
  }

  dimension: carga_pais_procedencia_nome {
    type: string
    sql: ${TABLE}.cargaPaisProcedenciaNome ;;
  }

  dimension: carga_peso_bruto {
    type: string
    sql: ${TABLE}.cargaPesoBruto ;;
  }

  dimension: carga_peso_liquido {
    type: string
    sql: ${TABLE}.cargaPesoLiquido ;;
  }

  dimension: carga_urf_entrada_codigo {
    type: string
    sql: ${TABLE}.cargaUrfEntradaCodigo ;;
  }

  dimension: carga_urf_entrada_nome {
    type: string
    sql: ${TABLE}.cargaUrfEntradaNome ;;
  }

  dimension: conhecimento_carga_embarque_data {
    type: string
    sql: ${TABLE}.conhecimentoCargaEmbarqueData ;;
  }

  dimension: conhecimento_carga_embarque_local {
    type: string
    sql: ${TABLE}.conhecimentoCargaEmbarqueLocal ;;
  }

  dimension: conhecimento_carga_id {
    type: string
    sql: ${TABLE}.conhecimentoCargaId ;;
  }

  dimension: conhecimento_carga_id_master {
    type: string
    sql: ${TABLE}.conhecimentoCargaIdMaster ;;
  }

  dimension: conhecimento_carga_tipo_codigo {
    type: string
    sql: ${TABLE}.conhecimentoCargaTipoCodigo ;;
  }

  dimension: conhecimento_carga_tipo_nome {
    type: string
    sql: ${TABLE}.conhecimentoCargaTipoNome ;;
  }

  dimension: conhecimento_carga_utilizacao {
    type: string
    sql: ${TABLE}.conhecimentoCargaUtilizacao ;;
  }

  dimension: conhecimento_carga_utilizacao_nome {
    type: string
    sql: ${TABLE}.conhecimentoCargaUtilizacaoNome ;;
  }

  dimension: data_desembaraco {
    type: string
    sql: ${TABLE}.dataDesembaraco ;;
  }

  dimension: data_registro {
    type: string
    sql: ${TABLE}.dataRegistro ;;
  }

  dimension: documento_chegada_carga_codigo_tipo {
    type: string
    sql: ${TABLE}.documentoChegadaCargaCodigoTipo ;;
  }

  dimension: documento_chegada_carga_nome {
    type: string
    sql: ${TABLE}.documentoChegadaCargaNome ;;
  }

  dimension: documento_chegada_carga_numero {
    type: string
    sql: ${TABLE}.documentoChegadaCargaNumero ;;
  }

  dimension: embalagem {
    type: string
    sql: ${TABLE}.embalagem ;;
  }

  dimension: frete_collect {
    type: string
    sql: ${TABLE}.freteCollect ;;
  }

  dimension: frete_em_territorio_nacional {
    type: string
    sql: ${TABLE}.freteEmTerritorioNacional ;;
  }

  dimension: frete_moeda_negociada_codigo {
    type: string
    sql: ${TABLE}.freteMoedaNegociadaCodigo ;;
  }

  dimension: frete_moeda_negociada_nome {
    type: string
    sql: ${TABLE}.freteMoedaNegociadaNome ;;
  }

  dimension: frete_prepaid {
    type: string
    sql: ${TABLE}.fretePrepaid ;;
  }

  dimension: frete_total_dolares {
    type: string
    sql: ${TABLE}.freteTotalDolares ;;
  }

  dimension: frete_total_moeda {
    type: string
    sql: ${TABLE}.freteTotalMoeda ;;
  }

  dimension: frete_total_reais {
    type: string
    sql: ${TABLE}.freteTotalReais ;;
  }

  dimension: icms {
    type: string
    sql: ${TABLE}.icms ;;
  }

  dimension: importador_codigo_tipo {
    type: string
    sql: ${TABLE}.importadorCodigoTipo ;;
  }

  dimension: importador_cpf_representante_legal {
    type: string
    sql: ${TABLE}.importadorCpfRepresentanteLegal ;;
  }

  dimension: importador_endereco_bairro {
    type: string
    sql: ${TABLE}.importadorEnderecoBairro ;;
  }

  dimension: importador_endereco_cep {
    type: string
    sql: ${TABLE}.importadorEnderecoCep ;;
  }

  dimension: importador_endereco_logradouro {
    type: string
    sql: ${TABLE}.importadorEnderecoLogradouro ;;
  }

  dimension: importador_endereco_municipio {
    type: string
    sql: ${TABLE}.importadorEnderecoMunicipio ;;
  }

  dimension: importador_endereco_numero {
    type: string
    sql: ${TABLE}.importadorEnderecoNumero ;;
  }

  dimension: importador_endereco_uf {
    type: string
    sql: ${TABLE}.importadorEnderecoUf ;;
  }

  dimension: importador_nome {
    type: string
    sql: ${TABLE}.importadorNome ;;
  }

  dimension: importador_nome_representante_legal {
    type: string
    sql: ${TABLE}.importadorNomeRepresentanteLegal ;;
  }

  dimension: importador_numero {
    type: string
    sql: ${TABLE}.importadorNumero ;;
  }

  dimension: informacao_complementar {
    type: string
    sql: ${TABLE}.informacaoComplementar ;;
  }

  dimension: local_descarga_total_dolares {
    type: string
    sql: ${TABLE}.localDescargaTotalDolares ;;
  }

  dimension: local_descarga_total_reais {
    type: string
    sql: ${TABLE}.localDescargaTotalReais ;;
  }

  dimension: local_embarque_total_dolares {
    type: string
    sql: ${TABLE}.localEmbarqueTotalDolares ;;
  }

  dimension: local_embarque_total_reais {
    type: string
    sql: ${TABLE}.localEmbarqueTotalReais ;;
  }

  dimension: modalidade_despacho_codigo {
    type: string
    sql: ${TABLE}.modalidadeDespachoCodigo ;;
  }

  dimension: modalidade_despacho_nome {
    type: string
    sql: ${TABLE}.modalidadeDespachoNome ;;
  }

  dimension: numero_di {
    type: string
    sql: ${TABLE}.numeroDI ;;
  }

  dimension: operacao_fundap {
    type: string
    sql: ${TABLE}.operacaoFundap ;;
  }

  dimension: seguro_moeda_negociada_codigo {
    type: string
    sql: ${TABLE}.seguroMoedaNegociadaCodigo ;;
  }

  dimension: seguro_moeda_negociada_nome {
    type: string
    sql: ${TABLE}.seguroMoedaNegociadaNome ;;
  }

  dimension: seguro_total_dolares {
    type: string
    sql: ${TABLE}.seguroTotalDolares ;;
  }

  dimension: seguro_total_moeda_negociada {
    type: string
    sql: ${TABLE}.seguroTotalMoedaNegociada ;;
  }

  dimension: seguro_total_reais {
    type: string
    sql: ${TABLE}.seguroTotalReais ;;
  }

  dimension: sequencial_retificacao {
    type: string
    sql: ${TABLE}.sequencialRetificacao ;;
  }

  dimension: situacao_entrega_carga {
    type: string
    sql: ${TABLE}.situacaoEntregaCarga ;;
  }

  dimension: tipo_declaracao_codigo {
    type: string
    sql: ${TABLE}.tipoDeclaracaoCodigo ;;
  }

  dimension: tipo_declaracao_nome {
    type: string
    sql: ${TABLE}.tipoDeclaracaoNome ;;
  }

  dimension: total_adicoes {
    type: string
    sql: ${TABLE}.totalAdicoes ;;
  }

  dimension: urf_despacho_codigo {
    type: string
    sql: ${TABLE}.urfDespachoCodigo ;;
  }

  dimension: urf_despacho_nome {
    type: string
    sql: ${TABLE}.urfDespachoNome ;;
  }

  dimension: expr69 {
    type: string
    sql: ${TABLE}."EXPR$69" ;;
  }

  dimension: via_transporte_codigo {
    type: string
    sql: ${TABLE}.viaTransporteCodigo ;;
  }

  dimension: via_transporte_multimodal {
    type: string
    sql: ${TABLE}.viaTransporteMultimodal ;;
  }

  dimension: via_transporte_nome {
    type: string
    sql: ${TABLE}.viaTransporteNome ;;
  }

  dimension: via_transporte_nome_transportador {
    type: string
    sql: ${TABLE}.viaTransporteNomeTransportador ;;
  }

  dimension: via_transporte_nome_veiculo {
    type: string
    sql: ${TABLE}.viaTransporteNomeVeiculo ;;
  }

  dimension: via_transporte_pais_transportador_codigo {
    type: string
    sql: ${TABLE}.viaTransportePaisTransportadorCodigo ;;
  }

  dimension: via_transporte_pais_transportador_nome {
    type: string
    sql: ${TABLE}.viaTransportePaisTransportadorNome ;;
  }

  dimension: parse_data {
    type: string
    sql: ${TABLE}.parse_data ;;
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

  dimension: id2 {
    type: number
    sql: ${TABLE}.id2 ;;
  }

  dimension: user_profile_customer_id {
    type: number
    sql: ${TABLE}.user_profile_customer_id ;;
  }

  dimension: file {
    type: string
    sql: ${TABLE}.file ;;
  }

  dimension: password {
    type: string
    sql: ${TABLE}.password ;;
  }

  dimension: valid_until {
    type: date
    sql: ${TABLE}.valid_until ;;
  }

  dimension: owner_name {
    type: string
    sql: ${TABLE}.owner_name ;;
  }

  dimension: owner_cpf {
    type: string
    sql: ${TABLE}.owner_cpf ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }

  dimension: mercante_access {
    type: string
    sql: ${TABLE}.mercante_access ;;
  }

  dimension: siscarga_access {
    type: string
    sql: ${TABLE}.siscarga_access ;;
  }

  dimension: siscomex_access {
    type: string
    sql: ${TABLE}.siscomex_access ;;
  }

  dimension: transit_access {
    type: string
    sql: ${TABLE}.transit_access ;;
  }

  dimension: error_message {
    type: string
    sql: ${TABLE}.error_message ;;
  }

  dimension: profile {
    type: string
    sql: ${TABLE}.profile ;;
  }

  dimension_group: deleted_at2 {
    type: time
    sql: ${TABLE}.deleted_at2 ;;
  }

  dimension_group: created_at2 {
    type: time
    sql: ${TABLE}.created_at2 ;;
  }

  dimension_group: updated_at2 {
    type: time
    sql: ${TABLE}.updated_at2 ;;
  }

  dimension: file_hash {
    type: string
    sql: ${TABLE}.file_hash ;;
  }

  dimension: v2_id {
    type: number
    sql: ${TABLE}.v2_id ;;
  }

  dimension: customer_id0 {
    type: number
    sql: ${TABLE}.customer_id0 ;;
  }

  dimension_group: sent_invalid_mail {
    type: time
    sql: ${TABLE}.sent_invalid_mail ;;
  }

  dimension: payload_puc {
    type: string
    sql: ${TABLE}.payload_puc ;;
  }

  dimension: token0 {
    type: string
    sql: ${TABLE}.token0 ;;
  }

  dimension: user_id0 {
    type: number
    sql: ${TABLE}.user_id0 ;;
  }

  set: detail {
    fields: [
      armazenamento_recinto_aduaneiro_codigo,
      armazenamento_recinto_aduaneiro_nome,
      armazenamento_setor,
      canal_selecao_parametrizada,
      caracterizacao_operacao_codigo_tipo,
      caracterizacao_operacao_descricao_tipo,
      carga_data_chegada,
      carga_numero_agente,
      carga_pais_procedencia_codigo,
      carga_pais_procedencia_nome,
      carga_peso_bruto,
      carga_peso_liquido,
      carga_urf_entrada_codigo,
      carga_urf_entrada_nome,
      conhecimento_carga_embarque_data,
      conhecimento_carga_embarque_local,
      conhecimento_carga_id,
      conhecimento_carga_id_master,
      conhecimento_carga_tipo_codigo,
      conhecimento_carga_tipo_nome,
      conhecimento_carga_utilizacao,
      conhecimento_carga_utilizacao_nome,
      data_desembaraco,
      data_registro,
      documento_chegada_carga_codigo_tipo,
      documento_chegada_carga_nome,
      documento_chegada_carga_numero,
      embalagem,
      frete_collect,
      frete_em_territorio_nacional,
      frete_moeda_negociada_codigo,
      frete_moeda_negociada_nome,
      frete_prepaid,
      frete_total_dolares,
      frete_total_moeda,
      frete_total_reais,
      icms,
      importador_codigo_tipo,
      importador_cpf_representante_legal,
      importador_endereco_bairro,
      importador_endereco_cep,
      importador_endereco_logradouro,
      importador_endereco_municipio,
      importador_endereco_numero,
      importador_endereco_uf,
      importador_nome,
      importador_nome_representante_legal,
      importador_numero,
      informacao_complementar,
      local_descarga_total_dolares,
      local_descarga_total_reais,
      local_embarque_total_dolares,
      local_embarque_total_reais,
      modalidade_despacho_codigo,
      modalidade_despacho_nome,
      numero_di,
      operacao_fundap,
      seguro_moeda_negociada_codigo,
      seguro_moeda_negociada_nome,
      seguro_total_dolares,
      seguro_total_moeda_negociada,
      seguro_total_reais,
      sequencial_retificacao,
      situacao_entrega_carga,
      tipo_declaracao_codigo,
      tipo_declaracao_nome,
      total_adicoes,
      urf_despacho_codigo,
      urf_despacho_nome,
      expr69,
      via_transporte_codigo,
      via_transporte_multimodal,
      via_transporte_nome,
      via_transporte_nome_transportador,
      via_transporte_nome_veiculo,
      via_transporte_pais_transportador_codigo,
      via_transporte_pais_transportador_nome,
      parse_data,
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
      id2,
      user_profile_customer_id,
      file,
      password,
      valid_until,
      owner_name,
      owner_cpf,
      url,
      mercante_access,
      siscarga_access,
      siscomex_access,
      transit_access,
      error_message,
      profile,
      deleted_at2_time,
      created_at2_time,
      updated_at2_time,
      file_hash,
      v2_id,
      customer_id0,
      sent_invalid_mail_time,
      payload_puc,
      token0,
      user_id0
    ]
  }
}
