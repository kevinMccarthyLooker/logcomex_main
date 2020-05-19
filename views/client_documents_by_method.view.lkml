view: client_documents_by_method {
  derived_table: {
    sql: SELECT
          razao_social_e as razao_social,
          api_method,
          to_char(DATE_TRUNC('month', data_registro), 'YYYY.MM'::text) AS ano_mes,
          COUNT(DISTINCT RIGHT(api_query_string, 15)) as documentos_unicos,
          COUNT(1) as requests_totais
      FROM api_request
      LEFT JOIN empresas ON api_request.ide = empresas.ide
      WHERE
          -- api_request.ide IN (366, 375, 370) AND -- 375 - BTP :: 370 - Bandeirantes
          data_registro >= cast(date_trunc('month', current_date - interval '1 months') as date) AND
          data_registro <= NOW() AND
          api_method IN (
          'get_sigvig_status_fcl',
          'get_sigvig_user',
          'get_sigvig_requerimento',
          'get_siscomexexp_dde_pendentes',
          'post_dde_consulta',
          'post_dde_consulta_response',
          'get_dde_consulta',
          'post_dde_presenca',
          'post_dde_presenca2',
          'get_dde_presenca',
          'destroy_dde_presenca',
          'recoloca_fila_dde_presenca',
          'get_tradex_re',
          'get_tradex_exportador_navio',
          'post_tradex_liberacao',
          'cancelar_tradex_liberacao',
          'get_di_xml',
          'get_status_siscarga',
          'get_historico_siscarga',
          'get_cadastro',
          'get_ncm',
          'taxa_cambio',
          'get_dta_consulta',
          'get_dta_fluxo',
          'get_dta_lista',
          'get_deim_pr',
          'entrega_siscarga_cabotagem',
          'get_liberacao_di',
          'get_liberacao_di2',
          'entrega_siscarga_di',
          'entrega_siscarga_dsi',
          'entrega_carga_deimpr',
          'get_siscomexexp_dde_presenca_pendente',
          'put_status_presenca_carga_dde',
          'get_icms_sc_consulta',
          'entrega_carga_sat_sc',
          'entrega_carga_sat_sc2',
          'get_ce_bl',
          'get_mapa_requerimento',
          'get_sigvig',
          'get_siscarga_ce_house',
          'get_siscarga_ce',
          'get_siscarga_ce2',
          'entrega_deim_pr',
          'get_siscarga_arquivo',
          'wrk_get_siscarga_arquivo',
          'get_siscarga_house',
          'get_siscarga_house_new',
          'get_siscarga_house_async',
          'get_siscarga_house_cache',
          'get_nfe_xml',
          'get_container',
          'get_consulta_icms_sp',
          'entrega_icms_sp',
          'get_consulta_icms_sc',
          'entrega_icms_sc',
          'print_screen',
          'get_ce_list',
          'get_siscarga_file',
          'chegada_veiculo_dtc',
          'registrar_dtc',
          'get_siscarga_lista',
          'presenca_de_carga',
          'get_empresas_info',
          'get_status_siscarga_historico',
          'get_consulta_icms_sp_historico',
          'historico_sefaz',
          'get_ce_navio_itj')
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
