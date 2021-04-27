view: tracking_sea {
derived_table: {
  sql: SELECT * FROM tracking.mar_tracking_gold
    ;;
}

measure: count {
  type: count
  drill_fields: [detail*]
}

dimension: nmpaisprocedencia {
  type: string
  sql: ${TABLE}.nmpaisprocedencia ;;
}

dimension: nmportoorigem {
  type: string
  sql: ${TABLE}.nmportoorigem ;;
}

dimension: nmportodestino {
  type: string
  sql: ${TABLE}.nmportodestino ;;
}

dimension: nmportocarregamento {
  type: string
  sql: ${TABLE}.nmportocarregamento ;;
}

dimension: nmportodescarregamento {
  type: string
  sql: ${TABLE}.nmportodescarregamento ;;
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

dimension: armador {
  type: string
  sql: ${TABLE}.Armador ;;
}

dimension: numero_di {
  type: string
  sql: ${TABLE}.numero_di ;;
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

dimension: nrcemercante {
  type: number
  sql: ${TABLE}.nrcemercante ;;
}

dimension: conhecimento_ce {
  type: number
  sql: ${TABLE}.conhecimento_ce ;;
}

dimension: ce_number {
  type: number
  sql: ${TABLE}.ce_number ;;
}

dimension: description {
  type: string
  sql: ${TABLE}.description ;;
}

dimension: canal {
  type: string
  sql: case
  when ${TABLE}.canal_id = '' then 'Ag. Parametrização'
  when ${TABLE}.canal_id = 'VERDE' then 'Verde'
  when ${TABLE}.canal_id = 'AMARELO' then 'Amarelo'
  when ${TABLE}.canal_id = 'VERMELHO' then 'Vermelho'
  when ${TABLE}.canal_id = 'CINZA' then 'Cinza'
  else 'ERRO'
  end ;;
}

dimension: dtoperacao {
  type: date
  sql: ${TABLE}.dtoperacao ;;
}

dimension_group: data_registro_di {
  type: time
  sql: ${TABLE}.data_registro_di ;;
}

dimension: data_liberacao {
  type: date
  sql: ${TABLE}.data_liberacao ;;
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
    nmpaisprocedencia,
    nmportoorigem,
    nmportodestino,
    nmportocarregamento,
    nmportodescarregamento,
    consignatrio,
    cnpj_consignatrio,
    tipo_de_frete,
    armador,
    numero_di,
    lista_de_containeres,
    tipo_de_container,
    nrcemercante,
    conhecimento_ce,
    ce_number,
    description,
    canal,
    dtoperacao,
    data_registro_di_time,
    data_liberacao,
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
