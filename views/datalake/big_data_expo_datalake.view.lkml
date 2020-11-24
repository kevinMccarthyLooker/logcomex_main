view: big_data_expo_datalake {
  derived_table: {
    sql: select * from big_data_expo.big_data_expo_gold
      ;;
  }

  # measure: count {
  #   type: count
  #   drill_fields: [detail*]
  # }

  dimension: chk_origem {
    type: string
    sql: ${TABLE}.chk_origem ;;
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

  dimension_group: dt_dt_emissao {
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

  dimension: mar_conteiner {
    type: string
    sql: ${TABLE}.mar_conteiner ;;
  }

  dimension: mar_id {
    type: number
    sql: ${TABLE}.mar_id ;;
  }

  dimension: mar_ide {
    type: number
    sql: ${TABLE}.mar_ide ;;
  }

  dimension: mar_idu {
    type: number
    sql: ${TABLE}.mar_idu ;;
  }

  dimension_group: mar_data_registro {
    type: time
    sql: ${TABLE}.mar_data_registro ;;
  }

  dimension: mar_nrmanifesto {
    type: string
    sql: ${TABLE}.mar_nrmanifesto ;;
  }

  dimension: mar_dtemissao {
    type: date
    sql: ${TABLE}.mar_dtemissao ;;
  }

  dimension_group: mar_dtoperacao {
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
    sql: ${TABLE}.mar_dtoperacao ;;
  }

  dimension: mar_dtemissaoce {
    type: date
    sql: ${TABLE}.mar_dtemissaoce ;;
  }

  dimension: mar_dtemissaocemaster {
    type: date
    sql: ${TABLE}.mar_dtemissaocemaster ;;
  }

  dimension: mar_nrviagem {
    type: string
    sql: ${TABLE}.mar_nrviagem ;;
  }

  dimension: mar_cdportocarregamento {
    type: string
    sql: ${TABLE}.mar_cdportocarregamento ;;
  }

  dimension: mar_nmportocarregamento {
    type: string
    sql: ${TABLE}.mar_nmportocarregamento ;;
  }

  dimension: mar_cdportodescarregamento {
    type: string
    sql: ${TABLE}.mar_cdportodescarregamento ;;
  }

  dimension: mar_nmportodescarregamento {
    type: string
    sql: ${TABLE}.mar_nmportodescarregamento ;;
  }

  dimension: mar_tptrafego {
    type: string
    sql: ${TABLE}.mar_tptrafego ;;
  }

  dimension: mar_cdembarcacao {
    type: string
    sql: ${TABLE}.mar_cdembarcacao ;;
  }

  dimension: mar_nmembarcacao {
    type: string
    sql: ${TABLE}.mar_nmembarcacao ;;
  }

  dimension: mar_cdempresanavegacao {
    type: string
    sql: ${TABLE}.mar_cdempresanavegacao ;;
  }

  dimension: mar_nmempresanavegacao {
    type: string
    sql: ${TABLE}.mar_nmempresanavegacao ;;
  }

  dimension: mar_cdagencianavegacao {
    type: string
    sql: ${TABLE}.mar_cdagencianavegacao ;;
  }

  dimension: mar_nmagencianavegacao {
    type: string
    sql: ${TABLE}.mar_nmagencianavegacao ;;
  }

  dimension: mar_qtconhecimentosinformados {
    type: number
    sql: ${TABLE}.mar_qtconhecimentosinformados ;;
  }

  dimension: mar_qtconhecimentosexistentes {
    type: number
    sql: ${TABLE}.mar_qtconhecimentosexistentes ;;
  }

  dimension: mar_qtconhecimentosassociado {
    type: number
    sql: ${TABLE}.mar_qtconhecimentosassociado ;;
  }

  dimension: mar_ckshipsconvenience {
    type: string
    sql: ${TABLE}.mar_ckshipsconvenience ;;
  }

  dimension: mar_bloqueio_conhecimento {
    type: string
    sql: ${TABLE}.mar_bloqueio_conhecimento ;;
  }

  dimension: mar_ret_pendente_analise {
    type: string
    sql: ${TABLE}.mar_ret_pendente_analise ;;
  }

  dimension: mar_revisao_ou_pendencia_afrmm {
    type: string
    sql: ${TABLE}.mar_revisao_ou_pendencia_afrmm ;;
  }

  dimension: mar_pendencia_transito_maritimo {
    type: string
    sql: ${TABLE}.mar_pendencia_transito_maritimo ;;
  }

  dimension: mar_situacao_endosso {
    type: string
    sql: ${TABLE}.mar_situacao_endosso ;;
  }

  dimension: mar_nrcemercante {
    type: number
    sql: ${TABLE}.mar_nrcemercante ;;
  }

  dimension: mar_nrblconhecimento {
    type: string
    sql: ${TABLE}.mar_nrblconhecimento ;;
  }

  dimension: mar_vlcubagem {
    type: number
    sql: ${TABLE}.mar_vlcubagem ;;
  }

  dimension: mar_vlpesobruto {
    type: number
    sql: ${TABLE}.mar_vlpesobruto ;;
  }

  dimension: mar_cdportoorigem {
    type: string
    sql: ${TABLE}.mar_cdportoorigem ;;
  }

  dimension: mar_nmportoorigem {
    type: string
    sql: ${TABLE}.mar_nmportoorigem ;;
  }

  dimension: mar_cdportodestino {
    type: string
    sql: ${TABLE}.mar_cdportodestino ;;
  }

  dimension: mar_nmportodestino {
    type: string
    sql: ${TABLE}.mar_nmportodestino ;;
  }

  dimension: mar_cdportooriginal {
    type: string
    sql: ${TABLE}.mar_cdportooriginal ;;
  }

  dimension: mar_nmportooriginal {
    type: string
    sql: ${TABLE}.mar_nmportooriginal ;;
  }

  dimension: mar_tipoconhecimento {
    type: string
    sql: ${TABLE}.mar_tipoconhecimento ;;
  }

  dimension: mar_categoriacarga {
    type: string
    sql: ${TABLE}.mar_categoriacarga ;;
  }

  dimension: mar_cdconsignatario {
    type: string
    sql: ${TABLE}.mar_cdconsignatario ;;
  }

  dimension: mar_txshipper {
    type: string
    sql: ${TABLE}.mar_txshipper ;;
  }

  dimension: mar_txmercadoria {
    type: string
    sql: ${TABLE}.mar_txmercadoria ;;
  }

  dimension: mar_txobservacoes {
    type: string
    sql: ${TABLE}.mar_txobservacoes ;;
  }

  dimension: mar_txnotifypart {
    type: string
    sql: ${TABLE}.mar_txnotifypart ;;
  }

  dimension: mar_cdnotifypart {
    type: string
    sql: ${TABLE}.mar_cdnotifypart ;;
  }

  dimension: mar_nmconsignatario {
    type: string
    sql: ${TABLE}.mar_nmconsignatario ;;
  }

  dimension: mar_nrpassaporteconsignatario {
    type: string
    sql: ${TABLE}.mar_nrpassaporteconsignatario ;;
  }

  dimension: mar_txconsignatario {
    type: string
    sql: ${TABLE}.mar_txconsignatario ;;
  }

  dimension: mar_cdpracaentexterior {
    type: string
    sql: ${TABLE}.mar_cdpracaentexterior ;;
  }

  dimension: mar_nmpracaentexterior {
    type: string
    sql: ${TABLE}.mar_nmpracaentexterior ;;
  }

  dimension: mar_indblordem {
    type: string
    sql: ${TABLE}.mar_indblordem ;;
  }

  dimension: mar_cdmoedafrete {
    type: string
    sql: ${TABLE}.mar_cdmoedafrete ;;
  }

  dimension: mar_nmmoedafrete {
    type: string
    sql: ${TABLE}.mar_nmmoedafrete ;;
  }

  dimension: mar_oprecolhimentofrete {
    type: string
    sql: ${TABLE}.mar_oprecolhimentofrete ;;
  }

  dimension: mar_indmodalidadefrete {
    type: string
    sql: ${TABLE}.mar_indmodalidadefrete ;;
  }

  dimension: mar_dtceorigem {
    type: string
    sql: ${TABLE}.mar_dtceorigem ;;
  }

  dimension: mar_nrceorigem {
    type: string
    sql: ${TABLE}.mar_nrceorigem ;;
  }

  dimension: mar_nmnavioorigem {
    type: string
    sql: ${TABLE}.mar_nmnavioorigem ;;
  }

  dimension: mar_transbordosexterior {
    type: string
    sql: ${TABLE}.mar_transbordosexterior ;;
  }

  dimension: mar_ckblservico {
    type: string
    sql: ${TABLE}.mar_ckblservico ;;
  }

  dimension: mar_nrceoriginal {
    type: string
    sql: ${TABLE}.mar_nrceoriginal ;;
  }

  dimension: mar_cdterminalportuario {
    type: string
    sql: ${TABLE}.mar_cdterminalportuario ;;
  }

  dimension: mar_nmterminalportuario {
    type: string
    sql: ${TABLE}.mar_nmterminalportuario ;;
  }

  dimension: mar_indufdestino {
    type: string
    sql: ${TABLE}.mar_indufdestino ;;
  }

  dimension: mar_nmufdestino {
    type: string
    sql: ${TABLE}.mar_nmufdestino ;;
  }

  dimension: mar_cdpaisprocedencia {
    type: string
    sql: ${TABLE}.mar_cdpaisprocedencia ;;
  }

  dimension: mar_nmpaisprocedencia {
    type: string
    sql: ${TABLE}.mar_nmpaisprocedencia ;;
  }

  dimension: mar_responsavel_cpf_conhec {
    type: string
    sql: ${TABLE}.mar_responsavel_cpf_conhec ;;
  }

  dimension: mar_responsavel_nome_conhec {
    type: string
    sql: ${TABLE}.mar_responsavel_nome_conhec ;;
  }

  dimension: mar_responsavel_tipo_conhec {
    type: string
    sql: ${TABLE}.mar_responsavel_tipo_conhec ;;
  }

  dimension: mar_responsavel_ip_conhec {
    type: string
    sql: ${TABLE}.mar_responsavel_ip_conhec ;;
  }

  dimension: mar_responsavel_data_conhec {
    type: string
    sql: ${TABLE}.mar_responsavel_data_conhec ;;
  }

  dimension: mar_itens {
    type: string
    sql: ${TABLE}.mar_itens ;;
  }

  dimension: mar_nrcemaster {
    type: string
    sql: ${TABLE}.mar_nrcemaster ;;
  }

  dimension: mar_qthouseinformadomaster {
    type: string
    sql: ${TABLE}.mar_qthouseinformadomaster ;;
  }

  dimension: mar_qthousedeclaradomaster {
    type: string
    sql: ${TABLE}.mar_qthousedeclaradomaster ;;
  }

  dimension: mar_cdempnavegdesconmaster {
    type: string
    sql: ${TABLE}.mar_cdempnavegdesconmaster ;;
  }

  dimension: mar_nmempnavegdesconmaster {
    type: string
    sql: ${TABLE}.mar_nmempnavegdesconmaster ;;
  }

  dimension: mar_cdagtnavegmaster {
    type: string
    sql: ${TABLE}.mar_cdagtnavegmaster ;;
  }

  dimension: mar_nmagtnavegmaster {
    type: string
    sql: ${TABLE}.mar_nmagtnavegmaster ;;
  }

  dimension: mar_itemcarga_nritem {
    type: string
    sql: ${TABLE}.mar_itemcarga_nritem ;;
  }

  dimension: mar_nrdde {
    type: string
    sql: ${TABLE}.mar_nrdde ;;
  }

  dimension: mar_indedse {
    type: string
    sql: ${TABLE}.mar_indedse ;;
  }

  dimension: mar_cdpaisdestfinal {
    type: string
    sql: ${TABLE}.mar_cdpaisdestfinal ;;
  }

  dimension: mar_nmpaisdestfinal {
    type: string
    sql: ${TABLE}.mar_nmpaisdestfinal ;;
  }

  dimension: mar_cdshipper {
    type: string
    sql: ${TABLE}.mar_cdshipper ;;
  }

  dimension: mar_qtveiculostransportadores {
    type: string
    sql: ${TABLE}.mar_qtveiculostransportadores ;;
  }

  dimension: mar_nova {
    type: string
    sql: ${TABLE}.mar_nova ;;
  }

  dimension: mar_opconsignatario {
    type: string
    sql: ${TABLE}.mar_opconsignatario ;;
  }

  dimension: mar_vlfretetotal_dimension {
    type: number
    sql: ${TABLE}.mar_vlfretetotal ;;
  }

  dimension: mar_vlfrete_dimension {
    type: number
    sql: ${TABLE}.mar_vlfrete ;;
  }

  dimension: mar_componentesfrete {
    type: string
    sql: ${TABLE}.mar_componentesfrete ;;
  }

  dimension: mar_cdterminalportuariocarregamento {
    type: string
    sql: ${TABLE}.mar_cdterminalportuariocarregamento ;;
  }

  dimension: mar_nmterminalportuariocarregamento {
    type: string
    sql: ${TABLE}.mar_nmterminalportuariocarregamento ;;
  }

  dimension: mar_vlfretetotalbld {
    type: string
    sql: ${TABLE}.mar_vlfretetotalbld ;;
  }

  dimension_group: mar_dt_itens {
    type: time
    sql: ${TABLE}.mar_dt_itens ;;
  }

  dimension: mar_cdmoedafretetotalbld {
    type: string
    sql: ${TABLE}.mar_cdmoedafretetotalbld ;;
  }

  dimension: mar_ncm {
    type: string
    sql: ${TABLE}.mar_ncm ;;
  }

  dimension: mar_ncm_desc {
    type: string
    sql: ${TABLE}.mar_ncm_desc ;;
  }

  dimension: mar_lista_fcl {
    type: string
    sql: ${TABLE}.mar_lista_fcl ;;
  }

  dimension: mar_tipo_fcl {
    type: string
    sql: ${TABLE}.mar_tipo_fcl ;;
  }

  dimension: mar_tipo_carga {
    type: string
    sql: ${TABLE}.mar_tipo_carga ;;
  }
  dimension: mar_feus {
    type: number
    sql: ${TABLE}.mar_feus ;;
  }

  dimension: mar_total_fcl {
    type: number
    sql: ${TABLE}.mar_total_fcl ;;
  }

  dimension: mar_cnpj_num {
    type: number
    sql: ${TABLE}.mar_cnpj_num ;;
  }

  dimension: mar_tpitem {
    type: string
    sql: ${TABLE}.mar_tpitem ;;
  }

  dimension: mar_itemcarga_vlpesobruto {
    type: number
    sql: ${TABLE}.mar_itemcarga_vlpesobruto ;;
  }

  dimension: mar_itemcarga_vlcubagem {
    type: number
    sql: ${TABLE}.mar_itemcarga_vlcubagem ;;
  }

  dimension: mar_itemcarga_txmarca {
    type: string
    sql: ${TABLE}.mar_itemcarga_txmarca ;;
  }

  dimension: mar_itemcarga_txcontramarca {
    type: string
    sql: ${TABLE}.mar_itemcarga_txcontramarca ;;
  }

  dimension: mar_itemcarga_vlquantidade {
    type: string
    sql: ${TABLE}.mar_itemcarga_vlquantidade ;;
  }

  dimension: mar_itemcarga_cdindicadormercadoriaperigosa {
    type: string
    sql: ${TABLE}.mar_itemcarga_cdindicadormercadoriaperigosa ;;
  }

  dimension: mar_itemcarga_cdclassemercadoriaperigosa {
    type: string
    sql: ${TABLE}.mar_itemcarga_cdclassemercadoriaperigosa ;;
  }

  dimension: mar_itemcarga_cdtipoembalagem {
    type: string
    sql: ${TABLE}.mar_itemcarga_cdtipoembalagem ;;
  }

  dimension: mar_itemcarga_descricao_embalagem {
    type: string
    sql: ${TABLE}.mar_itemcarga_descricao_embalagem ;;
  }

  dimension: mar_itemcarga_cdncms {
    type: string
    sql: ${TABLE}.mar_itemcarga_cdncms ;;
  }

  dimension: mar_temcarga_cdncms {
    type: string
    sql: ${TABLE}.mar_temcarga_cdncms ;;
  }

  dimension: mar_responsavel_cpf {
    type: string
    sql: ${TABLE}.mar_responsavel_cpf ;;
  }

  dimension: mar_responsavel_tipo {
    type: string
    sql: ${TABLE}.mar_responsavel_tipo ;;
  }

  dimension: mar_responsavel_ip {
    type: string
    sql: ${TABLE}.mar_responsavel_ip ;;
  }

  dimension: mar_responsavel_data {
    type: string
    sql: ${TABLE}.mar_responsavel_data ;;
  }

  dimension: mar_responsavel_hora {
    type: string
    sql: ${TABLE}.mar_responsavel_hora ;;
  }

  dimension: mar_itemcarga_noncms {
    type: string
    sql: ${TABLE}.mar_itemcarga_noncms ;;
  }

  dimension: mar_itemcarga_tipocontainer {
    type: string
    sql: ${TABLE}.mar_itemcarga_tipocontainer ;;
  }

  dimension: mar_usoparcial {
    type: string
    sql: ${TABLE}.mar_usoparcial ;;
  }

  dimension: mar_itemcarga_cdtipogranel {
    type: string
    sql: ${TABLE}.mar_itemcarga_cdtipogranel ;;
  }

  dimension: mar_itemcarga_descricao_tipogranel {
    type: string
    sql: ${TABLE}.mar_itemcarga_descricao_tipogranel ;;
  }

  dimension: mar_itemcarga_descricao {
    type: string
    sql: ${TABLE}.mar_itemcarga_descricao ;;
  }

  dimension: mar_nmmoedafretetotalbld {
    type: string
    sql: ${TABLE}.mar_nmmoedafretetotalbld ;;
  }

  dimension_group: mar_dt_consulta_master {
    type: time
    sql: ${TABLE}.mar_dt_consulta_master ;;
  }

  dimension: mar_incodacao {
    type: string
    sql: ${TABLE}.mar_incodacao ;;
  }

  dimension: mar_codigoncmitemcomplementar {
    type: string
    sql: ${TABLE}.mar_codigoncmitemcomplementar ;;
  }

  dimension: mar_descncmitemcomplementar {
    type: string
    sql: ${TABLE}.mar_descncmitemcomplementar ;;
  }

  dimension: mar_link {
    type: string
    sql: ${TABLE}.mar_link ;;
  }

  dimension: mar_itemcarga_condncms {
    type: string
    sql: ${TABLE}.mar_itemcarga_condncms ;;
  }

  dimension: mar_nomeconsiglce {
    type: string
    sql: ${TABLE}.mar_nomeconsiglce ;;
  }

  dimension: mar_enderecoconsiglce {
    type: string
    sql: ${TABLE}.mar_enderecoconsiglce ;;
  }

  dimension: mar_nrruc {
    type: string
    sql: ${TABLE}.mar_nrruc ;;
  }

  dimension: mar_enviar {
    type: string
    sql: ${TABLE}.mar_enviar ;;
  }

  dimension: mar_limpar {
    type: string
    sql: ${TABLE}.mar_limpar ;;
  }

  dimension: mar_id_porto_origem {
    type: number
    sql: ${TABLE}.mar_id_porto_origem ;;
  }

  dimension: mar_id_porto_carga {
    type: number
    sql: ${TABLE}.mar_id_porto_carga ;;
  }

  dimension: mar_id_porto_descarga {
    type: number
    sql: ${TABLE}.mar_id_porto_descarga ;;
  }

  dimension: mar_id_porto_destino {
    type: number
    sql: ${TABLE}.mar_id_porto_destino ;;
  }

  dimension: mar_id_armador {
    type: number
    sql: ${TABLE}.mar_id_armador ;;
  }

  dimension: mar_id_agencia {
    type: number
    sql: ${TABLE}.mar_id_agencia ;;
  }

  dimension: mar_id_shipper {
    type: number
    sql: ${TABLE}.mar_id_shipper ;;
  }

  dimension: mar_id_consig {
    type: number
    sql: ${TABLE}.mar_id_consig ;;
  }

  dimension: mar_id_shipconv {
    type: number
    sql: ${TABLE}.mar_id_shipconv ;;
  }

  dimension: mar_id_notify {
    type: number
    sql: ${TABLE}.mar_id_notify ;;
  }

  dimension: mar_id_agente {
    type: number
    sql: ${TABLE}.mar_id_agente ;;
  }

  dimension: mar_id_agente_inter {
    type: number
    sql: ${TABLE}.mar_id_agente_inter ;;
  }

  dimension: mar_id_terminal_descarga {
    type: number
    sql: ${TABLE}.mar_id_terminal_descarga ;;
  }

  dimension: mar_id_terminal_carga {
    type: number
    sql: ${TABLE}.mar_id_terminal_carga ;;
  }

  dimension: mar_id_moeda_frete {
    type: number
    sql: ${TABLE}.mar_id_moeda_frete ;;
  }

  dimension: mar_id_pais_origem {
    type: number
    sql: ${TABLE}.mar_id_pais_origem ;;
  }

  dimension: mar_id_fcl {
    type: number
    sql: ${TABLE}.mar_id_fcl ;;
  }

  dimension: mar_id_pais_destino {
    type: number
    sql: ${TABLE}.mar_id_pais_destino ;;
  }

  dimension_group: mar_dt_cabotagem {
    type: time
    sql: ${TABLE}.mar_dt_cabotagem ;;
  }

  dimension: mar_id_nvocc {
    type: number
    sql: ${TABLE}.mar_id_nvocc ;;
  }

  dimension_group: mar_dt_update_agente {
    type: time
    sql: ${TABLE}.mar_dt_update_agente ;;
  }

  dimension: mar_tipoconhecimentooriginal {
    type: string
    sql: ${TABLE}.mar_tipoconhecimentooriginal ;;
  }

  dimension_group: mar_deleted_at {
    type: time
    sql: ${TABLE}.mar_deleted_at ;;
  }

  dimension: mar_teus_parcial {
    type: number
    sql: ${TABLE}.mar_teus_parcial ;;
  }

  dimension_group: mar_checked_at {
    type: time
    sql: ${TABLE}.mar_checked_at ;;
  }

  dimension_group: mar_available_at {
    type: time
    sql: ${TABLE}.mar_available_at ;;
  }

  dimension_group: mar_processed_at {
    type: time
    sql: ${TABLE}.mar_processed_at ;;
  }

  dimension_group: mar_checked_error_at {
    type: time
    sql: ${TABLE}.mar_checked_error_at ;;
  }

  dimension: mar_obs_migr {
    type: string
    sql: ${TABLE}.mar_obs_migr ;;
  }

  dimension: mar_id_recinto_aduaneiro {
    type: number
    sql: ${TABLE}.mar_id_recinto_aduaneiro ;;
  }

  dimension: mar_cdncm_compl {
    type: string
    sql: ${TABLE}.mar_cdncm_compl ;;
  }

  dimension: mar_lista_hscode {
    type: string
    sql: ${TABLE}.mar_lista_hscode ;;
  }

  dimension: mar_id_original {
    type: number
    sql: ${TABLE}.mar_id_original ;;
  }

  dimension: mar_desc_hscode {
    type: string
    sql: ${TABLE}.mar_desc_hscode ;;
  }

  dimension: mar_desc_ncm {
    type: string
    sql: ${TABLE}.mar_desc_ncm ;;
  }

  ####################### --------------> Measures e Dimensions Criadas / Alteradas <-------------------- #########################

  dimension: mar_teus_dimension {
    type: number
    sql: ${TABLE}.mar_teus ;;
  }

  dimension: mar_c20_dimension {
    type: number
    sql: ${TABLE}.mar_c20 ;;
  }

  dimension: mar_c40_dimension {
    type: number
    sql: ${TABLE}.mar_c40 ;;
  }

  measure: mar_teus {
    type: sum
    sql: ${TABLE}.mar_teus ;;
  }

  measure: mar_c20 {
    type: sum
    sql: ${TABLE}.mar_c20 ;;
  }

  measure: mar_c40 {
    type: sum
    sql: ${TABLE}.mar_c40 ;;
  }

  measure: mar_vlfrete {
    type: sum
    value_format: "$#.00;($#.00)"
    sql: ${TABLE}."mar_vlfrete" ;;
  }

  measure: mar_vlfretetotal {
    type: sum
    value_format: "$#.00;($#.00)"
    sql: ${TABLE}."mar_vlfretetotal" ;;
  }

  measure: mar_vl_frete_por_TEU {
    type: average
    value_format: "$#.00;($#.00)"
    filters: [mar_teus_dimension: ">0"]
    sql: ${TABLE}."mar_vlfrete" /  ${TABLE}."mar_teus" ;;
  }

  measure: mar_vl_frete_por_c20 {
    type: average
    value_format: "$#.00;($#.00)"
    filters: [mar_c20_dimension: ">0"]
    sql: ${TABLE}."mar_vlfrete" /  ${TABLE}."mar_c20" ;;
  }

  measure: mar_vl_frete_por_c40 {
    type: average
    value_format: "$#.00;($#.00)"
    filters: [mar_c40_dimension: ">0"]
    sql: ${TABLE}."mar_vlfrete" /  ${TABLE}."mar_c40" ;;
  }


  # set: detail {
  #   fields: [
  #     chk_origem,
  #     dt_pu_export_cargo_reception_id,
  #     dt_sequential_number,
  #     dt_filter_date,
  #     dt_tipo,
  #     dt_tipooperacaocarga,
  #     dt_tipodocumentooperacao,
  #     dt_cod_urf,
  #     dt_desc_urf,
  #     dt_cod_ra,
  #     dt_desc_ra,
  #     dt_responsavel_cnpj,
  #     dt_responsavel_nome,
  #     dt_latitude,
  #     dt_longitude,
  #     dt_entregador_cnpj,
  #     dt_entregador_nome,
  #     dt_recebedor_cnpj,
  #     dt_recebedor_nome,
  #     dt_nacionalidaderecebedor,
  #     dt_condutor_codigo,
  #     dt_condutor_nome,
  #     dt_condutorbrasileiro,
  #     dt_viatransporte,
  #     dt_veiculo_placa,
  #     dt_veiculo_lacres,
  #     dt_ind_escaneamento,
  #     dt_ind_transito_simpl,
  #     dt_peso_aferido,
  #     dt_motivo_nao_pesagem,
  #     dt_observacoes,
  #     dt_descr_avaria,
  #     dt_local_armazenamento,
  #     dt_local_referencia,
  #     dt_descr_divergencia,
  #     dt_recepcao_mau_funcionamento,
  #     dt_has_conteiner_nota,
  #     dt_dataregistro_time,
  #     dt_transportador_cnpj,
  #     dt_transportador_nome,
  #     dt_transp_condutor_cpf,
  #     dt_transp_condutor_nome,
  #     dt_num_doc_manifest,
  #     dt_tp_doc_manifest,
  #     dt_desc_tp_doc_manifest,
  #     dt_veic_dat_condutor_confere,
  #     dt_unid_transp_dat_confere,
  #     dt_elem_segur_dat_confere,
  #     dt_conteiner_dat_confere,
  #     dt_created_at_time,
  #     dt_updated_at_time,
  #     nf_id,
  #     nf_id_exp_cargo_details,
  #     nf_id_nf,
  #     nf_num_nf,
  #     nf_num_serie,
  #     nf_modelo,
  #     nf_anomes_nf,
  #     nf_sigla_uf_emitente,
  #     nf_data_emissao_time,
  #     nf_cpf_cnpj_destinatario,
  #     nf_nome_destinatario,
  #     nf_data_cancelamento_time,
  #     nf_created_at_time,
  #     nf_cpf_cnpj_emissor,
  #     nf_nome_emissor,
  #     it_id,
  #     it_id_exp_cargo_details,
  #     it_id_nf,
  #     it_num_item,
  #     it_cod_produto,
  #     it_cdncm_compl,
  #     it_descr_ncm,
  #     it_descricao,
  #     it_cfop,
  #     it_val_tot_bruto,
  #     it_qtd_estatistica,
  #     it_created_at_time,
  #     fcl_id,
  #     fcl_id_exp_cargo_details,
  #     fcl_id_nf,
  #     fcl_conteiner,
  #     fcl_tara,
  #     fcl_dispensa_lacres,
  #     fcl_lacres,
  #     fcl_peso_aferido,
  #     fcl_created_at_time,
  #     mar_conteiner,
  #     mar_id,
  #     mar_ide,
  #     mar_idu,
  #     mar_data_registro_time,
  #     mar_nrmanifesto,
  #     mar_dtemissao,
  #     mar_dtoperacao,
  #     mar_dtemissaoce,
  #     mar_dtemissaocemaster,
  #     mar_nrviagem,
  #     mar_cdportocarregamento,
  #     mar_nmportocarregamento,
  #     mar_cdportodescarregamento,
  #     mar_nmportodescarregamento,
  #     mar_tptrafego,
  #     mar_cdembarcacao,
  #     mar_nmembarcacao,
  #     mar_cdempresanavegacao,
  #     mar_nmempresanavegacao,
  #     mar_cdagencianavegacao,
  #     mar_nmagencianavegacao,
  #     mar_qtconhecimentosinformados,
  #     mar_qtconhecimentosexistentes,
  #     mar_qtconhecimentosassociado,
  #     mar_ckshipsconvenience,
  #     mar_bloqueio_conhecimento,
  #     mar_ret_pendente_analise,
  #     mar_revisao_ou_pendencia_afrmm,
  #     mar_pendencia_transito_maritimo,
  #     mar_situacao_endosso,
  #     mar_nrcemercante,
  #     mar_nrblconhecimento,
  #     mar_vlcubagem,
  #     mar_vlpesobruto,
  #     mar_cdportoorigem,
  #     mar_nmportoorigem,
  #     mar_cdportodestino,
  #     mar_nmportodestino,
  #     mar_cdportooriginal,
  #     mar_nmportooriginal,
  #     mar_tipoconhecimento,
  #     mar_categoriacarga,
  #     mar_cdconsignatario,
  #     mar_txshipper,
  #     mar_txmercadoria,
  #     mar_txobservacoes,
  #     mar_txnotifypart,
  #     mar_cdnotifypart,
  #     mar_nmconsignatario,
  #     mar_nrpassaporteconsignatario,
  #     mar_txconsignatario,
  #     mar_cdpracaentexterior,
  #     mar_nmpracaentexterior,
  #     mar_indblordem,
  #     mar_cdmoedafrete,
  #     mar_nmmoedafrete,
  #     mar_oprecolhimentofrete,
  #     mar_indmodalidadefrete,
  #     mar_dtceorigem,
  #     mar_nrceorigem,
  #     mar_nmnavioorigem,
  #     mar_transbordosexterior,
  #     mar_ckblservico,
  #     mar_nrceoriginal,
  #     mar_cdterminalportuario,
  #     mar_nmterminalportuario,
  #     mar_indufdestino,
  #     mar_nmufdestino,
  #     mar_cdpaisprocedencia,
  #     mar_nmpaisprocedencia,
  #     mar_responsavel_cpf_conhec,
  #     mar_responsavel_nome_conhec,
  #     mar_responsavel_tipo_conhec,
  #     mar_responsavel_ip_conhec,
  #     mar_responsavel_data_conhec,
  #     mar_itens,
  #     mar_nrcemaster,
  #     mar_qthouseinformadomaster,
  #     mar_qthousedeclaradomaster,
  #     mar_cdempnavegdesconmaster,
  #     mar_nmempnavegdesconmaster,
  #     mar_cdagtnavegmaster,
  #     mar_nmagtnavegmaster,
  #     mar_itemcarga_nritem,
  #     mar_nrdde,
  #     mar_indedse,
  #     mar_cdpaisdestfinal,
  #     mar_nmpaisdestfinal,
  #     mar_cdshipper,
  #     mar_qtveiculostransportadores,
  #     mar_nova,
  #     mar_opconsignatario,
  #     mar_vlfretetotal,
  #     mar_vlfrete,
  #     mar_componentesfrete,
  #     mar_cdterminalportuariocarregamento,
  #     mar_nmterminalportuariocarregamento,
  #     mar_vlfretetotalbld,
  #     mar_dt_itens_time,
  #     mar_cdmoedafretetotalbld,
  #     mar_ncm,
  #     mar_ncm_desc,
  #     mar_lista_fcl,
  #     mar_tipo_fcl,
  #     mar_tipo_carga,
  #     mar_c20,
  #     mar_c40,
  #     mar_teus,
  #     mar_feus,
  #     mar_total_fcl,
  #     mar_cnpj_num,
  #     mar_tpitem,
  #     mar_itemcarga_vlpesobruto,
  #     mar_itemcarga_vlcubagem,
  #     mar_itemcarga_txmarca,
  #     mar_itemcarga_txcontramarca,
  #     mar_itemcarga_vlquantidade,
  #     mar_itemcarga_cdindicadormercadoriaperigosa,
  #     mar_itemcarga_cdclassemercadoriaperigosa,
  #     mar_itemcarga_cdtipoembalagem,
  #     mar_itemcarga_descricao_embalagem,
  #     mar_itemcarga_cdncms,
  #     mar_temcarga_cdncms,
  #     mar_responsavel_cpf,
  #     mar_responsavel_tipo,
  #     mar_responsavel_ip,
  #     mar_responsavel_data,
  #     mar_responsavel_hora,
  #     mar_itemcarga_noncms,
  #     mar_itemcarga_tipocontainer,
  #     mar_usoparcial,
  #     mar_itemcarga_cdtipogranel,
  #     mar_itemcarga_descricao_tipogranel,
  #     mar_itemcarga_descricao,
  #     mar_nmmoedafretetotalbld,
  #     mar_dt_consulta_master_time,
  #     mar_incodacao,
  #     mar_codigoncmitemcomplementar,
  #     mar_descncmitemcomplementar,
  #     mar_link,
  #     mar_itemcarga_condncms,
  #     mar_nomeconsiglce,
  #     mar_enderecoconsiglce,
  #     mar_nrruc,
  #     mar_enviar,
  #     mar_limpar,
  #     mar_id_porto_origem,
  #     mar_id_porto_carga,
  #     mar_id_porto_descarga,
  #     mar_id_porto_destino,
  #     mar_id_armador,
  #     mar_id_agencia,
  #     mar_id_shipper,
  #     mar_id_consig,
  #     mar_id_shipconv,
  #     mar_id_notify,
  #     mar_id_agente,
  #     mar_id_agente_inter,
  #     mar_id_terminal_descarga,
  #     mar_id_terminal_carga,
  #     mar_id_moeda_frete,
  #     mar_id_pais_origem,
  #     mar_id_fcl,
  #     mar_id_pais_destino,
  #     mar_dt_cabotagem_time,
  #     mar_id_nvocc,
  #     mar_dt_update_agente_time,
  #     mar_tipoconhecimentooriginal,
  #     mar_deleted_at_time,
  #     mar_teus_parcial,
  #     mar_checked_at_time,
  #     mar_available_at_time,
  #     mar_processed_at_time,
  #     mar_checked_error_at_time,
  #     mar_obs_migr,
  #     mar_id_recinto_aduaneiro,
  #     mar_cdncm_compl,
  #     mar_lista_hscode,
  #     mar_id_original,
  #     mar_desc_hscode,
  #     mar_desc_ncm
  #   ]
  # }
}
