view: big_data_expo_datalake {
  derived_table: {
    sql: SELECT * FROM big_data_expo.big_data_expo_gold
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  measure: count_id0 {
    type: count_distinct
    sql: ${TABLE}.id0 ;;
    drill_fields: [detail*]
  }

  measure: count_id00 {
    type: count_distinct
    sql: ${TABLE}.id00 ;;
    drill_fields: [detail*]
  }

  measure: count_id1 {
    type: count_distinct
    sql: ${TABLE}.id1 ;;
    drill_fields: [detail*]
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: ide {
    type: number
    sql: ${TABLE}.ide ;;
  }

  dimension: idu {
    type: number
    sql: ${TABLE}.idu ;;
  }

  dimension_group: data_registro {
    type: time
    sql: ${TABLE}.data_registro ;;
  }

  dimension: nrmanifesto {
    type: string
    sql: ${TABLE}.nrmanifesto ;;
  }

  dimension: dtemissao {
    type: date
    sql: ${TABLE}.dtemissao ;;
  }

  dimension_group: dt_operacao {
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
    sql: ${TABLE}.dtoperacao ;;
  }

  dimension: dtemissaoce {
    type: date
    sql: ${TABLE}.dtemissaoce ;;
  }

  dimension: dtemissaocemaster {
    type: date
    sql: ${TABLE}.dtemissaocemaster ;;
  }

  dimension: nrviagem {
    type: string
    sql: ${TABLE}.nrviagem ;;
  }

  dimension: cdportocarregamento {
    type: string
    sql: ${TABLE}.cdportocarregamento ;;
  }

  dimension: nmportocarregamento {
    type: string
    sql: ${TABLE}.nmportocarregamento ;;
  }

  dimension: cdportodescarregamento {
    type: string
    sql: ${TABLE}.cdportodescarregamento ;;
  }

  dimension: nmportodescarregamento {
    type: string
    sql: ${TABLE}.nmportodescarregamento ;;
  }

  dimension: tptrafego {
    type: string
    sql: ${TABLE}.tptrafego ;;
  }

  dimension: cdembarcacao {
    type: string
    sql: ${TABLE}.cdembarcacao ;;
  }

  dimension: nmembarcacao {
    type: string
    sql: ${TABLE}.nmembarcacao ;;
  }

  dimension: cdempresanavegacao {
    type: string
    sql: ${TABLE}.cdempresanavegacao ;;
  }

  dimension: nmempresanavegacao {
    type: string
    sql: ${TABLE}.nmempresanavegacao ;;
  }

  dimension: cdagencianavegacao {
    type: string
    sql: ${TABLE}.cdagencianavegacao ;;
  }

  dimension: nmagencianavegacao {
    type: string
    sql: ${TABLE}.nmagencianavegacao ;;
  }

  dimension: qtconhecimentosinformados {
    type: number
    sql: ${TABLE}.qtconhecimentosinformados ;;
  }

  dimension: qtconhecimentosexistentes {
    type: number
    sql: ${TABLE}.qtconhecimentosexistentes ;;
  }

  dimension: qtconhecimentosassociado {
    type: number
    sql: ${TABLE}.qtconhecimentosassociado ;;
  }

  dimension: ckshipsconvenience {
    type: string
    sql: ${TABLE}.ckshipsconvenience ;;
  }

  dimension: bloqueio_conhecimento {
    type: string
    sql: ${TABLE}.bloqueio_conhecimento ;;
  }

  dimension: ret_pendente_analise {
    type: string
    sql: ${TABLE}.ret_pendente_analise ;;
  }

  dimension: revisao_ou_pendencia_afrmm {
    type: string
    sql: ${TABLE}.revisao_ou_pendencia_afrmm ;;
  }

  dimension: pendencia_transito_maritimo {
    type: string
    sql: ${TABLE}.pendencia_transito_maritimo ;;
  }

  dimension: situacao_endosso {
    type: string
    sql: ${TABLE}.situacao_endosso ;;
  }

  dimension: nrcemercante {
    type: number
    sql: ${TABLE}.nrcemercante ;;
  }

  dimension: nrblconhecimento {
    type: string
    sql: ${TABLE}.nrblconhecimento ;;
  }

  dimension: vlcubagem {
    type: number
    sql: ${TABLE}.vlcubagem ;;
  }

  dimension: vlpesobruto {
    type: number
    sql: ${TABLE}.vlpesobruto ;;
  }

  dimension: cdportoorigem {
    type: string
    sql: ${TABLE}.cdportoorigem ;;
  }

  dimension: nmportoorigem {
    type: string
    sql: ${TABLE}.nmportoorigem ;;
  }

  dimension: cdportodestino {
    type: string
    sql: ${TABLE}.cdportodestino ;;
  }

  dimension: nmportodestino {
    type: string
    sql: ${TABLE}.nmportodestino ;;
  }

  dimension: cdportooriginal {
    type: string
    sql: ${TABLE}.cdportooriginal ;;
  }

  dimension: nmportooriginal {
    type: string
    sql: ${TABLE}.nmportooriginal ;;
  }

  dimension: tipoconhecimento {
    type: string
    sql: ${TABLE}.tipoconhecimento ;;
  }

  dimension: categoriacarga {
    type: string
    sql: ${TABLE}.categoriacarga ;;
  }

  dimension: cdconsignatario {
    type: string
    sql: ${TABLE}.cdconsignatario ;;
  }

  dimension: txshipper {
    type: string
    sql: ${TABLE}.txshipper ;;
  }

  dimension: txmercadoria {
    type: string
    sql: ${TABLE}.txmercadoria ;;
  }

  dimension: txobservacoes {
    type: string
    sql: ${TABLE}.txobservacoes ;;
  }

  dimension: txnotifypart {
    type: string
    sql: ${TABLE}.txnotifypart ;;
  }

  dimension: cdnotifypart {
    type: string
    sql: ${TABLE}.cdnotifypart ;;
  }

  dimension: nmconsignatario {
    type: string
    sql: ${TABLE}.nmconsignatario ;;
  }

  dimension: nrpassaporteconsignatario {
    type: string
    sql: ${TABLE}.nrpassaporteconsignatario ;;
  }

  dimension: txconsignatario {
    type: string
    sql: ${TABLE}.txconsignatario ;;
  }

  dimension: cdpracaentexterior {
    type: string
    sql: ${TABLE}.cdpracaentexterior ;;
  }

  dimension: nmpracaentexterior {
    type: string
    sql: ${TABLE}.nmpracaentexterior ;;
  }

  dimension: indblordem {
    type: string
    sql: ${TABLE}.indblordem ;;
  }

  dimension: cdmoedafrete {
    type: string
    sql: ${TABLE}.cdmoedafrete ;;
  }

  dimension: nmmoedafrete {
    type: string
    sql: ${TABLE}.nmmoedafrete ;;
  }

  dimension: oprecolhimentofrete {
    type: string
    sql: ${TABLE}.oprecolhimentofrete ;;
  }

  dimension: indmodalidadefrete {
    type: string
    sql: ${TABLE}.indmodalidadefrete ;;
  }

  dimension: dtceorigem {
    type: string
    sql: ${TABLE}.dtceorigem ;;
  }

  dimension: nrceorigem {
    type: string
    sql: ${TABLE}.nrceorigem ;;
  }

  dimension: nmnavioorigem {
    type: string
    sql: ${TABLE}.nmnavioorigem ;;
  }

  dimension: transbordosexterior {
    type: string
    sql: ${TABLE}.transbordosexterior ;;
  }

  dimension: ckblservico {
    type: string
    sql: ${TABLE}.ckblservico ;;
  }

  dimension: nrceoriginal {
    type: string
    sql: ${TABLE}.nrceoriginal ;;
  }

  dimension: cdterminalportuario {
    type: string
    sql: ${TABLE}.cdterminalportuario ;;
  }

  dimension: nmterminalportuario {
    type: string
    sql: ${TABLE}.nmterminalportuario ;;
  }

  dimension: indufdestino {
    type: string
    sql: ${TABLE}.indufdestino ;;
  }

  dimension: nmufdestino {
    type: string
    sql: ${TABLE}.nmufdestino ;;
  }

  dimension: cdpaisprocedencia {
    type: string
    sql: ${TABLE}.cdpaisprocedencia ;;
  }

  dimension: nmpaisprocedencia {
    type: string
    sql: ${TABLE}.nmpaisprocedencia ;;
  }

  dimension: responsavel_cpf_conhec {
    type: string
    sql: ${TABLE}.responsavel_cpf_conhec ;;
  }

  dimension: responsavel_nome_conhec {
    type: string
    sql: ${TABLE}.responsavel_nome_conhec ;;
  }

  dimension: responsavel_tipo_conhec {
    type: string
    sql: ${TABLE}.responsavel_tipo_conhec ;;
  }

  dimension: responsavel_ip_conhec {
    type: string
    sql: ${TABLE}.responsavel_ip_conhec ;;
  }

  dimension: responsavel_data_conhec {
    type: string
    sql: ${TABLE}.responsavel_data_conhec ;;
  }

  dimension: itens {
    type: string
    sql: ${TABLE}.itens ;;
  }

  dimension: nrcemaster {
    type: string
    sql: ${TABLE}.nrcemaster ;;
  }

  dimension: qthouseinformadomaster {
    type: string
    sql: ${TABLE}.qthouseinformadomaster ;;
  }

  dimension: qthousedeclaradomaster {
    type: string
    sql: ${TABLE}.qthousedeclaradomaster ;;
  }

  dimension: cdempnavegdesconmaster {
    type: string
    sql: ${TABLE}.cdempnavegdesconmaster ;;
  }

  dimension: nmempnavegdesconmaster {
    type: string
    sql: ${TABLE}.nmempnavegdesconmaster ;;
  }

  dimension: cdagtnavegmaster {
    type: string
    sql: ${TABLE}.cdagtnavegmaster ;;
  }

  dimension: nmagtnavegmaster {
    type: string
    sql: ${TABLE}.nmagtnavegmaster ;;
  }

  dimension: itemcarga_nritem {
    type: string
    sql: ${TABLE}.itemcarga_nritem ;;
  }

  dimension: nrdde {
    type: string
    sql: ${TABLE}.nrdde ;;
  }

  dimension: indedse {
    type: string
    sql: ${TABLE}.indedse ;;
  }

  dimension: cdpaisdestfinal {
    type: string
    sql: ${TABLE}.cdpaisdestfinal ;;
  }

  dimension: nmpaisdestfinal {
    type: string
    sql: ${TABLE}.nmpaisdestfinal ;;
  }

  dimension: cdshipper {
    type: string
    sql: ${TABLE}.cdshipper ;;
  }

  dimension: qtveiculostransportadores {
    type: string
    sql: ${TABLE}.qtveiculostransportadores ;;
  }

  dimension: nova {
    type: string
    sql: ${TABLE}.nova ;;
  }

  dimension: opconsignatario {
    type: string
    sql: ${TABLE}.opconsignatario ;;
  }

  dimension: vlfretetotal {
    type: number
    sql: ${TABLE}.vlfretetotal ;;
  }

  dimension: vlfrete {
    type: number
    sql: ${TABLE}.vlfrete ;;
  }

  dimension: componentesfrete {
    type: string
    sql: ${TABLE}.componentesfrete ;;
  }

  dimension: cdterminalportuariocarregamento {
    type: string
    sql: ${TABLE}.cdterminalportuariocarregamento ;;
  }

  dimension: nmterminalportuariocarregamento {
    type: string
    sql: ${TABLE}.nmterminalportuariocarregamento ;;
  }

  dimension: vlfretetotalbld {
    type: string
    sql: ${TABLE}.vlfretetotalbld ;;
  }

  dimension_group: dt_itens {
    type: time
    sql: ${TABLE}.dt_itens ;;
  }

  dimension: cdmoedafretetotalbld {
    type: string
    sql: ${TABLE}.cdmoedafretetotalbld ;;
  }

  dimension: ncm {
    type: string
    sql: ${TABLE}.ncm ;;
  }

  dimension: ncm_desc {
    type: string
    sql: ${TABLE}.ncm_desc ;;
  }

  dimension: lista_fcl {
    type: string
    sql: ${TABLE}.lista_fcl ;;
  }

  dimension: tipo_fcl {
    type: string
    sql: ${TABLE}.tipo_fcl ;;
  }

  dimension: tipo_carga {
    type: string
    sql: ${TABLE}.tipo_carga ;;
  }

  dimension: c20 {
    type: number
    sql: ${TABLE}.c20 ;;
  }

  dimension: c40 {
    type: number
    sql: ${TABLE}.c40 ;;
  }

  dimension: teus {
    type: number
    sql: ${TABLE}.teus ;;
  }

  dimension: feus {
    type: number
    sql: ${TABLE}.feus ;;
  }

  dimension: total_fcl {
    type: number
    sql: ${TABLE}.total_fcl ;;
  }

  dimension: cnpj_num {
    type: number
    sql: ${TABLE}.cnpj_num ;;
  }

  dimension: tpitem {
    type: string
    sql: ${TABLE}.tpitem ;;
  }

  dimension: itemcarga_vlpesobruto {
    type: number
    sql: ${TABLE}.itemcarga_vlpesobruto ;;
  }

  dimension: itemcarga_vlcubagem {
    type: number
    sql: ${TABLE}.itemcarga_vlcubagem ;;
  }

  dimension: itemcarga_txmarca {
    type: string
    sql: ${TABLE}.itemcarga_txmarca ;;
  }

  dimension: itemcarga_txcontramarca {
    type: string
    sql: ${TABLE}.itemcarga_txcontramarca ;;
  }

  dimension: itemcarga_vlquantidade {
    type: string
    sql: ${TABLE}.itemcarga_vlquantidade ;;
  }

  dimension: itemcarga_cdindicadormercadoriaperigosa {
    type: string
    sql: ${TABLE}.itemcarga_cdindicadormercadoriaperigosa ;;
  }

  dimension: itemcarga_cdclassemercadoriaperigosa {
    type: string
    sql: ${TABLE}.itemcarga_cdclassemercadoriaperigosa ;;
  }

  dimension: itemcarga_cdtipoembalagem {
    type: string
    sql: ${TABLE}.itemcarga_cdtipoembalagem ;;
  }

  dimension: itemcarga_descricao_embalagem {
    type: string
    sql: ${TABLE}.itemcarga_descricao_embalagem ;;
  }

  dimension: itemcarga_cdncms {
    type: string
    sql: ${TABLE}.itemcarga_cdncms ;;
  }

  dimension: temcarga_cdncms {
    type: string
    sql: ${TABLE}.temcarga_cdncms ;;
  }

  dimension: responsavel_cpf {
    type: string
    sql: ${TABLE}.responsavel_cpf ;;
  }

  dimension: responsavel_tipo {
    type: string
    sql: ${TABLE}.responsavel_tipo ;;
  }

  dimension: responsavel_ip {
    type: string
    sql: ${TABLE}.responsavel_ip ;;
  }

  dimension: responsavel_data {
    type: string
    sql: ${TABLE}.responsavel_data ;;
  }

  dimension: responsavel_hora {
    type: string
    sql: ${TABLE}.responsavel_hora ;;
  }

  dimension: itemcarga_noncms {
    type: string
    sql: ${TABLE}.itemcarga_noncms ;;
  }

  dimension: itemcarga_tipocontainer {
    type: string
    sql: ${TABLE}.itemcarga_tipocontainer ;;
  }

  dimension: usoparcial {
    type: string
    sql: ${TABLE}.usoparcial ;;
  }

  dimension: itemcarga_cdtipogranel {
    type: string
    sql: ${TABLE}.itemcarga_cdtipogranel ;;
  }

  dimension: itemcarga_descricao_tipogranel {
    type: string
    sql: ${TABLE}.itemcarga_descricao_tipogranel ;;
  }

  dimension: itemcarga_descricao {
    type: string
    sql: ${TABLE}.itemcarga_descricao ;;
  }

  dimension: nmmoedafretetotalbld {
    type: string
    sql: ${TABLE}.nmmoedafretetotalbld ;;
  }

  dimension_group: dt_consulta_master {
    type: time
    sql: ${TABLE}.dt_consulta_master ;;
  }

  dimension: incodacao {
    type: string
    sql: ${TABLE}.incodacao ;;
  }

  dimension: codigoncmitemcomplementar {
    type: string
    sql: ${TABLE}.codigoncmitemcomplementar ;;
  }

  dimension: descncmitemcomplementar {
    type: string
    sql: ${TABLE}.descncmitemcomplementar ;;
  }

  dimension: link {
    type: string
    sql: ${TABLE}.link ;;
  }

  dimension: itemcarga_condncms {
    type: string
    sql: ${TABLE}.itemcarga_condncms ;;
  }

  dimension: nomeconsiglce {
    type: string
    sql: ${TABLE}.nomeconsiglce ;;
  }

  dimension: enderecoconsiglce {
    type: string
    sql: ${TABLE}.enderecoconsiglce ;;
  }

  dimension: nrruc {
    type: string
    sql: ${TABLE}.nrruc ;;
  }

  dimension: enviar {
    type: string
    sql: ${TABLE}.enviar ;;
  }

  dimension: limpar {
    type: string
    sql: ${TABLE}.limpar ;;
  }

  dimension: id_porto_origem {
    type: number
    sql: ${TABLE}.id_porto_origem ;;
  }

  dimension: id_porto_carga {
    type: number
    sql: ${TABLE}.id_porto_carga ;;
  }

  dimension: id_porto_descarga {
    type: number
    sql: ${TABLE}.id_porto_descarga ;;
  }

  dimension: id_porto_destino {
    type: number
    sql: ${TABLE}.id_porto_destino ;;
  }

  dimension: id_armador {
    type: number
    sql: ${TABLE}.id_armador ;;
  }

  dimension: id_agencia {
    type: number
    sql: ${TABLE}.id_agencia ;;
  }

  dimension: id_shipper {
    type: number
    sql: ${TABLE}.id_shipper ;;
  }

  dimension: id_consig {
    type: number
    sql: ${TABLE}.id_consig ;;
  }

  dimension: id_shipconv {
    type: number
    sql: ${TABLE}.id_shipconv ;;
  }

  dimension: id_notify {
    type: number
    sql: ${TABLE}.id_notify ;;
  }

  dimension: id_agente {
    type: number
    sql: ${TABLE}.id_agente ;;
  }

  dimension: id_agente_inter {
    type: number
    sql: ${TABLE}.id_agente_inter ;;
  }

  dimension: id_terminal_descarga {
    type: number
    sql: ${TABLE}.id_terminal_descarga ;;
  }

  dimension: id_terminal_carga {
    type: number
    sql: ${TABLE}.id_terminal_carga ;;
  }

  dimension: id_moeda_frete {
    type: number
    sql: ${TABLE}.id_moeda_frete ;;
  }

  dimension: id_pais_origem {
    type: number
    sql: ${TABLE}.id_pais_origem ;;
  }

  dimension: id_fcl {
    type: number
    sql: ${TABLE}.id_fcl ;;
  }

  dimension: id_pais_destino {
    type: number
    sql: ${TABLE}.id_pais_destino ;;
  }

  dimension_group: dt_cabotagem {
    type: time
    sql: ${TABLE}.dt_cabotagem ;;
  }

  dimension: id_nvocc {
    type: number
    sql: ${TABLE}.id_nvocc ;;
  }

  dimension_group: dt_update_agente {
    type: time
    sql: ${TABLE}.dt_update_agente ;;
  }

  dimension: tipoconhecimentooriginal {
    type: string
    sql: ${TABLE}.tipoconhecimentooriginal ;;
  }

  dimension_group: deleted_at {
    type: time
    sql: ${TABLE}.deleted_at ;;
  }

  dimension: teus_parcial {
    type: number
    sql: ${TABLE}.teus_parcial ;;
  }

  dimension_group: checked_at {
    type: time
    sql: ${TABLE}.checked_at ;;
  }

  dimension_group: available_at {
    type: time
    sql: ${TABLE}.available_at ;;
  }

  dimension_group: processed_at {
    type: time
    sql: ${TABLE}.processed_at ;;
  }

  dimension_group: checked_error_at {
    type: time
    sql: ${TABLE}.checked_error_at ;;
  }

  dimension: obs_migr {
    type: string
    sql: ${TABLE}.obs_migr ;;
  }

  dimension: id_recinto_aduaneiro {
    type: number
    sql: ${TABLE}.id_recinto_aduaneiro ;;
  }

  dimension: cdncm_compl {
    type: string
    sql: ${TABLE}.cdncm_compl ;;
  }

  dimension: lista_hscode {
    type: string
    sql: ${TABLE}.lista_hscode ;;
  }

  dimension: id_original {
    type: number
    sql: ${TABLE}.id_original ;;
  }

  dimension: desc_hscode {
    type: string
    sql: ${TABLE}.desc_hscode ;;
  }

  dimension: desc_ncm {
    type: string
    sql: ${TABLE}.desc_ncm ;;
  }

  dimension: id0 {
    type: number
    sql: ${TABLE}.id0 ;;
  }

  dimension: pu_export_cargo_reception_id {
    type: number
    sql: ${TABLE}.pu_export_cargo_reception_id ;;
  }

  dimension: sequential_number {
    type: number
    sql: ${TABLE}.sequential_number ;;
  }

  dimension: filter_date {
    type: date
    sql: ${TABLE}.filter_date ;;
  }

  dimension: tipo {
    type: number
    sql: ${TABLE}.tipo ;;
  }

  dimension: tipooperacaocarga {
    type: string
    sql: ${TABLE}.tipooperacaocarga ;;
  }

  dimension: tipodocumentooperacao {
    type: string
    sql: ${TABLE}.tipodocumentooperacao ;;
  }

  dimension: cod_urf {
    type: number
    sql: ${TABLE}.cod_urf ;;
  }

  dimension: desc_urf {
    type: string
    sql: ${TABLE}.desc_urf ;;
  }

  dimension: cod_ra {
    type: number
    sql: ${TABLE}.cod_ra ;;
  }

  dimension: desc_ra {
    type: string
    sql: ${TABLE}.desc_ra ;;
  }

  dimension: responsavel_cnpj {
    type: string
    sql: ${TABLE}.responsavel_cnpj ;;
  }

  dimension: responsavel_nome {
    type: string
    sql: ${TABLE}.responsavel_nome ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}.latitude ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.longitude ;;
  }

  dimension: entregador_cnpj {
    type: string
    sql: ${TABLE}.entregador_cnpj ;;
  }

  dimension: entregador_nome {
    type: string
    sql: ${TABLE}.entregador_nome ;;
  }

  dimension: recebedor_cnpj {
    type: string
    sql: ${TABLE}.recebedor_cnpj ;;
  }

  dimension: recebedor_nome {
    type: string
    sql: ${TABLE}.recebedor_nome ;;
  }

  dimension: nacionalidaderecebedor {
    type: string
    sql: ${TABLE}.nacionalidaderecebedor ;;
  }

  dimension: condutor_codigo {
    type: string
    sql: ${TABLE}.condutor_codigo ;;
  }

  dimension: condutor_nome {
    type: string
    sql: ${TABLE}.condutor_nome ;;
  }

  dimension: condutorbrasileiro {
    type: string
    sql: ${TABLE}.condutorbrasileiro ;;
  }

  dimension: viatransporte {
    type: string
    sql: ${TABLE}.viatransporte ;;
  }

  dimension: veiculo_placa {
    type: string
    sql: ${TABLE}.veiculo_placa ;;
  }

  dimension: veiculo_lacres {
    type: string
    sql: ${TABLE}.veiculo_lacres ;;
  }

  dimension: ind_escaneamento {
    type: string
    sql: ${TABLE}.ind_escaneamento ;;
  }

  dimension: ind_transito_simpl {
    type: string
    sql: ${TABLE}.ind_transito_simpl ;;
  }

  dimension: peso_aferido {
    type: number
    sql: ${TABLE}.peso_aferido ;;
  }

  dimension: motivo_nao_pesagem {
    type: string
    sql: ${TABLE}.motivo_nao_pesagem ;;
  }

  dimension: observacoes {
    type: string
    sql: ${TABLE}.observacoes ;;
  }

  dimension: descr_avaria {
    type: string
    sql: ${TABLE}.descr_avaria ;;
  }

  dimension: local_armazenamento {
    type: string
    sql: ${TABLE}.local_armazenamento ;;
  }

  dimension: local_referencia {
    type: string
    sql: ${TABLE}.local_referencia ;;
  }

  dimension: descr_divergencia {
    type: string
    sql: ${TABLE}.descr_divergencia ;;
  }

  dimension: recepcao_mau_funcionamento {
    type: string
    sql: ${TABLE}.recepcao_mau_funcionamento ;;
  }

  dimension: has_conteiner_nota {
    type: string
    sql: ${TABLE}.has_conteiner_nota ;;
  }

  dimension_group: dataregistro {
    type: time
    sql: ${TABLE}.dataregistro ;;
  }

  dimension: transportador_cnpj {
    type: string
    sql: ${TABLE}.transportador_cnpj ;;
  }

  dimension: transportador_nome {
    type: string
    sql: ${TABLE}.transportador_nome ;;
  }

  dimension: transp_condutor_cpf {
    type: string
    sql: ${TABLE}.transp_condutor_cpf ;;
  }

  dimension: transp_condutor_nome {
    type: string
    sql: ${TABLE}.transp_condutor_nome ;;
  }

  dimension: num_doc_manifest {
    type: string
    sql: ${TABLE}.num_doc_manifest ;;
  }

  dimension: tp_doc_manifest {
    type: number
    sql: ${TABLE}.tp_doc_manifest ;;
  }

  dimension: desc_tp_doc_manifest {
    type: string
    sql: ${TABLE}.desc_tp_doc_manifest ;;
  }

  dimension: veic_dat_condutor_confere {
    type: string
    sql: ${TABLE}.veic_dat_condutor_confere ;;
  }

  dimension: unid_transp_dat_confere {
    type: string
    sql: ${TABLE}.unid_transp_dat_confere ;;
  }

  dimension: elem_segur_dat_confere {
    type: string
    sql: ${TABLE}.elem_segur_dat_confere ;;
  }

  dimension: conteiner_dat_confere {
    type: string
    sql: ${TABLE}.conteiner_dat_confere ;;
  }

  dimension: dt_emissao {
    type: date
    sql: ${TABLE}.dt_emissao ;;
  }

  dimension_group: created_at {
    type: time
    sql: ${TABLE}.created_at ;;
  }

  dimension: conhecimento {
    type: string
    sql: ${TABLE}.conhecimento ;;
  }

  dimension: nrcemercante0 {
    type: number
    sql: ${TABLE}.nrcemercante0 ;;
  }

  dimension_group: updated_at {
    type: time
    sql: ${TABLE}.updated_at ;;
  }

  dimension: id00 {
    type: number
    sql: ${TABLE}.id00 ;;
  }

  dimension: id_exp_cargo_details {
    type: number
    sql: ${TABLE}.id_exp_cargo_details ;;
  }

  dimension: id_nf {
    type: number
    sql: ${TABLE}.id_nf ;;
  }

  dimension: num_nf {
    type: string
    sql: ${TABLE}.num_nf ;;
  }

  dimension: num_serie {
    type: string
    sql: ${TABLE}.num_serie ;;
  }

  dimension: modelo {
    type: string
    sql: ${TABLE}.modelo ;;
  }

  dimension: anomes_nf {
    type: number
    sql: ${TABLE}.anomes_nf ;;
  }

  dimension: sigla_uf_emitente {
    type: string
    sql: ${TABLE}.sigla_uf_emitente ;;
  }

  dimension_group: data_emissao {
    type: time
    sql: ${TABLE}.data_emissao ;;
  }

  dimension: cpf_cnpj_destinatario {
    type: string
    sql: ${TABLE}.cpf_cnpj_destinatario ;;
  }

  dimension: nome_destinatario {
    type: string
    sql: ${TABLE}.nome_destinatario ;;
  }

  dimension_group: data_cancelamento {
    type: time
    sql: ${TABLE}.data_cancelamento ;;
  }

  dimension_group: created_at0 {
    type: time
    sql: ${TABLE}.created_at0 ;;
  }

  dimension: cpf_cnpj_emissor {
    type: string
    sql: ${TABLE}.cpf_cnpj_emissor ;;
  }

  dimension: nome_emissor {
    type: string
    sql: ${TABLE}.nome_emissor ;;
  }

  dimension: id1 {
    type: number
    sql: ${TABLE}.id1 ;;
  }

  dimension: id_exp_cargo_details0 {
    type: number
    sql: ${TABLE}.id_exp_cargo_details0 ;;
  }

  dimension: id_nf0 {
    type: number
    sql: ${TABLE}.id_nf0 ;;
  }

  dimension: num_item {
    type: number
    sql: ${TABLE}.num_item ;;
  }

  dimension: cod_produto {
    type: string
    sql: ${TABLE}.cod_produto ;;
  }

  dimension: cdncm_compl0 {
    type: number
    sql: ${TABLE}.cdncm_compl0 ;;
  }

  dimension: descr_ncm {
    type: string
    sql: ${TABLE}.descr_ncm ;;
  }

  dimension: descricao {
    type: string
    sql: ${TABLE}.descricao ;;
  }

  dimension: cfop {
    type: number
    sql: ${TABLE}.cfop ;;
  }

  dimension: val_tot_bruto {
    type: number
    sql: ${TABLE}.val_tot_bruto ;;
  }

  dimension: qtd_estatistica {
    type: number
    sql: ${TABLE}.qtd_estatistica ;;
  }

  dimension_group: created_at1 {
    type: time
    sql: ${TABLE}.created_at1 ;;
  }

  dimension: id2 {
    type: number
    sql: ${TABLE}.id2 ;;
  }

  dimension: id_exp_cargo_details1 {
    type: number
    sql: ${TABLE}.id_exp_cargo_details1 ;;
  }

  dimension: id_nf1 {
    type: number
    sql: ${TABLE}.id_nf1 ;;
  }

  dimension: conteiner {
    type: string
    sql: ${TABLE}.conteiner ;;
  }

  dimension: tara {
    type: number
    sql: ${TABLE}.tara ;;
  }

  dimension: dispensa_lacres {
    type: string
    sql: ${TABLE}.dispensa_lacres ;;
  }

  dimension: lacres {
    type: string
    sql: ${TABLE}.lacres ;;
  }

  dimension: peso_aferido0 {
    type: number
    sql: ${TABLE}.peso_aferido0 ;;
  }

  dimension_group: created_at2 {
    type: time
    sql: ${TABLE}.created_at2 ;;
  }

  dimension: location {
    type: location
    sql_latitude: ${TABLE}.latitude ;;
    sql_longitude: ${TABLE}.longitude ;;
  }

  set: detail {
    fields: [
      id,
      ide,
      idu,
      data_registro_time,
      nrmanifesto,
      dtemissao,
      dt_operacao_raw,
      dtemissaoce,
      dtemissaocemaster,
      nrviagem,
      cdportocarregamento,
      nmportocarregamento,
      cdportodescarregamento,
      nmportodescarregamento,
      tptrafego,
      cdembarcacao,
      nmembarcacao,
      cdempresanavegacao,
      nmempresanavegacao,
      cdagencianavegacao,
      nmagencianavegacao,
      qtconhecimentosinformados,
      qtconhecimentosexistentes,
      qtconhecimentosassociado,
      ckshipsconvenience,
      bloqueio_conhecimento,
      ret_pendente_analise,
      revisao_ou_pendencia_afrmm,
      pendencia_transito_maritimo,
      situacao_endosso,
      nrcemercante,
      nrblconhecimento,
      vlcubagem,
      vlpesobruto,
      cdportoorigem,
      nmportoorigem,
      cdportodestino,
      nmportodestino,
      cdportooriginal,
      nmportooriginal,
      tipoconhecimento,
      categoriacarga,
      cdconsignatario,
      txshipper,
      txmercadoria,
      txobservacoes,
      txnotifypart,
      cdnotifypart,
      nmconsignatario,
      nrpassaporteconsignatario,
      txconsignatario,
      cdpracaentexterior,
      nmpracaentexterior,
      indblordem,
      cdmoedafrete,
      nmmoedafrete,
      oprecolhimentofrete,
      indmodalidadefrete,
      dtceorigem,
      nrceorigem,
      nmnavioorigem,
      transbordosexterior,
      ckblservico,
      nrceoriginal,
      cdterminalportuario,
      nmterminalportuario,
      indufdestino,
      nmufdestino,
      cdpaisprocedencia,
      nmpaisprocedencia,
      responsavel_cpf_conhec,
      responsavel_nome_conhec,
      responsavel_tipo_conhec,
      responsavel_ip_conhec,
      responsavel_data_conhec,
      itens,
      nrcemaster,
      qthouseinformadomaster,
      qthousedeclaradomaster,
      cdempnavegdesconmaster,
      nmempnavegdesconmaster,
      cdagtnavegmaster,
      nmagtnavegmaster,
      itemcarga_nritem,
      nrdde,
      indedse,
      cdpaisdestfinal,
      nmpaisdestfinal,
      cdshipper,
      qtveiculostransportadores,
      nova,
      opconsignatario,
      vlfretetotal,
      vlfrete,
      componentesfrete,
      cdterminalportuariocarregamento,
      nmterminalportuariocarregamento,
      vlfretetotalbld,
      dt_itens_time,
      cdmoedafretetotalbld,
      ncm,
      ncm_desc,
      lista_fcl,
      tipo_fcl,
      tipo_carga,
      c20,
      c40,
      teus,
      feus,
      total_fcl,
      cnpj_num,
      tpitem,
      itemcarga_vlpesobruto,
      itemcarga_vlcubagem,
      itemcarga_txmarca,
      itemcarga_txcontramarca,
      itemcarga_vlquantidade,
      itemcarga_cdindicadormercadoriaperigosa,
      itemcarga_cdclassemercadoriaperigosa,
      itemcarga_cdtipoembalagem,
      itemcarga_descricao_embalagem,
      itemcarga_cdncms,
      temcarga_cdncms,
      responsavel_cpf,
      responsavel_tipo,
      responsavel_ip,
      responsavel_data,
      responsavel_hora,
      itemcarga_noncms,
      itemcarga_tipocontainer,
      usoparcial,
      itemcarga_cdtipogranel,
      itemcarga_descricao_tipogranel,
      itemcarga_descricao,
      nmmoedafretetotalbld,
      dt_consulta_master_time,
      incodacao,
      codigoncmitemcomplementar,
      descncmitemcomplementar,
      link,
      itemcarga_condncms,
      nomeconsiglce,
      enderecoconsiglce,
      nrruc,
      enviar,
      limpar,
      id_porto_origem,
      id_porto_carga,
      id_porto_descarga,
      id_porto_destino,
      id_armador,
      id_agencia,
      id_shipper,
      id_consig,
      id_shipconv,
      id_notify,
      id_agente,
      id_agente_inter,
      id_terminal_descarga,
      id_terminal_carga,
      id_moeda_frete,
      id_pais_origem,
      id_fcl,
      id_pais_destino,
      dt_cabotagem_time,
      id_nvocc,
      dt_update_agente_time,
      tipoconhecimentooriginal,
      deleted_at_time,
      teus_parcial,
      checked_at_time,
      available_at_time,
      processed_at_time,
      checked_error_at_time,
      obs_migr,
      id_recinto_aduaneiro,
      cdncm_compl,
      lista_hscode,
      id_original,
      desc_hscode,
      desc_ncm,
      id0,
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
      nrcemercante0,
      updated_at_time,
      id00,
      id_exp_cargo_details,
      id_nf,
      num_nf,
      num_serie,
      modelo,
      anomes_nf,
      sigla_uf_emitente,
      data_emissao_time,
      cpf_cnpj_destinatario,
      nome_destinatario,
      data_cancelamento_time,
      created_at0_time,
      cpf_cnpj_emissor,
      nome_emissor,
      id1,
      id_exp_cargo_details0,
      id_nf0,
      num_item,
      cod_produto,
      cdncm_compl0,
      descr_ncm,
      descricao,
      cfop,
      val_tot_bruto,
      qtd_estatistica,
      created_at1_time,
      id2,
      id_exp_cargo_details1,
      id_nf1,
      conteiner,
      tara,
      dispensa_lacres,
      lacres,
      peso_aferido0,
      created_at2_time,
      location
    ]
  }
}
