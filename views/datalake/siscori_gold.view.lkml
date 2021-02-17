view: siscori_gold {
  derived_table: {
    sql: SELECT * FROM siscori.siscori_gold
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

  dimension: anomes {
    type: number
    sql: ${TABLE}.anomes ;;
  }

  dimension: anomes_embq {
    type: number
    sql: ${TABLE}.anomes_embq ;;
  }

  dimension: qtd_estat {
    type: number
    sql: ${TABLE}.qtd_estat ;;
  }

  dimension: qtd_comerc {
    type: number
    sql: ${TABLE}.qtd_comerc ;;
  }

  dimension: val_peso_liq {
    type: number
    sql: ${TABLE}.val_peso_liq ;;
  }

  dimension: val_fob_us {
    type: number
    sql: ${TABLE}.val_fob_us ;;
  }

  dimension: id_anomes {
    type: number
    sql: ${TABLE}.id_anomes ;;
  }

  dimension: id_anomes_embq {
    type: number
    sql: ${TABLE}.id_anomes_embq ;;
  }

  dimension: id_cdncm {
    type: number
    sql: ${TABLE}.id_cdncm ;;
  }

  dimension: id_incoterm {
    type: number
    sql: ${TABLE}.id_incoterm ;;
  }

  dimension: id_nat_inf {
    type: number
    sql: ${TABLE}.id_nat_inf ;;
  }

  dimension: id_sit_desp {
    type: number
    sql: ${TABLE}.id_sit_desp ;;
  }

  dimension: id_unid_comerc {
    type: number
    sql: ${TABLE}.id_unid_comerc ;;
  }

  dimension: id_unid_estat {
    type: number
    sql: ${TABLE}.id_unid_estat ;;
  }

  dimension: id_unid_desembaraco {
    type: number
    sql: ${TABLE}.id_unid_desembaraco ;;
  }

  dimension: id_unid_embq {
    type: number
    sql: ${TABLE}.id_unid_embq ;;
  }

  dimension: id_pais_destino {
    type: number
    sql: ${TABLE}.id_pais_destino ;;
  }

  dimension: cdpaisdestino {
    type: string
    sql: ${TABLE}.cdpaisdestino ;;
  }

  dimension: num_ord_cmpl {
    type: number
    sql: ${TABLE}.num_ord_cmpl ;;
  }

  dimension: num_ord {
    type: number
    sql: ${TABLE}.num_ord ;;
  }

  dimension: num_item {
    type: number
    sql: ${TABLE}.num_item ;;
  }

  dimension: num_subitem {
    type: number
    sql: ${TABLE}.num_subitem ;;
  }

  dimension: desc_prodt {
    type: string
    sql: ${TABLE}.desc_prodt ;;
  }

  dimension: id0 {
    type: number
    sql: ${TABLE}.id0 ;;
  }

  dimension: version {
    type: number
    sql: ${TABLE}.version ;;
  }

  dimension_group: date_from {
    type: time
    sql: ${TABLE}.date_from ;;
  }

  dimension_group: date_to {
    type: time
    sql: ${TABLE}.date_to ;;
  }

  dimension: incoterm {
    type: string
    sql: ${TABLE}.incoterm ;;
  }

  dimension: id1 {
    type: number
    sql: ${TABLE}.id1 ;;
  }

  dimension: version0 {
    type: number
    sql: ${TABLE}.version0 ;;
  }

  dimension_group: date_from0 {
    type: time
    sql: ${TABLE}.date_from0 ;;
  }

  dimension_group: date_to0 {
    type: time
    sql: ${TABLE}.date_to0 ;;
  }

  dimension: tp_nat_inf {
    type: string
    sql: ${TABLE}.tp_nat_inf ;;
  }

  dimension: id2 {
    type: number
    sql: ${TABLE}.id2 ;;
  }

  dimension: version1 {
    type: number
    sql: ${TABLE}.version1 ;;
  }

  dimension_group: date_from1 {
    type: time
    sql: ${TABLE}.date_from1 ;;
  }

  dimension_group: date_to1 {
    type: time
    sql: ${TABLE}.date_to1 ;;
  }

  dimension: cdncm_compl {
    type: number
    sql: ${TABLE}.cdncm_compl ;;
  }

  dimension: ncm_desc {
    type: string
    sql: ${TABLE}.ncm_desc ;;
  }

  dimension: cdncm {
    type: number
    sql: ${TABLE}.cdncm ;;
  }

  dimension: nome_ncm_pt {
    type: string
    sql: ${TABLE}.nome_ncm_pt ;;
  }

  dimension: nome_ncm_es {
    type: string
    sql: ${TABLE}.nome_ncm_es ;;
  }

  dimension: nome_ncm_en {
    type: string
    sql: ${TABLE}.nome_ncm_en ;;
  }

  dimension: id3 {
    type: number
    sql: ${TABLE}.id3 ;;
  }

  dimension: version2 {
    type: number
    sql: ${TABLE}.version2 ;;
  }

  dimension_group: date_from2 {
    type: time
    sql: ${TABLE}.date_from2 ;;
  }

  dimension_group: date_to2 {
    type: time
    sql: ${TABLE}.date_to2 ;;
  }

  dimension: tp_sit_desp {
    type: string
    sql: ${TABLE}.tp_sit_desp ;;
  }

  dimension: id4 {
    type: number
    sql: ${TABLE}.id4 ;;
  }

  dimension: version3 {
    type: number
    sql: ${TABLE}.version3 ;;
  }

  dimension_group: date_from3 {
    type: time
    sql: ${TABLE}.date_from3 ;;
  }

  dimension_group: date_to3 {
    type: time
    sql: ${TABLE}.date_to3 ;;
  }

  dimension: tp_unid_comerc {
    type: string
    sql: ${TABLE}.tp_unid_comerc ;;
  }

  dimension: tp_unid_comerc_norm {
    type: string
    sql: ${TABLE}.tp_unid_comerc_norm ;;
  }

  dimension: id5 {
    type: number
    sql: ${TABLE}.id5 ;;
  }

  dimension: version4 {
    type: number
    sql: ${TABLE}.version4 ;;
  }

  dimension_group: date_from4 {
    type: time
    sql: ${TABLE}.date_from4 ;;
  }

  dimension_group: date_to4 {
    type: time
    sql: ${TABLE}.date_to4 ;;
  }

  dimension: cod_alfandega {
    type: number
    sql: ${TABLE}.cod_alfandega ;;
  }

  dimension: nome_unid_fiscal {
    type: string
    sql: ${TABLE}.nome_unid_fiscal ;;
  }

  dimension: via_princ {
    type: number
    sql: ${TABLE}.via_princ ;;
  }

  dimension: cod_porto {
    type: string
    sql: ${TABLE}.cod_porto ;;
  }

  dimension: cod_aero {
    type: string
    sql: ${TABLE}.cod_aero ;;
  }

  dimension: desc_unid_fiscal {
    type: string
    sql: ${TABLE}.desc_unid_fiscal ;;
  }

  dimension: cidade {
    type: string
    sql: ${TABLE}.cidade ;;
  }

  dimension: uf {
    type: string
    sql: ${TABLE}.uf ;;
  }

  dimension: id6 {
    type: number
    sql: ${TABLE}.id6 ;;
  }

  dimension: version5 {
    type: number
    sql: ${TABLE}.version5 ;;
  }

  dimension_group: date_from5 {
    type: time
    sql: ${TABLE}.date_from5 ;;
  }

  dimension_group: date_to5 {
    type: time
    sql: ${TABLE}.date_to5 ;;
  }

  dimension: tp_unid_estat {
    type: number
    sql: ${TABLE}.tp_unid_estat ;;
  }

  dimension: desc_unid_med {
    type: string
    sql: ${TABLE}.desc_unid_med ;;
  }

  dimension: desc_unid_med_en {
    type: string
    sql: ${TABLE}.desc_unid_med_en ;;
  }

  set: detail {
    fields: [
      id,
      anomes,
      anomes_embq,
      qtd_estat,
      qtd_comerc,
      val_peso_liq,
      val_fob_us,
      id_anomes,
      id_anomes_embq,
      id_cdncm,
      id_incoterm,
      id_nat_inf,
      id_sit_desp,
      id_unid_comerc,
      id_unid_estat,
      id_unid_desembaraco,
      id_unid_embq,
      id_pais_destino,
      cdpaisdestino,
      num_ord_cmpl,
      num_ord,
      num_item,
      num_subitem,
      desc_prodt,
      id0,
      version,
      date_from_time,
      date_to_time,
      incoterm,
      id1,
      version0,
      date_from0_time,
      date_to0_time,
      tp_nat_inf,
      id2,
      version1,
      date_from1_time,
      date_to1_time,
      cdncm_compl,
      ncm_desc,
      cdncm,
      nome_ncm_pt,
      nome_ncm_es,
      nome_ncm_en,
      id3,
      version2,
      date_from2_time,
      date_to2_time,
      tp_sit_desp,
      id4,
      version3,
      date_from3_time,
      date_to3_time,
      tp_unid_comerc,
      tp_unid_comerc_norm,
      id5,
      version4,
      date_from4_time,
      date_to4_time,
      cod_alfandega,
      nome_unid_fiscal,
      via_princ,
      cod_porto,
      cod_aero,
      desc_unid_fiscal,
      cidade,
      uf,
      id6,
      version5,
      date_from5_time,
      date_to5_time,
      tp_unid_estat,
      desc_unid_med,
      desc_unid_med_en
    ]
  }

##===============================================================================
##informações adicionadas


  dimension: anomes_Mes {
    type: string
    sql: case
             when ${TABLE}.anomes = 202001 then 'Janeiro/2020'
             when ${TABLE}.anomes = 202002 then 'Fevereiro/2020'
             when ${TABLE}.anomes = 202003 then 'Março/2020'
             when ${TABLE}.anomes = 202004 then 'Abril/2020'
             when ${TABLE}.anomes = 202005 then 'Maio/2020'
             when ${TABLE}.anomes = 202006 then 'Junho/2020'
             when ${TABLE}.anomes = 202007 then 'Julho/2020'
             when ${TABLE}.anomes = 202008 then 'Agosto/2020'
             when ${TABLE}.anomes = 202009 then 'Setembro/2020'
             when ${TABLE}.anomes = 202010 then 'Outubro/2020'
             when ${TABLE}.anomes = 202011 then 'Novembro/2020'
             when ${TABLE}.anomes = 202012 then 'Dezembro/2020'
             when ${TABLE}.anomes = 202101 then 'Janeiro/2021'
             when ${TABLE}.anomes = 202102 then 'Fevereiro/2021'
             when ${TABLE}.anomes = 202103 then 'Março/2021'
             when ${TABLE}.anomes = 202104 then 'Abril/2021'
             when ${TABLE}.anomes = 202105 then 'Maio/2021'
             when ${TABLE}.anomes = 202106 then 'Junho/2021'
             when ${TABLE}.anomes = 202107 then 'Julho/2021'
             when ${TABLE}.anomes = 202108 then 'Agosto/2021'
             when ${TABLE}.anomes = 202109 then 'Setembro/2021'
             when ${TABLE}.anomes = 202110 then 'Outubro/2021'
             when ${TABLE}.anomes = 202111 then 'Novembro/2021'
             when ${TABLE}.anomes = 202112 then 'Dezembro/2021'
             else 'ERRO'
         end ;;
  }

  dimension: anomes_mes_conversao {
    type: string
    sql: to_date(concat(${TABLE}.anomes,'01'), 'YYYYMMDD');;
  }

  dimension_group: mes {
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
    sql: to_date(concat(${TABLE}.anomes,'01'), 'YYYYMMDD');;
  }

  measure: qtd_comerc_total {
    type: sum
    sql: ${TABLE}."qtd_comerc" ;;
  }

  measure: qtd_estat_total {
    type: sum
    sql: ${TABLE}."qtd_estat" ;;
  }

  measure: val_fob_us_total {
    type: sum
    sql: ${TABLE}."val_fob_us" ;;
  }

  measure: val_peso_liq_total {
    type: sum
    sql: ${TABLE}."val_peso_liq" ;;
  }

}
