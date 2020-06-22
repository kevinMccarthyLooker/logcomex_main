view: aereo_awb_details {
  sql_table_name: public.aereo_awb_details ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: aeroporto_chegada {
    type: string
    sql: ${TABLE}."aeroporto_chegada" ;;
  }

  dimension: aeroporto_destino {
    type: string
    sql: ${TABLE}."aeroporto_destino" ;;
  }

  dimension: aeroporto_destino_house {
    type: string
    sql: ${TABLE}."aeroporto_destino_house" ;;
  }

  dimension: aeroporto_embarque {
    type: string
    sql: ${TABLE}."aeroporto_embarque" ;;
  }

  dimension: aeroporto_origem {
    type: string
    sql: ${TABLE}."aeroporto_origem" ;;
  }

  dimension: aeroporto_origem_house {
    type: string
    sql: ${TABLE}."aeroporto_origem_house" ;;
  }

  dimension: agente_de_carga_id {
    type: number
    sql: ${TABLE}."agente_de_carga_id" ;;
  }

  dimension: armazem_destino {
    type: string
    sql: ${TABLE}."armazem_destino" ;;
  }

  dimension: cdncm_compl {
    type: string
    sql: ${TABLE}."cdncm_compl" ;;
  }

  dimension: cod_moeda_frete {
    type: string
    sql: ${TABLE}."cod_moeda_frete" ;;
  }

  dimension: consignatario {
    type: string
    sql: ${TABLE}."consignatario" ;;
  }

  dimension: consignatario_id {
    type: number
    sql: ${TABLE}."consignatario_id" ;;
  }

  dimension_group: created {
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
    sql: ${TABLE}."created_at" ;;
  }

  dimension_group: data_hawb {
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
    sql: ${TABLE}."data_hawb" ;;
  }

  dimension: embarque {
    type: string
    sql: ${TABLE}."embarque" ;;
  }

  dimension: id_awb_list {
    type: number
    sql: ${TABLE}."id_awb_list" ;;
  }

  dimension: id_recinto_aduaneiro {
    type: number
    sql: ${TABLE}."id_recinto_aduaneiro" ;;
  }

  dimension: modalidade {
    type: string
    sql: ${TABLE}."modalidade" ;;
  }

  dimension: obs {
    type: string
    sql: ${TABLE}."obs" ;;
  }

  dimension: peso_total {
    type: number
    sql: ${TABLE}."peso_total" ;;
  }

  dimension: qtde_total_volume {
    type: number
    sql: ${TABLE}."qtde_total_volume" ;;
  }

  dimension: valor_frete {
    type: number
    sql: ${TABLE}."valor_frete" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
