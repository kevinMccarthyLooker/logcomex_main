view: big_data_filtros {

  derived_table: {
    sql:
    select
    row_number() over () as id,
    period,
    service,
    report_type_id,
    customer_plan_id,
    user_id,
    filter,
    (case
    when filter = 'cdshipper' then regexp_replace(filter_value, '\D','','g')  -- apenas numeros
    when filter = 'periodo' and CHAR_LENGTH(filter_value) = 21 then -- filtro de periodo e no padrao de 21 caracteres
      (case when (right(filter_value,10)::timestamp - (left(filter_value,10)::timestamp))::text = '00:00:00' then '1 day' -- quando o filtro eh apenas um dia
      else (right(filter_value,10)::timestamp - (left(filter_value,10)::timestamp))::text
      end)
    else filter_value
    end)as filter_value,
    (case
    when filter = 'periodo' then qtd/2 -- o periodo eh composto por dois filtros start_date e end_date
    else qtd
    end) as qtd
    from(
        SELECT date_trunc('day',created_at) as period, json_filter->>'serviceId' as service, report_type_id, customer_plan_id, user_id,
        (case when js.key = 'end_date' or js.key = 'start_date' then 'periodo'
        else js.key
        end) as filter,
        (case
        when js.key = 'end_date' or js.key = 'start_date' then concat(json_filter->>'start_date','|',json_filter->>'end_date')
        when js.key = 'nmportodestino' and (json_filter->'nmportodestino'->>'value') is not null then json_filter->'nmportodestino'->>'value'
        when js.key = 'nmpaisprocedencia' and (json_filter->'nmpaisprocedencia'->>'value') is not null then json_filter->'nmpaisprocedencia'->>'value'
        else js.value
        end) as filter_value,
        count(1) as qtd
          FROM report_log, json_each_text(report_log.json_filter) as js
          WHERE json_filter->>'serviceId' in ('1','2','3','6','8','9','10','11','12','13','14','15','16','17','18')
          --and js.key = 'cdshipper'
          --and report_log.id in (6145275,6145274,6145273,6145272,6145047,6145046,6145045,6144138,6144134,6144131)
          GROUP BY 1,2,3,4,5,6,7
        )qq1
    where qq1.filter NOT IN ('', 'chartPath', 'dashboard', 'detalhes', 'export_excel', 'filter_date', 'filterName', 'grouper', 'grouper_value', 'id',
    'isChart', 'isPivot', 'page', 'paginated', 'path', 'per_page', 'serviceId', 'serviceSlug', 'sort', 'sortBy', 'tabType', 'title', 'type',
    'undefined', 'x-api-key', 'XDEBUG_SESSION_START','{ "dashboard":_"id", "start_date":_"2019-01-01", "end_date":_"2019-03-13", "export_excel":_false, "filter_date":_"operation_date", "grouper":_"consignee_cnpj", "grouper_value":_"61194494000187", "isPivot":_true, "page":_1, "per_page":_15, "tabType":_"dynamicTable", "title":_"consignee_cnpj", "type":_"importacao" }',
    '?XDEBUG_SESSION_START','XDEBUG_START_SESSION');;
    indexes: ["id","period","service"]
  sql_trigger_value: SELECT CURRENT_DATE;;
  }



  dimension: id{
    type:  number
    primary_key: yes
    sql: ${TABLE}.id ;;
  }

  dimension_group: period {
    type: time
    timeframes: [
      raw,
      time,
      hour,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.period ;;
  }

  dimension: filter {
    type: string
    sql: ${TABLE}.filter ;;
  }

  dimension: filter_value {
    type: string
    sql: ${TABLE}.filter_value ;;
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


  dimension: service_id {
    type: number
    sql: ${TABLE}.service::int ;;

  }

  dimension: campo_produto {
    type: string
    sql:  case
          when ${filter} = 'sub_grouper' then 'Sub agrupador'
          when ${filter} = 'sub_grouper_value' then 'Detalhes sub agrupador'
          else ${filter}
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
    drill_fields: [detail*]

  }

  set: detail {  #drills
    fields: [
      filter,
      filter_value,
      total
    ]
  }


}
