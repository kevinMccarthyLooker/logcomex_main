view: customer_derived_plan_info {
  derived_table: {
    sql:
with customer_has_active_plan as(
SELECT
customer."id"  AS customer_id,
COUNT(CASE WHEN current_date between (customer_plan."start") and (customer_plan."expiration")
and (customer_plan."deleted_at") is null
   THEN 1 ELSE NULL END) AS "customer_plan.active_plan_count"
FROM public.customer  AS customer
LEFT JOIN public.customer_plan  AS customer_plan ON (customer."id")=(customer_plan."customer_id")
GROUP BY 1
)

,customer_has_soon_to_be_expired_plan as(
SELECT
customer."id"  AS customer_id,
COUNT(
CASE
--WHEN customer_plan."expiration" < current_date + 60  --expiring soon
WHEN customer_plan."expiration" < current_date + {% parameter expiration_threshold_plans %}  --expiring soon
and
(current_date between (customer_plan."start") and (customer_plan."expiration")
and (customer_plan."deleted_at") is null
) --active
and
fake_customer = false
then 1 else null end) as count_soon_to_be_expired_plans
FROM public.customer  AS customer
LEFT JOIN public.customer_plan  AS customer_plan ON (customer."id")=(customer_plan."customer_id")
--where {% condition customer.site %}customer.site{%endcondition%}
GROUP BY 1
)


select customer_has_active_plan.*,customer_has_soon_to_be_expired_plan.count_soon_to_be_expired_plans
from customer_has_active_plan
customer_has_active_plan left join customer_has_soon_to_be_expired_plan on customer_has_active_plan.customer_id=customer_has_soon_to_be_expired_plan.customer_id
       ;;
#     persist_for: "24 hour"
#     sql_trigger_value: select count(*) from public.customer_plan ;;
    datagroup_trigger: my_datagroup
    indexes: ["customer_id"]
  }

 # parameter: expiration_threshold_plans {
#    type: number
#    default_value: "60"
#  }

  parameter: expiration_threshold_plans {
    type: number
    allowed_value: {
      label: "30 Dias"
      value: "30"
    }
    allowed_value: {
      label: "60 Dias"
      value: "60"
    }
    allowed_value: {
      label: "90 Dias"
      value: "90"
    }
  }


  dimension: count_soon_to_be_expired_plans {
    type: number
  }

  dimension:has_soon_to_be_expired_plans {
    type: yesno
    sql: ${count_soon_to_be_expired_plans}>0;;
  }

  dimension: customer_id {
    hidden: yes
    type: string
    sql: ${TABLE}.customer_id ;;
  }

  dimension: customer_plan_active_plan_count {
    type: number
    sql: ${TABLE}."customer_plan.active_plan_count" ;;
  }

  dimension: has_active_plan {
    type: yesno
    sql:  ${customer_plan_active_plan_count}>0;;
  }

}
