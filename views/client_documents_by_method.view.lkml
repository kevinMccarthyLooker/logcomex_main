view: client_documents_by_method {
  derived_table: {
    persist_for: "24 hours"
    indexes: ["razao_social"]
    sql: SELECT * FROM mvw_api_request_month UNION SELECT  * FROM mvw_api_request_3_months;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: razao_social {
    type: string
    sql: ${TABLE}."razao_social" ;;
  }

  dimension: api_method {
    type: string
    sql: ${TABLE}."api_method" ;;
  }

  dimension: ano_mes {
    type: string
    sql: ${TABLE}."ano_mes" ;;
  }

  measure: documentos_unicos {
    type: sum
    sql: ${TABLE}."documentos_unicos" ;;
  }

  measure: requests_totais {
    type: sum
    sql: ${TABLE}."requests_totais" ;;
  }

  set: detail {
    fields: [razao_social, api_method, ano_mes, documentos_unicos, requests_totais]
  }
}
