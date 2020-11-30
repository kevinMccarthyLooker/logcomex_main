view: search_filtros_agrupados {
  derived_table: {
    sql:
    SELECT filters_search.data as period, filters_search.id, filters_search.service, string_agg(filters_search.filters, ', ') as filters_agrupados
FROM (
      SELECT date_trunc('month',fh.created_at) as data, fh.id,fh.service_id as service, ft.name as filters
      from filter_history fh ,jsonb_to_recordset(fh.filters) as ft(name text)
          where fh.filters is not null -- retira filtros nulos
          and fh.filters::text not like 'null' -- retira filtros nulos
          and fh.debited is true -- para não contabilizar mesma buscas duplicadas
          and fh.service_id in(19,21) -- search e novo exportacao
          --and fh.id in (453441,11,12,16,15)
          and fh.id not in(311017,311018,311019,317637,317635,317636,321072,337053,337073,337088,468578,760035,760036,760037,760038,760034) -- jsons incompletos, problema
      group by 1,2,3,4
      order by 1,2,3,4 -- ordernando para agrupar corretamente
      ) filters_search
GROUP BY 1,2,3;;

    indexes: ["filters_search.id"]
    sql_trigger_value: current_date;;

    }

    dimension: _id {
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


    dimension_group: period {
      type: time
      timeframes: [month,year]
      sql: ${TABLE}.period ;;
    }

    measure: count_agrupado {
      type: count
    }
  }
