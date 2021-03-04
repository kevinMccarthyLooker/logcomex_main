view: big_data_impo_air_gold {
  derived_table: {
    sql: SELECT * FROM big_data_impo_air.big_data_impo_air_gold
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

  dimension: awb {
    type: string
    sql: ${TABLE}.awb ;;
  }

  dimension: hwb {
    type: string
    sql: ${TABLE}.hwb ;;
  }

  dimension: cnpj_consignatario {
    type: string
    sql: ${TABLE}.cnpj_consignatario ;;
  }

  dimension: pais_de_origem {
    type: string
    sql: ${TABLE}.pais_de_origem ;;
  }

  dimension: aeroporto_origem {
    type: string
    sql: ${TABLE}.aeroporto_origem ;;
  }

  dimension: aeroporto_destino {
    type: string
    sql: ${TABLE}.aeroporto_destino ;;
  }

  dimension: data_operacao {
    type: date
    sql: ${TABLE}.data_operacao ;;
  }

  dimension_group: data_operacao {
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
    sql: ${TABLE}.data_operacao ;;
  }

  dimension: data_hora_chegada {
    type: string
    sql: ${TABLE}.data_hora_chegada ;;
  }

  dimension: transit_time {
    type: number
    sql: ${TABLE}.transit_time ;;
  }

  dimension: aereo_cidade {
    type: string
    sql: ${TABLE}.aereoCidade ;;
  }

  dimension: aereo_uf {
    type: string
    sql: ${TABLE}.aereoUf ;;
  }

  dimension: cod_moeda_frete {
    type: string
    sql: ${TABLE}.cod_moeda_frete ;;
  }

  dimension: modalidade {
    type: string
    sql: ${TABLE}.modalidade ;;
  }

  dimension: qtde_total_volume {
    type: number
    sql: ${TABLE}.qtde_total_volume ;;
  }

  dimension: valor_frete {
    type: number
    sql: ${TABLE}.valor_frete ;;
  }

  dimension: trade_lane {
    type: string
    sql: ${TABLE}.trade_lane ;;
  }

  dimension: aeroporto_chegada {
    type: string
    sql: ${TABLE}.aeroporto_chegada ;;
  }

  dimension: aeroporto_embarque {
    type: string
    sql: ${TABLE}.aeroporto_embarque ;;
  }

  dimension: peso_total {
    type: number
    sql: ${TABLE}.peso_total ;;
  }

  set: detail {
    fields: [
      id,
      awb,
      hwb,
      cnpj_consignatario,
      pais_de_origem,
      aeroporto_origem,
      aeroporto_destino,
      data_operacao,
      data_hora_chegada,
      transit_time,
      aereo_cidade,
      aereo_uf,
      cod_moeda_frete,
      modalidade,
      qtde_total_volume,
      valor_frete,
      trade_lane,
      aeroporto_chegada,
      aeroporto_embarque,
      peso_total
    ]
  }

  ##===================++++++++Campos adicionados===========================

  measure: total_frete {
    type: sum
    value_format: "$#.00;($#.00)"
    sql: ${TABLE}."valor_frete" ;;
  }

  measure: media_frete{
    type: average
    value_format: "$#.00;($#.00)"
    sql: ${TABLE}."valor_frete" ;;
  }
}
