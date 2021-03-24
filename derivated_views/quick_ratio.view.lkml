view: quick_ratio {

  derived_table: {
    sql:
    select date(concat(qq2.ano, '-', lpad(cast(qq2.mes as text),2,'0'),'-01')) as anomes, qq2.service, (qq2.ativos - coalesce(qq3.growth,0)) as ativos, qq3.growth, qq4.churns, (coalesce(qq3.growth::float,0) / coalesce(qq4.churns::float,1)) as qr
    from (
        select extract(year from qq1.anomes) as ano, extract(month from qq1.anomes) as mes, service, count(distinct customer_id) as ativos
        from (
            SELECT
            date(mes) as anomes,
            customer."name" as customer_name,
            customer."id" AS customer_id,
            customer."id" AS customer_id_measure,
            customer_plan.id as customer_plan_id,
            pc.service_id as service
            FROM public.customer  AS customer
            inner join public.customer_plan  AS customer_plan ON (customer."id")=(customer_plan."customer_id")
            inner join public.plan_complete pc on pc.id = customer_plan.plan_complete_id
            LEFT JOIN (select last_day(date '2020-01-01' + (interval '1' month * generate_series(0,30))) as mes) as meses on 1 = 1
            where (date(meses.mes) between (date(customer_plan."start")) and date((customer_plan."expiration"))
            and (customer_plan."deleted_at") is null)
            and (customer."fake_customer")=false
            and pc.service_id in (1,2,5,6,19,21)
           ) as qq1
        group by 1,2,3
      ) as qq2
    left join
       (
        select extract(year from cp."start") as ano, extract(month from cp."start") as mes, pc.service_id as service, count(distinct cp.customer_id) as growth
        from customer_plan cp
        inner join customer c2 on c2.id = cp.customer_id
        inner join plan_complete pc on pc.id = cp.plan_complete_id
        LEFT JOIN (select last_day(date '2020-01-01' + (interval '1' month * generate_series(0,30))) as mes) as meses on 1 = 1
        where cp.deleted_at is null
        and c2.fake_customer is false
        and pc.service_id in (1,2,5,6,19,21)
        and extract(year from meses.mes) = extract(year from cp."start")
        and extract(month from meses.mes) = extract(month from cp."start")
        group by 1,2,3
       ) as qq3 on qq3.ano = qq2.ano and qq3.mes = qq2.mes and qq3.service = qq2.service
    left join
       (
        select extract(year from cp."expiration") as ano, extract(month from cp."expiration") as mes, pc.service_id as service, count(distinct cp.customer_id) as churns
        from customer_plan cp
        inner join customer c2 on c2.id = cp.customer_id
        inner join plan_complete pc on pc.id = cp.plan_complete_id
        LEFT JOIN (select last_day(date '2020-01-01' + (interval '1' month * generate_series(0,30))) as mes) as meses on 1 = 1
        where cp.deleted_at is null
        and c2.fake_customer is false
        and pc.service_id in (1,2,5,6,19,21)
        and extract(year from meses.mes) = extract(year from cp."expiration")
        and extract(month from meses.mes) = extract(month from cp."expiration")
        group by 1,2,3
       ) as qq4 on qq4.ano = qq3.ano and qq4.mes = qq3.mes and qq4.service = qq3.service;;

  }

  dimension_group: anomes {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."anomes" ;;
  }

  dimension: ativos {
    type: number
    sql: ${TABLE}.ativos ;;
  }

  dimension: service_id {
    type: number
    sql: ${TABLE}.service ;;
  }

  dimension: service {
    type: string
    sql:
    case
    when ${service_id} =  1 then 'Importação'
    when ${service_id} =  2 then 'Exportação'
    when ${service_id} =  5 then 'Tracking'
    when ${service_id} =  6 then 'Aéreo'
    when ${service_id} = 19 then 'Search'
    when ${service_id} = 21 then 'Novo Exportação'
    else 'Erro'
    end ;;
  }

  dimension: growth {
    type: number
    sql: ${TABLE}.growth ;;
  }

  dimension: churns {
    type: number
    sql: ${TABLE}.churns ;;
  }

  dimension: qr {
    type: number
    sql: ${TABLE}.qr ;;
  }

  measure: count {
    type: count
  }

  measure: sum_ativos {
    type: sum
    sql:${ativos} ;;
  }

  measure: sum_growth {
    type: sum
    sql:${growth} ;;
  }

  measure: sum_churns {
    type: sum
    sql:${churns} ;;
  }

  measure: sum_qr {
    type: sum
    sql:${qr} ;;
  }



}
