view: bi_filtros {
  derived_table: {
    sql:
      SELECT filters.id as filters_report_log_id,
             string_agg(filter, ', ') as filters_campos_agrupado
      FROM (
            SELECT id, json_object_keys(json_filter) as filter
            FROM report_log
            WHERE  ((json_filter->>'serviceId' = '11' and report_log.json_filter -> 'year_month' is not null)
               or (json_filter->>'serviceId' = '3' and report_log.json_filter ->> 'page' is null)
               or (json_filter->>'serviceId' = '1' and report_log.json_filter ->> 'page' is null)
              )
            GROUP BY 1
            ORDER BY 2
            ) as filters
      WHERE filter NOT IN ('', 'chartPath', 'dashboard', 'detalhes', 'export_excel', 'filter_date', 'filterName', 'grouper', 'grouper_value', 'id', 'isChart', 'isPivot', 'page', 'paginated', 'path', 'per_page', 'serviceId', 'serviceSlug', 'sort', 'sortBy', 'tabType', 'title', 'type', 'undefined', 'x-api-key', 'XDEBUG_SESSION_START')
      GROUP BY 1 ;;

    #     persist_for: "24 hour"
    #     sql_trigger_value: select count(*) from public.customer_plan ;;
      datagroup_trigger: my_datagroup
      indexes: ["filters_report_log_id"]
    }

    dimension: filters_report_log_id {
      hidden: yes
      type: number
      sql: ${TABLE}.filters_report_log_id ;;
    }

    dimension: filters_campos_agrupado {
      type: string
      sql: ${TABLE}.filters_campos_agrupado ;;
    }
}
