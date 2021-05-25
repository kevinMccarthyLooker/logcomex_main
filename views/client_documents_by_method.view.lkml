view: client_documents_by_method {
  derived_table: {
    #persist_for: "24 hours"
    #indexes: ["razao_social"]
    sql:
    SELECT
    case when mvw_api_request_month.razao_social is null then 'TODAS' else mvw_api_request_month.razao_social end ,
    mvw_api_request_month.api_method,
    mvw_api_request_month.api_origem,
    mvw_api_request_month.api_sucess,
    mvw_api_request_month.ano_mes,
    mvw_api_request_month.documentos_unicos,
    mvw_api_request_month.requests_totais
    FROM mvw_api_request_month
    UNION
    SELECT
    case when mvw_api_request_3_months.razao_social is null then 'TODAS' else mvw_api_request_3_months.razao_social end,
    mvw_api_request_3_months.api_method,
    mvw_api_request_3_months.api_origem,
    mvw_api_request_3_months.api_sucess,
    mvw_api_request_3_months.ano_mes,
    mvw_api_request_3_months.documentos_unicos,
    mvw_api_request_3_months.requests_totais
    FROM mvw_api_request_3_months;;
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

  dimension: api_origem {
    type: string
    sql: ${TABLE}."api_origem" ;;
  }

  dimension: api_sucess {
    type: string
    sql: ${TABLE}."api_sucess" ;;
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
    fields: [razao_social, api_method, api_origem,api_sucess, ano_mes, documentos_unicos, requests_totais]
  }
}
