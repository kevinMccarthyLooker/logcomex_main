view: service_order_omie {
  sql_table_name: public.service_order_omie ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: billing_contract_id {
    type: number
    sql: ${TABLE}."billing_contract_id" ;;
  }

  dimension_group: omie_so_created {
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

  dimension_group: omie_so_expected {
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
    sql: ${TABLE}."expected_date" ;;
  }

  dimension_group: omie_so_inclusion {
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
    sql: ${TABLE}."inclusion_date" ;;
  }

  dimension: omie_so_month_year {
    type: string
    sql: ${TABLE}."month_year" ;;
  }

  dimension: omie_so_number_installments {
    type: number
    sql: ${TABLE}."number_installments" ;;
  }

  dimension: omie_so_number_service {
    type: string
    sql: ${TABLE}."number_service" ;;
  }

  dimension: omie_so_order_service_id {
    type: number
    sql: ${TABLE}."order_service_id" ;;
  }

  dimension: omie_so_service_description {
    type: string
    sql: ${TABLE}."service_description" ;;
  }

  dimension: omie_so_product_normalized {
    type: string
    sql:  CASE WHEN (${TABLE}."service_description" in ('LEADS  OC.: 18854   Logcomex (Nakata   Osasco / SP)', 'LEADS', 'LEADS OC.: 18854 Logcomex (Nakata Osasco / SP)', 'LEADS - Acrescimo de download para excel','LEADS - Acrescimo de download para excel.')) THEN 'Leads'
           WHEN (${TABLE}."service_description" in ('SEARCH (NEW)', 'Search (new)', 'SEARCH NEW', 'Search')) THEN 'Search'
           WHEN (${TABLE}."service_description" in ('SEARCH X')) THEN 'SearchX'
           WHEN (${TABLE}."service_description" in ('BIG DATA  pedido  O3-20001333', 'BIG DATA  - Importacao Maritima', 'BIG DATA  VENCIMENTO DIA 30', 'BIG DATA - Importacao Maritima - adicao de portos', 'BIG DATA - Importacao Maritima', 'BIG DATA Exportacao', 'BIG DATA', 'BIG DATA  Impo Aerea', 'BIG DATA - Importacao Maritima; Importacao Aerea;', 'BIG DATA - Importacao maritima', 'BIG DATA - Importacao Aerea', 'BIG DATA - Slim importacao.','BIG DATA - Exportacao Maritima')) THEN 'BigData'
           WHEN (${TABLE}."service_description" in ('AUTOMACAO  BOLETO vencimento no mes seguinte, na primeira terca-feira apos o dia 20', 'AUTOMACAO')) THEN 'Automacação'
           WHEN (${TABLE}."service_description" in ('TRACKING')) THEN 'Tracking'
           WHEN (${TABLE}."service_description" in ('MANUTENCAO DE SISTEMA LOGCOMEX - PLANO COMEX MICRO', 'MANUTENCAO DE SISTEMA TECA DO BRASIL', 'MANUTENCAO DE SISTEMALOGCOMEX - PLANO COMEX MICRO','MANUTENCAO DE SISTEMA BACAREI','MANUTENCAO DE SISTEMA LOGCOMEX')) THEN 'Manutenção de Sistemas'
           else ${TABLE}."service_description" end
          --else 'Necessário ajustes na view service_order_omie' end
    ;;
}

  dimension: omie_so_status {
    type: string
    sql: ${TABLE}."status" ;;
  }

  dimension_group: omie_so_updated {
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

  dimension: omie_so_value_uni {
    type: number
    sql: TO_NUMBER(${TABLE}."value_uni",'99999999.99') ;;
  }

  measure: omie_so_count {
    type: count
    drill_fields: [id]
  }

  measure: omie_so_vl_total {
  type: sum
  sql: ${omie_so_value_uni} ;;
  drill_fields: [id]
}

}
