view: acessos_produtos {
  derived_table: {
    sql:
select row_number() over() as id,*
from(
select 'Big Data' as  produto, -- acessos do big data
     customer.id as customer_id,
     customer."name" as customer_name,
     report_log.user_id,
     users."name" as user_name,
     (case
     when report_log.report_type_id = 1 then 'Screen'
     when report_log.report_type_id = 2 then 'Excel'
     when report_log.report_type_id = 3 then 'Api'
     else 'Erro'
     end) as tipo,
       date(report_log.created_at) as log_created_at
  from customer
      inner join user_profile_customer on user_profile_customer.customer_id = customer.id
      inner join users on users.customer_profile_default_id = user_profile_customer.id
      inner join report_log on users.id = report_log.user_id
      inner join customer_plan on customer_plan.customer_id = customer.id
      inner join plan_complete on customer_plan.plan_complete_id = plan_complete.id
      inner join (select * from service where id <> 5) service on plan_complete.service_id = service.id -- dados do big data , diferente de 5, pois 5 é tracking
    where (current_date between customer_plan.start and customer_plan.expiration)
    and customer.deleted_at is null
    and customer_plan.deleted_at is null
    and plan_complete.deleted_at is null
    and customer.fake_customer is false
    and customer.id = 10
  group by 1,2,3,4,5,6,7
  union all -- acessos do search
  select 'Search' as produto,
     customer.id as customer_id,
     customer.name as customer_name,
     fh.user_id as user_id,
     users.name as user_name,
       (case
     when fh."source" = 'UNKNOWN' then 'Api'
     else 'Screen'
     end) as tipo,
     date(fh.created_at) as log_created_at
  from customer
    inner join user_profile_customer on user_profile_customer.customer_id = customer.id
    inner join users on users.customer_profile_default_id = user_profile_customer.id
    inner join filter_history fh on users.id = fh.user_id
    inner join customer_plan on customer_plan.customer_id = customer.id
    inner join plan_complete on customer_plan.plan_complete_id = plan_complete.id
    inner join (select * from service where id = 19) service on plan_complete.service_id = service.id -- dados do search
  where (current_date between customer_plan.start and customer_plan.expiration)
    and customer.deleted_at is null
    and customer_plan.deleted_at is null
    and plan_complete.deleted_at is null
    and customer.fake_customer is false
    and customer.id = 10
  group by 1, 2,3,4,5,6,7
  union all
  select 'Tracking' as produto,
    customer.id as customer_id,
    customer.name as customer_name,
    t3.user_id as user_id,
    users.name as user_name,
    (case
    when t3.user_id isnull then 'Robô'
    else 'Screen'
    end) as tipo,
        date(t3.created_at) as log_created_at
    from customer
    inner join tracking t3 on customer.id = t3.customer_id
    left join users on users.id = t3.user_id
    inner join customer_plan on customer_plan.customer_id = customer.id
    inner join plan_complete on customer_plan.plan_complete_id = plan_complete.id
    inner join (select * from service where id = 5) service on plan_complete.service_id = service.id
  where (current_date between customer_plan.start and customer_plan.expiration)
    and customer.deleted_at is null
    and customer_plan.deleted_at is null
    and plan_complete.deleted_at is null
    and customer.fake_customer is false
    and customer.id = 10
  group by 1,2,3,4,5,6,7) as qq1
 ;;
  }

  dimension: id {
    type: number
    primary_key: yes
    hidden: yes
    sql: ${TABLE}.id ;;
  }

  dimension: produto {
    type: string
    sql: ${TABLE}.produto ;;
  }

  dimension: customer_id {
    type: number
    sql: ${TABLE}.customer_id ;;
  }

  dimension: customer_name {
    type: string
    sql: ${TABLE}.customer_name ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.user_id ;;
  }

  dimension: user_name {
    type: string
    sql: ${TABLE}.user_name ;;
  }

  dimension: tipo_acesso {
    type: string
    sql: ${TABLE}.tipo ;;
  }

  dimension_group: data_criacao {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      year
    ]
    sql: ${TABLE}.log_created_at ;;
  }

  measure: count {
    type: count
  }


}
