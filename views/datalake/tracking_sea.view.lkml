view: tracking_sea {
  derived_table: {
    sql: SELECT * FROM tracking.mar_tracking_gold
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: pas_de_origem {
    type: string
    label: "País de Origem"
    sql: ${TABLE}."País de Origem" ;;
  }

  dimension: pas_de_destino {
    type: string
    label: "País de Destino"
    sql: ${TABLE}."País de Destino" ;;
  }

  dimension: porto_de_origem {
    type: string
    label: "Porto de Origem"
    sql: ${TABLE}."Porto de Origem" ;;
  }

  dimension: porto_de_destino {
    type: string
    label: "Porto de Destino"
    sql: ${TABLE}."Porto de Destino" ;;
  }

  dimension: porto_carregamento {
    type: string
    label: "Porto Carregamento"
    sql: ${TABLE}."Porto Carregamento" ;;
  }

  dimension: porto_de_descarregamento {
    type: string
    label: "Porto de Descarregamento"
    sql: ${TABLE}."Porto de Descarregamento" ;;
  }

  dimension: consignatrio {
    type: string
    sql: ${TABLE}."Consignatário" ;;
  }

  dimension: cnpj_consignatrio {
    type: string
    label: "CNPJ Consignatário"
    sql: ${TABLE}."CNPJ Consignatário" ;;
  }

  dimension: tipo_de_frete {
    type: string
    label: "Tipo de Frete"
    sql: ${TABLE}."Tipo de Frete" ;;
  }

  dimension: tipo_de_embalagem {
    type: string
    label: "Tipo de Embalagem"
    sql: ${TABLE}."Tipo de Embalagem" ;;
  }

  dimension: armador {
    type: string
    sql: ${TABLE}.Armador ;;
  }

  dimension: canal {
    type: string
    sql: ${TABLE}.Canal ;;
  }

  dimension: di {
    type: number
    sql: ${TABLE}.DI ;;
  }

  dimension: lista_de_containeres {
    type: string
    label: "Lista de Containeres"
    sql: ${TABLE}."Lista de Containeres" ;;
  }

  dimension: tipo_de_container {
    type: string
    label: "Tipo de Container"
    sql: ${TABLE}."Tipo de Container" ;;
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

  set: detail {
    fields: [
      pas_de_origem,
      pas_de_destino,
      porto_de_origem,
      porto_de_destino,
      porto_carregamento,
      porto_de_descarregamento,
      consignatrio,
      cnpj_consignatrio,
      tipo_de_frete,
      tipo_de_embalagem,
      armador,
      canal,
      di,
      lista_de_containeres,
      tipo_de_container,
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
