view: big_data_filtros {

  derived_table: {
    sql:
    select
    row_number() over () as id,*
    from(
    SELECT date_trunc('month',created_at) as period, json_filter->>'serviceId' as service, report_type_id,user_id, json_object_keys(json_filter) as filter, count(1) -- json_filter->>'serviceId'
    FROM report_log
    WHERE json_filter->>'serviceId' in ('2') --('1','2','3','6','8','9','10','11','12','13','14','15','16','17','18')
    --and report_log.id in (6145047,6145046,6145045,6144138,6144134,6144131)
    GROUP BY period,json_filter->>'serviceId', report_type_id,user_id,json_object_keys(json_filter)) qq1
    where qq1.filter NOT IN ('', 'chartPath', 'dashboard', 'detalhes', 'export_excel', 'filter_date', 'filterName', 'grouper', 'grouper_value', 'id', 'isChart', 'isPivot', 'page', 'paginated', 'path', 'per_page', 'serviceId', 'serviceSlug', 'sort', 'sortBy', 'tabType', 'title', 'type', 'undefined', 'x-api-key', 'XDEBUG_SESSION_START');;

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
    sql: case when ${TABLE}.service = '2' then 'Exportação' else 'ERRO' end ;;
  }

  dimension: report_type_id {
    type: string
    sql: case when ${TABLE}.report_type_id = 1 then 'Screen'
              when ${TABLE}.report_type_id = 2 then 'Excel'
              when ${TABLE}.report_type_id = 3 then 'Api'
              else 'ERRO' end ;;
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
    sql: ${qtd} ;;

  }

}
