view: tracking_air {
  derived_table: {
    sql: SELECT * FROM tracking.air_tracking_gold
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: pas_de_origem {
    type: string
    label: "País de origem"
    sql: ${TABLE}."País de origem" ;;
  }

  dimension: aeroporto_de_origem {
    type: string
    label: "Aeroporto de Origem"
    sql: ${TABLE}."Aeroporto de Origem" ;;
  }

  dimension: aeroporto_de_destino {
    type: string
    label: "Aeroporto de Destino"
    sql: ${TABLE}."Aeroporto de Destino" ;;
  }

  dimension: consignatrio {
    type: string
    sql: ${TABLE}."Consignatário" ;;
  }

  dimension: cnpj_do_consignatrio {
    type: string
    label: "CNPJ do Consignatário"
    sql: ${TABLE}."CNPJ do Consignatário" ;;
  }

  dimension: agente_de_carga {
    type: string
    label: "Agente de Carga"
    sql: ${TABLE}."Agente de Carga" ;;
  }

  dimension: cnpj_agente_de_carga {
    type: string
    label: "CNPJ Agente de Carga"
    sql: ${TABLE}."CNPJ Agente de Carga" ;;
  }

  dimension: tipo_de_frete {
    type: string
    label: "Tipo de Frete"
    sql: ${TABLE}."Tipo de Frete" ;;
  }

  dimension: embalagem {
    type: string
    sql: ${TABLE}.Embalagem ;;
  }

  dimension: companhia_area {
    type: string
    label: "Companhia Aérea"
    sql: ${TABLE}."Companhia Aérea" ;;
  }

  dimension: canal {
    type: string
    sql: case
      when ${TABLE}.Canal = '-' then 'Ag. Parametrização'
      when ${TABLE}.service = '001' then 'Verde'
      when ${TABLE}.service = '002' then 'Amarelo'
      when ${TABLE}.service = '000' then 'Cinza'
      when ${TABLE}.service = '003' then 'Vermelho'
      when ${TABLE}.service = 'Cinz' then 'Cinza'
      else 'ERRO'
    end ;;
  }

  dimension: di {
    type: number
    sql: ${TABLE}.DI ;;
  }

  dimension_group: data_chegada {
    type: time
    label: "Data Chegada"
    sql: ${TABLE}."Data Chegada" ;;
  }

  dimension_group: data_embarque {
    type: time
    label: "Data Embarque"
    sql: ${TABLE}."Data Embarque" ;;
  }

  dimension: moeda {
    type: string
    sql: ${TABLE}.Moeda ;;
  }

  dimension: cnpj_consignee {
    type: string
    sql: ${TABLE}.cnpj_consignee ;;
  }

  dimension_group: deleted_consignee {
    type: time
    sql: ${TABLE}.deleted_consignee ;;
  }

  dimension: id_radar {
    type: number
    sql: ${TABLE}.id_radar ;;
  }

  dimension: id_radar_certificate {
    type: number
    sql: ${TABLE}.id_radar_certificate ;;
  }

  dimension: id_radar_consignee {
    type: number
    sql: ${TABLE}.id_radar_consignee ;;
  }

  dimension_group: deleted_radar {
    type: time
    sql: ${TABLE}.deleted_radar ;;
  }

  dimension_group: deleted_certificate {
    type: time
    sql: ${TABLE}.deleted_certificate ;;
  }

  dimension: certificate_valid {
    type: date
    sql: ${TABLE}.certificate_valid ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: cpf {
    type: string
    sql: ${TABLE}.cpf ;;
  }

  dimension: id_customer {
    type: number
    sql: ${TABLE}.id_customer ;;
  }

  dimension: name_customer {
    type: string
    sql: ${TABLE}.name_customer ;;
  }

  dimension: cnpj_customer {
    type: string
    sql: ${TABLE}.cnpj_customer ;;
  }

  dimension_group: deleted_customer {
    type: time
    sql: ${TABLE}.deleted_customer ;;
  }

  dimension: id_di {
    type: number
    sql: ${TABLE}.id_di ;;
  }

  set: detail {
    fields: [
      pas_de_origem,
      aeroporto_de_origem,
      aeroporto_de_destino,
      consignatrio,
      cnpj_do_consignatrio,
      agente_de_carga,
      cnpj_agente_de_carga,
      tipo_de_frete,
      embalagem,
      companhia_area,
      canal,
      di,
      data_chegada_time,
      data_embarque_time,
      moeda,
      cnpj_consignee,
      deleted_consignee_time,
      id_radar,
      id_radar_certificate,
      id_radar_consignee,
      deleted_radar_time,
      deleted_certificate_time,
      certificate_valid,
      name,
      cpf,
      id_customer,
      name_customer,
      cnpj_customer,
      deleted_customer_time
    ]
  }
}
