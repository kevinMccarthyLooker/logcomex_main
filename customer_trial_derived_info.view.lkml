view: customer_trial_derived_info {
  derived_table: {
    sql:
    with customer_has_active_trial as(
    SELECT
    customer."id"  AS customer_id,
    COUNT(CASE WHEN current_date between (customer_plan."trial_start") and (customer_plan."trial_end")
    and (customer_plan."deleted_at") is null
       THEN 1 ELSE NULL END) AS "customer_plan.active_trial_count"
    FROM public.customer  AS customer
    LEFT JOIN public.customer_plan  AS customer_plan ON (customer."id")=(customer_plan."customer_id")
    GROUP BY 1
    )

    ,customer_has_soon_to_be_expired_trial as(
    SELECT
    customer."id"  AS customer_id,
    COUNT(
    CASE
    --WHEN customer_plan."expiration" < current_date + 60  --expiring soon
    WHEN customer_plan."trial_end" < current_date + {{expiration_threshold._parameter_value}}  --expiring soon
    and
    (current_date between (customer_plan."trial_start") and (customer_plan."trial_expiration")
    and (customer_plan."deleted_at") is null
    ) --active
    and
    fake_customer = false
    then 1 else null end) as count_soon_to_be_expired_trials
    FROM public.customer  AS customer
    LEFT JOIN public.customer_plan  AS customer_plan ON (customer."id")=(customer_plan."customer_id")
    --where {% condition customer.site %}customer.site{%endcondition%}
    GROUP BY 1
    )


    select customer_has_active_trial.*,customer_has_soon_to_be_expired_trial.count_soon_to_be_expired_trials
    from customer_has_active_trial
    customer_has_active_trial left join customer_has_soon_to_be_expired_trial on customer_has_active_trial.customer_id=customer_has_soon_to_be_expired_trial.customer_id
           ;;
    #     persist_for: "24 hour"
    #     sql_trigger_value: select count(*) from public.customer_plan ;;
      datagroup_trigger: my_datagroup
      indexes: ["customer_id"]
    }

    parameter: expiration_threshold {
      type: number
      default_value: "60"
    }


    dimension: count_soon_to_be_expired_trials {
      type: number
    }

    dimension:has_soon_to_be_expired_trials {
      type: yesno
      sql: ${count_soon_to_be_expired_trials}>0;;
    }

    dimension: customer_id {
      hidden: yes
      type: string
      sql: ${TABLE}.customer_id ;;
    }


    dimension: customer_plan_active_trial_count {
      type: number
      sql: ${TABLE}."customer_plan.active_trial_count" ;;
    }

    dimension: has_active_trial {
      type: yesno
      sql:  ${customer_plan_active_trial_count}>0;;
    }

  }
