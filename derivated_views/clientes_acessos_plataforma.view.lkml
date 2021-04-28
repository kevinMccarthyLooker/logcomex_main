view: clientes_acessos_plataforma {

  derived_table: {
    sql:
    select
    qq1.anomes,
    qq1.customer_name,
    qq1.customer_id,
    case
    when qq2.customer_id is null then false
    else true
    end as acessou,
    qq2.qtd_acessos
    from
      (
        select
        mes as anomes,
        customer."name" as customer_name,
        customer."id" AS customer_id
        FROM public.customer  AS customer
        LEFT JOIN public.customer_plan  AS customer_plan ON (customer."id")=(customer_plan."customer_id")
        LEFT JOIN (select last_day(date '2019-06-01' + (interval '1' month * generate_series(0,30))) as mes) as meses on 1 = 1
        where (date(meses.mes) between (date(customer_plan."start")) and last_day(date((customer_plan."expiration"))))
          and (customer."fake_customer")=false
          and customer.deleted_at is null
          and customer_plan.deleted_at is null
          and mes between '06-01-2019' and '01-31-2031'
        group by 1,2,3
      ) as qq1
    left join
      (
        select
        last_day(al.created_at) as anomes,
        al.customer_id,
        count(distinct al.id) as qtd_acessos
        FROM access_log al
        inner join customer c2 on c2.id = al.customer_id
        inner join customer_plan cp on cp.customer_id = c2.id
        where (date(al.created_at) between cp."start" and cp.expiration or date(al.created_at) between cp.trial_start and cp.trial_end)
        and al.created_at between '06-01-2019' and '01-31-2031'
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

  dimension: qtd_acessos {
    type: number
    sql: ${TABLE}."qtd_acessos" ;;
  }

  dimension: cluster_acessos{
    type: string
    sql:
    case
    when ${qtd_acessos} is null then null
    when ${qtd_acessos} = 1 then '1 Acesso Mensal'
    when ${qtd_acessos} between 2 and 10 then 'até 10 Acessos Mensais'
    when ${qtd_acessos} between 11 and 50 then 'até 50 Acessos Mensais'
    when ${qtd_acessos} between 51 and 100 then 'até 100 Acessos Mensais'
    when ${qtd_acessos} between 100 and 500 then 'até 500 Acessos Mensais'
    when ${qtd_acessos} > 500 then 'Acima de 500 Acessos Mensais'
    else ${qtd_acessos}
    end ;;

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
