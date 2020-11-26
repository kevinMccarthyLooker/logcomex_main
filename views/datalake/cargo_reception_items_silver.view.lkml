view: cargo_reception_items_silver {
  derived_table: {
    sql: SELECT * FROM big_data_expo.cargo_reception_items_silver
      ;;
  }


  dimension: dt_id {
    type: number
    sql: ${TABLE}.dt_id ;;
  }

  dimension: dt_pu_export_cargo_reception_id {
    type: number
    sql: ${TABLE}.dt_pu_export_cargo_reception_id ;;
  }

  dimension: dt_sequential_number {
    type: number
    sql: ${TABLE}.dt_sequential_number ;;
  }

  dimension_group: dt_filter_date {
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
    sql: ${TABLE}.dt_filter_date ;;
  }

  dimension: dt_tipo {
    type: number
    sql: ${TABLE}.dt_tipo ;;
  }

  dimension: dt_tipooperacaocarga {
    type: string
    sql: ${TABLE}.dt_tipooperacaocarga ;;
  }

  dimension: dt_tipodocumentooperacao {
    type: string
    sql: ${TABLE}.dt_tipodocumentooperacao ;;
  }

  dimension: dt_cod_urf {
    type: number
    sql: ${TABLE}.dt_cod_urf ;;
  }

  dimension: dt_desc_urf {
    type: string
    sql: ${TABLE}.dt_desc_urf ;;
  }

  dimension: dt_cod_ra {
    type: number
    sql: ${TABLE}.dt_cod_ra ;;
  }

  dimension: dt_desc_ra {
    type: string
    sql: ${TABLE}.dt_desc_ra ;;
  }

  dimension: dt_responsavel_cnpj {
    type: string
    sql: ${TABLE}.dt_responsavel_cnpj ;;
  }

  dimension: dt_responsavel_nome {
    type: string
    sql: ${TABLE}.dt_responsavel_nome ;;
  }

  dimension: dt_latitude {
    type: number
    sql: ${TABLE}.dt_latitude ;;
  }

  dimension: dt_longitude {
    type: number
    sql: ${TABLE}.dt_longitude ;;
  }

  dimension: dt_entregador_cnpj {
    type: string
    sql: ${TABLE}.dt_entregador_cnpj ;;
  }

  dimension: dt_entregador_nome {
    type: string
    sql: ${TABLE}.dt_entregador_nome ;;
  }

  dimension: dt_recebedor_cnpj {
    type: string
    sql: ${TABLE}.dt_recebedor_cnpj ;;
  }

  dimension: dt_recebedor_nome {
    type: string
    sql: ${TABLE}.dt_recebedor_nome ;;
  }

  dimension: dt_nacionalidaderecebedor {
    type: string
    sql: ${TABLE}.dt_nacionalidaderecebedor ;;
  }

  dimension: dt_condutor_codigo {
    type: string
    sql: ${TABLE}.dt_condutor_codigo ;;
  }

  dimension: dt_condutor_nome {
    type: string
    sql: ${TABLE}.dt_condutor_nome ;;
  }

  dimension: dt_condutorbrasileiro {
    type: string
    sql: ${TABLE}.dt_condutorbrasileiro ;;
  }

  dimension: dt_viatransporte {
    type: string
    sql: ${TABLE}.dt_viatransporte ;;
  }

  dimension: dt_veiculo_placa {
    type: string
    sql: ${TABLE}.dt_veiculo_placa ;;
  }

  dimension: dt_veiculo_lacres {
    type: string
    sql: ${TABLE}.dt_veiculo_lacres ;;
  }

  dimension: dt_ind_escaneamento {
    type: string
    sql: ${TABLE}.dt_ind_escaneamento ;;
  }

  dimension: dt_ind_transito_simpl {
    type: string
    sql: ${TABLE}.dt_ind_transito_simpl ;;
  }

  dimension: dt_peso_aferido {
    type: number
    sql: ${TABLE}.dt_peso_aferido ;;
  }

  dimension: dt_motivo_nao_pesagem {
    type: string
    sql: ${TABLE}.dt_motivo_nao_pesagem ;;
  }

  dimension: dt_observacoes {
    type: string
    sql: ${TABLE}.dt_observacoes ;;
  }

  dimension: dt_descr_avaria {
    type: string
    sql: ${TABLE}.dt_descr_avaria ;;
  }

  dimension: dt_local_armazenamento {
    type: string
    sql: ${TABLE}.dt_local_armazenamento ;;
  }

  dimension: dt_local_referencia {
    type: string
    sql: ${TABLE}.dt_local_referencia ;;
  }

  dimension: dt_descr_divergencia {
    type: string
    sql: ${TABLE}.dt_descr_divergencia ;;
  }

  dimension: dt_recepcao_mau_funcionamento {
    type: string
    sql: ${TABLE}.dt_recepcao_mau_funcionamento ;;
  }

  dimension: dt_has_conteiner_nota {
    type: string
    sql: ${TABLE}.dt_has_conteiner_nota ;;
  }

  dimension_group: dt_dataregistro {
    type: time
    sql: ${TABLE}.dt_dataregistro ;;
  }

  dimension: dt_transportador_cnpj {
    type: string
    sql: ${TABLE}.dt_transportador_cnpj ;;
  }

  dimension: dt_transportador_nome {
    type: string
    sql: ${TABLE}.dt_transportador_nome ;;
  }

  dimension: dt_transp_condutor_cpf {
    type: string
    sql: ${TABLE}.dt_transp_condutor_cpf ;;
  }

  dimension: dt_transp_condutor_nome {
    type: string
    sql: ${TABLE}.dt_transp_condutor_nome ;;
  }

  dimension: dt_num_doc_manifest {
    type: string
    sql: ${TABLE}.dt_num_doc_manifest ;;
  }

  dimension: dt_tp_doc_manifest {
    type: number
    sql: ${TABLE}.dt_tp_doc_manifest ;;
  }

  dimension: dt_desc_tp_doc_manifest {
    type: string
    sql: ${TABLE}.dt_desc_tp_doc_manifest ;;
  }

  dimension: dt_veic_dat_condutor_confere {
    type: string
    sql: ${TABLE}.dt_veic_dat_condutor_confere ;;
  }

  dimension: dt_unid_transp_dat_confere {
    type: string
    sql: ${TABLE}.dt_unid_transp_dat_confere ;;
  }

  dimension: dt_elem_segur_dat_confere {
    type: string
    sql: ${TABLE}.dt_elem_segur_dat_confere ;;
  }

  dimension: dt_conteiner_dat_confere {
    type: string
    sql: ${TABLE}.dt_conteiner_dat_confere ;;
  }

  dimension: dt_dt_emissao {
    type: date
    sql: ${TABLE}.dt_dt_emissao ;;
  }

  dimension_group: dt_created_at {
    type: time
    sql: ${TABLE}.dt_created_at ;;
  }

  dimension_group: dt_updated_at {
    type: time
    sql: ${TABLE}.dt_updated_at ;;
  }

  dimension: nf_id {
    type: number
    sql: ${TABLE}.nf_id ;;
  }

  dimension: nf_id_exp_cargo_details {
    type: number
    sql: ${TABLE}.nf_id_exp_cargo_details ;;
  }

  dimension: nf_id_nf {
    type: number
    sql: ${TABLE}.nf_id_nf ;;
  }

  dimension: nf_num_nf {
    type: string
    sql: ${TABLE}.nf_num_nf ;;
  }

  dimension: nf_num_serie {
    type: string
    sql: ${TABLE}.nf_num_serie ;;
  }

  dimension: nf_modelo {
    type: string
    sql: ${TABLE}.nf_modelo ;;
  }

  dimension: nf_anomes_nf {
    type: number
    sql: ${TABLE}.nf_anomes_nf ;;
  }

  dimension: nf_sigla_uf_emitente {
    type: string
    sql: ${TABLE}.nf_sigla_uf_emitente ;;
  }

  dimension_group: nf_data_emissao {
    type: time
    sql: ${TABLE}.nf_data_emissao ;;
  }

  dimension: nf_cpf_cnpj_destinatario {
    type: string
    sql: ${TABLE}.nf_cpf_cnpj_destinatario ;;
  }

  dimension: nf_nome_destinatario {
    type: string
    sql: ${TABLE}.nf_nome_destinatario ;;
  }

  dimension_group: nf_data_cancelamento {
    type: time
    sql: ${TABLE}.nf_data_cancelamento ;;
  }

  dimension_group: nf_created_at {
    type: time
    sql: ${TABLE}.nf_created_at ;;
  }

  dimension: nf_cpf_cnpj_emissor {
    type: string
    sql: ${TABLE}.nf_cpf_cnpj_emissor ;;
  }

  dimension: nf_nome_emissor {
    type: string
    sql: ${TABLE}.nf_nome_emissor ;;
  }

  dimension: it_id {
    type: number
    sql: ${TABLE}.it_id ;;
  }

  dimension: it_id_exp_cargo_details {
    type: number
    sql: ${TABLE}.it_id_exp_cargo_details ;;
  }

  dimension: it_id_nf {
    type: number
    sql: ${TABLE}.it_id_nf ;;
  }

  dimension: it_num_item {
    type: number
    sql: ${TABLE}.it_num_item ;;
  }

  dimension: it_cod_produto {
    type: string
    sql: ${TABLE}.it_cod_produto ;;
  }

  dimension: it_cdncm_compl {
    type: number
    sql: ${TABLE}.it_cdncm_compl ;;
  }

  dimension: it_descr_ncm {
    type: string
    sql: ${TABLE}.it_descr_ncm ;;
  }

  dimension: it_descricao {
    type: string
    sql: ${TABLE}.it_descricao ;;
  }

  dimension: it_cfop {
    type: number
    sql: ${TABLE}.it_cfop ;;
  }

  dimension: it_val_tot_bruto {
    type: number
    sql: ${TABLE}.it_val_tot_bruto ;;
  }

  dimension: it_qtd_estatistica {
    type: number
    sql: ${TABLE}.it_qtd_estatistica ;;
  }

  dimension_group: it_created_at {
    type: time
    sql: ${TABLE}.it_created_at ;;
  }

  dimension: fcl_id {
    type: number
    sql: ${TABLE}.fcl_id ;;
  }

  dimension: fcl_id_exp_cargo_details {
    type: number
    sql: ${TABLE}.fcl_id_exp_cargo_details ;;
  }

  dimension: fcl_id_nf {
    type: number
    sql: ${TABLE}.fcl_id_nf ;;
  }

  dimension: fcl_conteiner {
    type: string
    sql: ${TABLE}.fcl_conteiner ;;
  }

  dimension: fcl_tara {
    type: number
    sql: ${TABLE}.fcl_tara ;;
  }

  dimension: fcl_dispensa_lacres {
    type: string
    sql: ${TABLE}.fcl_dispensa_lacres ;;
  }

  dimension: fcl_lacres {
    type: string
    sql: ${TABLE}.fcl_lacres ;;
  }

  dimension: fcl_peso_aferido {
    type: number
    sql: ${TABLE}.fcl_peso_aferido ;;
  }

  dimension_group: fcl_created_at {
    type: time
    sql: ${TABLE}.fcl_created_at ;;
  }


}
