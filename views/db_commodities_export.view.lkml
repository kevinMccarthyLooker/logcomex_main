view: db_commodities_export {
  derived_table: {
    sql: select * from public.db_commodities_export ;;
    indexes: ["id"]
    sql_trigger_value: select current_date ;;
  }

  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: anomes {
    type: number
    sql: ${TABLE}."anomes" ;;
  }

  dimension: anomes_embq {
    type: number
    sql: ${TABLE}."anomes_embq" ;;
  }

  dimension: cdpaisdestino {
    type: string
    sql: ${TABLE}."cdpaisdestino" ;;
  }

  dimension: desc_prodt {
    type: string
    sql: ${TABLE}."desc_prodt" ;;
  }

  dimension: id_anomes {
    type: number
    sql: ${TABLE}."id_anomes" ;;
  }

  dimension: id_anomes_embq {
    type: number
    sql: ${TABLE}."id_anomes_embq" ;;
  }

  dimension: id_cdncm {
    type: number
    sql: ${TABLE}."id_cdncm" ;;
  }

  dimension: id_incoterm {
    type: number
    sql: ${TABLE}."id_incoterm" ;;
  }

  dimension: id_nat_inf {
    type: number
    sql: ${TABLE}."id_nat_inf" ;;
  }

  dimension: id_pais_destino {
    type: number
    sql: ${TABLE}."id_pais_destino" ;;
  }

  dimension: id_sit_desp {
    type: number
    sql: ${TABLE}."id_sit_desp" ;;
  }

  dimension: id_unid_comerc {
    type: number
    sql: ${TABLE}."id_unid_comerc" ;;
  }

  dimension: id_unid_desembaraco {
    type: number
    sql: ${TABLE}."id_unid_desembaraco" ;;
  }

  dimension: id_unid_embq {
    type: number
    sql: ${TABLE}."id_unid_embq" ;;
  }

  dimension: id_unid_estat {
    type: number
    sql: ${TABLE}."id_unid_estat" ;;
  }

  dimension: num_item {
    type: number
    sql: ${TABLE}."num_item" ;;
  }

  dimension: num_ord {
    type: number
    sql: ${TABLE}."num_ord" ;;
  }

  dimension: num_ord_cmpl {
    type: number
    sql: ${TABLE}."num_ord_cmpl" ;;
  }

  dimension: num_subitem {
    type: number
    sql: ${TABLE}."num_subitem" ;;
  }

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
             when ${TABLE}.anomes = 202012 then 'Janeiro/2021'
             when ${TABLE}.anomes = 202101 then 'Fevereiro/2021'
             when ${TABLE}.anomes = 202102 then 'Março/2021'
             when ${TABLE}.anomes = 202103 then 'Abril/2021'
             when ${TABLE}.anomes = 202104 then 'Maio/2021'
             when ${TABLE}.anomes = 202105 then 'Junho/2021'
             when ${TABLE}.anomes = 202106 then 'Julho/2021'
             when ${TABLE}.anomes = 202107 then 'Agosto/2021'
             when ${TABLE}.anomes = 202108 then 'Setembro/2021'
             when ${TABLE}.anomes = 202109 then 'Outubro/2021'
             when ${TABLE}.anomes = 202110 then 'Setembro/2021'
             when ${TABLE}.anomes = 202111 then 'Novembro/2021'
             when ${TABLE}.anomes = 202112 then 'Dezembro/2021'
             else 'ERRO'
         end ;;
  }

  dimension_group: data_embarque {
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
    sql: ${TABLE}.anomes_Mes ;;
  }

  measure: qtd_comerc {
    type: sum
    sql: ${TABLE}."qtd_comerc" ;;
  }

  measure: qtd_estat {
    type: sum
    sql: ${TABLE}."qtd_estat" ;;
  }

  measure: val_fob_us {
    type: sum
    sql: ${TABLE}."val_fob_us" ;;
  }

  measure: val_peso_liq {
    type: sum
    sql: ${TABLE}."val_peso_liq" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }

  measure: mes {
    type: date_month
    sql: ${TABLE}."anomes_Mes" ;;
  }

  measure: hscode {
    type: number
    sql: ${TABLE}."Cdncm_compl" ;;
  }

}
