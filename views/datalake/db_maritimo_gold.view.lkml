view: db_maritimo_gold {
  derived_table: {
    sql: SELECT * FROM maritimo.db_maritimo_gold limit 10
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

  dimension_group: dtoperacao {
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
    sql: ${TABLE}.dtoperacao ;;
  }

  dimension: dtoperacao {
    type: date
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

  dimension_group: verified_at {
    type: time
    sql: ${TABLE}.verified_at ;;
  }

  dimension_group: ce_verified_at {
    type: time
    sql: ${TABLE}.ce_verified_at ;;
  }

  dimension_group: updated_at {
    type: time
    sql: ${TABLE}.updated_at ;;
  }

  set: detail {
    fields: [
      id,
      ide,
      idu,
      data_registro_time,
      nrmanifesto,
      dtemissao,
      dtoperacao,
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
      verified_at_time,
      ce_verified_at_time,
      updated_at_time
    ]
  }
}
