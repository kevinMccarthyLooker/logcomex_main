view: cargo_reception {
  derived_table: {
    sql: select
      cd.*,
      cn.id_nf, cn.sigla_uf_emitente, cn.data_emissao, cn.nome_emissor,
      ci.cdncm_compl, ci.descricao,  ci.val_tot_bruto, ci.qtd_estatistica,
      cc.tp_codigo, cc.tp_descr, cc.qtd_operada, cc.num_due, cc.num_ruc,
      cf.conteiner, cf.tara, cf.lacres, cd.peso_aferido as peso
      from db_export_cargo_reception_details cd
      left join db_export_cargo_reception_nf cn on cn.id_exp_cargo_details = cd.id
      left join db_export_cargo_reception_nf_itens ci on ci.id_exp_cargo_details = cd.id and cn.id_nf = ci.id_nf
      left join db_export_cargo_reception_carga cc on cc.id_exp_cargo_details = cd.id
      left join db_export_cargo_reception_fcl cf on cf.id_exp_cargo_details = cd.id and (cf.id_nf = cn.id_nf or cf.id_nf is null)
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: id {
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: pu_export_cargo_reception_id {
    type: number
    sql: ${TABLE}."pu_export_cargo_reception_id" ;;
  }

  dimension: sequential_number {
    type: number
    sql: ${TABLE}."sequential_number" ;;
  }

  dimension: filter_date {
    type: date
    sql: ${TABLE}."filter_date" ;;
  }

  dimension: tipo {
    type: number
    sql: ${TABLE}."tipo" ;;
  }

  dimension: tipooperacaocarga {
    type: string
    sql: ${TABLE}."tipooperacaocarga" ;;
  }

  dimension: tipodocumentooperacao {
    type: string
    sql: ${TABLE}."tipodocumentooperacao" ;;
  }

  dimension: cod_urf {
    type: number
    sql: ${TABLE}."cod_urf" ;;
  }

  dimension: desc_urf {
    type: string
    sql: ${TABLE}."desc_urf" ;;
  }

  dimension: cod_ra {
    type: number
    sql: ${TABLE}."cod_ra" ;;
  }

  dimension: desc_ra {
    type: string
    sql: ${TABLE}."desc_ra" ;;
  }

  dimension: responsavel_cnpj {
    type: string
    sql: ${TABLE}."responsavel_cnpj" ;;
  }

  dimension: responsavel_nome {
    type: string
    sql: ${TABLE}."responsavel_nome" ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}."latitude" ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}."longitude" ;;
  }

  dimension: entregador_cnpj {
    type: string
    sql: ${TABLE}."entregador_cnpj" ;;
  }

  dimension: entregador_nome {
    type: string
    sql: ${TABLE}."entregador_nome" ;;
  }

  dimension: recebedor_cnpj {
    type: string
    sql: ${TABLE}."recebedor_cnpj" ;;
  }

  dimension: recebedor_nome {
    type: string
    sql: ${TABLE}."recebedor_nome" ;;
  }

  dimension: nacionalidaderecebedor {
    type: string
    sql: ${TABLE}."nacionalidaderecebedor" ;;
  }

  dimension: condutor_codigo {
    type: string
    sql: ${TABLE}."condutor_codigo" ;;
  }

  dimension: condutor_nome {
    type: string
    sql: ${TABLE}."condutor_nome" ;;
  }

  dimension: condutorbrasileiro {
    type: string
    sql: ${TABLE}."condutorbrasileiro" ;;
  }

  dimension: viatransporte {
    type: string
    sql: ${TABLE}."viatransporte" ;;
  }

  dimension: veiculo_placa {
    type: string
    sql: ${TABLE}."veiculo_placa" ;;
  }

  dimension: veiculo_lacres {
    type: string
    sql: ${TABLE}."veiculo_lacres" ;;
  }

  dimension: ind_escaneamento {
    type: string
    sql: ${TABLE}."ind_escaneamento" ;;
  }

  dimension: ind_transito_simpl {
    type: string
    sql: ${TABLE}."ind_transito_simpl" ;;
  }

  dimension: peso_aferido {
    type: number
    sql: ${TABLE}."peso_aferido" ;;
  }

  dimension: motivo_nao_pesagem {
    type: string
    sql: ${TABLE}."motivo_nao_pesagem" ;;
  }

  dimension: observacoes {
    type: string
    sql: ${TABLE}."observacoes" ;;
  }

  dimension: descr_avaria {
    type: string
    sql: ${TABLE}."descr_avaria" ;;
  }

  dimension: local_armazenamento {
    type: string
    sql: ${TABLE}."local_armazenamento" ;;
  }

  dimension: local_referencia {
    type: string
    sql: ${TABLE}."local_referencia" ;;
  }

  dimension: descr_divergencia {
    type: string
    sql: ${TABLE}."descr_divergencia" ;;
  }

  dimension: recepcao_mau_funcionamento {
    type: string
    sql: ${TABLE}."recepcao_mau_funcionamento" ;;
  }

  dimension: has_conteiner_nota {
    type: string
    sql: ${TABLE}."has_conteiner_nota" ;;
  }

  dimension_group: dataregistro {
    type: time
    sql: ${TABLE}."dataregistro" ;;
  }

  dimension: transportador_cnpj {
    type: string
    sql: ${TABLE}."transportador_cnpj" ;;
  }

  dimension: transportador_nome {
    type: string
    sql: ${TABLE}."transportador_nome" ;;
  }

  dimension: transp_condutor_cpf {
    type: string
    sql: ${TABLE}."transp_condutor_cpf" ;;
  }

  dimension: transp_condutor_nome {
    type: string
    sql: ${TABLE}."transp_condutor_nome" ;;
  }

  dimension: num_doc_manifest {
    type: string
    sql: ${TABLE}."num_doc_manifest" ;;
  }

  dimension: tp_doc_manifest {
    type: number
    sql: ${TABLE}."tp_doc_manifest" ;;
  }

  dimension: desc_tp_doc_manifest {
    type: string
    sql: ${TABLE}."desc_tp_doc_manifest" ;;
  }

  dimension: veic_dat_condutor_confere {
    type: string
    sql: ${TABLE}."veic_dat_condutor_confere" ;;
  }

  dimension: unid_transp_dat_confere {
    type: string
    sql: ${TABLE}."unid_transp_dat_confere" ;;
  }

  dimension: elem_segur_dat_confere {
    type: string
    sql: ${TABLE}."elem_segur_dat_confere" ;;
  }

  dimension: conteiner_dat_confere {
    type: string
    sql: ${TABLE}."conteiner_dat_confere" ;;
  }

  dimension: dt_emissao {
    type: date
    sql: ${TABLE}."dt_emissao" ;;
  }

  dimension_group: created_at {
    type: time
    sql: ${TABLE}."created_at" ;;
  }

  dimension: conhecimento {
    type: string
    sql: ${TABLE}."conhecimento" ;;
  }

  dimension: nrcemercante {
    type: number
    sql: ${TABLE}."nrcemercante" ;;
  }

  dimension_group: updated_at {
    type: time
    sql: ${TABLE}."updated_at" ;;
  }

  dimension: id_nf {
    type: number
    sql: ${TABLE}."id_nf" ;;
  }

  dimension: sigla_uf_emitente {
    type: string
    sql: ${TABLE}."sigla_uf_emitente" ;;
  }

  dimension_group: data_emissao {
    type: time
    sql: ${TABLE}."data_emissao" ;;
  }

  dimension: nome_emissor {
    type: string
    sql: ${TABLE}."nome_emissor" ;;
  }

  dimension: cdncm_compl {
    type: number
    sql: ${TABLE}."cdncm_compl" ;;
  }

  dimension: descricao {
    type: string
    sql: ${TABLE}."descricao" ;;
  }

  dimension: val_tot_bruto {
    type: number
    sql: ${TABLE}."val_tot_bruto" ;;
  }

  dimension: qtd_estatistica {
    type: number
    sql: ${TABLE}."qtd_estatistica" ;;
  }

  dimension: tp_codigo {
    type: string
    sql: ${TABLE}."tp_codigo" ;;
  }

  dimension: tp_descr {
    type: string
    sql: ${TABLE}."tp_descr" ;;
  }

  dimension: qtd_operada {
    type: number
    sql: ${TABLE}."qtd_operada" ;;
  }

  dimension: num_due {
    type: string
    sql: ${TABLE}."num_due" ;;
  }

  dimension: num_ruc {
    type: string
    sql: ${TABLE}."num_ruc" ;;
  }

  dimension: conteiner {
    type: string
    sql: ${TABLE}."conteiner" ;;
  }

  dimension: tara {
    type: number
    sql: ${TABLE}."tara" ;;
  }

  dimension: lacres {
    type: string
    sql: ${TABLE}."lacres" ;;
  }

  dimension: peso {
    type: number
    sql: ${TABLE}."peso" ;;
  }

  dimension: location {
    type: location
    sql_latitude: ${TABLE}."latitude" ;;
    sql_longitude: ${TABLE}."longitude" ;;
  }

  set: detail {
    fields: [
      id,
      pu_export_cargo_reception_id,
      sequential_number,
      filter_date,
      tipo,
      tipooperacaocarga,
      tipodocumentooperacao,
      cod_urf,
      desc_urf,
      cod_ra,
      desc_ra,
      responsavel_cnpj,
      responsavel_nome,
      latitude,
      longitude,
      entregador_cnpj,
      entregador_nome,
      recebedor_cnpj,
      recebedor_nome,
      nacionalidaderecebedor,
      condutor_codigo,
      condutor_nome,
      condutorbrasileiro,
      viatransporte,
      veiculo_placa,
      veiculo_lacres,
      ind_escaneamento,
      ind_transito_simpl,
      peso_aferido,
      motivo_nao_pesagem,
      observacoes,
      descr_avaria,
      local_armazenamento,
      local_referencia,
      descr_divergencia,
      recepcao_mau_funcionamento,
      has_conteiner_nota,
      dataregistro_time,
      transportador_cnpj,
      transportador_nome,
      transp_condutor_cpf,
      transp_condutor_nome,
      num_doc_manifest,
      tp_doc_manifest,
      desc_tp_doc_manifest,
      veic_dat_condutor_confere,
      unid_transp_dat_confere,
      elem_segur_dat_confere,
      conteiner_dat_confere,
      dt_emissao,
      created_at_time,
      conhecimento,
      nrcemercante,
      updated_at_time,
      id_nf,
      sigla_uf_emitente,
      data_emissao_time,
      nome_emissor,
      cdncm_compl,
      descricao,
      val_tot_bruto,
      qtd_estatistica,
      tp_codigo,
      tp_descr,
      qtd_operada,
      num_due,
      num_ruc,
      conteiner,
      tara,
      lacres,
      peso,
      location
    ]
  }
}
