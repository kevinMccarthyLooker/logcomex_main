view: big_data_expo_datalake {
  derived_table: {
    sql: select * from big_data_expo.big_data_expo_gold
      ;;
  }

# Prefixos :: Tabelas
#  dt = details
#  nf = nota
#  it = itens nota
#  fcl = conteiner
#  mar = maritimo

  dimension: chk_origem {
    type: string
    sql: ${TABLE}.chk_origem ;;
  }

  dimension: dt_cod_ra {
    type: number
    sql: ${TABLE}.dt_cod_ra ;;
  }

  dimension: dt_cod_urf {
    type: number
    sql: ${TABLE}.dt_cod_urf ;;
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
    type: yesno
    sql: ${TABLE}.dt_condutorbrasileiro ;;
  }

  dimension: dt_conteiner_dat_confere {
    type: string
    sql: ${TABLE}.dt_conteiner_dat_confere ;;
  }

  dimension_group: dt_created {
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
    sql: ${TABLE}.dt_created_at ;;
  }

  dimension_group: dt_dataregistro {
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
    sql: ${TABLE}.dt_dataregistro ;;
  }

  dimension: dt_desc_ra {
    type: string
    sql: ${TABLE}.dt_desc_ra ;;
  }

  dimension: dt_desc_tp_doc_manifest {
    type: string
    sql: ${TABLE}.dt_desc_tp_doc_manifest ;;
  }

  dimension: dt_desc_urf {
    type: string
    sql: ${TABLE}.dt_desc_urf ;;
  }

  dimension: dt_descr_avaria {
    type: string
    sql: ${TABLE}.dt_descr_avaria ;;
  }

  dimension: dt_descr_divergencia {
    type: string
    sql: ${TABLE}.dt_descr_divergencia ;;
  }

  dimension_group: dt_dt_emissao {
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
    sql: ${TABLE}.dt_dt_emissao ;;
  }

  dimension: dt_elem_segur_dat_confere {
    type: string
    sql: ${TABLE}.dt_elem_segur_dat_confere ;;
  }

  dimension: dt_entregador_cnpj {
    type: string
    sql: ${TABLE}.dt_entregador_cnpj ;;
  }

  dimension: dt_entregador_nome {
    type: string
    sql: ${TABLE}.dt_entregador_nome ;;
  }

  dimension_group: dt_filter {
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
    sql: ${TABLE}.dt_filter_date ;;
  }

  dimension: dt_has_conteiner_nota {
    type: yesno
    sql: ${TABLE}.dt_has_conteiner_nota ;;
  }

  dimension: dt_id {
    type: number
    sql: ${TABLE}.dt_id ;;
  }

  dimension: dt_ind_escaneamento {
    type: string
    sql: ${TABLE}.dt_ind_escaneamento ;;
  }

  dimension: dt_ind_transito_simpl {
    type: yesno
    sql: ${TABLE}.dt_ind_transito_simpl ;;
  }

  dimension: dt_latitude {
    type: number
    sql: ${TABLE}.dt_latitude ;;
  }

  dimension: dt_local_armazenamento {
    type: string
    sql: ${TABLE}.dt_local_armazenamento ;;
  }

  dimension: dt_local_referencia {
    type: string
    sql: ${TABLE}.dt_local_referencia ;;
  }

  dimension: dt_longitude {
    type: number
    sql: ${TABLE}.dt_longitude ;;
  }

  dimension: dt_motivo_nao_pesagem {
    type: string
    sql: ${TABLE}.dt_motivo_nao_pesagem ;;
  }

  dimension: dt_nacionalidaderecebedor {
    type: string
    sql: ${TABLE}.dt_nacionalidaderecebedor ;;
  }

  dimension: dt_num_doc_manifest {
    type: string
    sql: ${TABLE}.dt_num_doc_manifest ;;
  }

  dimension: dt_observacoes {
    type: string
    sql: ${TABLE}.dt_observacoes ;;
  }

  dimension: dt_peso_aferido {
    type: number
    sql: ${TABLE}.dt_peso_aferido ;;
  }

  dimension: dt_pu_export_cargo_reception_id {
    type: number
    sql: ${TABLE}.dt_pu_export_cargo_reception_id ;;
  }

  dimension: dt_recebedor_cnpj {
    type: string
    sql: ${TABLE}.dt_recebedor_cnpj ;;
  }

  dimension: dt_recebedor_nome {
    type: string
    sql: ${TABLE}.dt_recebedor_nome ;;
  }

  dimension: dt_recepcao_mau_funcionamento {
    type: string
    sql: ${TABLE}.dt_recepcao_mau_funcionamento ;;
  }

  dimension: dt_responsavel_cnpj {
    type: string
    sql: ${TABLE}.dt_responsavel_cnpj ;;
  }

  dimension: dt_responsavel_nome {
    type: string
    sql: ${TABLE}.dt_responsavel_nome ;;
  }

  dimension: dt_sequential_number {
    type: number
    sql: ${TABLE}.dt_sequential_number ;;
  }

  dimension: dt_tipo {
    type: number
    sql: ${TABLE}.dt_tipo ;;
  }

  dimension: dt_tipodocumentooperacao {
    type: string
    sql: ${TABLE}.dt_tipodocumentooperacao ;;
  }

  dimension: dt_tipooperacaocarga {
    type: string
    sql: ${TABLE}.dt_tipooperacaocarga ;;
  }

  dimension: dt_tp_doc_manifest {
    type: number
    sql: ${TABLE}.dt_tp_doc_manifest ;;
  }

  dimension: dt_transp_condutor_cpf {
    type: string
    sql: ${TABLE}.dt_transp_condutor_cpf ;;
  }

  dimension: dt_transp_condutor_nome {
    type: string
    sql: ${TABLE}.dt_transp_condutor_nome ;;
  }

  dimension: dt_transportador_cnpj {
    type: string
    sql: ${TABLE}.dt_transportador_cnpj ;;
  }

  dimension: dt_transportador_nome {
    type: string
    sql: ${TABLE}.dt_transportador_nome ;;
  }

  dimension: dt_unid_transp_dat_confere {
    type: string
    sql: ${TABLE}.dt_unid_transp_dat_confere ;;
  }

  dimension_group: dt_updated {
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
    sql: ${TABLE}.dt_updated_at ;;
  }

  dimension: dt_veic_dat_condutor_confere {
    type: string
    sql: ${TABLE}.dt_veic_dat_condutor_confere ;;
  }

  dimension: dt_veiculo_lacres {
    type: string
    sql: ${TABLE}.dt_veiculo_lacres ;;
  }

  dimension: dt_veiculo_placa {
    type: string
    sql: ${TABLE}.dt_veiculo_placa ;;
  }

  dimension: dt_viatransporte {
    type: string
    sql: ${TABLE}.dt_viatransporte ;;
  }

  dimension: fcl_conteiner {
    type: string
    sql: ${TABLE}.fcl_conteiner ;;
  }

  dimension_group: fcl_created {
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
    sql: ${TABLE}.fcl_created_at ;;
  }

  dimension: fcl_dispensa_lacres {
    type: yesno
    sql: ${TABLE}.fcl_dispensa_lacres ;;
  }

  dimension: fcl_id {
    type: number
    sql: ${TABLE}.fcl_id ;;
  }

  dimension: fcl_id_exp_cargo_details {
    type: number
    value_format_name: id
    sql: ${TABLE}.fcl_id_exp_cargo_details ;;
  }

  dimension: fcl_id_nf {
    type: number
    value_format_name: id
    sql: ${TABLE}.fcl_id_nf ;;
  }

  dimension: fcl_lacres {
    type: string
    sql: ${TABLE}.fcl_lacres ;;
  }

  dimension: fcl_peso_aferido {
    type: number
    sql: ${TABLE}.fcl_peso_aferido ;;
  }

  dimension: fcl_tara {
    type: number
    sql: ${TABLE}.fcl_tara ;;
  }

  dimension: it_cdncm_compl {
    type: number
    sql: ${TABLE}.it_cdncm_compl ;;
  }

  dimension: it_cfop {
    type: number
    sql: ${TABLE}.it_cfop ;;
  }

  dimension: it_cod_produto {
    type: string
    sql: ${TABLE}.it_cod_produto ;;
  }

  dimension_group: it_created {
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
    sql: ${TABLE}.it_created_at ;;
  }

  dimension: it_descr_ncm {
    type: string
    sql: ${TABLE}.it_descr_ncm ;;
  }

  dimension: it_descricao {
    type: string
    sql: ${TABLE}.it_descricao ;;
  }

  dimension: it_id {
    type: number
    sql: ${TABLE}.it_id ;;
  }

  dimension: it_id_exp_cargo_details {
    type: number
    value_format_name: id
    sql: ${TABLE}.it_id_exp_cargo_details ;;
  }

  dimension: it_id_nf {
    type: number
    value_format_name: id
    sql: ${TABLE}.it_id_nf ;;
  }

  dimension: it_num_item {
    type: number
    sql: ${TABLE}.it_num_item ;;
  }

  dimension: it_qtd_estatistica {
    type: number
    sql: ${TABLE}.it_qtd_estatistica ;;
  }

  dimension: it_val_tot_bruto {
    type: number
    sql: ${TABLE}.it_val_tot_bruto ;;
  }

  dimension_group: mar_available {
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
    sql: ${TABLE}.mar_available_at ;;
  }

  dimension: mar_bloqueio_conhecimento {
    type: string
    sql: ${TABLE}.mar_bloqueio_conhecimento ;;
  }

  measure: mar_c20 {
    type: sum
    sql: ${TABLE}.mar_c20 ;;
  }

  measure: mar_c40 {
    type: sum
    sql: ${TABLE}.mar_c40 ;;
  }

  dimension: mar_categoriacarga {
    type: string
    sql: ${TABLE}.mar_categoriacarga ;;
  }

  dimension: mar_cdagencianavegacao {
    type: string
    sql: ${TABLE}.mar_cdagencianavegacao ;;
  }

  dimension: mar_cdagtnavegmaster {
    type: string
    sql: ${TABLE}.mar_cdagtnavegmaster ;;
  }

  dimension: mar_cdconsignatario {
    type: string
    sql: ${TABLE}.mar_cdconsignatario ;;
  }

  dimension: mar_cdembarcacao {
    type: string
    sql: ${TABLE}.mar_cdembarcacao ;;
  }

  dimension: mar_cdempnavegdesconmaster {
    type: string
    sql: ${TABLE}.mar_cdempnavegdesconmaster ;;
  }

  dimension: mar_cdempresanavegacao {
    type: string
    sql: ${TABLE}.mar_cdempresanavegacao ;;
  }

  dimension: mar_cdmoedafrete {
    type: string
    sql: ${TABLE}.mar_cdmoedafrete ;;
  }

  dimension: mar_cdmoedafretetotalbld {
    type: string
    sql: ${TABLE}.mar_cdmoedafretetotalbld ;;
  }

  dimension: mar_cdncm_compl {
    type: string
    sql: ${TABLE}.mar_cdncm_compl ;;
  }

  dimension: mar_cdnotifypart {
    type: string
    sql: ${TABLE}.mar_cdnotifypart ;;
  }

  dimension: mar_cdpaisdestfinal {
    type: string
    sql: ${TABLE}.mar_cdpaisdestfinal ;;
  }

  dimension: mar_cdpaisprocedencia {
    type: string
    sql: ${TABLE}.mar_cdpaisprocedencia ;;
  }

  dimension: mar_cdportocarregamento {
    type: string
    sql: ${TABLE}.mar_cdportocarregamento ;;
  }

  dimension: mar_cdportodescarregamento {
    type: string
    sql: ${TABLE}.mar_cdportodescarregamento ;;
  }

  dimension: mar_cdportodestino {
    type: string
    sql: ${TABLE}.mar_cdportodestino ;;
  }

  dimension: mar_cdportoorigem {
    type: string
    sql: ${TABLE}.mar_cdportoorigem ;;
  }

  dimension: mar_cdportooriginal {
    type: string
    sql: ${TABLE}.mar_cdportooriginal ;;
  }

  dimension: mar_cdpracaentexterior {
    type: string
    sql: ${TABLE}.mar_cdpracaentexterior ;;
  }

  dimension: mar_cdshipper {
    type: string
    sql: ${TABLE}.mar_cdshipper ;;
  }

  dimension: mar_cdterminalportuario {
    type: string
    sql: ${TABLE}.mar_cdterminalportuario ;;
  }

  dimension: mar_cdterminalportuariocarregamento {
    type: string
    sql: ${TABLE}.mar_cdterminalportuariocarregamento ;;
  }

  dimension_group: mar_checked {
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
    sql: ${TABLE}.mar_checked_at ;;
  }

  dimension_group: mar_checked_error {
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
    sql: ${TABLE}.mar_checked_error_at ;;
  }

  dimension: mar_ckblservico {
    type: string
    sql: ${TABLE}.mar_ckblservico ;;
  }

  dimension: mar_ckshipsconvenience {
    type: string
    sql: ${TABLE}.mar_ckshipsconvenience ;;
  }

  dimension: mar_cnpj_num {
    type: number
    sql: ${TABLE}.mar_cnpj_num ;;
  }

  dimension: mar_codigoncmitemcomplementar {
    type: string
    sql: ${TABLE}.mar_codigoncmitemcomplementar ;;
  }

  dimension: mar_componentesfrete {
    type: string
    sql: ${TABLE}.mar_componentesfrete ;;
  }

  dimension: mar_conteiner {
    type: string
    sql: ${TABLE}.mar_conteiner ;;
  }

  dimension_group: mar_data_registro {
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
    sql: ${TABLE}.mar_data_registro ;;
  }

  dimension_group: mar_deleted {
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
    sql: ${TABLE}.mar_deleted_at ;;
  }

  dimension: mar_desc_hscode {
    type: string
    sql: ${TABLE}.mar_desc_hscode ;;
  }

  dimension: mar_desc_ncm {
    type: string
    sql: ${TABLE}.mar_desc_ncm ;;
  }

  dimension: mar_descncmitemcomplementar {
    type: string
    sql: ${TABLE}.mar_descncmitemcomplementar ;;
  }

  dimension_group: mar_dt_cabotagem {
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
    sql: ${TABLE}.mar_dt_cabotagem ;;
  }

  dimension_group: mar_dt_consulta_master {
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
    sql: ${TABLE}.mar_dt_consulta_master ;;
  }

  dimension_group: mar_dt_itens {
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
    sql: ${TABLE}.mar_dt_itens ;;
  }

  dimension_group: mar_dt_update_agente {
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
    sql: ${TABLE}.mar_dt_update_agente ;;
  }

  dimension: mar_dtceorigem {
    type: string
    sql: ${TABLE}.mar_dtceorigem ;;
  }

  dimension_group: mar_dtemissao {
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
    sql: ${TABLE}.mar_dtemissao ;;
  }

  dimension_group: mar_dtemissaoce {
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
    sql: ${TABLE}.mar_dtemissaoce ;;
  }

  dimension_group: mar_dtemissaocemaster {
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
    sql: ${TABLE}.mar_dtemissaocemaster ;;
  }

  dimension_group: mar_dtoperacao {
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
    sql: ${TABLE}.mar_dtoperacao ;;
  }

  dimension: mar_enderecoconsiglce {
    type: string
    sql: ${TABLE}.mar_enderecoconsiglce ;;
  }

  dimension: mar_enviar {
    type: string
    sql: ${TABLE}.mar_enviar ;;
  }

  dimension: mar_feus {
    type: number
    sql: ${TABLE}.mar_feus ;;
  }

  dimension: mar_id {
    type: number
    sql: ${TABLE}.mar_id ;;
  }

  dimension: mar_id_agencia {
    type: number
    value_format_name: id
    sql: ${TABLE}.mar_id_agencia ;;
  }

  dimension: mar_id_agente {
    type: number
    value_format_name: id
    sql: ${TABLE}.mar_id_agente ;;
  }

  dimension: mar_id_agente_inter {
    type: number
    value_format_name: id
    sql: ${TABLE}.mar_id_agente_inter ;;
  }

  dimension: mar_id_armador {
    type: number
    value_format_name: id
    sql: ${TABLE}.mar_id_armador ;;
  }

  dimension: mar_id_consig {
    type: number
    value_format_name: id
    sql: ${TABLE}.mar_id_consig ;;
  }

  dimension: mar_id_fcl {
    type: number
    value_format_name: id
    sql: ${TABLE}.mar_id_fcl ;;
  }

  dimension: mar_id_moeda_frete {
    type: number
    value_format_name: id
    sql: ${TABLE}.mar_id_moeda_frete ;;
  }

  dimension: mar_id_notify {
    type: number
    value_format_name: id
    sql: ${TABLE}.mar_id_notify ;;
  }

  dimension: mar_id_nvocc {
    type: number
    value_format_name: id
    sql: ${TABLE}.mar_id_nvocc ;;
  }

  dimension: mar_id_original {
    type: number
    value_format_name: id
    sql: ${TABLE}.mar_id_original ;;
  }

  dimension: mar_id_pais_destino {
    type: number
    value_format_name: id
    sql: ${TABLE}.mar_id_pais_destino ;;
  }

  dimension: mar_id_pais_origem {
    type: number
    value_format_name: id
    sql: ${TABLE}.mar_id_pais_origem ;;
  }

  dimension: mar_id_porto_carga {
    type: number
    value_format_name: id
    sql: ${TABLE}.mar_id_porto_carga ;;
  }

  dimension: mar_id_porto_descarga {
    type: number
    value_format_name: id
    sql: ${TABLE}.mar_id_porto_descarga ;;
  }

  dimension: mar_id_porto_destino {
    type: number
    value_format_name: id
    sql: ${TABLE}.mar_id_porto_destino ;;
  }

  dimension: mar_id_porto_origem {
    type: number
    value_format_name: id
    sql: ${TABLE}.mar_id_porto_origem ;;
  }

  dimension: mar_id_recinto_aduaneiro {
    type: number
    value_format_name: id
    sql: ${TABLE}.mar_id_recinto_aduaneiro ;;
  }

  dimension: mar_id_shipconv {
    type: number
    value_format_name: id
    sql: ${TABLE}.mar_id_shipconv ;;
  }

  dimension: mar_id_shipper {
    type: number
    value_format_name: id
    sql: ${TABLE}.mar_id_shipper ;;
  }

  dimension: mar_id_terminal_carga {
    type: number
    value_format_name: id
    sql: ${TABLE}.mar_id_terminal_carga ;;
  }

  dimension: mar_id_terminal_descarga {
    type: number
    value_format_name: id
    sql: ${TABLE}.mar_id_terminal_descarga ;;
  }

  dimension: mar_ide {
    type: number
    value_format_name: id
    sql: ${TABLE}.mar_ide ;;
  }

  dimension: mar_idu {
    type: number
    value_format_name: id
    sql: ${TABLE}.mar_idu ;;
  }

  dimension: mar_incodacao {
    type: string
    sql: ${TABLE}.mar_incodacao ;;
  }

  dimension: mar_indblordem {
    type: string
    sql: ${TABLE}.mar_indblordem ;;
  }

  dimension: mar_indedse {
    type: string
    sql: ${TABLE}.mar_indedse ;;
  }

  dimension: mar_indmodalidadefrete {
    type: string
    sql: ${TABLE}.mar_indmodalidadefrete ;;
  }

  dimension: mar_indufdestino {
    type: string
    sql: ${TABLE}.mar_indufdestino ;;
  }

  dimension: mar_itemcarga_cdclassemercadoriaperigosa {
    type: string
    sql: ${TABLE}.mar_itemcarga_cdclassemercadoriaperigosa ;;
  }

  dimension: mar_itemcarga_cdindicadormercadoriaperigosa {
    type: string
    sql: ${TABLE}.mar_itemcarga_cdindicadormercadoriaperigosa ;;
  }

  dimension: mar_itemcarga_cdncms {
    type: string
    sql: ${TABLE}.mar_itemcarga_cdncms ;;
  }

  dimension: mar_itemcarga_cdtipoembalagem {
    type: string
    sql: ${TABLE}.mar_itemcarga_cdtipoembalagem ;;
  }

  dimension: mar_itemcarga_cdtipogranel {
    type: string
    sql: ${TABLE}.mar_itemcarga_cdtipogranel ;;
  }

  dimension: mar_itemcarga_condncms {
    type: string
    sql: ${TABLE}.mar_itemcarga_condncms ;;
  }

  dimension: mar_itemcarga_descricao {
    type: string
    sql: ${TABLE}.mar_itemcarga_descricao ;;
  }

  dimension: mar_itemcarga_descricao_embalagem {
    type: string
    sql: ${TABLE}.mar_itemcarga_descricao_embalagem ;;
  }

  dimension: mar_itemcarga_descricao_tipogranel {
    type: string
    sql: ${TABLE}.mar_itemcarga_descricao_tipogranel ;;
  }

  dimension: mar_itemcarga_noncms {
    type: string
    sql: ${TABLE}.mar_itemcarga_noncms ;;
  }

  dimension: mar_itemcarga_nritem {
    type: string
    sql: ${TABLE}.mar_itemcarga_nritem ;;
  }

  dimension: mar_itemcarga_tipocontainer {
    type: string
    sql: ${TABLE}.mar_itemcarga_tipocontainer ;;
  }

  dimension: mar_itemcarga_txcontramarca {
    type: string
    sql: ${TABLE}.mar_itemcarga_txcontramarca ;;
  }

  dimension: mar_itemcarga_txmarca {
    type: string
    sql: ${TABLE}.mar_itemcarga_txmarca ;;
  }

  dimension: mar_itemcarga_vlcubagem {
    type: number
    sql: ${TABLE}.mar_itemcarga_vlcubagem ;;
  }

  dimension: mar_itemcarga_vlpesobruto {
    type: number
    sql: ${TABLE}.mar_itemcarga_vlpesobruto ;;
  }

  dimension: mar_itemcarga_vlquantidade {
    type: string
    sql: ${TABLE}.mar_itemcarga_vlquantidade ;;
  }

  dimension: mar_itens {
    type: string
    sql: ${TABLE}.mar_itens ;;
  }

  dimension: mar_limpar {
    type: string
    sql: ${TABLE}.mar_limpar ;;
  }

  dimension: mar_link {
    type: string
    sql: ${TABLE}.mar_link ;;
  }

  dimension: mar_lista_fcl {
    type: string
    sql: ${TABLE}.mar_lista_fcl ;;
  }

  dimension: mar_lista_hscode {
    type: string
    sql: ${TABLE}.mar_lista_hscode ;;
  }

  dimension: mar_ncm {
    type: string
    sql: ${TABLE}.mar_ncm ;;
  }

  dimension: mar_ncm_desc {
    type: string
    sql: ${TABLE}.mar_ncm_desc ;;
  }

  dimension: mar_nmagencianavegacao {
    type: string
    sql: ${TABLE}.mar_nmagencianavegacao ;;
  }

  dimension: mar_nmagtnavegmaster {
    type: string
    sql: ${TABLE}.mar_nmagtnavegmaster ;;
  }

  dimension: mar_nmconsignatario {
    type: string
    sql: ${TABLE}.mar_nmconsignatario ;;
  }

  dimension: mar_nmembarcacao {
    type: string
    sql: ${TABLE}.mar_nmembarcacao ;;
  }

  dimension: mar_nmempnavegdesconmaster {
    type: string
    sql: ${TABLE}.mar_nmempnavegdesconmaster ;;
  }

  dimension: mar_nmempresanavegacao {
    type: string
    sql: ${TABLE}.mar_nmempresanavegacao ;;
  }

  dimension: mar_nmmoedafrete {
    type: string
    sql: ${TABLE}.mar_nmmoedafrete ;;
  }

  dimension: mar_nmmoedafretetotalbld {
    type: string
    sql: ${TABLE}.mar_nmmoedafretetotalbld ;;
  }

  dimension: mar_nmnavioorigem {
    type: string
    sql: ${TABLE}.mar_nmnavioorigem ;;
  }

  dimension: mar_nmpaisdestfinal {
    type: string
    sql: ${TABLE}.mar_nmpaisdestfinal ;;
  }

  dimension: mar_nmpaisprocedencia {
    type: string
    sql: ${TABLE}.mar_nmpaisprocedencia ;;
  }

  dimension: mar_nmportocarregamento {
    type: string
    sql: ${TABLE}.mar_nmportocarregamento ;;
  }

  dimension: mar_nmportodescarregamento {
    type: string
    sql: ${TABLE}.mar_nmportodescarregamento ;;
  }

  dimension: mar_nmportodestino {
    type: string
    sql: ${TABLE}.mar_nmportodestino ;;
  }

  dimension: mar_nmportoorigem {
    type: string
    sql: ${TABLE}.mar_nmportoorigem ;;
  }

  dimension: mar_nmportooriginal {
    type: string
    sql: ${TABLE}.mar_nmportooriginal ;;
  }

  dimension: mar_nmpracaentexterior {
    type: string
    sql: ${TABLE}.mar_nmpracaentexterior ;;
  }

  dimension: mar_nmterminalportuario {
    type: string
    sql: ${TABLE}.mar_nmterminalportuario ;;
  }

  dimension: mar_nmterminalportuariocarregamento {
    type: string
    sql: ${TABLE}.mar_nmterminalportuariocarregamento ;;
  }

  dimension: mar_nmufdestino {
    type: string
    sql: ${TABLE}.mar_nmufdestino ;;
  }

  dimension: mar_nomeconsiglce {
    type: string
    sql: ${TABLE}.mar_nomeconsiglce ;;
  }

  dimension: mar_nova {
    type: string
    sql: ${TABLE}.mar_nova ;;
  }

  dimension: mar_nrblconhecimento {
    type: string
    sql: ${TABLE}.mar_nrblconhecimento ;;
  }

  dimension: mar_nrcemaster {
    type: string
    sql: ${TABLE}.mar_nrcemaster ;;
  }

  dimension: mar_nrcemercante {
    type: number
    sql: ${TABLE}.mar_nrcemercante ;;
  }

  dimension: mar_nrceorigem {
    type: string
    sql: ${TABLE}.mar_nrceorigem ;;
  }

  dimension: mar_nrceoriginal {
    type: string
    sql: ${TABLE}.mar_nrceoriginal ;;
  }

  dimension: mar_nrdde {
    type: string
    sql: ${TABLE}.mar_nrdde ;;
  }

  dimension: mar_nrmanifesto {
    type: string
    sql: ${TABLE}.mar_nrmanifesto ;;
  }

  dimension: mar_nrpassaporteconsignatario {
    type: string
    sql: ${TABLE}.mar_nrpassaporteconsignatario ;;
  }

  dimension: mar_nrruc {
    type: string
    sql: ${TABLE}.mar_nrruc ;;
  }

  dimension: mar_nrviagem {
    type: string
    sql: ${TABLE}.mar_nrviagem ;;
  }

  dimension: mar_obs_migr {
    type: string
    sql: ${TABLE}.mar_obs_migr ;;
  }

  dimension: mar_opconsignatario {
    type: string
    sql: ${TABLE}.mar_opconsignatario ;;
  }

  dimension: mar_oprecolhimentofrete {
    type: string
    sql: ${TABLE}.mar_oprecolhimentofrete ;;
  }

  dimension: mar_pendencia_transito_maritimo {
    type: string
    sql: ${TABLE}.mar_pendencia_transito_maritimo ;;
  }

  dimension_group: mar_processed {
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
    sql: ${TABLE}.mar_processed_at ;;
  }

  dimension: mar_qtconhecimentosassociado {
    type: number
    sql: ${TABLE}.mar_qtconhecimentosassociado ;;
  }

  dimension: mar_qtconhecimentosexistentes {
    type: number
    sql: ${TABLE}.mar_qtconhecimentosexistentes ;;
  }

  dimension: mar_qtconhecimentosinformados {
    type: number
    sql: ${TABLE}.mar_qtconhecimentosinformados ;;
  }

  dimension: mar_qthousedeclaradomaster {
    type: string
    sql: ${TABLE}.mar_qthousedeclaradomaster ;;
  }

  dimension: mar_qthouseinformadomaster {
    type: string
    sql: ${TABLE}.mar_qthouseinformadomaster ;;
  }

  dimension: mar_qtveiculostransportadores {
    type: string
    sql: ${TABLE}.mar_qtveiculostransportadores ;;
  }

  dimension: mar_responsavel_cpf {
    type: string
    sql: ${TABLE}.mar_responsavel_cpf ;;
  }

  dimension: mar_responsavel_cpf_conhec {
    type: string
    sql: ${TABLE}.mar_responsavel_cpf_conhec ;;
  }

  dimension: mar_responsavel_data {
    type: string
    sql: ${TABLE}.mar_responsavel_data ;;
  }

  dimension: mar_responsavel_data_conhec {
    type: string
    sql: ${TABLE}.mar_responsavel_data_conhec ;;
  }

  dimension: mar_responsavel_hora {
    type: string
    sql: ${TABLE}.mar_responsavel_hora ;;
  }

  dimension: mar_responsavel_ip {
    type: string
    sql: ${TABLE}.mar_responsavel_ip ;;
  }

  dimension: mar_responsavel_ip_conhec {
    type: string
    sql: ${TABLE}.mar_responsavel_ip_conhec ;;
  }

  dimension: mar_responsavel_nome_conhec {
    type: string
    sql: ${TABLE}.mar_responsavel_nome_conhec ;;
  }

  dimension: mar_responsavel_tipo {
    type: string
    sql: ${TABLE}.mar_responsavel_tipo ;;
  }

  dimension: mar_responsavel_tipo_conhec {
    type: string
    sql: ${TABLE}.mar_responsavel_tipo_conhec ;;
  }

  dimension: mar_ret_pendente_analise {
    type: string
    sql: ${TABLE}.mar_ret_pendente_analise ;;
  }

  dimension: mar_revisao_ou_pendencia_afrmm {
    type: string
    sql: ${TABLE}.mar_revisao_ou_pendencia_afrmm ;;
  }

  dimension: mar_situacao_endosso {
    type: string
    sql: ${TABLE}.mar_situacao_endosso ;;
  }

  dimension: mar_temcarga_cdncms {
    type: string
    sql: ${TABLE}.mar_temcarga_cdncms ;;
  }

  measure: mar_teus {
    type: sum
    sql: ${TABLE}.mar_teus ;;
  }

  measure: mar_teus_parcial {
    type: sum
    sql: ${TABLE}.mar_teus_parcial ;;
  }

  dimension: mar_tipo_carga {
    type: string
    sql: ${TABLE}.mar_tipo_carga ;;
  }

  dimension: mar_tipo_fcl {
    type: string
    sql: ${TABLE}.mar_tipo_fcl ;;
  }

  dimension: mar_tipoconhecimento {
    type: string
    sql: ${TABLE}.mar_tipoconhecimento ;;
  }

  dimension: mar_tipoconhecimentooriginal {
    type: string
    sql: ${TABLE}.mar_tipoconhecimentooriginal ;;
  }

  dimension: mar_total_fcl {
    type: number
    sql: ${TABLE}.mar_total_fcl ;;
  }

  dimension: mar_tpitem {
    type: string
    sql: ${TABLE}.mar_tpitem ;;
  }

  dimension: mar_tptrafego {
    type: string
    sql: ${TABLE}.mar_tptrafego ;;
  }

  dimension: mar_transbordosexterior {
    type: string
    sql: ${TABLE}.mar_transbordosexterior ;;
  }

  dimension: mar_txconsignatario {
    type: string
    sql: ${TABLE}.mar_txconsignatario ;;
  }

  dimension: mar_txmercadoria {
    type: string
    sql: ${TABLE}.mar_txmercadoria ;;
  }

  dimension: mar_txnotifypart {
    type: string
    sql: ${TABLE}.mar_txnotifypart ;;
  }

  dimension: mar_txobservacoes {
    type: string
    sql: ${TABLE}.mar_txobservacoes ;;
  }

  dimension: mar_txshipper {
    type: string
    sql: ${TABLE}.mar_txshipper ;;
  }

  dimension: mar_usoparcial {
    type: string
    sql: ${TABLE}.mar_usoparcial ;;
  }

  dimension: mar_vlcubagem {
    type: number
    sql: ${TABLE}.mar_vlcubagem ;;
  }

  dimension: mar_vlfrete {
    type: number
    sql: ${TABLE}.mar_vlfrete ;;
  }

  dimension: mar_vlfretetotal {
    type: number
    sql: ${TABLE}.mar_vlfretetotal ;;
  }

  dimension: mar_vlfretetotalbld {
    type: string
    sql: ${TABLE}.mar_vlfretetotalbld ;;
  }

  dimension: mar_vlpesobruto {
    type: number
    sql: ${TABLE}.mar_vlpesobruto ;;
  }

  dimension: mvw_agente_de_carga {
    type: string
    sql: ${TABLE}.mvw_agente_de_carga ;;
  }

  dimension: mvw_agente_internacional {
    type: string
    sql: ${TABLE}.mvw_agente_internacional ;;
  }

  dimension: mvw_ano_mes {
    type: string
    sql: ${TABLE}.mvw_ano_mes ;;
  }

  dimension: mvw_ano_operacao {
    type: number
    sql: ${TABLE}.mvw_ano_operacao ;;
  }

  dimension: mvw_armador {
    type: string
    sql: ${TABLE}.mvw_armador ;;
  }

  dimension: mvw_armador_id {
    type: number
    sql: ${TABLE}.mvw_armador_id ;;
  }

  dimension: mvw_atividade {
    type: string
    sql: ${TABLE}.mvw_atividade ;;
  }

  measure: mvw_c20 {
    type: sum
    sql: ${TABLE}.mvw_c20 ;;
  }

  measure: mvw_c40 {
    type: sum
    sql: ${TABLE}.mvw_c40 ;;
  }

  dimension: mvw_cdshipper {
    type: string
    sql: ${TABLE}.mvw_cdshipper ;;
  }

  dimension: mvw_cidade {
    type: string
    sql: ${TABLE}.mvw_cidade ;;
  }

  dimension: mvw_cnpj_exportador {
    type: string
    sql: ${TABLE}.mvw_cnpj_exportador ;;
  }

  dimension: mvw_cod_atividade {
    type: string
    sql: ${TABLE}.mvw_cod_atividade ;;
  }

  dimension: mvw_cod_porto_descarga {
    type: string
    sql: ${TABLE}.mvw_cod_porto_descarga ;;
  }

  dimension: mvw_cod_porto_destino {
    type: string
    sql: ${TABLE}.mvw_cod_porto_destino ;;
  }

  dimension: mvw_cod_porto_embarque {
    type: string
    sql: ${TABLE}.mvw_cod_porto_embarque ;;
  }

  dimension: mvw_cod_porto_origem {
    type: string
    sql: ${TABLE}.mvw_cod_porto_origem ;;
  }

  dimension: mvw_consignatario {
    type: string
    sql: ${TABLE}.mvw_consignatario ;;
  }

  dimension_group: mvw_data_embarque {
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
    sql: ${TABLE}.mvw_data_embarque ;;
  }

  dimension: mvw_desc_hscode {
    type: string
    sql: ${TABLE}.mvw_desc_hscode ;;
  }

  dimension: mvw_detalhes {
    type: string
    sql: ${TABLE}.mvw_detalhes ;;
  }

  dimension: mvw_email {
    type: string
    sql: ${TABLE}.mvw_email ;;
  }

  dimension: mvw_embarque {
    type: string
    sql: ${TABLE}.mvw_embarque ;;
  }

  dimension: mvw_embarque_id {
    type: string
    sql: ${TABLE}.mvw_embarque_id ;;
  }

  dimension: mvw_hs_code {
    type: string
    sql: ${TABLE}.mvw_hs_code ;;
  }

  dimension: mvw_id {
    type: number
    sql: ${TABLE}.mvw_id ;;
  }

  dimension: mvw_mercadoria {
    type: string
    sql: ${TABLE}.mvw_mercadoria ;;
  }

  dimension: mvw_moeda_frete {
    type: string
    sql: ${TABLE}.mvw_moeda_frete ;;
  }

  dimension: mvw_navio {
    type: string
    sql: ${TABLE}.mvw_navio ;;
  }

  dimension: mvw_nome_exportador {
    type: string
    sql: ${TABLE}.mvw_nome_exportador ;;
  }

  dimension: mvw_numero_bl {
    type: string
    sql: ${TABLE}.mvw_numero_bl ;;
  }

  dimension: mvw_numero_ce {
    type: number
    sql: ${TABLE}.mvw_numero_ce ;;
  }

  dimension: mvw_numero_do_container {
    type: string
    sql: ${TABLE}.mvw_numero_do_container ;;
  }

  dimension: mvw_pagamento {
    type: string
    sql: ${TABLE}.mvw_pagamento ;;
  }

  dimension: mvw_pais_de_destino {
    type: string
    sql: ${TABLE}.mvw_pais_de_destino ;;
  }

  dimension: mvw_pais_de_destino_final {
    type: string
    sql: ${TABLE}.mvw_pais_de_destino_final ;;
  }

  dimension: mvw_pais_de_destino_id {
    type: number
    sql: ${TABLE}.mvw_pais_de_destino_id ;;
  }

  dimension: mvw_pais_de_procedencia {
    type: string
    sql: ${TABLE}.mvw_pais_de_procedencia ;;
  }

  dimension: mvw_peso_bruto {
    type: number
    sql: ${TABLE}.mvw_peso_bruto ;;
  }

  dimension: mvw_porto_descarga {
    type: string
    sql: ${TABLE}.mvw_porto_descarga ;;
  }

  dimension: mvw_porto_descarga_id {
    type: number
    sql: ${TABLE}.mvw_porto_descarga_id ;;
  }

  dimension: mvw_porto_destino {
    type: string
    sql: ${TABLE}.mvw_porto_destino ;;
  }

  dimension: mvw_porto_destino_id {
    type: number
    sql: ${TABLE}.mvw_porto_destino_id ;;
  }

  dimension: mvw_porto_embarque {
    type: string
    sql: ${TABLE}.mvw_porto_embarque ;;
  }

  dimension: mvw_porto_origem {
    type: string
    sql: ${TABLE}.mvw_porto_origem ;;
  }

  dimension: mvw_porto_origem_id {
    type: number
    sql: ${TABLE}.mvw_porto_origem_id ;;
  }

  dimension: mvw_qtde_fcl {
    type: number
    sql: ${TABLE}.mvw_qtde_fcl ;;
  }

  dimension: mvw_quantidade_de_veiculos {
    type: number
    sql: ${TABLE}.mvw_quantidade_de_veiculos ;;
  }

  dimension: mvw_telefone {
    type: string
    sql: ${TABLE}.mvw_telefone ;;
  }

  dimension: mvw_terminal_embarque {
    type: string
    sql: ${TABLE}.mvw_terminal_embarque ;;
  }

  dimension: mvw_terminal_embarque_id {
    type: number
    sql: ${TABLE}.mvw_terminal_embarque_id ;;
  }

  measure: mvw_teus {
    type: sum
    sql: ${TABLE}.mvw_teus ;;
  }

  dimension: mvw_tipo_carga {
    type: string
    sql: ${TABLE}.mvw_tipo_carga ;;
  }

  dimension: mvw_tipo_fcl {
    type: string
    sql: ${TABLE}.mvw_tipo_fcl ;;
  }

  dimension: mvw_tipoconhecimento {
    type: string
    sql: ${TABLE}.mvw_tipoconhecimento ;;
  }

  dimension: mvw_trade_lane {
    type: string
    sql: ${TABLE}.mvw_trade_lane ;;
  }

  dimension: mvw_uf {
    type: string
    sql: ${TABLE}.mvw_uf ;;
  }

  dimension: mvw_viagem {
    type: string
    sql: ${TABLE}.mvw_viagem ;;
  }

  dimension: mvw_volumes {
    type: number
    sql: ${TABLE}.mvw_volumes ;;
  }

  dimension: nf_anomes_nf {
    type: number
    sql: ${TABLE}.nf_anomes_nf ;;
  }

  dimension: nf_cpf_cnpj_destinatario {
    type: string
    sql: ${TABLE}.nf_cpf_cnpj_destinatario ;;
  }

  dimension: nf_cpf_cnpj_emissor {
    type: string
    sql: ${TABLE}.nf_cpf_cnpj_emissor ;;
  }

  dimension_group: nf_created {
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
    sql: ${TABLE}.nf_created_at ;;
  }

  dimension_group: nf_data_cancelamento {
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
    sql: ${TABLE}.nf_data_cancelamento ;;
  }

  dimension_group: nf_data_emissao {
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
    sql: ${TABLE}.nf_data_emissao ;;
  }

  dimension: nf_id {
    type: number
    sql: ${TABLE}.nf_id ;;
  }

  dimension: nf_id_exp_cargo_details {
    type: number
    value_format_name: id
    sql: ${TABLE}.nf_id_exp_cargo_details ;;
  }

  dimension: nf_id_nf {
    type: number
    value_format_name: id
    sql: ${TABLE}.nf_id_nf ;;
  }

  dimension: nf_modelo {
    type: string
    sql: ${TABLE}.nf_modelo ;;
  }

  dimension: nf_nome_destinatario {
    type: string
    sql: ${TABLE}.nf_nome_destinatario ;;
  }

  dimension: nf_nome_emissor {
    type: string
    sql: ${TABLE}.nf_nome_emissor ;;
  }

  dimension: nf_num_nf {
    type: string
    sql: ${TABLE}.nf_num_nf ;;
  }

  dimension: nf_num_serie {
    type: string
    sql: ${TABLE}.nf_num_serie ;;
  }

  dimension: nf_sigla_uf_emitente {
    type: string
    sql: ${TABLE}.nf_sigla_uf_emitente ;;
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

  measure: count_mar_id {
    type: count_distinct
    sql: ${TABLE}.mar_id ;;
  }

  measure: count_mar_id_com_dt {
    type: count_distinct
    filters: [dt_id: ">0"]
    sql: ${TABLE}.mar_id ;;
  }

  measure: count_mar_id_sem_dt {
    type: count_distinct
    filters: [dt_id: "NULL"]
    sql: ${TABLE}.mar_id ;;
  }

  measure: percent_match_maritimo {
    type: number
    value_format_name: percent_2
    sql: 1.0* ${count_mar_id_com_dt} / ${count_mar_id} ;;
  }

}
