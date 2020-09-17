view: cs_novo_health_score {

derived_table: {
    sql:
    select customer_id,
          -- name,
          qtde_ultimos_30_dias,
          qtde_120_30_dias,
        case when (case when qtde_120_30_dias = 0 then 0 else round((qtde_ultimos_30_dias::numeric / (qtde_120_30_dias::numeric / 3))::numeric,2) end) > 1 then 20
           when (case when qtde_120_30_dias = 0 then 0 else round((qtde_ultimos_30_dias::numeric / (qtde_120_30_dias::numeric / 3))::numeric,2) end) between 0.9 and 1 then 10
           when (case when qtde_120_30_dias = 0 then 0 else round((qtde_ultimos_30_dias::numeric / (qtde_120_30_dias::numeric / 3))::numeric,2) end) < 0.9 then 0
       else 999 end
       as usab_big_search,
       (select
         case when count(*) = 0 then 10
         when count(*) >= 1 and count(*) <= 6 then 5
         when count(*) > 6 then 0
         else 999 end as qtd_tickets
      from tickets_movidesk
      inner join customer on customer.id = tickets_movidesk.id_customer
      where tickets_movidesk.created_date >= current_date - interval '30' day
      and b.customer_id = customer.id),
      (select   (case
    when (positive_negative_response) >= 4 then 10
    when (positive_negative_response) between 3 and 3.9 then 5
    when (positive_negative_response) < 3 then 0
    when (positive_negative_response) isnull then -1
    end)
    as ultima_satisfaction
    from(
    select tm.id_customer , positive_negative_response
    from satisfaction_survey_movidesk ssm
    inner join tickets_movidesk tm on tm.id = ssm.tickets_movidesk_id
    where ssm.response_date = (select max(ssm2.response_date)
    from satisfaction_survey_movidesk ssm2
    inner join tickets_movidesk tm2 on tm2.id = ssm2.tickets_movidesk_id
    where tm2.id_customer = tm.id_customer)
    ) aa
    where aa.id_customer = b.customer_id)
    from (
       select customer_id,
        name,
                 count(*),
                 count(case when (log_created_at >= current_date - interval '30 days') then 1 end) as qtde_ultimos_30_dias,
                 count(case when (log_created_at < current_date - interval '30 days') then 1 end) as qtde_120_30_dias
                 from
        (
                select customer.id as customer_id,
                customer."name" as name,
                     date(report_log.created_at) as log_created_at
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
                group by 1, 2,3
                union all -- para manter registros de mesma data e unir com o search
                select customer.id as customer_id,
                customer."name" as name,
                     date(fh.created_at) as log_created_at
        from customer
                  inner join user_profile_customer on user_profile_customer.customer_id = customer.id
                  inner join users on users.customer_profile_default_id = user_profile_customer.id
                  inner join filter_history fh on users.id = fh.user_id
                  inner join customer_plan on customer_plan.customer_id = customer.id
                  inner join plan_complete on customer_plan.plan_complete_id = plan_complete.id
                  inner join (select * from service where id = 19) service on plan_complete.service_id = service.id
                where fh.created_at >= current_date - interval '120' day
                  and (current_date between customer_plan.start and customer_plan.expiration)
                  and customer.deleted_at is null
                  and customer_plan.deleted_at is null
                  and plan_complete.deleted_at is null
                  and customer.fake_customer is false
                group by 1, 2,3

        ) a
        group by 1,2
        order by 2 asc
) b
where qtde_120_30_dias > 0
    ;;

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

  dimension: pontuacao_usab_big_search {
    type: number
    sql: ${TABLE}.usab_big_search ;;
  }

  dimension: pontuacao_tickets {
    type: number
    sql: ${TABLE}.qtd_tickets ;;
  }

  dimension: pontuacao_survey {
    type: number
    sql: ${TABLE}.ultima_satisfaction ;;
  }


  dimension: healthScore_Total {
    type: number
    sql: ${TABLE}.usab_big_search + ${TABLE}.qtd_tickets ;;
  }

  dimension: healthScore_Status {
    type: string
    sql:  case
           when (${TABLE}.usab_big_search + ${TABLE}.qtd_tickets) < 40 then 'Vermelho'
           when (${TABLE}.usab_big_search + ${TABLE}.qtd_tickets) between 40 and 70 then 'Amarelo'
           when (${TABLE}.usab_big_search + ${TABLE}.qtd_tickets) > 70 then 'Verde'
          end
           ;;
  }













}
