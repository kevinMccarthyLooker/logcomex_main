view: cs_novo_health_score {

derived_table: {
    sql:
    select distinct
c.id as customer_id,
(case
when (big_search.qtde_120_30_dias = 0 and big_search.qtde_ultimos_30_dias > 0) then 10 -- cliente voltou a usar nos ultimo 30 dias
when (case when big_search.qtde_120_30_dias = 0 then 0 else round((big_search.qtde_ultimos_30_dias::numeric / (big_search.qtde_120_30_dias::numeric / 3))::numeric,2) end) > 1 then 20
when (case when big_search.qtde_120_30_dias = 0 then 0 else round((big_search.qtde_ultimos_30_dias::numeric / (big_search.qtde_120_30_dias::numeric / 3))::numeric,2) end) between 0.9 and 1 then 10
when (case when big_search.qtde_120_30_dias = 0 then 0 else round((big_search.qtde_ultimos_30_dias::numeric / (big_search.qtde_120_30_dias::numeric / 3))::numeric,2) end) < 0.9 then 0
else null
end)
as usab_big_search,
(case
when (tracking.qtde_120_30_dias = 0 and tracking.qtde_ultimos_30_dias > 0) then 10 -- cliente voltou a usar nos ultimo 30 dias
when (case when tracking.qtde_120_30_dias = 0 then 0 else round((tracking.qtde_ultimos_30_dias::numeric / (tracking.qtde_120_30_dias::numeric / 3))::numeric,2) end) > 1 then 20
when (case when tracking.qtde_120_30_dias = 0 then 0 else round((tracking.qtde_ultimos_30_dias::numeric / (tracking.qtde_120_30_dias::numeric / 3))::numeric,2) end) between 0.9 and 1 then 10
when (case when tracking.qtde_120_30_dias = 0 then 0 else round((tracking.qtde_ultimos_30_dias::numeric / (tracking.qtde_120_30_dias::numeric / 3))::numeric,2) end) < 0.9 then 0
else null
end)
as usab_tracking,
(case
when tickets_movi.qtd_tickets = 0 then 20
when tickets_movi.qtd_tickets isnull then 20
when tickets_movi.qtd_tickets >= 1 and tickets_movi.qtd_tickets <= 6 then 10
when tickets_movi.qtd_tickets > 6 then 0
else null
end)
as pontos_qtd_tickets,
(case
when (survey_movi.positive_negative_response) >= 4 then 20
when (survey_movi.positive_negative_response) between 3 and 3.9 then 10
when (survey_movi.positive_negative_response) < 3 then 0
when (survey_movi.positive_negative_response) isnull then 20 -- nunca respondeu uma pesquisa ou nao tem chamado, nota maxima para nao ser penalizado
end)
as satisfaction,
(case
when (acessos_usuarios.qtde_120_30_dias = 0 and acessos_usuarios.qtde_ultimos_30_dias > 0) then 10 --cliente voltou a acessar nos ultimos 30 dias
when (case when acessos_usuarios.qtde_120_30_dias = 0 then 0 else round((acessos_usuarios.qtde_ultimos_30_dias::numeric / (acessos_usuarios.qtde_120_30_dias::numeric / 3))::numeric,2) end) > 1 then 20
when (case when acessos_usuarios.qtde_120_30_dias = 0 then 0 else round((acessos_usuarios.qtde_ultimos_30_dias::numeric / (acessos_usuarios.qtde_120_30_dias::numeric / 3))::numeric,2) end) between 0.9 and 1 then 10
when (case when acessos_usuarios.qtde_120_30_dias = 0 then 0 else round((acessos_usuarios.qtde_ultimos_30_dias::numeric / (acessos_usuarios.qtde_120_30_dias::numeric / 3))::numeric,2) end) < 0.9 then 0
else null
end)
as acessos_usuarios,
(case
when (case when crescimento_cliente.qtde_365_dias = 0 then 0 else round((crescimento_cliente.qtde_ultimos_30_dias::numeric / (crescimento_cliente.qtde_365_dias::numeric / 12))::numeric,2) end) > 1 then 20
when (case when crescimento_cliente.qtde_365_dias = 0 then 0 else round((crescimento_cliente.qtde_ultimos_30_dias::numeric / (crescimento_cliente.qtde_365_dias::numeric / 12))::numeric,2) end) between 0.9 and 1 then 10
when (case when crescimento_cliente.qtde_365_dias = 0 then 0 else round((crescimento_cliente.qtde_ultimos_30_dias::numeric / (crescimento_cliente.qtde_365_dias::numeric / 12))::numeric,2) end) < 0.9 then 0
else null
end)
as pontos_crescimento_cliente
from customer c
inner join customer_plan cp on cp.customer_id = c.id
inner join plan_complete pc on cp.plan_complete_id = pc.id
left join(  -- adicionando dados de uso search e big data
select customer_id,
count(case when (log_created_at >= current_date - interval '30 days') then 1 end) as qtde_ultimos_30_dias,
count(case when (log_created_at < current_date - interval '30 days') then 1 end) as qtde_120_30_dias
from(
    select customer.id as customer_id,
    date(report_log.created_at) as log_created_at
  from customer
      inner join user_profile_customer on user_profile_customer.customer_id = customer.id
      inner join users on users.customer_profile_default_id = user_profile_customer.id
      inner join report_log on users.id = report_log.user_id
      inner join customer_plan on customer_plan.customer_id = customer.id
      inner join plan_complete on customer_plan.plan_complete_id = plan_complete.id
      inner join (select * from service where id <> 5) service on plan_complete.service_id = service.id -- dados do big data , diferente de 5, pois 5 é tracking
    where report_log.created_at >= current_date - interval '120' day
    and (current_date between customer_plan.start and customer_plan.expiration)
    and customer.deleted_at is null
    and customer_plan.deleted_at is null
    and plan_complete.deleted_at is null
    and customer.fake_customer is false
  group by 1, 2
  union all -- para manter registros de mesma data e unir com o search
  select customer.id as customer_id,
  date(fh.created_at) as log_created_at
  from customer
    inner join user_profile_customer on user_profile_customer.customer_id = customer.id
    inner join users on users.customer_profile_default_id = user_profile_customer.id
    inner join filter_history fh on users.id = fh.user_id
    inner join customer_plan on customer_plan.customer_id = customer.id
    inner join plan_complete on customer_plan.plan_complete_id = plan_complete.id
    inner join (select * from service where id = 19) service on plan_complete.service_id = service.id -- dados do search
  where fh.created_at >= current_date - interval '120' day
    and (current_date between customer_plan.start and customer_plan.expiration)
    and customer.deleted_at is null
    and customer_plan.deleted_at is null
    and plan_complete.deleted_at is null
    and customer.fake_customer is false
  group by 1, 2
    ) a
group by 1
     ) as big_search on big_search.customer_id = c.id
left join(  -- adicionando dados do tracking
select customer_id,
count(case when (log_created_at >= current_date - interval '30 days') then 1 end) as qtde_ultimos_30_dias,
count(case when (log_created_at < current_date - interval '30 days') then 1 end) as qtde_120_30_dias
from(
    select customer.id as customer_id,
    date(t3.created_at) as log_created_at
    from customer
    --inner join user_profile_customer on user_profile_customer.customer_id = customer.id
    --inner join users on users.customer_profile_default_id = user_profile_customer.id
    inner join tracking t3 on customer.id = t3.customer_id
    inner join customer_plan on customer_plan.customer_id = customer.id
    inner join plan_complete on customer_plan.plan_complete_id = plan_complete.id
    inner join (select * from service where id = 5) service on plan_complete.service_id = service.id
  where t3.created_at >= current_date - interval '120' day
    and (current_date between customer_plan.start and customer_plan.expiration)
    and customer.deleted_at is null
    and customer_plan.deleted_at is null
    and plan_complete.deleted_at is null
    and customer.fake_customer is false
  group by 1, 2
    ) a
group by 1
     ) as tracking on tracking.customer_id = c.id
left join(  -- adicionando dados dos acessos dos usuários distintos
select customer_id,
count(case when (access_log_created_at >= current_date - interval '30 days') then 1 end) as qtde_ultimos_30_dias,
count(case when (access_log_created_at < current_date - interval '30 days') then 1 end) as qtde_120_30_dias
from(
    select distinct customer.id as customer_id,
    date(access_log.created_at) as access_log_created_at,
  access_log.user_id
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
    group by 1, 2,3
    ) a
group by 1
     ) as acessos_usuarios on acessos_usuarios.customer_id = c.id
left join(  -- adicionando dados dos tickets movidesk
select tm.id_customer,
count(*) as qtd_tickets
from tickets_movidesk tm
left join customer on customer.id = tm.id_customer
where tm.created_date >= current_date - interval '30' day
group by 1
       ) as tickets_movi on tickets_movi.id_customer = c.id
left join(  -- adicionando dados das pesquisa de satisfacao movidesk
select tm.id_customer , avg(ssm.positive_negative_response) as positive_negative_response
from satisfaction_survey_movidesk ssm
inner join tickets_movidesk tm on tm.id = ssm.tickets_movidesk_id
group by tm.id_customer
       ) as survey_movi on survey_movi.id_customer = c.id
left join ( -- adicionando crescimento do cliente maritimo e aereo
select
cdconsignatario,
count(*),
count(case when (dtemissao >= current_date - interval '30 days') then 1 end) as qtde_ultimos_30_dias,
count(case when (dtemissao < current_date - interval '30 days') then 1 end) as qtde_365_dias
from
(select id,
cdconsignatario,
dtemissao
from sistema.db_maritimo dm
where dm.tipoconhecimento in ('10','12','15') -- direto, house, sub
and dm.cdconsignatario is not null -- retirando consignatarios nulos
and cdconsignatario in (select cnpj from customer where fake_customer is false)--(select cnpj from api.customer where fake_customer is false)
and dtemissao >= current_date - interval '395' day -- ultimo mes e 365 dias antes
union all
select aad.id as id,
ac.cnpj as cdconsignatario,
aad.data_hawb as dtemissao
from aereo.aereo_awb_details aad
inner join aereo.aereo_consignatario ac on ac.id = aad.consignatario_id
where ac.cnpj in (select cnpj from customer where fake_customer is false)
and aad.data_hawb >= current_date - interval '395' day
) as q1
group by cdconsignatario
) as crescimento_cliente on left(crescimento_cliente.cdconsignatario,8) = left(c.cnpj,8)
where current_date between cp.start and cp.expiration
  and c.deleted_at is null
  and cp.deleted_at is null
  and pc.deleted_at is null
  and c.fake_customer is false
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

  dimension: pontuacao_usab_tracking {
    type: number
    sql: ${TABLE}.usab_tracking ;;
  }

  dimension: pontuacao_acessos_usuarios {
    type: number
    sql: ${TABLE}.acessos_usuarios ;;
  }

  dimension: pontuacao_tickets {
    type: number
    sql: ${TABLE}.pontos_qtd_tickets ;;
  }

  dimension: pontuacao_survey {
    type: number
    sql: ${TABLE}.satisfaction ;;
  }

  dimension: pontos_crescimento_cliente {
    type: number
    sql: ${TABLE}.pontos_crescimento_cliente ;;
  }

  dimension: healthScore_Total {
    type: number
    sql: coalesce((coalesce(${TABLE}.usab_big_search,${TABLE}.usab_tracking) +
          coalesce(${TABLE}.usab_tracking,${TABLE}.usab_big_search)),0)/2 +
          coalesce(${TABLE}.acessos_usuarios,0) +
          coalesce(${TABLE}.pontos_qtd_tickets,0) +
          coalesce(${TABLE}.satisfaction,0) +
          coalesce(${TABLE}.pontos_crescimento_cliente,0);;
  }

  dimension: healthScore_Status {
    type: string
    sql:  case
           when ${healthScore_Total} < 50 then 'Vermelho'
           when ${healthScore_Total} between 50 and 70 then 'Amarelo'
           when ${healthScore_Total} > 70 then 'Verde'
          end
           ;;
  }


}
