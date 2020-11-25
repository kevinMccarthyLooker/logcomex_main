view: big_data_filtros {

  derived_table: {
    sql:
    select *
    from(
    SELECT date_trunc('month',created_at) as period, json_object_keys(json_filter) as filter,json_filter->>'serviceId' as service, count(1) as qtd -- json_filter->>'serviceId'
    FROM report_log
    WHERE json_filter->>'serviceId' in ('2') --('1','2','3','6','8','9','10','11','12','13','14','15','16','17','18')
    --and report_log.id in (6145047,6145046,6145045,6144138,6144134,6144131)
    GROUP BY period, json_object_keys(json_filter),json_filter->>'serviceId') qq1
    where qq1.filter NOT IN ('', 'chartPath', 'dashboard', 'detalhes', 'export_excel', 'filter_date', 'filterName', 'grouper', 'grouper_value', 'id', 'isChart', 'isPivot', 'page', 'paginated', 'path', 'per_page', 'serviceId', 'serviceSlug', 'sort', 'sortBy', 'tabType', 'title', 'type', 'undefined', 'x-api-key', 'XDEBUG_SESSION_START');;

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

  dimension: qtd {
    type: number
    sql: ${TABLE}.qtd ;;
  }


}
