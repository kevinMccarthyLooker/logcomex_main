view: search_filtros_agrupados {
  derived_table: {
    sql:
    SELECT filters_search.data as period, filters_search.id, filters_search.service,filters_search.customer_id, string_agg(filters_search.filters, ', ') as filters_agrupados
    FROM (
          SELECT date_trunc('month',fh.created_at) as data, fh.id,fh.service_id as service, fh.customer_id, ft.name as filters
          from filter_history fh ,jsonb_to_recordset(fh.filters) as ft(name text)
              where fh.filters is not null -- retira filtros nulos
              and fh.filters::text not like 'null' -- retira filtros nulos
              and fh.debited is true -- para não contabilizar mesma buscas duplicadas
              and fh.service_id in(19,21) -- search e novo exportacao
              --and fh.id in (453441,11,12,16,15)
              and fh.id not in(311017,311018,311019,317637,317635,317636,321072,337053,337073,337088,468578,760035,760036,760037,760038,760034) -- jsons incompletos, problema
          group by 1,2,3,4,5
          order by 1,2,3,4,5 -- ordernando para agrupar corretamente
          ) as filters_search
    GROUP BY 1,2,3,4;;
    indexes: ["id"]
    sql_trigger_value: select current_date;;
  }

  dimension: id {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: filters_agrupados {
    type: string
    sql: ${TABLE}.filters_agrupados ;;
  }

  dimension: service {
    type: number
    sql: ${TABLE}.service ;;
  }

  dimension: service_name {
    type: string
    sql: case
         when ${TABLE}.service = 19 then 'Search'
         when ${TABLE}.service = 21 then 'Novo Exportação'
         else 'Erro'
         end;;
  }

  dimension: customer_id {
    type: number
    sql: ${TABLE}.customer_id ;;
  }

  dimension_group: period {
    type: time
    timeframes: [month,year]
    sql: ${TABLE}.period ;;
  }

  measure: count {
    type: count
  }
}
