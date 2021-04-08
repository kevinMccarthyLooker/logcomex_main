view: clientes_trials_acessos_plataforma {

  derived_table: {
    sql:
    select
    qq1.anomes,
    qq1.customer_name,
    qq1.customer_id,
    case
    when qq2.customer_id is null then false
    else true
    end as acessou
    from
      (
        select
        mes as anomes,
        customer."name" as customer_name,
        customer."id" AS customer_id
        FROM public.customer  AS customer
        LEFT JOIN public.customer_plan  AS customer_plan ON (customer."id")=(customer_plan."customer_id")
        LEFT JOIN (select last_day(date '2019-06-01' + (interval '1' month * generate_series(0,30))) as mes) as meses on 1 = 1
        where (date(meses.mes) between (date(customer_plan."start")) and date((customer_plan."expiration")))
          and (customer."fake_customer")=false
          and customer.deleted_at is null
          and customer_plan.deleted_at is null
          and mes between '06-01-2019' and '01-31-2021'
        group by 1,2,3
        union
        select
        mes as anomes,
        customer."name" as customer_name,
        customer."id" AS customer_id
        FROM public.customer  AS customer
        LEFT JOIN public.customer_plan  AS customer_plan ON (customer."id")=(customer_plan."customer_id")
        LEFT JOIN (select last_day(date '2019-06-01' + (interval '1' month * generate_series(0,30))) as mes) as meses on 1 = 1
        WHERE (meses.mes between (customer_plan.trial_start) and last_day(customer_plan.trial_end))
            and (customer_plan."deleted_at") is null
            AND (customer."fake_customer")=false
            and (customer."deleted_at") is null
            and mes between '06-01-2019' and '01-31-2021'
        group by 1,2,3
      ) as qq1
    left join
      (
        select
        last_day(al.created_at) as anomes,
        al.customer_id
        FROM access_log al
        inner join customer c2 on c2.id = al.customer_id
        inner join customer_plan cp on cp.customer_id = c2.id
        where (date(al.created_at) between cp."start" and cp.expiration or date(al.created_at) between cp.trial_start and cp.trial_end)
        and al.created_at between '06-01-2019' and '01-31-2021'
        and c2.fake_customer is false and c2.deleted_at is null
        and cp.deleted_at is null
        group by 1,2
        --order by 1 asc
      ) as qq2 on qq2.anomes = qq1.anomes and qq2.customer_id = qq1.customer_id;;
  }

  dimension: customer_id {
    type: number
    sql: ${TABLE}."customer_id" ;;
  }

  dimension: customer_name{
    type: string
    sql: ${TABLE}."customer_name" ;;
  }

  dimension: acessou {
    type: yesno
    sql: ${TABLE}."acessou" ;;
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

  measure: count {
    type: count
    drill_fields: [customer_id,customer_name,anomes_month]
  }


  }
