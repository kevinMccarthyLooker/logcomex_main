view: plan_info_join {
derived_table: {
  sql:
    SELECT
    customer_plan."id"  as customer_plan_id,
    sum(plan_info.monthly_searches) as sum_monthly_searches
    from customer
    inner join customer_plan on customer.id = customer_plan.customer_id
    inner join plan_complete on customer_plan.plan_complete_id = plan_complete.id
    inner join plan_info on
    CASE WHEN customer_plan.plan_info_id IS NULL THEN plan_complete.plan_info_id = plan_info.id
         WHEN customer_plan.plan_info_id IS NOT NULL THEN customer_plan.plan_info_id = plan_info.id
    END
    GROUP BY 1
     ;;

    datagroup_trigger: internal_only_datagroup
  indexes: ["customer_plan_id"]
  }

  parameter: expiration_threshold {
    type: number
    default_value: "60"
  }

  dimension: customer_plan_id {
    hidden: yes
    type: string
    sql: ${TABLE}.customer_plan_id ;;
  }

  dimension: sum_monthly_searches {
    type: number
  }

  dimension: has_blocked_plan {
    type: yesno
    sql:  ${sum_monthly_searches}=0;;
  }

}
