view: big_data_filtros {

  derived_table: {
    sql:
    SELECT json_object_keys(json_filter) as filters, count(1) as qtd -- json_filter->>'serviceId'
    FROM report_log
    WHERE json_filter->>'serviceId' in('1','2','3','6','8','9','10','11','12','13','14','15','16','17','18')
    GROUP BY json_object_keys(json_filter);;
  }

  dimension: filters {
    type: string
    sql: ${TABLE}.filters ;;
  }

  dimension: qtd {
    type: number
    sql: ${TABLE}.qtd ;;
  }


}
