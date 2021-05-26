view: trials_ativos_mes {

  derived_table: {
    sql:
     SELECT
    mes as anomes,
    customer."id" AS customer_id,
    customer."name" as nome,
    customer_plan.trial_start,
    customer_plan.trial_end,
    customer."id" AS customer_id_measure,
    customer_plan.id as customer_plan_id,
    case
    when pc.service_id = 5 then (case when tpi.id is not null and customer.cnpj is not null then true else false end)
    else null
    end as tracking_real_trial
    FROM public.customer  AS customer
    LEFT JOIN public.customer_plan  AS customer_plan ON (customer."id")=(customer_plan."customer_id")
    left join public.plan_complete pc on pc.id = customer_plan.plan_complete_id
    LEFT JOIN tracking_plan_info tpi on tpi.id = customer_plan.tracking_plan_info_id
    LEFT JOIN (select last_day(date '2019-06-01' + (interval '1' month * generate_series(0,30))) as mes) as meses on 1 = 1
    WHERE (meses.mes between (customer_plan.trial_start) and last_day(customer_plan.trial_end)
    --WHERE (meses.mes between (customer_plan.trial_start) and (customer_plan.trial_end)
        and (customer_plan."deleted_at") is null) AND ((customer."fake_customer")=false
        --and customer_id = 1991
        --and (customer."deleted_at") is null
        ) ;;
  }

  dimension: customer_id {
    type: number
    sql: ${TABLE}."customer_id" ;;
  }

  dimension: customer_plan_id {
    type: number
    sql: ${TABLE}."customer_plan_id" ;;
  }

  dimension: nome {
    type: string
    sql: ${TABLE}."nome" ;;
  }


  dimension: tracking_real_trial {
    type: yesno
    sql: ${TABLE}."tracking_real_trial" ;;
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

  dimension_group: trial_start {
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
    sql: ${TABLE}."trial_start" ;;
  }

  dimension_group: trial_end {
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
    sql: ${TABLE}."trial_end" ;;
  }

  measure: count_ativos_mes {
    type: count_distinct
    sql: ${TABLE}."customer_id_measure" ;;
    drill_fields: [detail*]
  }

  set: detail {
    fields: [customer_id, nome,customer.executive_name,customer.executive_area, service.name, trial_start_date, trial_end_date]
  }

}
