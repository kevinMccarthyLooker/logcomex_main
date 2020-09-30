view: search_filtros {

  derived_table: {
    sql:
    select
    concat(fh."year",fh."month",'|',fh.customer_id,'|',fh."source",'|',campos.name) as id,
    TO_TIMESTAMP(concat(fh."year",' ',fh."month") ,'YYYY MM') as periodo,
    fh.customer_id as customer_id,
    fh."source" as fonte,
    campos.name as filtro,
    count(id) as qtd
    from filter_history fh ,jsonb_to_recordset(fh.filters) as campos(name text)
    where fh.filters is not null -- retira filtros nulos
    and fh.filters::text not like 'null' -- retira filtros nulos
    and debited is true -- para não contabilizar mesma buscas duplicadas
    and service_id = 19 -- search
    and id not in(311017,311018,311019,317637,317635,317636,321072,337053,337073,337088,468578,760035,760036,
    760037,760038,760034) -- jsons incompletos, problema
    group by 1,2,3,4,5;;
  }

  dimension: id {
    type: string
    primary_key: yes
    hidden: yes
    sql: ${TABLE}.id ;;

  }
  dimension_group: periodo {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      year
    ]
    sql: ${TABLE}.periodo ;;
  }

  dimension: customer {
    type: number
    sql: ${TABLE}.customer_id ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.fonte ;;
  }

  dimension: fonte {
    type: string
    sql: case
          when ${TABLE}.fonte = 'filter' then 'Filtro Lateral'
          when ${TABLE}.fonte = 'UNKNOWN' then 'API'
          when ${TABLE}.fonte = 'recent_search' then 'Busca Recente'
          when ${TABLE}.fonte = 'quick_filter' then 'Quick Filter'
          when ${TABLE}.fonte = 'load_url' then 'URL Compartilhada'
          when ${TABLE}.fonte = 'home' then 'Página Inicial'
          when ${TABLE}.fonte = 'home_saved_filter' then 'Filtro Salvo'
          else 'Erro'
          end
          ;;
  }


  dimension: filtro {
    type: string
    sql: ${TABLE}.filtro ;;
  }

  dimension: qtd {
    type: number
    sql: ${TABLE}.qtd ;;
  }

  measure: total {
    type: sum
    sql: ${TABLE}.qtd ;;
  }


}
