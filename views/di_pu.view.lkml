view: di_pu {
  sql_table_name: public.di_pu ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: agencia {
    type: string
    sql: ${TABLE}."agencia" ;;
  }

  dimension: armazem {
    type: string
    sql: ${TABLE}."armazem" ;;
  }

  dimension: awb {
    type: string
    sql: ${TABLE}."awb" ;;
  }

  dimension: banco {
    type: string
    sql: ${TABLE}."banco" ;;
  }

  dimension: bandeira {
    type: string
    sql: ${TABLE}."bandeira" ;;
  }

  dimension: canal {
    type: string
    sql: ${TABLE}."canal" ;;
  }

  dimension: caracterizacao_operacao {
    type: string
    sql: ${TABLE}."caracterizacao_operacao" ;;
  }

  dimension: cnpj_notify {
    type: string
    sql: ${TABLE}."cnpj_notify" ;;
  }

  dimension: cnpj_notify_int {
    type: number
    sql: ${TABLE}."cnpj_notify_int" ;;
  }

  dimension: collect {
    type: number
    sql: ${TABLE}."collect" ;;
  }

  dimension: conta_corrente {
    type: string
    sql: ${TABLE}."conta_corrente" ;;
  }

  dimension: cpf {
    type: string
    sql: ${TABLE}."cpf" ;;
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

  dimension: crt {
    type: string
    sql: ${TABLE}."crt" ;;
  }

  dimension_group: data_chegada_carga {
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
    sql: ${TABLE}."data_chegada_carga" ;;
  }

  dimension_group: data_desembaraco {
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
    sql: ${TABLE}."data_desembaraco" ;;
  }

  dimension: data_embarque {
    type: string
    sql: ${TABLE}."data_embarque" ;;
  }

  dimension_group: data_hora_registro {
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
    sql: ${TABLE}."data_hora_registro" ;;
  }

  dimension_group: data_pagamento {
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
    sql: ${TABLE}."data_pagamento" ;;
  }

  dimension_group: data_registro_despacho {
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
    sql: ${TABLE}."data_registro_despacho" ;;
  }

  dimension: di_control_pu_id {
    type: number
    sql: ${TABLE}."di_control_pu_id" ;;
  }

  dimension: di_number {
    type: number
    sql: ${TABLE}."di_number" ;;
  }

  dimension: digit {
    type: number
    sql: ${TABLE}."digit" ;;
  }

  dimension: doc_chegada_carga_identificacao {
    type: string
    sql: ${TABLE}."doc_chegada_carga_identificacao" ;;
  }

  dimension: doc_chegada_carga_tipo {
    type: string
    sql: ${TABLE}."doc_chegada_carga_tipo" ;;
  }

  dimension: dossies {
    type: string
    sql: ${TABLE}."dossies" ;;
  }

  dimension: embalagem {
    type: string
    sql: ${TABLE}."embalagem" ;;
  }

  dimension: embarcacao {
    type: string
    sql: ${TABLE}."embarcacao" ;;
  }

  dimension: error_message {
    type: string
    sql: ${TABLE}."error_message" ;;
  }

  dimension: hwb {
    type: string
    sql: ${TABLE}."hwb" ;;
  }

  dimension: importador_cnpj {
    type: string
    sql: ${TABLE}."importador_cnpj" ;;
  }

  dimension: importador_endereco {
    type: string
    sql: ${TABLE}."importador_endereco" ;;
  }

  dimension: importador_nome {
    type: string
    sql: ${TABLE}."importador_nome" ;;
  }

  dimension: informacoes_complementares {
    type: string
    sql: ${TABLE}."informacoes_complementares" ;;
  }

  dimension: local_embarque {
    type: string
    sql: ${TABLE}."local_embarque" ;;
  }

  dimension: mandado_judicial {
    type: string
    sql: ${TABLE}."mandado_judicial" ;;
  }

  dimension: modalidade_despacho {
    type: string
    sql: ${TABLE}."modalidade_despacho" ;;
  }

  dimension: moeda {
    type: string
    sql: ${TABLE}."moeda" ;;
  }

  dimension: moeda_seguro {
    type: string
    sql: ${TABLE}."moeda_seguro" ;;
  }

  dimension: multa {
    type: string
    sql: ${TABLE}."multa" ;;
  }

  dimension: multimodal {
    type: yesno
    sql: ${TABLE}."multimodal" ;;
  }

  dimension: nome_notify {
    type: string
    sql: ${TABLE}."nome_notify" ;;
  }

  dimension_group: notify_processed {
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
    sql: ${TABLE}."notify_processed_at" ;;
  }

  dimension: num_seq {
    type: string
    sql: ${TABLE}."num_seq" ;;
  }

  dimension: numero_bl {
    type: string
    sql: ${TABLE}."numero_bl" ;;
  }

  dimension: numero_ce {
    type: number
    sql: ${TABLE}."numero_ce" ;;
  }

  dimension: operacao_fundap {
    type: string
    sql: ${TABLE}."operacao_fundap" ;;
  }

  dimension: peso_bruto {
    type: number
    sql: ${TABLE}."peso_bruto" ;;
  }

  dimension: peso_liquido {
    type: number
    sql: ${TABLE}."peso_liquido" ;;
  }

  dimension: prepaid {
    type: number
    value_format_name: id
    sql: ${TABLE}."prepaid" ;;
  }

  dimension: procedencia_carga {
    type: string
    sql: ${TABLE}."procedencia_carga" ;;
  }

  dimension: qtde_volume {
    type: number
    sql: ${TABLE}."qtde_volume" ;;
  }

  dimension: recinto_aduaneiro {
    type: string
    sql: ${TABLE}."recinto_aduaneiro" ;;
  }

  dimension: reponsavel {
    type: string
    sql: ${TABLE}."reponsavel" ;;
  }

  dimension: setor {
    type: string
    sql: ${TABLE}."setor" ;;
  }

  dimension: terr_nacional {
    type: number
    sql: ${TABLE}."terr_nacional" ;;
  }

  dimension: tipo_declaracao {
    type: string
    sql: ${TABLE}."tipo_declaracao" ;;
  }

  dimension: tipo_recolhimento {
    type: string
    sql: ${TABLE}."tipo_recolhimento" ;;
  }

  measure: total_dolares {
    type: sum
    sql: ${TABLE}."total_dolares" ;;
  }

  measure: total_dolares_loc_desc {
    type: sum
    sql: ${TABLE}."total_dolares_loc_desc" ;;
  }

  measure: total_dolares_loc_emb {
    type: sum
    sql: ${TABLE}."total_dolares_loc_emb" ;;
  }

  measure: total_dolares_seguro {
    type: sum
    sql: ${TABLE}."total_dolares_seguro" ;;
  }

  measure: total_moeda {
    type: sum
    sql: ${TABLE}."total_moeda" ;;
  }

  measure: total_moeda_seguro {
    type: sum
    sql: ${TABLE}."total_moeda_seguro" ;;
  }

  measure: total_reais {
    type: sum
    sql: ${TABLE}."total_reais" ;;
  }

  measure: total_reais_loc_desc {
    type: sum
    sql: ${TABLE}."total_reais_loc_desc" ;;
  }

  measure: total_reais_loc_emb {
    type: number
    sql: ${TABLE}."total_reais_loc_emb" ;;
  }

  measure: total_reais_seguro {
    type: sum
    sql: ${TABLE}."total_reais_seguro" ;;
  }

  measure: transportador {
    type: sum
    sql: ${TABLE}."transportador" ;;
  }

  dimension: uf {
    type: string
    sql: ${TABLE}."uf" ;;
  }

  dimension_group: updated {
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
    sql: ${TABLE}."updated_at" ;;
  }

  dimension_group: updated_maritimo_notify {
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
    sql: ${TABLE}."updated_maritimo_notify_at" ;;
  }

  dimension: urf_despacho {
    type: string
    sql: ${TABLE}."urf_despacho" ;;
  }

  dimension: urf_entrada_carga {
    type: string
    sql: ${TABLE}."urf_entrada_carga" ;;
  }

  dimension: utilizacao {
    type: string
    sql: ${TABLE}."utilizacao" ;;
  }

  measure: valor {
    type: sum
    sql: ${TABLE}."valor" ;;
  }

  dimension: via_transporte {
    type: string
    sql: ${TABLE}."via_transporte" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }

}
