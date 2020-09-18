view: acessos_produtos {
  derived_table: {
    sql:
select
customer.id as customer_id,
date(access_log.created_at) as access_log_created_at,
access_log.user_id as user_id,
(case
when service.id = 5  then 'Tracking'
when service.id = 19 then 'Search'
else 'Big Data'
end) as service
from customer
  inner join user_profile_customer on user_profile_customer.customer_id = customer.id
  inner join users on users.customer_profile_default_id = user_profile_customer.id
  inner join access_log on users.id = access_log.user_id
  inner join customer_plan on customer_plan.customer_id = customer.id
  inner join plan_complete on customer_plan.plan_complete_id = plan_complete.id
  inner join service on plan_complete.service_id = service.id
where access_log.created_at >= current_date - interval '120' day
  and (current_date between customer_plan.start and customer_plan.expiration)
  and customer.deleted_at is null
  and customer_plan.deleted_at is null
  and plan_complete.deleted_at is null
  and customer.fake_customer is false
    ;;
  }

  dimension: customer_id {
    type: number
    sql: ${TABLE}.customer_id ;;
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
    sql: ${TABLE}.access_log_created_at ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.user_id ;;
  }

  dimension: produto {
    type: string
    sql: ${TABLE}.service ;;
  }



}
