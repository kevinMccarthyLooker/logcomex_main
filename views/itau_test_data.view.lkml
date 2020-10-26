view: itau_test_data {
  sql_table_name: `looker-gsheets-test.looker_serch.itau_test_data2`
    ;;

  dimension: a {
    type: number
    sql: ${TABLE}.a ;;
  }

  dimension: anomes {
    type: string
    sql: ${TABLE}.anomes ;;
  }

  dimension: cdncm {
    type: number
    sql: ${TABLE}.cdncm ;;
  }

  dimension: cdncm_compl {
    type: number
    sql: ${TABLE}.cdncm_compl ;;
  }

  dimension: cidade_import {
    type: string
    sql: ${TABLE}.cidade_import ;;
  }

  dimension: cod_cnae_import {
    type: string
    sql: ${TABLE}.cod_cnae_import ;;
  }

  dimension: cod_cnpj_import {
    type: number
    sql: ${TABLE}.cod_cnpj_import ;;
  }

  dimension: desc_prodt {
    type: string
    sql: ${TABLE}.desc_prodt ;;
  }

  dimension: desc_unid_estat {
    type: string
    sql: ${TABLE}.desc_unid_estat ;;
  }

  dimension: exportador_nome {
    type: string
    sql: ${TABLE}.exportador_nome ;;
  }

  dimension: importador_cnpj {
    type: string
    sql: ${TABLE}.importador_cnpj ;;
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

  dimension: nome_unid_desembaraco {
    type: string
    sql: ${TABLE}.nome_unid_desembaraco ;;
  }

  measure: qtd_comerc {
    type: sum
    sql: ${TABLE}.qtd_comerc ;;
  }

  measure: qtd_estat {
    type: sum
    sql: ${TABLE}.qtd_estat ;;
  }

  dimension: tp_unid_comerc {
    type: string
    sql: ${TABLE}.tp_unid_comerc ;;
  }

  measure: val_cif_un_us {
    type: sum
    sql: ${TABLE}.val_cif_un_us ;;
  }

  measure: val_fob_un_us {
    type: sum
    sql: ${TABLE}.val_fob_un_us ;;
  }

  dimension: val_fob_us_subitem {
    type: number
    sql: ${TABLE}.val_fob_us_subitem ;;
  }

  dimension: val_frete_un_us {
    type: number
    sql: ${TABLE}.val_frete_un_us ;;
  }

  dimension: val_frete_us {
    type: number
    sql: ${TABLE}.val_frete_us ;;
  }

  dimension: val_frete_us_subitem {
    type: number
    sql: ${TABLE}.val_frete_us_subitem ;;
  }

  dimension: val_peso_liq {
    type: number
    sql: ${TABLE}.val_peso_liq ;;
  }

  dimension: val_peso_liq_subitem {
    type: number
    sql: ${TABLE}.val_peso_liq_subitem ;;
  }

  dimension: val_seg_un_us {
    type: number
    sql: ${TABLE}.val_seg_un_us ;;
  }

  dimension: val_seg_us {
    type: number
    sql: ${TABLE}.val_seg_us ;;
  }

  dimension: val_seg_us_subitem {
    type: number
    sql: ${TABLE}.val_seg_us_subitem ;;
  }

  dimension: val_tot_unid_prod_us {
    type: number
    sql: ${TABLE}.val_tot_unid_prod_us ;;
  }

  dimension: val_unid_prod_us {
    type: number
    sql: ${TABLE}.val_unid_prod_us ;;
  }

  dimension: val_vmld_us_subitem {
    type: number
    sql: ${TABLE}.val_vmld_us_subitem ;;
  }

  dimension: val_vmle_us {
    type: number
    sql: ${TABLE}.val_vmle_us ;;
  }

  dimension: val_vmle_us_subitem {
    type: number
    sql: ${TABLE}.val_vmle_us_subitem ;;
  }

  dimension: via_transp {
    type: string
    sql: ${TABLE}.via_transp ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: val_cif_un_us_median {
    type: median
    sql: ${TABLE}.val_cif_un_us ;;
  }

  measure: val_cif_un_us_q10 {
    type: percentile
    percentile:  10
    sql: ${TABLE}.val_cif_un_us ;;
  }

  measure: val_cif_un_us_q90 {
    type: percentile
    percentile:  90
    sql: ${TABLE}.val_cif_un_us ;;
  }

  measure: val_cif_un_us_q25 {
    type: percentile
    percentile: 25
    sql: ${TABLE}.val_cif_un_us ;;
  }

  measure: val_cif_un_us_q75 {
    type: percentile
    percentile: 75
    sql: ${TABLE}.val_cif_un_us ;;
  }


}
