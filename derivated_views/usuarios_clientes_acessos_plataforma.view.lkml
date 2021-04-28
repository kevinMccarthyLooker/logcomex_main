view: usuarios_clientes_acessos_plataforma {

  derived_table: {
    sql:
    select *,
case
when user_created <= anomes then true
else false
end as existia
from
  (
    select
    qq1.anomes,
    qq1.customer_name,
    qq1.customer_id,
    qq1.user_name,
    qq1.user_email,
    qq1.user_id,
    qq1.user_created,
    case
    when qq2.user_id is null then false
    else true
    end as acessou
    from
      (
        select
        mes as anomes,
        customer."name" as customer_name,
        customer."id" AS customer_id,
        u."name" as user_name,
        u.id as user_id,
        u.email as user_email,
        last_day(u.created_at) as user_created
        FROM public.customer  AS customer
        inner join user_profile_customer upc on upc.customer_id = customer.id
        inner join users u on u.id = upc.user_id
        LEFT JOIN public.customer_plan  AS customer_plan ON (customer."id")=(customer_plan."customer_id")
        LEFT JOIN (select last_day(date '2019-06-01' + (interval '1' month * generate_series(0,30))) as mes) as meses on 1 = 1
        where (date(meses.mes) between (date(customer_plan."start")) and last_day(date((customer_plan."expiration"))))
          and (customer."fake_customer")=false
          and customer.deleted_at is null
          and customer_plan.deleted_at is null
          and mes between '06-01-2019' and '01-31-2031'
          and upc.deleted_at is null
          and u.deleted_at is null
          --and customer.id = 1259
          and u.email not like '%@logcomex.com'
        group by 1,2,3,4,5,6,7
      ) as qq1
    left join
      (
        select
        last_day(al.created_at) as anomes,
        al.customer_id,
        al.user_id
        FROM access_log al
        inner join customer c2 on c2.id = al.customer_id
        inner join customer_plan cp on cp.customer_id = c2.id
        where (date(al.created_at) between cp."start" and cp.expiration or date(al.created_at) between cp.trial_start and cp.trial_end)
        and al.created_at between '06-01-2019' and '01-31-2031'
        and c2.fake_customer is false and c2.deleted_at is null
        and cp.deleted_at is null
        group by 1,2,3
        --order by 1 asc
      ) as qq2 on qq2.anomes = qq1.anomes and qq2.customer_id = qq1.customer_id and qq2.user_id = qq1.user_id
  ) as qq3;;
  }

  dimension: customer_id {
    type: number
    sql: ${TABLE}."customer_id" ;;
  }

  dimension: customer_name{
    type: string
    sql: ${TABLE}."customer_name" ;;
  }

  dimension: user_name{
    type: string
    sql: ${TABLE}."user_name" ;;
  }

  dimension: user_email{
    type: string
    sql: ${TABLE}."user_email" ;;
  }

  dimension: user_id{
    type: string
    sql: ${TABLE}."user_id" ;;
  }

  dimension: acessou {
    type: yesno
    sql: ${TABLE}."acessou" ;;
  }

  dimension: existia {
    type: yesno
    sql: ${TABLE}."existia" ;;
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
    drill_fields: [customer_id,customer_name,user_name,user_email,user_id,anomes_month]
  }


}
