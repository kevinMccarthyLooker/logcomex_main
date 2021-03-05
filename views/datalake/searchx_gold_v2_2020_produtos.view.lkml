view: searchx_gold_v2_2020_produtos {
  derived_table: {
    sql:
    select *
    from importadores_cif.searchx_gold_v2_2020_produtos
    where to_date(concat(anomes,'01'), 'YYYYMMDD') between '2020-01-01' and '2020-12-31' ;;
  }

  dimension: addition_number {
    type: string
    sql: ${TABLE}.addition_number ;;
  }

  dimension: altura {
    type: string
    sql: ${TABLE}.Altura ;;
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

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }

  dimension: canal {
    type: string
    sql: ${TABLE}.canal ;;
  }

  dimension: capacidade {
    type: string
    sql: ${TABLE}.Capacidade ;;
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
    map_layer_name: countries
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

  dimension: composicao {
    type: string
    sql: ${TABLE}.Composicao ;;
  }

  dimension: comprimento {
    type: string
    sql: ${TABLE}.Comprimento ;;
  }

  dimension: cor {
    type: string
    sql: ${TABLE}.Cor ;;
  }

  dimension: crt {
    type: string
    sql: ${TABLE}.crt ;;
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

  dimension: descricao {
    type: string
    sql: ${TABLE}.Descricao ;;
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

  dimension: ean {
    type: string
    sql: ${TABLE}.EAN ;;
  }

  dimension: embarcacao {
    type: string
    sql: ${TABLE}.embarcacao ;;
  }

  dimension: espessura {
    type: string
    sql: ${TABLE}.Espessura ;;
  }

  dimension: exportador_endereco {
    type: string
    sql: ${TABLE}.exportador_endereco ;;
  }

  dimension: exportador_nome {
    type: string
    sql: ${TABLE}.exportador_nome ;;
  }

  dimension: genero {
    type: string
    sql: ${TABLE}.Genero ;;
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

  dimension: largura {
    type: string
    sql: ${TABLE}.Largura ;;
  }

  dimension: loc_embarque {
    type: string
    sql: ${TABLE}.loc_embarque ;;
  }

  dimension: marca {
    type: string
    sql: ${TABLE}.Marca ;;
  }

  dimension: material {
    type: string
    sql: ${TABLE}.Material ;;
  }

  dimension: modalidade_despacho {
    type: string
    sql: ${TABLE}.modalidade_despacho ;;
  }

  dimension: model {
    type: string
    sql: ${TABLE}.model ;;
  }

  dimension: modelo {
    type: string
    sql: ${TABLE}.Modelo ;;
  }

  dimension: ncm {
    type: string
    sql: ${TABLE}.NCM ;;
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

  dimension: peso {
    type: string
    sql: ${TABLE}.Peso ;;
  }

  dimension: potencia {
    type: string
    sql: ${TABLE}.Potencia ;;
  }

  dimension: produto {
    type: string
    sql: ${TABLE}.Produto ;;
  }

  dimension: qtd_comerc {
    type: string
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

  dimension: tamanho {
    type: string
    sql: ${TABLE}.Tamanho ;;
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

  dimension: voltagem {
    type: string
    sql: ${TABLE}.Voltagem ;;
  }

  dimension: qtd_comerc_num {
    type: number
    sql: cast(${TABLE}.qtd_comerc as float) ;;
  }

  dimension: val_cif_un_us_num {
    type: number
    sql: cast(${TABLE}.val_cif_un_us as float) ;;
  }

  dimension: val_fob_un_us_num {
    type: number
    sql: cast(${TABLE}.val_fob_un_us as float) ;;
  }

  dimension: val_vmld_us_subitem_num {
    type: number
    sql: cast(${TABLE}.val_vmld_us_subitem as float) ;;
  }

  dimension: val_vmle_us_subitem_num {
    type: number
    sql: cast(${TABLE}.val_vmle_us_subitem as float) ;;
  }

  dimension: plu {
    type: string
    sql: ${TABLE}.plu ;;
  }

  dimension: embalagem {
    type: string
    sql: ${TABLE}.embalagem ;;
  }

  dimension: latitude {
    type: number
    sql: case
         when ${cdpaisorigem} = 'CN' THEN 35.0000
         when ${cdpaisorigem} = 'US' THEN 38.0000
         when ${cdpaisorigem} = 'BR' THEN 10.0000
         when ${cdpaisorigem} = 'DE' THEN 51.0000
         when ${cdpaisorigem} = 'FR' THEN 46.0000
         when ${cdpaisorigem} = 'AR' THEN 34.0000
         when ${cdpaisorigem} = 'KR' THEN 37.0000
         when ${cdpaisorigem} = 'JP' THEN 36.0000
         when ${cdpaisorigem} = 'IT' THEN 42.5000
         when ${cdpaisorigem} = 'MX' THEN 19.0000
         when ${cdpaisorigem} = 'IN' THEN 22.0000
         else 0
         end;;
  }

  dimension: longitude {
    type: number
    sql: case
         when ${cdpaisorigem} = 'CN' THEN 103.0000
         when ${cdpaisorigem} = 'US' THEN  97.0000
         when ${cdpaisorigem} = 'BR' THEN 55.0000
         when ${cdpaisorigem} = 'DE' THEN 09.0000
         when ${cdpaisorigem} = 'FR' THEN 02.0000
         when ${cdpaisorigem} = 'AR' THEN 64.0000
         when ${cdpaisorigem} = 'KR' THEN 127.3000
         when ${cdpaisorigem} = 'JP' THEN 138.0000
         when ${cdpaisorigem} = 'IT' THEN 12.5000
         when ${cdpaisorigem} = 'MX' THEN 102.3667
         when ${cdpaisorigem} = 'IN' THEN 77.0000
         else 0
         end;;
  }

  dimension: store_location {
    type: location
    sql_latitude: ${latitude} ;;
    sql_longitude: ${longitude} ;;
  }

  measure: cif_sum {
    type: sum
    sql: ${val_vmld_us_subitem_num};;
  }

  measure: fob_sum {
    type: sum
    sql: ${val_vmle_us_subitem_num};;
  }

  measure: qtde_comerc_sum {
    type: sum
    sql: ${qtd_comerc_num};;
  }

  measure: val_fob_un_us_num_avg {
    type: average
    sql: ${val_fob_un_us_num};;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
