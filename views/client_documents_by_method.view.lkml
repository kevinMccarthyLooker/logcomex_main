view: client_documents_by_method {
  derived_table: {
    sql: SELECT
          razao_social_e as razao_social,
          api_method,
          to_char(DATE_TRUNC('month', data_registro), 'YYYY.MM'::text) AS ano_mes,
          COUNT(DISTINCT(CASE WHEN RIGHT(api_query_string, 16) = 'reprocessar=true' THEN regexp_replace(RIGHT(api_query_string, 42), '[^0-9]+', '', 'g') WHEN RIGHT(api_query_string, 26) LIKE '%numero_cpf%' THEN regexp_replace(SPLIT_PART(RIGHT(api_query_string, 43), 'numero_cpf', 1), '[^0-9]+', '', 'g') ELSE regexp_replace(RIGHT(api_query_string, 15), '[^0-9]+', '', 'g') END)) as documentos_unicos,
          COUNT(1) as requests_totais
      FROM api_request
      LEFT JOIN empresas ON api_request.ide = empresas.ide
      WHERE
          api_request.ide IN (366, 375, 370) AND -- 375 - BTP :: 370 - Bandeirantes
          data_registro >= cast(date_trunc('month', current_date - interval '3 months') as date) AND
          data_registro <= NOW()
      GROUP BY
          razao_social,
          api_method,
          ano_mes
      ORDER BY
          razao_social,
          api_method,
          ano_mes
       ;;
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
