view: bi_filtros_agrupado {
  derived_table: {
    sql:
    SELECT filters.id as filters_report_log_id, filters.service, string_agg(filter, ', ') as filters_campos_agrupado
      FROM (
            SELECT id,json_filter->>'serviceId' as service, json_object_keys(json_filter) as filter
            FROM report_log
            WHERE json_filter->>'serviceId' in ('1','2','3','6','8','9','10','11','12','13','14','15','16','17','18')
              /* and ((json_filter->>'serviceId' = '11' and report_log.json_filter -> 'year_month' is not null)
               or (json_filter->>'serviceId' = '3' and report_log.json_filter ->> 'page' is null)
               or (json_filter->>'serviceId' = '2' and report_log.json_filter ->> 'page' is null)
               or (json_filter->>'serviceId' = '1' and report_log.json_filter ->> 'page' is null))
            and report_log.id in (6145047,6145046,6145045,6144138,6144134,6144131,6145213,6145212,6145211) */
            GROUP BY 1,2
            ) as filters
      WHERE filter NOT IN ('', 'chartPath', 'dashboard', 'detalhes', 'export_excel', 'filter_date', 'filterName', 'grouper', 'grouper_value', 'id', 'isChart', 'isPivot', 'page', 'paginated', 'path', 'per_page', 'serviceId', 'serviceSlug', 'sort', 'sortBy', 'tabType', 'title', 'type', 'undefined', 'x-api-key', 'XDEBUG_SESSION_START')
      GROUP BY 1,2 ;;

    indexes: ["filters_report_log_id"]
    sql_trigger_value: current_date;;

    }

  dimension: filters_report_log_id {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}.filters_report_log_id ;;
  }

  dimension: service {
    type: number
    sql: ${TABLE}.service ;;
  }

  dimension: filters_campos_agrupado {
    type: string
    sql: ${TABLE}.filters_campos_agrupado ;;
  }

  measure: count_agrupado {
    type: count
  }
}
