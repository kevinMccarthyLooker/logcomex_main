view: search_filtros {

  derived_table: {
    sql:
    select
    concat(fh."year",fh."month",'|',fh.customer_id,'|',fh."source",'|',campos.name) as id,
    TO_TIMESTAMP(concat(fh."year",' ',fh."month") ,'YYYY MM') as periodo,
    fh.customer_id as customer_id,
    fh.service_id as service,
    fh."source" as fonte,
    campos.name as filtro,
    (case
      when  campos.name ='period' and service_id = 21 and fh."source" <> 'UNKNOWN' then (case when CHAR_LENGTH(campos.value) = 12 then '1' else (SUBSTR(campos.value, 15, 8)::date - SUBSTR(campos.value, 3, 8)::date)::text end)
      when  campos.name ='period' and service_id = 19 and fh."source" <>  'UNKNOWN' and CHAR_LENGTH(campos.value) = 10 then (last_day(to_date(SUBSTR(campos.value, 3, 6),'YYYYMM')) - to_date(SUBSTR(campos.value, 3, 6),'YYYYMM'))::text
      when  campos.name ='period' and service_id = 19 and fh."source" <> 'UNKNOWN' and CHAR_LENGTH(campos.value) = 20  then (last_day(to_date(SUBSTR(campos.value, 13, 6),'YYYYMM')) - to_date(SUBSTR(campos.value, 3, 6),'YYYYMM'))::text
      when  campos.name ='period' and service_id = 19 and fh."source" = 'UNKNOWN' and CHAR_LENGTH(campos.value) = 20   then
        (case when to_date(SUBSTR(campos.value, 13, 6),'YYYYMM') > to_date(SUBSTR(campos.value, 3, 6),'YYYYMM')
               then (last_day(to_date(SUBSTR(campos.value, 13, 6),'YYYYMM')) - to_date(SUBSTR(campos.value, 3, 6),'YYYYMM'))::text
               else (last_day(to_date(SUBSTR(campos.value, 3, 6),'YYYYMM')) - to_date(SUBSTR(campos.value, 13, 6),'YYYYMM'))::text
           end)
      when  campos.name ='period' and service_id = 19 and fh."source" = 'UNKNOWN' and CHAR_LENGTH(campos.value) = 16   then
          (case when to_date(SUBSTR(campos.value, 10, 6),'YYYYMM') > to_date(SUBSTR(campos.value, 2, 6),'YYYYMM')
               then (last_day(to_date(SUBSTR(campos.value, 10, 6),'YYYYMM')) - to_date(SUBSTR(campos.value, 2, 6),'YYYYMM'))::text
               else (last_day(to_date(SUBSTR(campos.value, 2, 6),'YYYYMM')) - to_date(SUBSTR(campos.value, 10, 6),'YYYYMM'))::text
           end)
      when  campos.name ='period' and service_id = 19 and fh."source" = 'UNKNOWN' and CHAR_LENGTH(campos.value) = 8 then (last_day(to_date(SUBSTR(campos.value, 2, 6),'YYYYMM')) - to_date(SUBSTR(campos.value, 2, 6),'YYYYMM'))::text
      when  campos.name ='period' and service_id = 19 and fh."source" = 'UNKNOWN' and CHAR_LENGTH(campos.value) = 10   then (last_day(to_date(SUBSTR(campos.value, 3, 6),'YYYYMM')) - to_date(SUBSTR(campos.value, 3, 6),'YYYYMM'))::text
  else  campos.value
    end) as valor,
    count(id) as qtd
    from filter_history fh ,jsonb_to_recordset(fh.filters) as campos(name text, value text)
    where fh.filters is not null -- retira filtros nulos
    and fh.filters::text not like 'null' -- retira filtros nulos
    and debited is true -- para não contabilizar mesma buscas duplicadas
    and service_id in(19,21) -- search e novo exportacao
    and id not in(311017,311018,311019,317637,317635,317636,321072,337053,337073,337088,468578,760035,760036,760037,760038,760034,208817) -- jsons com problema
    --and campos.name = 'period'
    group by 1,2,3,4,5,6,7;;
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

  dimension: service {
    type: string
    sql: case when ${TABLE}.service = 19 then 'Search'
              when ${TABLE}.service = 21 then 'Novo Exportação'
              else 'Erro' end;;
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
          end
          ;;
  }


  dimension: filtro {
    type: string
    sql: ${TABLE}.filtro ;;
  }

  dimension: valor {
    type: string
    sql: case
    when ${TABLE}.filtro = 'period' and ${TABLE}.valor = '["l", "a", "s", "t", "_", "3", "_", "m", "o", "n", "t", "h", "s"]' then 'Fora do Padrão'
    when ${TABLE}.filtro = 'period' and ${TABLE}.valor = '["2", "0", "2", "0", "", "0", "1"]' then 'Fora do Padrão'
    when ${TABLE}.filtro = 'period' and ${TABLE}.valor = '["NaNaN", "NaNaN"]' then 'Fora do Padrão'
    when ${TABLE}.filtro = 'period' and ${TABLE}.valor = '["2", "0", "2", "0", "", "0", "5"]' then 'Fora do Padrão'
    when ${TABLE}.filtro = 'period' and ${TABLE}.valor = '["2", "0", "2", "0", "", "0", "4"]' then 'Fora do Padrão'
    when ${TABLE}.filtro = 'period' and ${TABLE}.valor = '["2", "0", "2", "0", "", "0", "2"]' then 'Fora do Padrão'
    when ${TABLE}.filtro = 'period' and ${TABLE}.valor = '["2", "0", "2", "0", "", "0", "2"]' then 'Fora do Padrão'
    when ${TABLE}.filtro = 'period' and ${TABLE}.valor = '["last_3_months"]' then 'Fora do Padrão'
    when ${TABLE}.filtro = 'period' and ${TABLE}.valor::int between 0 and 4 then '≅ 2 Dias'
    when ${TABLE}.filtro = 'period' and ${TABLE}.valor::int between 5 and 8 then '≅ 1 Semana'
    when ${TABLE}.filtro = 'period' and ${TABLE}.valor::int between 9 and 11 then '≅ 10 Dias'
    when ${TABLE}.filtro = 'period' and ${TABLE}.valor::int between 12 and 17 then '≅ 2 Semanas'
    when ${TABLE}.filtro = 'period' and ${TABLE}.valor::int between 18 and 24 then '≅ 20 Dias'
    when ${TABLE}.filtro = 'period' and ${TABLE}.valor::int between 25 and 37 then '≅ 1 Mês'
    when ${TABLE}.filtro = 'period' and ${TABLE}.valor::int between 38 and 47 then '≅ 40 Dias'
    when ${TABLE}.filtro = 'period' and ${TABLE}.valor::int between 48 and 57 then '≅ 50 Dias'
    when ${TABLE}.filtro = 'period' and ${TABLE}.valor::int between 58 and 69 then '≅ 2 Meses'
    when ${TABLE}.filtro = 'period' and ${TABLE}.valor::int between 70 and 97  then '≅ 3 Meses'
    when ${TABLE}.filtro = 'period' and ${TABLE}.valor::int between 98 and 127 then '≅ 4 Meses'
    when ${TABLE}.filtro = 'period' and ${TABLE}.valor::int between 128 and 157 then '≅ 5 Meses'
    when ${TABLE}.filtro = 'period' and ${TABLE}.valor::int between 158 and 187 then '≅ 6 Meses'
    when ${TABLE}.filtro = 'period' and ${TABLE}.valor::int between 188 and 217 then '≅ 7 Meses'
    when ${TABLE}.filtro = 'period' and ${TABLE}.valor::int between 218 and 247 then '≅ 8 Meses'
    when ${TABLE}.filtro = 'period' and ${TABLE}.valor::int between 248 and 277 then '≅ 9 Meses'
    when ${TABLE}.filtro = 'period' and ${TABLE}.valor::int between 278 and 307 then '≅ 10 Meses'
    when ${TABLE}.filtro = 'period' and ${TABLE}.valor::int between 308 and 337 then '≅ 11 Meses'
    when ${TABLE}.filtro = 'period' and ${TABLE}.valor::int between 338 and 377 then '≅ 1 Ano'
    when ${TABLE}.filtro = 'period' and ${TABLE}.valor::int between 378 and 407 then '≅ 13 Meses'
    when ${TABLE}.filtro = 'period' and ${TABLE}.valor::int between 408 and 437 then '≅ 14 Meses'
    when ${TABLE}.filtro = 'period' and ${TABLE}.valor::int between 438 and 467 then '≅ 15 Meses'
    when ${TABLE}.filtro = 'period' and ${TABLE}.valor::int between 468 and 497 then '≅ 16 Meses'
    when ${TABLE}.filtro = 'period' and ${TABLE}.valor::int between 498 and 527 then '≅ 17 Meses'
    when ${TABLE}.filtro = 'period' and ${TABLE}.valor::int between 528 and 557 then '≅ 1 Ano e Meio'
    when ${TABLE}.filtro = 'period' and ${TABLE}.valor::int between 558 and 587 then '≅ 19 Meses'
    when ${TABLE}.filtro = 'period' and ${TABLE}.valor::int between 588 and 617 then '≅ 20 Meses'
    when ${TABLE}.filtro = 'period' and ${TABLE}.valor::int between 618 and 647 then '≅ 21 Meses'
    when ${TABLE}.filtro = 'period' and ${TABLE}.valor::int between 648 and 677 then '≅ 22 Meses'
    when ${TABLE}.filtro = 'period' and ${TABLE}.valor::int between 678 and 707 then '≅ 23 Meses'
    when ${TABLE}.filtro = 'period' and ${TABLE}.valor::int between 708 and 737 then '≅ 2 Anos'
    when ${TABLE}.filtro = 'period' and ${TABLE}.valor::int between 738 and 767 then '≅ 25 Meses'
    when ${TABLE}.filtro = 'period' and ${TABLE}.valor::int between 768 and 797 then '≅ 26 Meses'
    when ${TABLE}.filtro = 'period' and ${TABLE}.valor::int between 798 and 827 then '≅ 27 Meses'
    when ${TABLE}.filtro = 'period' and ${TABLE}.valor::int between 828 and 857 then '≅ 28 Meses'
    when ${TABLE}.filtro = 'period' and ${TABLE}.valor::int between 858 and 887 then '≅ 29 Meses'
    when ${TABLE}.filtro = 'period' and ${TABLE}.valor::int between 888 and 917 then '≅ 2 Anos e Meio'
    when ${TABLE}.filtro = 'period' and ${TABLE}.valor::int between 918 and 947 then '≅ 31 Meses'
    when ${TABLE}.filtro = 'period' and ${TABLE}.valor::int between 948 and 977 then '≅ 32 Meses'
    when ${TABLE}.filtro = 'period' and ${TABLE}.valor::int between 978 and 1007 then '≅ 33 Meses'
    when ${TABLE}.filtro = 'period' and ${TABLE}.valor::int between 1008 and 1037 then '≅ 34 Meses'
    when ${TABLE}.filtro = 'period' and ${TABLE}.valor::int between 1038 and 1067 then '≅ 35 Meses'
    when ${TABLE}.filtro = 'period' and ${TABLE}.valor::int between 1068 and 1097 then '≅ 3 Anos'
    when ${TABLE}.filtro = 'period' and ${TABLE}.valor::int between 1098 and 3000 then '> 3 Anos'
    else ${TABLE}.valor
    end;;
  }

  dimension: qtd {
    type: number
    sql: ${TABLE}.qtd ;;
  }

  measure: total {
    type: sum
    sql: ${TABLE}.qtd ;;
    drill_fields: [detail*]
  }

  measure: max {
    type: max
    sql: ${TABLE}.qtd ;;
  }

  set: detail {  #drills
    fields: [
      filtro,
      valor,
      total
    ]
  }


}
