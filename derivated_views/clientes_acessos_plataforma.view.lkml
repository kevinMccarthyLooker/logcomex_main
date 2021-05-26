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
    qq2.qtd_acessos,
    qq2.qtd_dias_acessados
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
        count(distinct al.id) as qtd_acessos,
        count(distinct date(al.created_at)) as qtd_dias_acessados
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

  dimension: qtd_dias_acessados {
    type: number
    sql: ${TABLE}."qtd_dias_acessados" ;;
  }

  dimension: cluster_acessos{
    type: string
    sql:
    case
    when ${qtd_acessos} is null then '0 access in the month'
    when ${qtd_acessos} = 1 then '1 access in the month'
    when ${qtd_acessos} between 2 and 5 then 'up to 5 accesses in the month'
    when ${qtd_acessos} between 6 and 10 then 'up to 10 accesses in the month'
    when ${qtd_acessos} between 11 and 30 then 'up to 30 accesses in the month'
    when ${qtd_acessos} between 31 and 50 then 'up to 50 accesses in the month'
    when ${qtd_acessos} between 51 and 100 then 'up to 100 accesses in the month'
    when ${qtd_acessos} > 100 then 'over 100 accesses in the month'
    else ${qtd_acessos}::text
    end ;;
  }

  dimension: cluster_dias{
    type: string
    sql:
    case
    when ${qtd_dias_acessados} is null then '0 Days in the month'
    when ${qtd_dias_acessados} = 1 then '1 Day in the month'
    when ${qtd_dias_acessados} between 2 and 3 then 'up to 3 days in the month'
    when ${qtd_dias_acessados} between 4 and 7 then 'up to 7 days in the month'
    when ${qtd_dias_acessados} between 8 and 15 then 'up to 15 days in the month'
    when ${qtd_dias_acessados} between 16 and 20 then 'up to 20 days in the month'
    when ${qtd_dias_acessados} > 20  then 'Over 20 days in the month'
    else ${qtd_dias_acessados}::text
    end ;;
  }

  dimension: cluster_sequencia{
    type: number
    sql:
    case
    when ${qtd_acessos} is null then 0
    when ${qtd_acessos} = 1 then 1
    when ${qtd_acessos} between 2 and 5 then 2
    when ${qtd_acessos} between 6 and 10 then 3
    when ${qtd_acessos} between 11 and 30 then 4
    when ${qtd_acessos} between 31 and 50 then 5
    when ${qtd_acessos} between 51 and 100 then 6
    when ${qtd_acessos} > 100 then 7
    else 8
    end ;;
  }

  dimension: cluster_sequencia_dias{
    type: number
    sql:
    case
    when ${qtd_dias_acessados} is null then 0
    when ${qtd_dias_acessados} = 1 then 1
    when ${qtd_dias_acessados} between 2 and 3 then 2
    when ${qtd_dias_acessados} between 4 and 7 then 3
    when ${qtd_dias_acessados} between 8 and 15 then 4
    when ${qtd_dias_acessados} between 16 and 20 then 5
    when ${qtd_dias_acessados} > 20  then 6
    else null
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
    drill_fields: [customer_id,customer_name,qtd_acessos,qtd_dias_acessados,anomes_month]
  }


}
