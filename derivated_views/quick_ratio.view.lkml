view: quick_ratio {

  derived_table: {
    sql:
    select date(concat(qq2.ano, '-', lpad(cast(qq2.mes as text),2,'0'),'-01')) as anomes, (qq2.ativos - qq3.growth) as ativos, qq3.growth, qq4.churns, (qq3.growth - qq4.churns) as qr
    from (
        select extract(year from qq1.anomes) as ano, extract(month from qq1.anomes) as mes, count(distinct customer_id) as ativos
        from (
            SELECT
            date(mes) as anomes,
            customer."name" as customer_name,
            customer."id" AS customer_id,
            customer."id" AS customer_id_measure,
            customer_plan.id as customer_plan_id
            FROM public.customer  AS customer
            inner join public.customer_plan  AS customer_plan ON (customer."id")=(customer_plan."customer_id")
            inner join public.plan_complete pc on pc.id = customer_plan.plan_complete_id
            LEFT JOIN (select last_day(date '2020-01-01' + (interval '1' month * generate_series(0,30))) as mes) as meses on 1 = 1
            where (date(meses.mes) between (date(customer_plan."start")) and date((customer_plan."expiration"))
            and (customer_plan."deleted_at") is null)
            and (customer."fake_customer")=false
            and pc.service_id = 19
           ) as qq1
        group by 1,2
      ) as qq2
    left join
       (
        select extract(year from cp."start") as ano, extract(month from cp."start") as mes, count(distinct cp.customer_id) as growth
        from customer_plan cp
        inner join customer c2 on c2.id = cp.customer_id
        inner join plan_complete pc on pc.id = cp.plan_complete_id
        LEFT JOIN (select last_day(date '2020-01-01' + (interval '1' month * generate_series(0,30))) as mes) as meses on 1 = 1
        where cp.deleted_at is null
        and c2.fake_customer is false
        and pc.service_id = 19
        and extract(year from meses.mes) = extract(year from cp."start")
        and extract(month from meses.mes) = extract(month from cp."start")
        group by 1,2
       ) as qq3 on qq3.ano = qq2.ano and qq3.mes = qq2.mes
    left join
       (
        select extract(year from cp."expiration") as ano, extract(month from cp."expiration") as mes, count(distinct cp.customer_id) as churns
        from customer_plan cp
        inner join customer c2 on c2.id = cp.customer_id
        inner join plan_complete pc on pc.id = cp.plan_complete_id
        LEFT JOIN (select last_day(date '2020-01-01' + (interval '1' month * generate_series(0,30))) as mes) as meses on 1 = 1
        where cp.deleted_at is null
        and c2.fake_customer is false
        and pc.service_id = 19
        and extract(year from meses.mes) = extract(year from cp."expiration")
        and extract(month from meses.mes) = extract(month from cp."expiration")
        group by 1,2
       ) as qq4 on qq4.ano = qq3.ano and qq4.mes = qq3.mes;;

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
