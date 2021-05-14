view: tracking_air {
  derived_table: {
    sql: SELECT * FROM tracking.air_tracking_gold
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: id_di {
    type: number
    sql: ${TABLE}.id_di ;;
  }

  dimension: di_number {
    type: number
    sql: ${TABLE}.di_number ;;
  }

  dimension: digit {
    type: number
    sql: ${TABLE}.digit ;;
  }

  dimension: pas_de_origem {
    type: string
    label: "País de Origem"
    sql: ${TABLE}."País de Origem" ;;
  }

  dimension: aeroporto_de_origem {
    type: string
    label: "Aeroporto de Origem"
    sql: ${TABLE}."Aeroporto de Origem" ;;
  }

  dimension: local_embarque {
    type: string
    sql: ${TABLE}.local_embarque ;;
  }

  dimension: aeroporto_de_destino {
    type: string
    label: "Aeroporto de Destino"
    sql: ${TABLE}."Aeroporto de Destino" ;;
  }

  dimension: urf_despacho {
    type: string
    sql: ${TABLE}.urf_despacho ;;
  }

  dimension: urf_entrada_carga {
    type: string
    sql: ${TABLE}.urf_entrada_carga ;;
  }

  dimension: importador_cnpj {
    type: string
    sql: ${TABLE}.importador_cnpj ;;
  }

  dimension: importador_nome {
    type: string
    sql: ${TABLE}.importador_nome ;;
  }

  dimension: agente_de_carga {
    type: string
    label: "Agente de Carga"
    sql: ${TABLE}."Agente de Carga" ;;
  }

  dimension: tipo_de_frete {
    type: string
    label: "Tipo de Frete"
    sql: ${TABLE}."Tipo de Frete" ;;
  }

  dimension: moeda {
    type: string
    sql: ${TABLE}.Moeda ;;
  }

  dimension_group: data_hora_registro {
    type: time
    sql: ${TABLE}.data_hora_registro ;;
  }

  dimension: valor {
    type: string
    sql: ${TABLE}.valor ;;
  }

  dimension_group: data_registro_despacho {
    type: time
    sql: ${TABLE}.data_registro_despacho ;;
  }

  dimension_group: data_desembaraco {
    type: time
    sql: ${TABLE}.data_desembaraco ;;
  }

  dimension: modalidade_despacho {
    type: string
    sql: ${TABLE}.modalidade_despacho ;;
  }

  dimension: tipo_declaracao {
    type: string
    sql: ${TABLE}.tipo_declaracao ;;
  }

  dimension: canal {
    type: string
    sql: case
      when ${TABLE}.Canal = '-' then 'Ag. Parametrização'
      when ${TABLE}.Canal = '001' then 'Verde'
      when ${TABLE}.Canal = '002' then 'Amarelo'
      when ${TABLE}.Canal = '000' then 'Cinza'
      when ${TABLE}.Canal = '003' then 'Vermelho'
      when ${TABLE}.Canal = 'Cinz' then 'Cinza'
      when ${TABLE}.Canal = 'Verde' then 'Verde'
      when ${TABLE}.Canal = 'Amarelo' then 'Amarelo'
      when ${TABLE}.Canal = 'Cinza' then 'Cinza'
      when ${TABLE}.Canal = 'Vermelho' then 'Vermelho'
      else 'ERRO'
    end ;;
  }

  dimension_group: data_chegada_carga {
    type: time
    sql: ${TABLE}.data_chegada_carga ;;
  }

  dimension: peso_bruto {
    type: number
    sql: ${TABLE}.peso_bruto ;;
  }

  dimension: peso_liquido {
    type: number
    sql: ${TABLE}.peso_liquido ;;
  }

  dimension: embalagem {
    type: string
    sql: ${TABLE}.embalagem ;;
  }

  dimension: qtde_volume {
    type: number
    sql: ${TABLE}.qtde_volume ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension_group: archived_at {
    type: time
    sql: ${TABLE}.archived_at ;;
  }

  dimension_group: deleted_at {
    type: time
    sql: ${TABLE}.deleted_at ;;
  }

  dimension_group: created_at {
    type: time
    sql: ${TABLE}.created_at ;;
  }

  dimension: awb {
    type: string
    sql: ${TABLE}.awb ;;
  }

  dimension: hwb {
    type: string
    sql: ${TABLE}.hwb ;;
  }

  set: detail {
    fields: [
      id_di,
      di_number,
      digit,
      pas_de_origem,
      aeroporto_de_origem,
      local_embarque,
      aeroporto_de_destino,
      urf_despacho,
      urf_entrada_carga,
      importador_cnpj,
      importador_nome,
      agente_de_carga,
      tipo_de_frete,
      moeda,
      data_hora_registro_time,
      valor,
      data_registro_despacho_time,
      data_desembaraco_time,
      modalidade_despacho,
      tipo_declaracao,
      canal,
      data_chegada_carga_time,
      peso_bruto,
      peso_liquido,
      embalagem,
      qtde_volume,
      status,
      archived_at_time,
      deleted_at_time,
      created_at_time,
      awb,
      hwb
    ]
  }
}
