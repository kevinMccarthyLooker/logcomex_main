view: big_data_filtros {

  derived_table: {
    sql:
    select
    row_number() over () as id,*
    from(
    SELECT date_trunc('month',created_at) as period, json_filter->>'serviceId' as service, report_type_id, customer_plan_id, user_id, json_object_keys(json_filter) as filter, count(1) as qtd
    FROM report_log
    WHERE json_filter->>'serviceId' in ('1','2','3','6','8','9','10','11','12','13','14','15','16','17','18')
    --and report_log.id in (6145047,6145046,6145045,6144138,6144134,6144131)
    GROUP BY period,json_filter->>'serviceId', report_type_id,customer_plan_id,user_id,json_object_keys(json_filter)) qq1
    where qq1.filter NOT IN ('', 'chartPath', 'dashboard', 'detalhes', 'export_excel', 'filter_date', 'filterName', 'grouper', 'grouper_value', 'id', 'isChart', 'isPivot', 'page', 'paginated', 'path', 'per_page', 'serviceId', 'serviceSlug', 'sort', 'sortBy', 'tabType', 'title', 'type', 'undefined', 'x-api-key', 'XDEBUG_SESSION_START');;
    indexes: ["period"]
    sql_trigger_value: SELECT CURRENT_DATE;;

  }

  dimension: id{
    type:  number
    primary_key: yes
    sql: ${TABLE}.id ;;
  }

  dimension_group: period {
    type: time
    timeframes: [month,year]
    sql: ${TABLE}.period ;;
  }

  dimension: filter {
    type: string
    sql: ${TABLE}.filter ;;
  }

  dimension: service {
    type: string
    sql: case
             when ${TABLE}.service = '1' then 'Importação'
             when ${TABLE}.service = '2' then 'Exportação'
             when ${TABLE}.service = '3' then 'Cabotagem'
             when ${TABLE}.service = '6' then 'Aereo'
             when ${TABLE}.service = '8' then 'Leads'
             when ${TABLE}.service = '9' then 'Captação'
             when ${TABLE}.service = '10' then 'Co-loader'
             when ${TABLE}.service = '11' then 'Commodities'
             when ${TABLE}.service = '12' then 'Argentina Importação'
             when ${TABLE}.service = '13' then 'Argentina Exportação'
             when ${TABLE}.service = '14' then 'Paraguai Importacão'
             when ${TABLE}.service = '15' then 'Paraguai Exportação'
             when ${TABLE}.service = '16' then 'Uruguai Importação'
             when ${TABLE}.service = '17' then 'Uruguai Exportação'
             when ${TABLE}.service = '18' then 'EUA Importação'
             else 'ERRO'
         end ;;
  }

  dimension: campo_produto {
    type: string
    sql:  case
          when ${filter} = 'end_date' and ${service} = 'Importação' then 'Data final'
          when ${filter} = 'start_date' and ${service} = 'Importação' then 'Data inicial'
          when ${filter} = 'txshipper' and ${service} = 'Importação'  then 'Nome exportador'
          when ${filter} = 'sub_grouper' and ${service} = 'Importação' then 'Sub agrupador'
          when ${filter} = 'oprecolhimentofrete' and ${service} = 'Importação' then 'Tipo de pagamento'
          when ${filter} = 'nmportoorigem' and ${service} = 'Importação' then 'Porto origem'
          when ${filter} = 'nmportodestino' and ${service} = 'Importação' then 'Porto destino'
          when ${filter} = 'itemcarga_cdncms' and ${service} = 'Importação' then 'HSCODE'
          when ${filter} = 'tipo_carga' and ${service} = 'Importação' then 'Tipo carga'
          when ${filter} = 'nmpaisdestfinal' and ${service} = 'Importação' then 'País destino'
          when ${filter} = 'cdshipper' and ${service} = 'Importação' then 'CNPJ shipper'
          when ${filter} = 'oprecolhimentofrete' and ${service} = 'Importação' then 'Tipo pagamento'
          when ${filter} = 'cdconsignatario' and ${service} = 'Importação' then 'CNPJ consignatário'
          when ${filter} = 'nmconsignatario' and ${service} = 'Importação' then 'Nome consignatário'
          when ${filter} = 'itemcarga_noncms' and ${service} = 'Importação' then 'Descrição mercadoria'
          when ${filter} = 'trade_lane_destino' and ${service} = 'Importação' then 'Trade lane'
          when ${filter} = 'sub_grouper_value' and ${service} = 'Importação' then 'Detalhes sub agrupador'
          when ${filter} = 'nmempresanavegacao' and ${service} = 'Importação' then 'Agente de carga'
          when ${filter} = 'tipoconhecimento' and ${service} = 'Importação' then 'Tipo embarque'
          when ${filter} = 'nmterminalportuariocarregamento' and ${service} = 'Importação' then 'Terminal embarque'
          when ${filter} = 'nmembarcacao' and ${service} = 'Importação' then  'Navio'
          when ${filter} = 'trade_lane_origem' and ${service} = 'Importação' then 'Trade lane de origem'
          when ${filter} = 'nmterminalportuario' and ${service} = 'Importação' then 'Terminal de descarga'
          when ${filter} = 'txmercadoria' and ${service} = 'Importação' then  'Descrição mercadoria - txmercadoria'
          when ${filter} = 'load_type' and ${service} = 'Importação' then 'Tipo carga - load_type'
          when ${filter} = 'itemcarga_descricao' and ${service} = 'Importação' then 'Descrição carga'
          when ${filter} = 'nmempnavegdesconmaster' and ${service} = 'Importação' then 'Agente internacional'
          when ${filter} = 'armazem_destino' and ${service} = 'Importação' then 'Armazém de destino'
          when ${filter} = 'tipoconhecimentoexpo' and ${service} = 'Importação' then  'Tipo embarque - tipoconhecimentoexpo'
          when ${filter} = 'nmpaisprocedencia' and ${service} = 'Importação' then 'País procedência'
          when ${filter} = 'consignatario_cidade' and ${service} = 'Importação' then 'Cidade consignatário'
          when ${filter} = 'consignatario_uf' and ${service} = 'Importação' then 'UF consignatário'
          when ${filter} = 'notificado' and ${service} = 'Importação' then 'Notificado'
          when ${filter} = 'cod_moeda_frete' and ${service} = 'Aereo' then 'Moeda'
          when ${filter} = 'aeroporto_origem' and ${service} = 'Aereo' then 'Aeroporto de Origem'
          when ${filter} = 'aeroporto_destino' and ${service} = 'Aereo' then 'Aeroporto de Destino'
          when ${filter} = 'pais_de_origem' and ${service} = 'Aereo' then 'País de Origem'
          when ${filter} = 'airline_name' and ${service} = 'Aereo' then 'Linha Aérea'
          when ${filter} = 'aereoCidade' and ${service} = 'Aereo' then 'Consignatário Cidade'
          when ${filter} = 'aereoUf' and ${service} = 'Aereo' then 'Consignatário Estado'
          when ${filter} = 'aeroporto_chegada' and ${service} = 'Aereo' then 'Aeroporto Chegada'
          when ${filter} = 'modalidade' and ${service} = 'Aereo' then 'Tipo de pagamento'
          when ${filter} = 'trade_lane' and ${service} = 'Aereo' then 'Trade lane'
          when ${filter} = 'pais_de_destino' and ${service} = 'Aereo' then 'País de Destino'
          when ${filter} = 'aeroporto_origem_house' and ${service} = 'Aereo' then 'Aeroporto de origem house'
          when ${filter} = 'aeroporto_destino_house' and ${service} = 'Aereo' then 'Aeroporto de destino house'
          when ${filter} = 'aeroporto_embarque' and ${service} = 'Aereo' then 'Aeroporto de embarque'
          when ${filter} = 'embarque' and ${service} = 'Aereo' then 'Tipo de Embarque'
          else 'Verificar!!!'
          end  ;;
  }

  dimension: report_type {
    type: string
    sql: case
             when ${TABLE}.report_type_id = 1 then 'Screen'
             when ${TABLE}.report_type_id = 2 then 'Excel'
             when ${TABLE}.report_type_id = 3 then 'Api'
             else 'ERRO'
         end ;;
  }

  dimension: customer_plan_id {
    type: number
    sql: ${TABLE}.customer_plan_id;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.user_id;;
  }

  dimension: qtd {
    type: number
    sql: ${TABLE}.qtd ;;
  }

  measure: count{
    type: count
  }

  measure: total {
    type: sum
    sql: coalesce(${qtd},0) ;;

  }

}
