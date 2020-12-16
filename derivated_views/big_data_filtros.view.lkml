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

  dimension: campo_produto {
    type: string
    sql:  case
          when ${filter} = 'end_date' then 'Data final'
          when ${filter} = 'start_date' then 'Data inicial'
          when ${filter} = 'txshipper'  then 'Nome exportador'
          when ${filter} = 'sub_grouper' then 'Sub agrupador'
          when ${filter} = 'nmportoorigem' then 'Porto origem'
          when ${filter} = 'nmportodestino' then 'Porto destino'
          when ${filter} = 'itemcarga_cdncms' then 'HSCODE'
          when ${filter} = 'tipo_carga' then 'Tipo carga'
          when ${filter} = 'nmpaisdestfinal' then 'País destino'
          when ${filter} = 'cdshipper' then 'CNPJ shipper'
          when ${filter} = 'oprecolhimentofrete' then 'Tipo pagamento'
          when ${filter} = 'cdconsignatario' then 'CNPJ consignatário'
          when ${filter} = 'nmconsignatario' then 'Nome consignatário'
          when ${filter} = 'itemcarga_noncms' then 'Descrição mercadoria'
          when ${filter} = 'trade_lane_destino' then 'Trade lane'
          when ${filter} = 'sub_grouper_value' then 'Detalhes sub agrupador'
          when ${filter} = 'nmempresanavegacao' then 'Agente de carga'
          when ${filter} = 'tipoconhecimento' then 'Tipo embarque'
          when ${filter} = 'nmterminalportuariocarregamento' then 'Terminal embarque'
          when ${filter} = 'nmembarcacao' then  'Navio'
          when ${filter} = 'txmercadoria' then  'Descrição mercadoria - txmercadoria'
          when ${filter} = 'load_type' then 'Tipo carga - load_type'
          when ${filter} = 'itemcarga_descricao' then 'Descrição carga'
          when ${filter} = 'nmempnavegdesconmaster' then 'Agente internacional'
          when ${filter} = 'tipoconhecimentoexpo' then  'Tipo embarque - tipoconhecimentoexpo'
          when ${filter} = 'nmpaisprocedencia' then 'País procedência'
          when ${filter} = 'consignatario_cidade' then 'Cidade consignatário'
          when ${filter} = 'consignatario_uf' then 'UF consignatário'
          when ${filter} = 'notificado' then 'Notificado'
          else 'Verificar!!!'
          end  ;;
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
