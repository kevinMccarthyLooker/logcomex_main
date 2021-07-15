view: usuarios_trials_acessos_tracking {

  derived_table: {
    sql:
    select -- trials modal maritimo
    'Maritimo' as modal,
    mes as anomes,
    customer."name" as customer_name,
    customer."id" AS customer_id,
    u."name" as user_name,
    u.id as user_id,
    u.email as user_email,
    u.created_at as user_created
    FROM public.customer  AS customer
    inner join tracking t2 on t2.customer_id = customer.id
    inner join users u on u.id = t2.user_id
    inner join public.customer_plan  AS customer_plan ON (customer."id")=(customer_plan."customer_id")
    inner join (select last_day(date '2019-06-01' + (interval '1' month * generate_series(0,30))) as mes) as meses on 1 = 1
    where (date(meses.mes) between (date(customer_plan."trial_start")) and last_day(date((customer_plan.trial_end))))
      and date(meses.mes) = last_day(date(t2.created_at))
      and (t2.tracking_maritime_load_category_id = 1 or t2.tracking_maritime_load_category_id is null)
      and (customer."fake_customer")=false
      and customer.deleted_at is null
      and customer_plan.deleted_at is null
      and mes between '06-01-2019' and '01-31-2031'
      and u.deleted_at is null
      --and customer.id = 1259
      and u.email not like '%@logcomex.com'
    group by 1,2,3,4,5,6,7,8
    union
    select -- trials modal aereo
    'Aereo' as modal,
    mes as anomes,
    customer."name" as customer_name,
    customer."id" AS customer_id,
    u."name" as user_name,
    u.id as user_id,
    u.email as user_email,
    u.created_at as user_created
    FROM public.customer  AS customer
    inner join tracking_aerial ta on ta.customer_id = customer.id
    inner join users u on u.id = ta.user_id
    inner join public.customer_plan  AS customer_plan ON (customer."id")=(customer_plan."customer_id")
    inner join (select last_day(date '2019-06-01' + (interval '1' month * generate_series(0,30))) as mes) as meses on 1 = 1
    where (date(meses.mes) between (date(customer_plan."trial_start")) and last_day(date((customer_plan."trial_end"))))
      and date(meses.mes) = last_day(date(ta.created_at))
      and (customer."fake_customer")=false
      and customer.deleted_at is null
      and customer_plan.deleted_at is null
      and mes between '06-01-2019' and '01-31-2031'
      and u.deleted_at is null
      --and customer.id = 1259
      and u.email not like '%@logcomex.com'
    group by 1,2,3,4,5,6,7,8;;

  }

  dimension: customer_id {
    type: number
    sql: ${TABLE}."customer_id" ;;
  }

  dimension: modal{
    type: string
    sql: ${TABLE}."modal" ;;
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

  dimension_group: user_created {
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
    sql: ${TABLE}."user_created" ;;
  }

  measure: count {
    type: count
    drill_fields: [customer_id,customer_name,user_name,user_email,user_id,user_created_date,anomes_month]
  }

  measure: count_users_distinct {
    type: count_distinct
    sql: ${user_id} ;;
    drill_fields: [customer_id,customer_name,user_name,user_email,user_id,user_created_date,anomes_month]
  }


}
