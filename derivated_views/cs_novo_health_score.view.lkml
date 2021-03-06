view: cs_novo_health_score {

derived_table: {
    sql:
select distinct
current_date as data_consulta,
c.id as customer_id,
(case
when (big_data.qtde_120_30_dias = 0 and big_data.qtde_ultimos_30_dias > 0) then 10 --cliente voltou a usar nos ultimo 30 dias
when (case when big_data.qtde_120_30_dias = 0 then 0 else round((big_data.qtde_ultimos_30_dias::numeric / (big_data.qtde_120_30_dias::numeric / 3))::numeric,2) end) > 1 then 20
when (case when big_data.qtde_120_30_dias = 0 then 0 else round((big_data.qtde_ultimos_30_dias::numeric / (big_data.qtde_120_30_dias::numeric / 3))::numeric,2) end) between 0.9 and 1 then 15
when (case when big_data.qtde_120_30_dias = 0 then 0 else round((big_data.qtde_ultimos_30_dias::numeric / (big_data.qtde_120_30_dias::numeric / 3))::numeric,2) end) between 0.8 and 0.89 then 10
when (case when big_data.qtde_120_30_dias = 0 then 0 else round((big_data.qtde_ultimos_30_dias::numeric / (big_data.qtde_120_30_dias::numeric / 3))::numeric,2) end) between 0.7 and 0.79 then 5
when (case when big_data.qtde_120_30_dias = 0 then 0 else round((big_data.qtde_ultimos_30_dias::numeric / (big_data.qtde_120_30_dias::numeric / 3))::numeric,2) end) < 0.7 then 0
else null
end)
as usab_big_data,
big_data.qtde_ultimos_30_dias as big_data_qtde_ultimos_30_dias,
big_data.qtde_120_30_dias as big_data_qtde_120_30_dias,
(case
when (dados_search.qtde_120_30_dias = 0 and dados_search.qtde_ultimos_30_dias > 0) then 10 --cliente voltou a usar nos ultimo 30 dias
when (case when dados_search.qtde_120_30_dias = 0 then 0 else round((dados_search.qtde_ultimos_30_dias::numeric / (dados_search.qtde_120_30_dias::numeric / 3))::numeric,2) end) > 1 then 20
when (case when dados_search.qtde_120_30_dias = 0 then 0 else round((dados_search.qtde_ultimos_30_dias::numeric / (dados_search.qtde_120_30_dias::numeric / 3))::numeric,2) end) between 0.9 and 1 then 15
when (case when dados_search.qtde_120_30_dias = 0 then 0 else round((dados_search.qtde_ultimos_30_dias::numeric / (dados_search.qtde_120_30_dias::numeric / 3))::numeric,2) end) between 0.8 and 0.89 then 10
when (case when dados_search.qtde_120_30_dias = 0 then 0 else round((dados_search.qtde_ultimos_30_dias::numeric / (dados_search.qtde_120_30_dias::numeric / 3))::numeric,2) end) between 0.7 and 0.79 then 5
when (case when dados_search.qtde_120_30_dias = 0 then 0 else round((dados_search.qtde_ultimos_30_dias::numeric / (dados_search.qtde_120_30_dias::numeric / 3))::numeric,2) end) < 0.7 then 0
else null
end)
as usab_search,
dados_search.qtde_ultimos_30_dias as search_qtde_ultimos_30_dias,
dados_search.qtde_120_30_dias as search_qtde_120_30_dias,
(case
when (tracking.qtde_120_30_dias = 0 and tracking.qtde_ultimos_30_dias > 0) then 10 --cliente voltou a usar nos ultimo 30 dias
when (case when tracking.qtde_120_30_dias = 0 then 0 else round((tracking.qtde_ultimos_30_dias::numeric / (tracking.qtde_120_30_dias::numeric / 3))::numeric,2) end) > 1 then 20
when (case when tracking.qtde_120_30_dias = 0 then 0 else round((tracking.qtde_ultimos_30_dias::numeric / (tracking.qtde_120_30_dias::numeric / 3))::numeric,2) end) between 0.9 and 1 then 15
when (case when tracking.qtde_120_30_dias = 0 then 0 else round((tracking.qtde_ultimos_30_dias::numeric / (tracking.qtde_120_30_dias::numeric / 3))::numeric,2) end) between 0.8 and 0.89 then 10
when (case when tracking.qtde_120_30_dias = 0 then 0 else round((tracking.qtde_ultimos_30_dias::numeric / (tracking.qtde_120_30_dias::numeric / 3))::numeric,2) end) between 0.7 and 0.79 then 5
when (case when tracking.qtde_120_30_dias = 0 then 0 else round((tracking.qtde_ultimos_30_dias::numeric / (tracking.qtde_120_30_dias::numeric / 3))::numeric,2) end) < 0.7 then 0
else null
end)
as usab_tracking,
tracking.qtde_ultimos_30_dias as tracking_qtde_ultimos_30_dias,
tracking.qtde_120_30_dias as tracking_qtde_120_30_dias,
(case
when tickets_hub.qtd_tickets = 0 then 10
when tickets_hub.qtd_tickets is null then 10
when tickets_hub.qtd_tickets >= 1 and tickets_hub.qtd_tickets <= 6 then 5
when tickets_hub.qtd_tickets > 6 then 0
else null
end)
as pontos_qtd_tickets,
(case
when (survey_movi_hub.value_response) >= 4 then 15
when (survey_movi_hub.value_response) between 3 and 3.9 then 7
when (survey_movi_hub.value_response) < 3 then 0
when (survey_movi_hub.value_response) isnull then 7  -- nunca respondeu uma pesquisa ou nao tem chamado, nota maxima para nao ser penalizado
end)
as satisfaction,
(case
when (acessos_usuarios.qtde_120_30_dias = 0 and acessos_usuarios.qtde_ultimos_30_dias > 0) then 10 --cliente voltou a acessar nos ultimos 30 dias
when (case when acessos_usuarios.qtde_120_30_dias = 0 then 0 else round((acessos_usuarios.qtde_ultimos_30_dias::numeric / (acessos_usuarios.qtde_120_30_dias::numeric / 3))::numeric,2) end) > 1 then 20
when (case when acessos_usuarios.qtde_120_30_dias = 0 then 0 else round((acessos_usuarios.qtde_ultimos_30_dias::numeric / (acessos_usuarios.qtde_120_30_dias::numeric / 3))::numeric,2) end) between 0.9 and 1 then 15
when (case when acessos_usuarios.qtde_120_30_dias = 0 then 0 else round((acessos_usuarios.qtde_ultimos_30_dias::numeric / (acessos_usuarios.qtde_120_30_dias::numeric / 3))::numeric,2) end) between 0.8 and 0.89 then 10
when (case when acessos_usuarios.qtde_120_30_dias = 0 then 0 else round((acessos_usuarios.qtde_ultimos_30_dias::numeric / (acessos_usuarios.qtde_120_30_dias::numeric / 3))::numeric,2) end) between 0.7 and 0.79 then 5
when (case when acessos_usuarios.qtde_120_30_dias = 0 then 0 else round((acessos_usuarios.qtde_ultimos_30_dias::numeric / (acessos_usuarios.qtde_120_30_dias::numeric / 3))::numeric,2) end) < 0.7 then 0
else null
end)
as acessos_usuarios,
acessos_usuarios.qtde_ultimos_30_dias as acessos_usuarios_qtde_ultimos_30_dias,
acessos_usuarios.qtde_120_30_dias as acessos_usuarios_qtde_120_30_dias,
(case
when titulos_omie.qtd_atrasados > 1 then 0
when titulos_omie.qtd_atrasados = 1 then 7
when titulos_omie.qtd_atrasados = 0 then 15
else null
end)
as pontos_titulos_omie,
(case
when (case when crescimento_cliente.qtde_365_dias = 0 then 0 else round((crescimento_cliente.qtde_ultimos_30_dias::numeric / (crescimento_cliente.qtde_365_dias::numeric / 12))::numeric,2) end) > 1 then 10
when (case when crescimento_cliente.qtde_365_dias = 0 then 0 else round((crescimento_cliente.qtde_ultimos_30_dias::numeric / (crescimento_cliente.qtde_365_dias::numeric / 12))::numeric,2) end) between 0.9 and 1 then 5
when (case when crescimento_cliente.qtde_365_dias = 0 then 0 else round((crescimento_cliente.qtde_ultimos_30_dias::numeric / (crescimento_cliente.qtde_365_dias::numeric / 12))::numeric,2) end) < 0.9 then 0
else null
end) as pontos_crescimento_cliente,
crescimento_cliente.qtde_365_dias as crescimento_cliente_qtde_365_dias,
crescimento_cliente.qtde_ultimos_30_dias as crescimento_cliente_qtde_30_dias,
(case
when nps_02_2021.nota > 8.9 then 20
when nps_02_2021.nota between 6.1 and 8.9 then 10 -- Alinhar notas com CS
when nps_02_2021.nota between 0 and 6.0 then 0
when nps_02_2021.nota is null then 7
else null
end) as pontuacao_nps_02_2021
from customer c
inner join customer_plan cp on cp.customer_id = c.id
inner join plan_complete pc on cp.plan_complete_id = pc.id
left join(  --adicionando dados de uso big data antigo, novo expo e novo impo
select customer_id,
count(case when (log_created_at >= current_date - interval '30 days') then 1 end) as qtde_ultimos_30_dias,
count(case when (log_created_at < current_date - interval '30 days') then 1 end) as qtde_120_30_dias
from(
select customer.id as customer_id,
date(report_log.created_at) as log_created_at
from customer
inner join customer_plan on customer_plan.customer_id = customer.id
inner join report_log on report_log.customer_plan_id = customer_plan.id
inner join users u on u.id = report_log.user_id
where report_log.created_at >= current_date - interval '120' day
and u.email not like '%@logcomex.com'
and customer.id in -- todos os clientes ativos com algum plano BI antigo
  (
    select distinct c.id
    from customer c
    inner join customer_plan cp on cp.customer_id = c.id
    inner join plan_complete pc on pc.id = cp.plan_complete_id
    where current_date between cp."start"  and cp.expiration
    and c.fake_customer is false
    and c.deleted_at is null
    and cp.deleted_at is null
    and pc.service_id in (1,2,3,6,8,9,10,12,13,14,16,17,15,18,11,4,7) -- todos do BI antigo
    and pc.deleted_at is null
  )
group by 1,2
union
select customer.id as customer_id,
date(fh.created_at) as log_created_at
from customer
inner join filter_history fh on fh.customer_id = customer.id
inner join users u on u.id = fh.user_id
inner join customer_plan on customer_plan.customer_id = customer.id
inner join plan_complete on customer_plan.plan_complete_id = plan_complete.id
inner join service on plan_complete.service_id = service.id -- dados do search
where fh.created_at >= current_date - interval '120' day
and (current_date between customer_plan.start and customer_plan.expiration)
and customer.deleted_at is null
and customer_plan.deleted_at is null
and plan_complete.deleted_at is null
and customer.fake_customer is false
and service.id in (21,22) -- novo expo e novo imp
and u.email not like '%@logcomex.com'
group by 1, 2
) a
group by 1
) as big_data on big_data.customer_id = c.id
left join(  --adicionando dados de uso search
select customer_id,
count(case when (log_created_at >= current_date - interval '30 days') then 1 end) as qtde_ultimos_30_dias,
count(case when (log_created_at < current_date - interval '30 days') then 1 end) as qtde_120_30_dias
from(
select customer.id as customer_id,
date(fh.created_at) as log_created_at
from customer
inner join filter_history fh on fh.customer_id = customer.id
inner join users u on u.id = fh.user_id
inner join customer_plan on customer_plan.customer_id = customer.id
inner join plan_complete on customer_plan.plan_complete_id = plan_complete.id
inner join (select * from service where id = 19) service on plan_complete.service_id = service.id -- dados do search
where fh.created_at >= current_date - interval '120' day
and (current_date between customer_plan.start and customer_plan.expiration)
and customer.deleted_at is null
and customer_plan.deleted_at is null
and plan_complete.deleted_at is null
and customer.fake_customer is false
and u.email not like '%@logcomex.com' -- desconsiderando usuarios da log
group by 1, 2
) a
group by 1
) as dados_search on dados_search.customer_id = c.id
left join(  --adicionando dados do tracking e tracking aereo
select customer_id,
count(case when (log_created_at >= current_date - interval '30 days') then 1 end) as qtde_ultimos_30_dias,
count(case when (log_created_at < current_date - interval '30 days') then 1 end) as qtde_120_30_dias
from(
select customer.id as customer_id,
date(t3.created_at) as log_created_at
from customer
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
union
select customer.id as customer_id,
date(t3.created_at) as log_created_at
from customer
inner join tracking_aerial t3 on customer.id = t3.customer_id
inner join customer_plan on customer_plan.customer_id = customer.id
inner join plan_complete on customer_plan.plan_complete_id = plan_complete.id
inner join (select * from service where id = 5) service on plan_complete.service_id = service.id
where t3.created_at >= current_date - interval '120' day
and (current_date between customer_plan.start and customer_plan.expiration)
and customer.deleted_at is null
and customer_plan.deleted_at is null
and plan_complete.deleted_at is null
and customer.fake_customer is false
group by 1,2
) a
group by 1
) as tracking on tracking.customer_id = c.id
left join(  --– adicionando dados dos acessos dos usuários distintos
select customer_id,
count(case when (access_log_created_at >= current_date - interval '30 days') then 1 end) as qtde_ultimos_30_dias,
count(case when (access_log_created_at < current_date - interval '30 days') then 1 end) as qtde_120_30_dias
from(
select distinct customer.id as customer_id,
date(access_log.created_at) as access_log_created_at,
access_log.user_id
from customer
inner join access_log on access_log.customer_id = customer.id
inner join users u on u.id = access_log.user_id
inner join customer_plan on customer_plan.customer_id = customer.id
inner join plan_complete on customer_plan.plan_complete_id = plan_complete.id
inner join service on plan_complete.service_id = service.id
where access_log.created_at >= current_date - interval '120' day
and (current_date between customer_plan.start and customer_plan.expiration)
and customer.deleted_at is null
and customer_plan.deleted_at is null
and plan_complete.deleted_at is null
and customer.fake_customer is false
and u.email not like '%@logcomex.com'
group by 1,2,3
) a
group by 1
) as acessos_usuarios on acessos_usuarios.customer_id = c.id
left join(  -- adicionando dados dos tickets hubspot
select c.id as customer_id, count(distinct hubt.ticket_id) as qtd_tickets
from public.hubspot_tickets hubt
inner join customer_api_relations car on car.id = hubt.customer_api_relations_id
inner join customer c on c.id = car.id_customer
where hubt.create_date_ticket >= current_date - interval '30' day
group by 1
) as tickets_hub on tickets_hub.customer_id = c.id
left join(  -- adicionando dados das pesquisa de satisfacao movidesk e hubspot
select qq1.id_customer,
avg(qq1.value_response) as value_response
from(
select tm.id_customer,
(case
when question_id = 'l8zW' then (case when value_response = 1 then 5 else 1 end )
when question_id = 'n7rK' then value_response
else null
end) as value_response
from satisfaction_survey_movidesk ssm
inner join tickets_movidesk tm on ssm.tickets_movidesk_id = tm.id
where question_id in ('l8zW','n7rK')
union all
select c.id as id_customer,
(case
when ht.nps_score between 1 and 2 then 1
when ht.nps_score = 3 then 2
when ht.nps_score = 4 then 3
when ht.nps_score = 5 then 3
when ht.nps_score = 6 then 4
when ht.nps_score = 7 then 5
end) as value_response
from hubspot_tickets ht
inner join customer_api_relations car on car.id = ht.customer_api_relations_id
inner join customer c on c.id = car.id_customer) as qq1
group by qq1.id_customer) as survey_movi_hub on survey_movi_hub.id_customer = c.id
left join ( -- adicionando pagamentos do omie
select c.id as customer_id,
sum(case
when fso.status = 'ATRASADO' then 1
else 0
end) as qtd_atrasados
from customer c
inner join customer_api_relations car on car.id_customer = c.id
inner join billing_contract_omie bco on bco.customer_api_relations_id = car.id
inner join service_order_omie soo on soo.billing_contract_id = bco.id
inner join financial_securities_omie fso on fso.order_id = soo.order_service_id
group by c.id) as titulos_omie on titulos_omie.customer_id = c.id
left join ( -- adicionando crescimento do cliente maritimo e aereo
select
cdconsignatario,
count(*),
count(case when (dtoperacao >= current_date - interval '30 days') then 1 end) as qtde_ultimos_30_dias,
count(case when (dtoperacao < current_date - interval '30 days') then 1 end) as qtde_365_dias
from
(select id,
left(cdconsignatario,8) as cdconsignatario,
dtoperacao
from sistema.db_maritimo dm
where dm.tipoconhecimento in ('10','11','12','15') -- direto,master, house, co-loader
and dm.cdconsignatario is not null -- retirando consignatarios nulos
and cdconsignatario in (select cnpj from customer where fake_customer is false)--(select cnpj from api.customer where fake_customer is false)
and dtoperacao >= current_date - interval '395' day -- ultimo mes e 365 dias antes
and dtoperacao <= current_date
and tptrafego = '05' -- importacao
union all  -- adicionando dados aereo
select aad.id as id,
left(ac.cnpj,8) as cdconsignatario,
aal.periodo as dtoperacao
from aereo.aereo_awb_details aad
inner join aereo.aereo_consignatario ac on ac.id = aad.consignatario_id
inner join aereo.aereo_awb_list aal on aal.id = aad.id_awb_list
where ac.cnpj in (select cnpj from customer where fake_customer is false)
and aal.periodo >= current_date - interval '395' day
and aal.periodo <= current_date
) as q1
group by cdconsignatario
) as crescimento_cliente on crescimento_cliente.cdconsignatario = left(c.cnpj,8)
left join (
select c.id as customer_id, c."name", avg(nps.nota)as nota
from customer c
inner join customer_plan cp on cp.customer_id = c.id
left join user_profile_customer upc on upc.customer_id = c.id
left join users u on u.id = upc.user_id
left join nps_02_2021 nps on nps.email = u.email -- validar nome da tabela
where c.deleted_at is null
and c.fake_customer is false
and current_date between cp."start" and cp.expiration
and cp.deleted_at is null
group by 1,2
order by c.id) as nps_02_2021 on nps_02_2021.customer_id = c.id
where current_date between cp.start and cp.expiration
and c.deleted_at is null
and cp.deleted_at is null
and pc.deleted_at is null
and c.fake_customer is false;;

datagroup_trigger: hs_datagroup
indexes: ["customer_id"]
#indexes: ["customer_id"]
#sql_trigger_value: SELECT CURRENT_DATE;;
}

  dimension: customer_id {
    hidden: yes
    type: string
    sql: ${TABLE}.customer_id ;;
  }

  dimension: pontuacao_usab_big_data {
    type: number
    sql: ${TABLE}.usab_big_data ;;
  }

  dimension: big_data_qtde_ultimos_30_dias {
    type: number
    sql: ${TABLE}.big_data_qtde_ultimos_30_dias ;;
  }

  dimension: big_data_qtde_120_30_dias {
    type: number
    sql: ${TABLE}.big_data_qtde_120_30_dias ;;
  }

  dimension: pontuacao_usab_search {
    type: number
    sql: ${TABLE}.usab_search ;;
  }

  dimension: search_qtde_ultimos_30_dias {
    type: number
    sql: ${TABLE}.search_qtde_ultimos_30_dias ;;
  }

  dimension: search_qtde_120_30_dias {
    type: number
    sql: ${TABLE}.search_qtde_120_30_dias ;;
  }

  dimension: pontuacao_usab_tracking {
    type: number
    sql: ${TABLE}.usab_tracking ;;
  }

  dimension: tracking_qtde_ultimos_30_dias {
    type: number
    sql: ${TABLE}.tracking_qtde_ultimos_30_dias ;;
  }

  dimension: tracking_qtde_120_30_dias {
    type: number
    sql: ${TABLE}.tracking_qtde_120_30_dias ;;
  }

  dimension: pontuacao_acessos_usuarios {
    type: number
    sql: ${TABLE}.acessos_usuarios ;;
  }

  dimension: acessos_usuarios_qtde_ultimos_30_dias {
    type: number
    sql: ${TABLE}.acessos_usuarios_qtde_ultimos_30_dias ;;
  }

  dimension: acessos_usuarios_qtde_120_30_dias {
    type: number
    sql: ${TABLE}.acessos_usuarios_qtde_120_30_dias ;;
  }

  dimension: pontuacao_tickets {
    type: number
    sql: ${TABLE}.pontos_qtd_tickets ;;
  }

  dimension: pontuacao_titulos_omie {
    type: number
    sql: ${TABLE}.pontos_titulos_omie ;;
  }

  dimension: pontuacao_survey {
    type: number
    sql: ${TABLE}.satisfaction ;;
  }

  dimension: pontos_crescimento_cliente {
    type: number
    sql: ${TABLE}.pontos_crescimento_cliente ;;
  }

  dimension: crescimento_cliente_qtde_365_dias {
    type: number
    sql: ${TABLE}.crescimento_cliente_qtde_365_dias ;;
  }

  dimension: crescimento_cliente_qtde_30_dias {
    type: number
    sql: ${TABLE}.crescimento_cliente_qtde_30_dias ;;
  }

  dimension: healthScore_Total {
    type: number
    sql: coalesce(coalesce(${cs_novo_health_score.pontuacao_usab_big_data},${cs_novo_health_score.pontuacao_usab_tracking},${cs_novo_health_score.pontuacao_usab_search})
          + coalesce(${cs_novo_health_score.pontuacao_usab_big_data},${cs_novo_health_score.pontuacao_usab_search},${cs_novo_health_score.pontuacao_usab_tracking})
          + coalesce(${cs_novo_health_score.pontuacao_usab_tracking},${cs_novo_health_score.pontuacao_usab_big_data},${cs_novo_health_score.pontuacao_usab_search})
          + coalesce(${cs_novo_health_score.pontuacao_usab_tracking},${cs_novo_health_score.pontuacao_usab_search},${cs_novo_health_score.pontuacao_usab_big_data})
          + coalesce(${cs_novo_health_score.pontuacao_usab_search},${cs_novo_health_score.pontuacao_usab_big_data},${cs_novo_health_score.pontuacao_usab_tracking})
          + coalesce(${cs_novo_health_score.pontuacao_usab_search},${cs_novo_health_score.pontuacao_usab_tracking},${cs_novo_health_score.pontuacao_usab_big_data}),0)/6 +
          coalesce(${TABLE}.acessos_usuarios,0) +
          coalesce(${TABLE}.pontos_qtd_tickets,0) +
          coalesce(${TABLE}.pontos_titulos_omie,0) +
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
