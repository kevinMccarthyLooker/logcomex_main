view: big_data_expo_gold {
derived_table: {
  sql: SELECT * FROM big_data_expo.big_data_expo_v3;;
}

measure: count {
  type: count
  drill_fields: [detail*]
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

dimension: mar_dtoperacao {
  type: date
  sql: ${TABLE}.mar_dtoperacao ;;
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

dimension: mar_nmconsignatario {
  type: string
  sql: ${TABLE}.mar_nmconsignatario ;;
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

dimension: mar_vlfretetotal {
  type: number
  sql: ${TABLE}.mar_vlfretetotal ;;
}

dimension: mar_vlfrete {
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

dimension: mar_c20 {
  type: number
  sql: ${TABLE}.mar_c20 ;;
}

dimension: mar_c40 {
  type: number
  sql: ${TABLE}.mar_c40 ;;
}

dimension: mar_teus {
  type: number
  sql: ${TABLE}.mar_teus ;;
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

dimension: mar_codigoncmitemcomplementar {
  type: string
  sql: ${TABLE}.mar_codigoncmitemcomplementar ;;
}

dimension: mar_descncmitemcomplementar {
  type: string
  sql: ${TABLE}.mar_descncmitemcomplementar ;;
}

dimension: mar_itemcarga_condncms {
  type: string
  sql: ${TABLE}.mar_itemcarga_condncms ;;
}

dimension: mar_nomeconsiglce {
  type: string
  sql: ${TABLE}.mar_nomeconsiglce ;;
}

dimension: mar_nrruc {
  type: string
  sql: ${TABLE}.mar_nrruc ;;
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

dimension: mvw_id {
  type: number
  sql: ${TABLE}.mvw_id ;;
}

dimension: mvw_ano_mes {
  type: string
  sql: ${TABLE}.mvw_ano_mes ;;
}

dimension: mvw_tipo_carga {
  type: string
  sql: ${TABLE}.mvw_tipo_carga ;;
}

dimension: mvw_data_embarque {
  type: date
  sql: ${TABLE}.mvw_data_embarque ;;
}

dimension: mvw_embarque {
  type: string
  sql: ${TABLE}.mvw_embarque ;;
}

dimension: mvw_embarque_id {
  type: string
  sql: ${TABLE}.mvw_embarque_id ;;
}

dimension: mvw_navio {
  type: string
  sql: ${TABLE}.mvw_navio ;;
}

dimension: mvw_viagem {
  type: string
  sql: ${TABLE}.mvw_viagem ;;
}

dimension: mvw_pais_de_procedencia {
  type: string
  sql: ${TABLE}.mvw_pais_de_procedencia ;;
}

dimension: mvw_porto_origem_id {
  type: number
  sql: ${TABLE}.mvw_porto_origem_id ;;
}

dimension: mvw_cod_porto_origem {
  type: string
  sql: ${TABLE}.mvw_cod_porto_origem ;;
}

dimension: mvw_porto_origem {
  type: string
  sql: ${TABLE}.mvw_porto_origem ;;
}

dimension: mvw_cod_porto_embarque {
  type: string
  sql: ${TABLE}.mvw_cod_porto_embarque ;;
}

dimension: mvw_porto_embarque {
  type: string
  sql: ${TABLE}.mvw_porto_embarque ;;
}

dimension: mvw_terminal_embarque_id {
  type: number
  sql: ${TABLE}.mvw_terminal_embarque_id ;;
}

dimension: mvw_terminal_embarque {
  type: string
  sql: ${TABLE}.mvw_terminal_embarque ;;
}

dimension: mvw_porto_descarga_id {
  type: number
  sql: ${TABLE}.mvw_porto_descarga_id ;;
}

dimension: mvw_cod_porto_descarga {
  type: string
  sql: ${TABLE}.mvw_cod_porto_descarga ;;
}

dimension: mvw_porto_descarga {
  type: string
  sql: ${TABLE}.mvw_porto_descarga ;;
}

dimension: mvw_porto_destino_id {
  type: number
  sql: ${TABLE}.mvw_porto_destino_id ;;
}

dimension: mvw_cod_porto_destino {
  type: string
  sql: ${TABLE}.mvw_cod_porto_destino ;;
}

dimension: mvw_porto_destino {
  type: string
  sql: ${TABLE}.mvw_porto_destino ;;
}

dimension: mvw_pais_de_destino_id {
  type: number
  sql: ${TABLE}.mvw_pais_de_destino_id ;;
}

dimension: mvw_pais_de_destino {
  type: string
  sql: ${TABLE}.mvw_pais_de_destino ;;
}

dimension: mvw_trade_lane {
  type: string
  sql: ${TABLE}.mvw_trade_lane ;;
}

dimension: mvw_cnpj_exportador {
  type: string
  sql: ${TABLE}.mvw_cnpj_exportador ;;
}

dimension: mvw_nome_exportador {
  type: string
  sql: ${TABLE}.mvw_nome_exportador ;;
}

dimension: mvw_atividade {
  type: string
  sql: ${TABLE}.mvw_atividade ;;
}

dimension: mvw_cidade {
  type: string
  sql: ${TABLE}.mvw_cidade ;;
}

dimension: mvw_uf {
  type: string
  sql: ${TABLE}.mvw_uf ;;
}

dimension: mvw_email {
  type: string
  sql: ${TABLE}.mvw_email ;;
}

dimension: mvw_telefone {
  type: string
  sql: ${TABLE}.mvw_telefone ;;
}

dimension: mvw_consignatario {
  type: string
  sql: ${TABLE}.mvw_consignatario ;;
}

dimension: mvw_armador_id {
  type: number
  sql: ${TABLE}.mvw_armador_id ;;
}

dimension: mvw_armador {
  type: string
  sql: ${TABLE}.mvw_armador ;;
}

dimension: mvw_moeda_frete {
  type: string
  sql: ${TABLE}.mvw_moeda_frete ;;
}

dimension: mvw_pais_de_destino_final {
  type: string
  sql: ${TABLE}.mvw_pais_de_destino_final ;;
}

dimension: mvw_pagamento {
  type: string
  sql: ${TABLE}.mvw_pagamento ;;
}

dimension: mvw_tipo_fcl {
  type: string
  sql: ${TABLE}.mvw_tipo_fcl ;;
}

dimension: mvw_hs_code {
  type: string
  sql: ${TABLE}.mvw_hs_code ;;
}

dimension: mvw_desc_hscode {
  type: string
  sql: ${TABLE}.mvw_desc_hscode ;;
}

dimension: mvw_mercadoria {
  type: string
  sql: ${TABLE}.mvw_mercadoria ;;
}

dimension: mvw_teus {
  type: number
  sql: ${TABLE}.mvw_teus ;;
}

dimension: mvw_c20 {
  type: number
  sql: ${TABLE}.mvw_c20 ;;
}

dimension: mvw_c40 {
  type: number
  sql: ${TABLE}.mvw_c40 ;;
}

dimension: mvw_qtde_fcl {
  type: number
  sql: ${TABLE}.mvw_qtde_fcl ;;
}

dimension: mvw_quantidade_de_veiculos {
  type: number
  sql: ${TABLE}.mvw_quantidade_de_veiculos ;;
}

dimension: mvw_volumes {
  type: number
  sql: ${TABLE}.mvw_volumes ;;
}

dimension: mvw_peso_bruto {
  type: number
  sql: ${TABLE}.mvw_peso_bruto ;;
}

dimension: mvw_detalhes {
  type: string
  sql: ${TABLE}.mvw_detalhes ;;
}

dimension: mvw_numero_ce {
  type: number
  sql: ${TABLE}.mvw_numero_ce ;;
}

dimension: mvw_numero_bl {
  type: string
  sql: ${TABLE}.mvw_numero_bl ;;
}

dimension: mvw_numero_do_container {
  type: string
  sql: ${TABLE}.mvw_numero_do_container ;;
}

dimension: mvw_agente_de_carga {
  type: string
  sql: ${TABLE}.mvw_agente_de_carga ;;
}

dimension: mvw_agente_internacional {
  type: string
  sql: ${TABLE}.mvw_agente_internacional ;;
}

dimension: mvw_ano_operacao {
  type: number
  sql: ${TABLE}.mvw_ano_operacao ;;
}

dimension: mvw_cod_atividade {
  type: string
  sql: ${TABLE}.mvw_cod_atividade ;;
}

dimension: mvw_tipoconhecimento {
  type: string
  sql: ${TABLE}.mvw_tipoconhecimento ;;
}

dimension: mvw_cdshipper {
  type: string
  sql: ${TABLE}.mvw_cdshipper ;;
}

dimension: mar_id0 {
  type: number
  sql: ${TABLE}.mar_id0 ;;
}

dimension: dt_id {
  type: number
  sql: ${TABLE}.dt_id ;;
}

dimension: dt_filter_date {
  type: date
  sql: ${TABLE}.dt_filter_date ;;
}

dimension: dt_tipodocumentooperacao {
  type: string
  sql: ${TABLE}.dt_tipodocumentooperacao ;;
}

dimension: dt_desc_urf {
  type: string
  sql: ${TABLE}.dt_desc_urf ;;
}

dimension: dt_desc_ra {
  type: string
  sql: ${TABLE}.dt_desc_ra ;;
}

dimension: dt_peso_aferido {
  type: number
  sql: ${TABLE}.dt_peso_aferido ;;
}

dimension: dt_has_conteiner_nota {
  type: string
  sql: ${TABLE}.dt_has_conteiner_nota ;;
}

dimension_group: dt_dataregistro {
  type: time
  sql: ${TABLE}.dt_dataregistro ;;
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

dimension: nf_id_nf {
  type: number
  sql: ${TABLE}.nf_id_nf ;;
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

dimension: fcl_conteiner {
  type: string
  sql: ${TABLE}.fcl_conteiner ;;
}

dimension: fcl_tara {
  type: number
  sql: ${TABLE}.fcl_tara ;;
}

dimension: fcl_peso_aferido {
  type: number
  sql: ${TABLE}.fcl_peso_aferido ;;
}

dimension_group: fcl_created_at {
  type: time
  sql: ${TABLE}.fcl_created_at ;;
}

set: detail {
  fields: [
    mar_conteiner,
    mar_id,
    mar_ide,
    mar_idu,
    mar_data_registro_time,
    mar_nrmanifesto,
    mar_dtemissao,
    mar_dtoperacao,
    mar_cdportocarregamento,
    mar_nmportocarregamento,
    mar_cdportodescarregamento,
    mar_nmportodescarregamento,
    mar_cdempresanavegacao,
    mar_nmempresanavegacao,
    mar_cdagencianavegacao,
    mar_nmagencianavegacao,
    mar_qtconhecimentosinformados,
    mar_qtconhecimentosexistentes,
    mar_qtconhecimentosassociado,
    mar_nrcemercante,
    mar_nrblconhecimento,
    mar_vlcubagem,
    mar_vlpesobruto,
    mar_cdportoorigem,
    mar_nmportoorigem,
    mar_cdportodestino,
    mar_nmportodestino,
    mar_cdportooriginal,
    mar_nmportooriginal,
    mar_tipoconhecimento,
    mar_categoriacarga,
    mar_cdconsignatario,
    mar_nmconsignatario,
    mar_cdpracaentexterior,
    mar_nmpracaentexterior,
    mar_indblordem,
    mar_cdmoedafrete,
    mar_nmmoedafrete,
    mar_oprecolhimentofrete,
    mar_indmodalidadefrete,
    mar_dtceorigem,
    mar_nrceorigem,
    mar_nmnavioorigem,
    mar_transbordosexterior,
    mar_ckblservico,
    mar_nrceoriginal,
    mar_cdterminalportuario,
    mar_nmterminalportuario,
    mar_indufdestino,
    mar_nmufdestino,
    mar_cdpaisprocedencia,
    mar_nmpaisprocedencia,
    mar_responsavel_cpf_conhec,
    mar_responsavel_nome_conhec,
    mar_responsavel_tipo_conhec,
    mar_responsavel_ip_conhec,
    mar_responsavel_data_conhec,
    mar_itens,
    mar_nrcemaster,
    mar_qthouseinformadomaster,
    mar_qthousedeclaradomaster,
    mar_cdempnavegdesconmaster,
    mar_nmempnavegdesconmaster,
    mar_cdagtnavegmaster,
    mar_nmagtnavegmaster,
    mar_itemcarga_nritem,
    mar_nrdde,
    mar_indedse,
    mar_cdpaisdestfinal,
    mar_nmpaisdestfinal,
    mar_cdshipper,
    mar_qtveiculostransportadores,
    mar_nova,
    mar_opconsignatario,
    mar_vlfretetotal,
    mar_vlfrete,
    mar_componentesfrete,
    mar_cdterminalportuariocarregamento,
    mar_nmterminalportuariocarregamento,
    mar_vlfretetotalbld,
    mar_dt_itens_time,
    mar_cdmoedafretetotalbld,
    mar_ncm,
    mar_ncm_desc,
    mar_lista_fcl,
    mar_tipo_fcl,
    mar_tipo_carga,
    mar_c20,
    mar_c40,
    mar_teus,
    mar_feus,
    mar_total_fcl,
    mar_cnpj_num,
    mar_itemcarga_cdtipogranel,
    mar_itemcarga_descricao_tipogranel,
    mar_itemcarga_descricao,
    mar_nmmoedafretetotalbld,
    mar_dt_consulta_master_time,
    mar_codigoncmitemcomplementar,
    mar_descncmitemcomplementar,
    mar_itemcarga_condncms,
    mar_nomeconsiglce,
    mar_nrruc,
    mar_id_porto_origem,
    mar_id_porto_carga,
    mar_id_porto_descarga,
    mar_id_porto_destino,
    mar_id_armador,
    mar_id_agencia,
    mar_id_shipper,
    mar_id_consig,
    mar_id_shipconv,
    mar_id_notify,
    mar_id_agente,
    mar_id_agente_inter,
    mar_id_terminal_descarga,
    mar_id_terminal_carga,
    mar_id_moeda_frete,
    mar_id_pais_origem,
    mar_id_fcl,
    mar_id_pais_destino,
    mar_dt_cabotagem_time,
    mar_dt_update_agente_time,
    mar_tipoconhecimentooriginal,
    mar_deleted_at_time,
    mar_teus_parcial,
    mar_id_recinto_aduaneiro,
    mar_cdncm_compl,
    mar_lista_hscode,
    mar_id_original,
    mar_desc_hscode,
    mar_desc_ncm,
    mvw_id,
    mvw_ano_mes,
    mvw_tipo_carga,
    mvw_data_embarque,
    mvw_embarque,
    mvw_embarque_id,
    mvw_navio,
    mvw_viagem,
    mvw_pais_de_procedencia,
    mvw_porto_origem_id,
    mvw_cod_porto_origem,
    mvw_porto_origem,
    mvw_cod_porto_embarque,
    mvw_porto_embarque,
    mvw_terminal_embarque_id,
    mvw_terminal_embarque,
    mvw_porto_descarga_id,
    mvw_cod_porto_descarga,
    mvw_porto_descarga,
    mvw_porto_destino_id,
    mvw_cod_porto_destino,
    mvw_porto_destino,
    mvw_pais_de_destino_id,
    mvw_pais_de_destino,
    mvw_trade_lane,
    mvw_cnpj_exportador,
    mvw_nome_exportador,
    mvw_atividade,
    mvw_cidade,
    mvw_uf,
    mvw_email,
    mvw_telefone,
    mvw_consignatario,
    mvw_armador_id,
    mvw_armador,
    mvw_moeda_frete,
    mvw_pais_de_destino_final,
    mvw_pagamento,
    mvw_tipo_fcl,
    mvw_hs_code,
    mvw_desc_hscode,
    mvw_mercadoria,
    mvw_teus,
    mvw_c20,
    mvw_c40,
    mvw_qtde_fcl,
    mvw_quantidade_de_veiculos,
    mvw_volumes,
    mvw_peso_bruto,
    mvw_detalhes,
    mvw_numero_ce,
    mvw_numero_bl,
    mvw_numero_do_container,
    mvw_agente_de_carga,
    mvw_agente_internacional,
    mvw_ano_operacao,
    mvw_cod_atividade,
    mvw_tipoconhecimento,
    mvw_cdshipper,
    mar_id0,
    dt_id,
    dt_filter_date,
    dt_tipodocumentooperacao,
    dt_desc_urf,
    dt_desc_ra,
    dt_peso_aferido,
    dt_has_conteiner_nota,
    dt_dataregistro_time,
    dt_dt_emissao,
    dt_created_at_time,
    dt_updated_at_time,
    nf_id,
    nf_id_nf,
    nf_anomes_nf,
    nf_sigla_uf_emitente,
    nf_data_emissao_time,
    nf_cpf_cnpj_destinatario,
    nf_nome_destinatario,
    nf_data_cancelamento_time,
    nf_created_at_time,
    nf_cpf_cnpj_emissor,
    nf_nome_emissor,
    it_cod_produto,
    it_cdncm_compl,
    it_descr_ncm,
    it_val_tot_bruto,
    it_qtd_estatistica,
    it_created_at_time,
    fcl_conteiner,
    fcl_tara,
    fcl_peso_aferido,
    fcl_created_at_time
  ]
}
}
