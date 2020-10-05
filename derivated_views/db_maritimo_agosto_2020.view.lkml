view: db_maritimo_agosto_2020 {

  derived_table: {

    sql: select *
         from db_maritimo
         where categoriacarga = 'E' and dtoperacao >= '2020/08/01' and dtoperacao < '2020/09/01' ;;

  }

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension_group: available {
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
    sql: ${TABLE}."available_at" ;;
  }

  dimension: bloqueio_conhecimento {
    type: string
    sql: ${TABLE}."bloqueio_conhecimento" ;;
  }

  measure: c20 {
    type: sum
    sql: ${TABLE}."c20" ;;
  }

  measure: c40 {
    type: sum
    sql: ${TABLE}."c40" ;;
  }

  dimension: categoriacarga {
    type: string
    sql: ${TABLE}."categoriacarga" ;;
  }

  dimension: cdagencianavegacao {
    type: string
    sql: ${TABLE}."cdagencianavegacao" ;;
  }

  dimension: cdagtnavegmaster {
    type: string
    sql: ${TABLE}."cdagtnavegmaster" ;;
  }

  dimension: cdconsignatario {
    type: string
    sql: ${TABLE}."cdconsignatario" ;;
  }

  dimension: cdembarcacao {
    type: string
    sql: ${TABLE}."cdembarcacao" ;;
  }

  dimension: cdempnavegdesconmaster {
    type: string
    sql: ${TABLE}."cdempnavegdesconmaster" ;;
  }

  dimension: cdempresanavegacao {
    type: string
    sql: ${TABLE}."cdempresanavegacao" ;;
  }

  dimension: cdmoedafrete {
    type: string
    sql: ${TABLE}."cdmoedafrete" ;;
  }

  dimension: cdmoedafretetotalbld {
    type: string
    sql: ${TABLE}."cdmoedafretetotalbld" ;;
  }

  dimension: cdncm_compl {
    type: string
    sql: ${TABLE}."cdncm_compl" ;;
  }

  dimension: cdnotifypart {
    type: string
    sql: ${TABLE}."cdnotifypart" ;;
  }

  dimension: cdpaisdestfinal {
    type: string
    sql: ${TABLE}."cdpaisdestfinal" ;;
  }

  dimension: cdpaisprocedencia {
    type: string
    sql: ${TABLE}."cdpaisprocedencia" ;;
  }

  dimension: cdportocarregamento {
    type: string
    sql: ${TABLE}."cdportocarregamento" ;;
  }

  dimension: cdportodescarregamento {
    type: string
    sql: ${TABLE}."cdportodescarregamento" ;;
  }

  dimension: cdportodestino {
    type: string
    sql: ${TABLE}."cdportodestino" ;;
  }

  dimension: cdportoorigem {
    type: string
    sql: ${TABLE}."cdportoorigem" ;;
  }

  dimension: cdportooriginal {
    type: string
    sql: ${TABLE}."cdportooriginal" ;;
  }

  dimension: cdpracaentexterior {
    type: string
    sql: ${TABLE}."cdpracaentexterior" ;;
  }

  dimension: cdshipper {
    type: string
    sql: ${TABLE}."cdshipper" ;;
  }

  dimension: cdterminalportuario {
    type: string
    sql: ${TABLE}."cdterminalportuario" ;;
  }

  dimension: cdterminalportuariocarregamento {
    type: string
    sql: ${TABLE}."cdterminalportuariocarregamento" ;;
  }

  dimension_group: checked {
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
    sql: ${TABLE}."checked_at" ;;
  }

  dimension_group: checked_error {
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
    sql: ${TABLE}."checked_error_at" ;;
  }

  dimension: ckblservico {
    type: string
    sql: ${TABLE}."ckblservico" ;;
  }

  dimension: ckshipsconvenience {
    type: string
    sql: ${TABLE}."ckshipsconvenience" ;;
  }

  dimension: cnpj_num {
    type: number
    sql: ${TABLE}."cnpj_num" ;;
  }

  dimension: codigoncmitemcomplementar {
    type: string
    sql: ${TABLE}."codigoncmitemcomplementar" ;;
  }

  dimension: componentesfrete {
    type: string
    sql: ${TABLE}."componentesfrete" ;;
  }

  dimension_group: data_registro {
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
    sql: ${TABLE}."data_registro" ;;
  }

  dimension_group: deleted {
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
    sql: ${TABLE}."deleted_at" ;;
  }

  dimension: desc_hscode {
    type: string
    sql: ${TABLE}."desc_hscode" ;;
  }

  dimension: descncmitemcomplementar {
    type: string
    sql: ${TABLE}."descncmitemcomplementar" ;;
  }

  dimension_group: dt_cabotagem {
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
    sql: ${TABLE}."dt_cabotagem" ;;
  }

  dimension_group: dt_consulta_master {
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
    sql: ${TABLE}."dt_consulta_master" ;;
  }

  dimension_group: dt_itens {
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
    sql: ${TABLE}."dt_itens" ;;
  }

  dimension_group: dt_update_agente {
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
    sql: ${TABLE}."dt_update_agente" ;;
  }

  dimension: dtceorigem {
    type: string
    sql: ${TABLE}."dtceorigem" ;;
  }

  dimension_group: dtemissao {
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
    sql: ${TABLE}."dtemissao" ;;
  }

  dimension_group: dtemissaoce {
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
    sql: ${TABLE}."dtemissaoce" ;;
  }

  dimension_group: dtemissaocemaster {
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
    sql: ${TABLE}."dtemissaocemaster" ;;
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
    sql: ${TABLE}."dtoperacao" ;;
  }

  dimension: enderecoconsiglce {
    type: string
    sql: ${TABLE}."enderecoconsiglce" ;;
  }

  dimension: enviar {
    type: string
    sql: ${TABLE}."enviar" ;;
  }

  dimension: feus {
    type: number
    sql: ${TABLE}."feus" ;;
  }

  dimension: id_agencia {
    type: number
    sql: ${TABLE}."id_agencia" ;;
  }

  dimension: id_agente {
    type: number
    sql: ${TABLE}."id_agente" ;;
  }

  dimension: id_agente_inter {
    type: number
    sql: ${TABLE}."id_agente_inter" ;;
  }

  dimension: id_armador {
    type: number
    sql: ${TABLE}."id_armador" ;;
  }

  dimension: id_consig {
    type: number
    sql: ${TABLE}."id_consig" ;;
  }

  dimension: id_fcl {
    type: number
    sql: ${TABLE}."id_fcl" ;;
  }

  dimension: id_moeda_frete {
    type: number
    sql: ${TABLE}."id_moeda_frete" ;;
  }

  dimension: id_notify {
    type: number
    sql: ${TABLE}."id_notify" ;;
  }

  dimension: id_nvocc {
    type: number
    sql: ${TABLE}."id_nvocc" ;;
  }

  dimension: id_original {
    type: number
    sql: ${TABLE}."id_original" ;;
  }

  dimension: id_pais_destino {
    type: number
    sql: ${TABLE}."id_pais_destino" ;;
  }

  dimension: id_pais_origem {
    type: number
    sql: ${TABLE}."id_pais_origem" ;;
  }

  dimension: id_porto_carga {
    type: number
    sql: ${TABLE}."id_porto_carga" ;;
  }

  dimension: id_porto_descarga {
    type: number
    sql: ${TABLE}."id_porto_descarga" ;;
  }

  dimension: id_porto_destino {
    type: number
    sql: ${TABLE}."id_porto_destino" ;;
  }

  dimension: id_porto_origem {
    type: number
    sql: ${TABLE}."id_porto_origem" ;;
  }

  dimension: id_recinto_aduaneiro {
    type: number
    sql: ${TABLE}."id_recinto_aduaneiro" ;;
  }

  dimension: id_shipconv {
    type: number
    sql: ${TABLE}."id_shipconv" ;;
  }

  dimension: id_shipper {
    type: number
    sql: ${TABLE}."id_shipper" ;;
  }

  dimension: id_terminal_carga {
    type: number
    sql: ${TABLE}."id_terminal_carga" ;;
  }

  dimension: id_terminal_descarga {
    type: number
    sql: ${TABLE}."id_terminal_descarga" ;;
  }

  dimension: ide {
    type: number
    sql: ${TABLE}."ide" ;;
  }

  dimension: idu {
    type: number
    sql: ${TABLE}."idu" ;;
  }

  dimension: incodacao {
    type: string
    sql: ${TABLE}."incodacao" ;;
  }

  dimension: indblordem {
    type: string
    sql: ${TABLE}."indblordem" ;;
  }

  dimension: indedse {
    type: string
    sql: ${TABLE}."indedse" ;;
  }

  dimension: indmodalidadefrete {
    type: string
    sql: ${TABLE}."indmodalidadefrete" ;;
  }

  dimension: indufdestino {
    type: string
    sql: ${TABLE}."indufdestino" ;;
  }

  dimension: itemcarga_cdclassemercadoriaperigosa {
    type: string
    sql: ${TABLE}."itemcarga_cdclassemercadoriaperigosa" ;;
  }

  dimension: itemcarga_cdindicadormercadoriaperigosa {
    type: string
    sql: ${TABLE}."itemcarga_cdindicadormercadoriaperigosa" ;;
  }

  dimension: itemcarga_cdncms {
    type: string
    sql: ${TABLE}."itemcarga_cdncms" ;;
  }

  dimension: itemcarga_cdtipoembalagem {
    type: string
    sql: ${TABLE}."itemcarga_cdtipoembalagem" ;;
  }

  dimension: itemcarga_cdtipogranel {
    type: string
    sql: ${TABLE}."itemcarga_cdtipogranel" ;;
  }

  dimension: itemcarga_condncms {
    type: string
    sql: ${TABLE}."itemcarga_condncms" ;;
  }

  dimension: itemcarga_descricao {
    type: string
    sql: ${TABLE}."itemcarga_descricao" ;;
  }

  dimension: itemcarga_descricao_embalagem {
    type: string
    sql: ${TABLE}."itemcarga_descricao_embalagem" ;;
  }

  dimension: itemcarga_descricao_tipogranel {
    type: string
    sql: ${TABLE}."itemcarga_descricao_tipogranel" ;;
  }

  dimension: itemcarga_noncms {
    type: string
    sql: ${TABLE}."itemcarga_noncms" ;;
  }

  dimension: itemcarga_nritem {
    type: string
    sql: ${TABLE}."itemcarga_nritem" ;;
  }

  dimension: itemcarga_tipocontainer {
    type: string
    sql: ${TABLE}."itemcarga_tipocontainer" ;;
  }

  dimension: itemcarga_txcontramarca {
    type: string
    sql: ${TABLE}."itemcarga_txcontramarca" ;;
  }

  dimension: itemcarga_txmarca {
    type: string
    sql: ${TABLE}."itemcarga_txmarca" ;;
  }

  dimension: itemcarga_vlcubagem {
    type: number
    sql: ${TABLE}."itemcarga_vlcubagem" ;;
  }

  dimension: itemcarga_vlpesobruto {
    type: number
    sql: ${TABLE}."itemcarga_vlpesobruto" ;;
  }

  dimension: itemcarga_vlquantidade {
    type: string
    sql: ${TABLE}."itemcarga_vlquantidade" ;;
  }

  dimension: itens {
    type: string
    sql: ${TABLE}."itens" ;;
  }

  dimension: limpar {
    type: string
    sql: ${TABLE}."limpar" ;;
  }

  dimension: link {
    type: string
    sql: ${TABLE}."link" ;;
  }

  dimension: lista_fcl {
    type: string
    sql: ${TABLE}."lista_fcl" ;;
  }

  dimension: lista_hscode {
    type: string
    sql: ${TABLE}."lista_hscode" ;;
  }

  dimension: ncm {
    type: string
    sql: ${TABLE}."ncm" ;;
  }

  dimension: ncm_desc {
    type: string
    sql: ${TABLE}."ncm_desc" ;;
  }

  dimension: nmagencianavegacao {
    type: string
    sql: ${TABLE}."nmagencianavegacao" ;;
  }

  dimension: nmagtnavegmaster {
    type: string
    sql: ${TABLE}."nmagtnavegmaster" ;;
  }

  dimension: nmconsignatario {
    type: string
    sql: ${TABLE}."nmconsignatario" ;;
  }

  dimension: nmembarcacao {
    type: string
    sql: ${TABLE}."nmembarcacao" ;;
  }

  dimension: nmempnavegdesconmaster {
    type: string
    sql: ${TABLE}."nmempnavegdesconmaster" ;;
  }

  dimension: nmempresanavegacao {
    type: string
    sql: ${TABLE}."nmempresanavegacao" ;;
  }

  dimension: nmmoedafrete {
    type: string
    sql: ${TABLE}."nmmoedafrete" ;;
  }

  dimension: nmmoedafretetotalbld {
    type: string
    sql: ${TABLE}."nmmoedafretetotalbld" ;;
  }

  dimension: nmnavioorigem {
    type: string
    sql: ${TABLE}."nmnavioorigem" ;;
  }

  dimension: nmpaisdestfinal {
    type: string
    sql: ${TABLE}."nmpaisdestfinal" ;;
  }

  dimension: nmpaisprocedencia {
    type: string
    sql: ${TABLE}."nmpaisprocedencia" ;;
  }

  dimension: nmportocarregamento {
    type: string
    sql: ${TABLE}."nmportocarregamento" ;;
  }

  dimension: nmportodescarregamento {
    type: string
    sql: ${TABLE}."nmportodescarregamento" ;;
  }

  dimension: nmportodestino {
    type: string
    sql: ${TABLE}."nmportodestino" ;;
  }

  dimension: nmportoorigem {
    type: string
    sql: ${TABLE}."nmportoorigem" ;;
  }

  dimension: nmportooriginal {
    type: string
    sql: ${TABLE}."nmportooriginal" ;;
  }

  dimension: nmpracaentexterior {
    type: string
    sql: ${TABLE}."nmpracaentexterior" ;;
  }

  dimension: nmterminalportuario {
    type: string
    sql: ${TABLE}."nmterminalportuario" ;;
  }

  dimension: nmterminalportuariocarregamento {
    type: string
    sql: ${TABLE}."nmterminalportuariocarregamento" ;;
  }

  dimension: nmufdestino {
    type: string
    sql: ${TABLE}."nmufdestino" ;;
  }

  dimension: nomeconsiglce {
    type: string
    sql: ${TABLE}."nomeconsiglce" ;;
  }

  dimension: nova {
    type: string
    sql: ${TABLE}."nova" ;;
  }

  dimension: nrblconhecimento {
    type: string
    sql: ${TABLE}."nrblconhecimento" ;;
  }

  dimension: nrcemaster {
    type: string
    sql: ${TABLE}."nrcemaster" ;;
  }

  dimension: nrcemercante {
    type: number
    sql: ${TABLE}."nrcemercante" ;;
  }

  dimension: nrceorigem {
    type: string
    sql: ${TABLE}."nrceorigem" ;;
  }

  dimension: nrceoriginal {
    type: string
    sql: ${TABLE}."nrceoriginal" ;;
  }

  dimension: nrdde {
    type: string
    sql: ${TABLE}."nrdde" ;;
  }

  dimension: nrmanifesto {
    type: string
    sql: ${TABLE}."nrmanifesto" ;;
  }

  dimension: nrpassaporteconsignatario {
    type: string
    sql: ${TABLE}."nrpassaporteconsignatario" ;;
  }

  dimension: nrruc {
    type: string
    sql: ${TABLE}."nrruc" ;;
  }

  dimension: nrviagem {
    type: string
    sql: ${TABLE}."nrviagem" ;;
  }

  dimension: obs_migr {
    type: string
    sql: ${TABLE}."obs_migr" ;;
  }

  dimension: opconsignatario {
    type: string
    sql: ${TABLE}."opconsignatario" ;;
  }

  dimension: oprecolhimentofrete {
    type: string
    sql: ${TABLE}."oprecolhimentofrete" ;;
  }

  dimension: pendencia_transito_maritimo {
    type: string
    sql: ${TABLE}."pendencia_transito_maritimo" ;;
  }

  dimension_group: processed {
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
    sql: ${TABLE}."processed_at" ;;
  }

  dimension: qtconhecimentosassociado {
    type: number
    sql: ${TABLE}."qtconhecimentosassociado" ;;
  }

  dimension: qtconhecimentosexistentes {
    type: number
    sql: ${TABLE}."qtconhecimentosexistentes" ;;
  }

  dimension: qtconhecimentosinformados {
    type: number
    sql: ${TABLE}."qtconhecimentosinformados" ;;
  }

  dimension: qthousedeclaradomaster {
    type: string
    sql: ${TABLE}."qthousedeclaradomaster" ;;
  }

  dimension: qthouseinformadomaster {
    type: string
    sql: ${TABLE}."qthouseinformadomaster" ;;
  }

  dimension: qtveiculostransportadores {
    type: string
    sql: ${TABLE}."qtveiculostransportadores" ;;
  }

  dimension: responsavel_cpf {
    type: string
    sql: ${TABLE}."responsavel_cpf" ;;
  }

  dimension: responsavel_cpf_conhec {
    type: string
    sql: ${TABLE}."responsavel_cpf_conhec" ;;
  }

  dimension: responsavel_data {
    type: string
    sql: ${TABLE}."responsavel_data" ;;
  }

  dimension: responsavel_data_conhec {
    type: string
    sql: ${TABLE}."responsavel_data_conhec" ;;
  }

  dimension: responsavel_hora {
    type: string
    sql: ${TABLE}."responsavel_hora" ;;
  }

  dimension: responsavel_ip {
    type: string
    sql: ${TABLE}."responsavel_ip" ;;
  }

  dimension: responsavel_ip_conhec {
    type: string
    sql: ${TABLE}."responsavel_ip_conhec" ;;
  }

  dimension: responsavel_nome_conhec {
    type: string
    sql: ${TABLE}."responsavel_nome_conhec" ;;
  }

  dimension: responsavel_tipo {
    type: string
    sql: ${TABLE}."responsavel_tipo" ;;
  }

  dimension: responsavel_tipo_conhec {
    type: string
    sql: ${TABLE}."responsavel_tipo_conhec" ;;
  }

  dimension: ret_pendente_analise {
    type: string
    sql: ${TABLE}."ret_pendente_analise" ;;
  }

  dimension: revisao_ou_pendencia_afrmm {
    type: string
    sql: ${TABLE}."revisao_ou_pendencia_afrmm" ;;
  }

  dimension: situacao_endosso {
    type: string
    sql: ${TABLE}."situacao_endosso" ;;
  }

  dimension: temcarga_cdncms {
    type: string
    sql: ${TABLE}."temcarga_cdncms" ;;
  }

  measure: teus {
    type: sum
    sql: ${TABLE}."teus" ;;
  }

  dimension: teus_parcial {
    type: number
    sql: ${TABLE}."teus_parcial" ;;
  }

  dimension: tipo_carga {
    type: string
    sql: ${TABLE}."tipo_carga" ;;
  }

  dimension: tipo_fcl {
    type: string
    sql: ${TABLE}."tipo_fcl" ;;
  }

  dimension: tipoconhecimento {
    type: string
    sql: ${TABLE}."tipoconhecimento" ;;
  }

  dimension: tipoconhecimento_desc {
    type: string
    sql:  CASE WHEN (db_maritimo.tipoconhecimento = '10') THEN '10 -> Direto'
               WHEN (db_maritimo.tipoconhecimento = '11') THEN '11 -> Master'
               WHEN (db_maritimo.tipoconhecimento = '12') THEN '12 -> House'
               WHEN (db_maritimo.tipoconhecimento = '15') THEN '15 -> Colocader'
          else db_maritimo.tipoconhecimento end
    ;;
  }

  dimension: tipoconhecimentooriginal {
    type: string
    sql: ${TABLE}."tipoconhecimentooriginal" ;;
  }

  measure: total_fcl {
    type: sum
    sql: ${TABLE}."total_fcl" ;;
  }

  dimension: tpitem {
    type: string
    sql: ${TABLE}."tpitem" ;;
  }

  dimension: tptrafego {
    type: string
    sql: ${TABLE}."tptrafego" ;;
  }

  dimension: transbordosexterior {
    type: string
    sql: ${TABLE}."transbordosexterior" ;;
  }

  dimension: txconsignatario {
    type: string
    sql: ${TABLE}."txconsignatario" ;;
  }

  dimension: txmercadoria {
    type: string
    sql: ${TABLE}."txmercadoria" ;;
  }

  dimension: txnotifypart {
    type: string
    sql: ${TABLE}."txnotifypart" ;;
  }

  dimension: txobservacoes {
    type: string
    sql: ${TABLE}."txobservacoes" ;;
  }

  dimension: txshipper {
    type: string
    sql: ${TABLE}."txshipper" ;;
  }

  dimension: usoparcial {
    type: string
    sql: ${TABLE}."usoparcial" ;;
  }

  measure: vlcubagem {
    type: sum
    sql: ${TABLE}."vlcubagem" ;;
  }

  measure: vlfrete {
    type: sum
    sql: ${TABLE}."vlfrete" ;;
  }

  measure: vlfretetotal {
    type: sum
    sql: ${TABLE}."vlfretetotal" ;;
  }

  dimension: vlfretetotalbld {
    type: string
    sql: ${TABLE}."vlfretetotalbld" ;;
  }

  measure: vlpesobruto {
    type: sum
    sql: ${TABLE}."vlpesobruto" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
