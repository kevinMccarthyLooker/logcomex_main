view: st_importacoes_06_12_2020 {
  sql_table_name: importadores_cif.st_importacoes_06_12_2020 ;;

  dimension: addition_number {
    type: string
    sql: ${TABLE}.addition_number ;;
  }

  dimension: anomes {
    type: string
    sql: ${TABLE}.anomes ;;
  }

  dimension: armazem {
    type: string
    sql: ${TABLE}.armazem ;;
  }

  dimension: awb {
    type: string
    sql: ${TABLE}.awb ;;
  }

  dimension: bandeira {
    type: string
    sql: ${TABLE}.bandeira ;;
  }

  dimension: branches_activity {
    type: string
    sql: ${TABLE}.branches_activity ;;
  }

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }

  dimension: canal {
    type: string
    sql: ${TABLE}.canal ;;
  }

  dimension: cd_pais_proced {
    type: string
    sql: ${TABLE}.cd_pais_proced ;;
  }

  dimension: cdncm {
    type: string
    sql: ${TABLE}.cdncm ;;
  }

  dimension: cdncm_compl {
    type: string
    sql: ${TABLE}.cdncm_compl ;;
  }

  dimension: cdpaisaquis {
    type: string
    sql: ${TABLE}.cdpaisaquis ;;
  }

  dimension: cdpaisorigem {
    type: string
    sql: ${TABLE}.cdpaisorigem ;;
  }

  dimension: cdportodestino {
    type: string
    sql: ${TABLE}.cdportodestino ;;
  }

  dimension: cdportoorigem {
    type: string
    sql: ${TABLE}.cdportoorigem ;;
  }

  dimension: cidade_import {
    type: string
    sql: ${TABLE}.cidade_import ;;
  }

  dimension: cnpj {
    type: string
    sql: ${TABLE}.cnpj ;;
  }

  dimension: cnpj_adquirente {
    type: string
    sql: ${TABLE}.cnpj_adquirente ;;
  }

  dimension: cnpj_adquirente_int {
    type: string
    sql: ${TABLE}.cnpj_adquirente_int ;;
  }

  dimension: cod_cep_import {
    type: string
    sql: ${TABLE}.cod_cep_import ;;
  }

  dimension: cod_cnae_import {
    type: string
    sql: ${TABLE}.cod_cnae_import ;;
  }

  dimension: cod_cnpj_import {
    type: string
    sql: ${TABLE}.cod_cnpj_import ;;
  }

  dimension: crt {
    type: string
    sql: ${TABLE}.crt ;;
  }

  dimension: customer_id {
    type: number
    sql: ${TABLE}.customer_id ;;
  }

  dimension: data_chegada_carga {
    type: string
    sql: ${TABLE}.data_chegada_carga ;;
  }

  dimension: data_desembaraco {
    type: string
    sql: ${TABLE}.data_desembaraco ;;
  }

  dimension: data_embarque {
    type: string
    sql: ${TABLE}.data_embarque ;;
  }

  dimension: data_hora_registro {
    type: string
    sql: ${TABLE}.data_hora_registro ;;
  }

  dimension: data_pagamento {
    type: string
    sql: ${TABLE}.data_pagamento ;;
  }

  dimension: desc_cap_ncm {
    type: string
    sql: ${TABLE}.desc_cap_ncm ;;
  }

  dimension: desc_cnae_import {
    type: string
    sql: ${TABLE}.desc_cnae_import ;;
  }

  dimension: desc_prodt {
    type: string
    sql: ${TABLE}.desc_prodt ;;
  }

  dimension: desc_unid_desembaraco {
    type: string
    sql: ${TABLE}.desc_unid_desembaraco ;;
  }

  dimension: desc_unid_desembq {
    type: string
    sql: ${TABLE}.desc_unid_desembq ;;
  }

  dimension: desc_unid_estat {
    type: string
    sql: ${TABLE}.desc_unid_estat ;;
  }

  dimension: di_number {
    type: string
    sql: ${TABLE}.di_number ;;
  }

  dimension: doc_chegada_carga_identificacao {
    type: string
    sql: ${TABLE}.doc_chegada_carga_identificacao ;;
  }

  dimension: doc_chegada_carga_tipo {
    type: string
    sql: ${TABLE}.doc_chegada_carga_tipo ;;
  }

  dimension: ean_code {
    type: string
    sql: ${TABLE}.ean_code;;
    link: {
      label: "Procurar Produto"
      url: " https://pt.product-search.net/?q={{ value }}"
    }
  }

  dimension: embarcacao {
    type: string
    sql: ${TABLE}.embarcacao ;;
  }

  dimension: exportador_endereco {
    type: string
    sql: ${TABLE}.exportador_endereco ;;
  }

  dimension: exportador_nome {
    type: string
    sql: ${TABLE}.exportador_nome ;;
  }

  dimension: have_ean {
    type: yesno
    sql: ${TABLE}.have_ean ;;
  }

  dimension: hwb {
    type: string
    sql: ${TABLE}.hwb ;;
  }

  dimension: id_cap_ncm {
    type: string
    sql: ${TABLE}.id_cap_ncm ;;
  }

  dimension: id_import {
    type: string
    sql: ${TABLE}.id_import ;;
  }

  dimension: importador_cnpj {
    type: string
    sql: ${TABLE}.importador_cnpj ;;
  }

  dimension: importador_endereco {
    type: string
    sql: ${TABLE}.importador_endereco ;;
  }

  dimension: importador_nome {
    type: string
    sql: ${TABLE}.importador_nome ;;
  }

  dimension: incoterm {
    type: string
    sql: ${TABLE}.incoterm ;;
  }

  dimension: loc_embarque {
    type: string
    sql: ${TABLE}.loc_embarque ;;
  }

  dimension: modalidade_despacho {
    type: string
    sql: ${TABLE}.modalidade_despacho ;;
  }

  dimension: model {
    type: string
    sql: ${TABLE}.model ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: ncm_desc {
    type: string
    sql: ${TABLE}.ncm_desc ;;
  }

  dimension: nm_pais_aquis {
    type: string
    sql: ${TABLE}.nm_pais_aquis ;;
  }

  dimension: nm_pais_origem {
    type: string
    sql: ${TABLE}.nm_pais_origem ;;
  }

  dimension: nm_pais_proced {
    type: string
    sql: ${TABLE}.nm_pais_proced ;;
  }

  dimension: nmportodestino {
    type: string
    sql: ${TABLE}.nmportodestino ;;
  }

  dimension: nmportoorigem {
    type: string
    sql: ${TABLE}.nmportoorigem ;;
  }

  dimension: nome_adquirente {
    type: string
    sql: ${TABLE}.nome_adquirente ;;
  }

  dimension: nome_ncm_pt {
    type: string
    sql: ${TABLE}.nome_ncm_pt ;;
  }

  dimension: nome_unid_desembaraco {
    type: string
    sql: ${TABLE}.nome_unid_desembaraco ;;
  }

  dimension: num_item {
    type: string
    sql: ${TABLE}.num_item ;;
  }

  dimension: num_ord {
    type: string
    sql: ${TABLE}.num_ord ;;
  }

  dimension: num_ord_cmpl {
    type: string
    sql: ${TABLE}.num_ord_cmpl ;;
  }

  dimension: num_subitem {
    type: string
    sql: ${TABLE}.num_subitem ;;
  }

  dimension: num_tel1_import {
    type: string
    sql: ${TABLE}.num_tel1_import ;;
  }

  dimension: num_tel2_import {
    type: string
    sql: ${TABLE}.num_tel2_import ;;
  }

  dimension: numero_ce {
    type: string
    sql: ${TABLE}.numero_ce ;;
  }

  dimension: operacao_fundap {
    type: string
    sql: ${TABLE}.operacao_fundap ;;
  }

  dimension: pais_proced {
    type: string
    sql: ${TABLE}.pais_proced ;;
  }

  measure: qtd_comerc {
    type: number
    sql: ${TABLE}.qtd_comerc ;;
  }

  dimension: qtd_estat {
    type: string
    sql: ${TABLE}.qtd_estat ;;
  }

  dimension: recinto_aduaneiro {
    type: string
    sql: ${TABLE}.recinto_aduaneiro ;;
  }

  dimension: rn {
    type: number
    sql: ${TABLE}.rn ;;
  }

  dimension: sgl_uf_import {
    type: string
    sql: ${TABLE}.sgl_uf_import ;;
  }

  dimension: tipo_declaracao {
    type: string
    sql: ${TABLE}.tipo_declaracao ;;
  }

  dimension: tipo_recolhimento {
    type: string
    sql: ${TABLE}.tipo_recolhimento ;;
  }

  dimension: tp_match {
    type: string
    sql: ${TABLE}.tp_match ;;
  }

  dimension: tp_nat_inf {
    type: string
    sql: ${TABLE}.tp_nat_inf ;;
  }

  dimension: tp_sit_desp {
    type: string
    sql: ${TABLE}.tp_sit_desp ;;
  }

  dimension: tp_unid_comerc {
    type: string
    sql: ${TABLE}.tp_unid_comerc ;;
  }

  dimension: transportador {
    type: string
    sql: ${TABLE}.transportador ;;
  }

  dimension: urf_despacho {
    type: string
    sql: ${TABLE}.urf_despacho ;;
  }

  dimension: urf_entrada_carga {
    type: string
    sql: ${TABLE}.urf_entrada_carga ;;
  }

  dimension: utilizacao {
    type: string
    sql: ${TABLE}.utilizacao ;;
  }

  dimension: val_cif_un_us {
    type: string
    sql: ${TABLE}.val_cif_un_us ;;
  }

  dimension: val_fob_un_us {
    type: string
    sql: ${TABLE}.val_fob_un_us ;;
  }

  dimension: val_fob_us_subitem {
    type: string
    sql: ${TABLE}.val_fob_us_subitem ;;
  }

  dimension: val_frete_un_us {
    type: string
    sql: ${TABLE}.val_frete_un_us ;;
  }

  dimension: val_frete_us {
    type: string
    sql: ${TABLE}.val_frete_us ;;
  }

  dimension: val_frete_us_subitem {
    type: string
    sql: ${TABLE}.val_frete_us_subitem ;;
  }

  dimension: val_peso_liq {
    type: string
    sql: ${TABLE}.val_peso_liq ;;
  }

  dimension: val_peso_liq_subitem {
    type: string
    sql: ${TABLE}.val_peso_liq_subitem ;;
  }

  dimension: val_seg_un_us {
    type: string
    sql: ${TABLE}.val_seg_un_us ;;
  }

  dimension: val_seg_us {
    type: string
    sql: ${TABLE}.val_seg_us ;;
  }

  dimension: val_seg_us_subitem {
    type: string
    sql: ${TABLE}.val_seg_us_subitem ;;
  }

  dimension: val_tot_unid_prod_us {
    type: string
    sql: ${TABLE}.val_tot_unid_prod_us ;;
  }

  dimension: val_unid_prod_us {
    type: string
    sql: ${TABLE}.val_unid_prod_us ;;
  }

  dimension: val_vmld_us_subitem {
    type: string
    sql: ${TABLE}.val_vmld_us_subitem ;;
  }

  dimension: val_vmle_us {
    type: string
    sql: ${TABLE}.val_vmle_us ;;
  }

  dimension: val_vmle_us_subitem {
    type: string
    sql: ${TABLE}.val_vmle_us_subitem ;;
  }

  dimension: via_transp {
    type: string
    sql: ${TABLE}.via_transp ;;
  }

  dimension: val_vmle_us_subitem_float {
    type: number
    sql: ${TABLE}.val_vmle_us_subitem_float ;;
  }

  measure: val_vmle_us_subitem_sum {
    type: sum
    sql: ${val_vmle_us_subitem_float} ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
