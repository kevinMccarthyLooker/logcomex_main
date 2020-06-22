view: cs_healthscore {
  derived_table: {
    sql:
    select customer_id,
          qtde_ultimos_30_dias,
          qtde_120_30_dias,
        case when (case when qtde_120_30_dias = 0 then 0 else round((qtde_ultimos_30_dias::numeric / (qtde_120_30_dias::numeric / 3))::numeric,2) end) >= 1.2 then 70
           when (case when qtde_120_30_dias = 0 then 0 else round((qtde_ultimos_30_dias::numeric / (qtde_120_30_dias::numeric / 3))::numeric,2) end) between 1 and 1.2 then 30
           when (case when qtde_120_30_dias = 0 then 0 else round((qtde_ultimos_30_dias::numeric / (qtde_120_30_dias::numeric / 3))::numeric,2) end) between 0.75 and 0.99 then 20
           when (case when qtde_120_30_dias = 0 then 0 else round((qtde_ultimos_30_dias::numeric / (qtde_120_30_dias::numeric / 3))::numeric,2) end) between 0.50 and 0.74 then 10
           when (case when qtde_120_30_dias = 0 then 0 else round((qtde_ultimos_30_dias::numeric / (qtde_120_30_dias::numeric / 3))::numeric,2) end) < 0.5 then 0
       else 999 end
       as healthScore_1,
       (select case when count(*) = 0 then 30
       when count(*) >= 1 and count(*) <= 3 then 25
       when count(*) >= 4 and count(*) <= 6 then 1
       when count(*) >= 7 and count(*) <= 10 then 0
       when count(*) > 10 then -10
       else 999 end as Healthscore_2
  from tickets_movidesk
  inner join customer on customer.id = tickets_movidesk.id_customer
  where tickets_movidesk.created_date >= current_date - interval '30' day
  and b.customer_id = customer.id)
from (
        select customer_id,
                 count(*),
                 count(case when (report_log_created_at >= current_date - interval '30 days') then 1 end) as qtde_ultimos_30_dias,
                 count(case when (report_log_created_at < current_date - interval '30 days') then 1 end) as qtde_120_30_dias
                 from
        (
                select customer.id as customer_id,
                     date(report_log.created_at) as report_log_created_at
        from customer
                  inner join user_profile_customer on user_profile_customer.customer_id = customer.id
                  inner join users on users.customer_profile_default_id = user_profile_customer.id
                  inner join report_log on users.id = report_log.user_id
                  inner join customer_plan on customer_plan.customer_id = customer.id
                  inner join plan_complete on customer_plan.plan_complete_id = plan_complete.id
                  inner join (select * from service where id <> 5) service on plan_complete.service_id = service.id
                where report_log.created_at >= current_date - interval '120' day
                  and (current_date between customer_plan.start and customer_plan.expiration)
                  and customer.deleted_at is null
                  and customer_plan.deleted_at is null
                  and plan_complete.deleted_at is null
                  and customer.fake_customer is false
                group by 1, 2
        ) a
        group by 1
        order by 2 asc
) b
where qtde_120_30_dias > 0

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

  dimension: customer_id {
    hidden: yes
    type: string
    sql: ${TABLE}.customer_id ;;
  }

  dimension: healthScore_Acesso {
    type: number
    sql: ${TABLE}.healthScore_1 ;;
    }

  dimension: healthScore_Tickets {
    type: number
    sql: ${TABLE}.healthScore_2 ;;
    }

  dimension: healthScore_Total {
    type: number
    sql: ${TABLE}.healthScore_1 + ${TABLE}.healthScore_2 ;;
  }

  dimension: healthScore_Status {
    type: string
    sql:  case
           when (${TABLE}.healthScore_1 + ${TABLE}.healthScore_2) < 40 then 'Vermelho'
           when (${TABLE}.healthScore_1 + ${TABLE}.healthScore_2) between 40 and 70 then 'Amarelo'
           when (${TABLE}.healthScore_1 + ${TABLE}.healthScore_2) > 70 then 'Verde'
          end
           ;;
  }
}
