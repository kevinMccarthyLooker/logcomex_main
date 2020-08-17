view: planos_ativos_detalhes {
  # Or, you could make this view a derived table, like this:
  derived_table: {
    sql: select *,
quantidade_de_pesquisas/200::float as indice_qtd_pesquisas,
registros_por_pesquisa/5000::float as indice_registros_pesquisas,
busca_perfil_empresas/1::float as indice_busca_perfil_empresas,
qtd_excel/5::float as indice_export_excel,
linhas_excel/1::float as indice_linhas_excel,
meses_historico/6::float as indice_meses_historico,
usuarios/1::float as indice_usuarios,
case
when
quantidade_de_pesquisas = 200 and registros_por_pesquisa = 5000 and busca_perfil_empresas = 5
and qtd_excel = 0 and linhas_excel = 0 and meses_historico = 6 and usuarios = 1 then 'Padrão'
else 'Fora do Padrao'
end as padrao
from (select
customer.id as customer_id,
customer."name" as name,
coalesce(pi_custom.monthly_searches, pi_default.monthly_searches) AS quantidade_de_pesquisas,
coalesce(pi_custom.search_lines_limit, pi_default.search_lines_limit) AS registros_por_pesquisa,
coalesce(pi_custom.filter_possible_guys_limit, pi_default.filter_possible_guys_limit) AS busca_perfil_empresas,
coalesce(pi_custom.excel_downloads, pi_default.excel_downloads) as qtd_excel,
coalesce(pi_custom.excel_lines, pi_default.excel_lines) AS linhas_excel,
coalesce(pi_custom.search_days_limit, pi_default.search_days_limit) AS meses_historico,
coalesce(pi_custom.user_limit, pi_default.user_limit) AS usuarios,
plan."name" as plano
FROM customer
INNER JOIN customer_plan ON customer.id = customer_plan.customer_id
INNER JOIN plan_complete pc ON customer_plan.plan_complete_id = pc.id
inner join plan on plan.id = pc.plan_id
LEFT JOIN plan_info as pi_default ON pc.plan_info_id = pi_default.id
LEFT JOIN plan_info as pi_custom ON customer_plan.plan_info_id = pi_custom.id
where
current_date between (customer_plan."start") and (customer_plan."expiration") AND
customer.deleted_at is null AND
customer_plan.deleted_at is null AND
pc.service_id = 19 and -- search
(plan."name" like 'Starter' ) and
customer.fake_customer is false) as a1

union

select *,
quantidade_de_pesquisas/1000::float as indice_qtd_pesquisas,
registros_por_pesquisa/10000::float as indice_registros_pesquisas,
busca_perfil_empresas/25::float as indice_busca_perfil_empresas,
qtd_excel/5::float as indice_export_excel,
linhas_excel/1000::float as indice_linhas_excel,
meses_historico/12::float as indice_meses_historico,
usuarios/2::float as indice_usuarios,
case
when
quantidade_de_pesquisas = 1000 and registros_por_pesquisa = 10000 and busca_perfil_empresas = 25
and qtd_excel = 5 and linhas_excel = 1000 and meses_historico = 12 and usuarios = 2 then 'Padrão'
else 'Fora do Padrao'
end as padrao
from (select
customer.id as customer_id,
customer."name" as name,
coalesce(pi_custom.monthly_searches, pi_default.monthly_searches) AS quantidade_de_pesquisas,
coalesce(pi_custom.search_lines_limit, pi_default.search_lines_limit) AS registros_por_pesquisa,
coalesce(pi_custom.filter_possible_guys_limit, pi_default.filter_possible_guys_limit) AS busca_perfil_empresas,
coalesce(pi_custom.excel_downloads, pi_default.excel_downloads) as qtd_excel,
coalesce(pi_custom.excel_lines, pi_default.excel_lines) AS linhas_excel,
coalesce(pi_custom.search_days_limit, pi_default.search_days_limit) AS meses_historico,
coalesce(pi_custom.user_limit, pi_default.user_limit) AS usuarios,
plan."name" as plano
FROM customer
INNER JOIN customer_plan ON customer.id = customer_plan.customer_id
INNER JOIN plan_complete pc ON customer_plan.plan_complete_id = pc.id
inner join plan on plan.id = pc.plan_id
LEFT JOIN plan_info as pi_default ON pc.plan_info_id = pi_default.id
LEFT JOIN plan_info as pi_custom ON customer_plan.plan_info_id = pi_custom.id
where
current_date between (customer_plan."start") and (customer_plan."expiration") AND
customer.deleted_at is null AND
customer_plan.deleted_at is null AND
pc.service_id = 19 and -- search
(plan."name" like 'Essential' ) and
customer.fake_customer is false) as a1

union

select *,
quantidade_de_pesquisas/3000::float as indice_qtd_pesquisas,
registros_por_pesquisa/20000::float as indice_registros_pesquisas,
busca_perfil_empresas/100::float as indice_busca_perfil_empresas,
qtd_excel/30::float as indice_export_excel,
linhas_excel/10000::float as indice_linhas_excel,
meses_historico/12::float as indice_meses_historico,
usuarios/3::float as indice_usuarios,
case
when
quantidade_de_pesquisas = 3000 and registros_por_pesquisa = 20000 and busca_perfil_empresas = 100
and qtd_excel = 30 and linhas_excel = 10000 and meses_historico = 12 and usuarios = 3 then 'Padrão'
else 'Fora do Padrao'
end as padrao
from (select
customer.id as customer_id,
customer."name" as name,
coalesce(pi_custom.monthly_searches, pi_default.monthly_searches) AS quantidade_de_pesquisas,
coalesce(pi_custom.search_lines_limit, pi_default.search_lines_limit) AS registros_por_pesquisa,
coalesce(pi_custom.filter_possible_guys_limit, pi_default.filter_possible_guys_limit) AS busca_perfil_empresas,
coalesce(pi_custom.excel_downloads, pi_default.excel_downloads) as qtd_excel,
coalesce(pi_custom.excel_lines, pi_default.excel_lines) AS linhas_excel,
coalesce(pi_custom.search_days_limit, pi_default.search_days_limit) AS meses_historico,
coalesce(pi_custom.user_limit, pi_default.user_limit) AS usuarios,
plan."name" as plano
FROM customer
INNER JOIN customer_plan ON customer.id = customer_plan.customer_id
INNER JOIN plan_complete pc ON customer_plan.plan_complete_id = pc.id
inner join plan on plan.id = pc.plan_id
LEFT JOIN plan_info as pi_default ON pc.plan_info_id = pi_default.id
LEFT JOIN plan_info as pi_custom ON customer_plan.plan_info_id = pi_custom.id
where
current_date between (customer_plan."start") and (customer_plan."expiration") AND
customer.deleted_at is null AND
customer_plan.deleted_at is null AND
pc.service_id = 19 and -- search
(plan."name" like 'Advanced' ) and
customer.fake_customer is false) as a1

union

select *,
quantidade_de_pesquisas/10000::float as indice_qtd_pesquisas,
registros_por_pesquisa/30000::float as indice_registros_pesquisas,
busca_perfil_empresas/400::float as indice_busca_perfil_empresas,
qtd_excel/100::float as indice_export_excel,
linhas_excel/20000::float as indice_linhas_excel,
meses_historico/12::float as indice_meses_historico,
usuarios/5::float as indice_usuarios,
case
when
quantidade_de_pesquisas = 10000 and registros_por_pesquisa = 30000 and busca_perfil_empresas = 400
and qtd_excel = 100 and linhas_excel = 20000 and meses_historico = 12 and usuarios = 5 then 'Padrão'
else 'Fora do Padrao'
end as padrao
from (select
customer.id as customer_id,
customer."name" as name,
coalesce(pi_custom.monthly_searches, pi_default.monthly_searches) AS quantidade_de_pesquisas,
coalesce(pi_custom.search_lines_limit, pi_default.search_lines_limit) AS registros_por_pesquisa,
coalesce(pi_custom.filter_possible_guys_limit, pi_default.filter_possible_guys_limit) AS busca_perfil_empresas,
coalesce(pi_custom.excel_downloads, pi_default.excel_downloads) as qtd_excel,
coalesce(pi_custom.excel_lines, pi_default.excel_lines) AS linhas_excel,
coalesce(pi_custom.search_days_limit, pi_default.search_days_limit) AS meses_historico,
coalesce(pi_custom.user_limit, pi_default.user_limit) AS usuarios,
plan."name" as plano
FROM customer
INNER JOIN customer_plan ON customer.id = customer_plan.customer_id
INNER JOIN plan_complete pc ON customer_plan.plan_complete_id = pc.id
inner join plan on plan.id = pc.plan_id
LEFT JOIN plan_info as pi_default ON pc.plan_info_id = pi_default.id
LEFT JOIN plan_info as pi_custom ON customer_plan.plan_info_id = pi_custom.id
where
current_date between (customer_plan."start") and (customer_plan."expiration") AND
customer.deleted_at is null AND
customer_plan.deleted_at is null AND
pc.service_id = 19 and -- search
(plan."name" like 'Pro' ) and
customer.fake_customer is false) as a1

union

select *,
quantidade_de_pesquisas/50000::float as indice_qtd_pesquisas,
registros_por_pesquisa/100000::float as indice_registros_pesquisas,
busca_perfil_empresas/1000::float as indice_busca_perfil_empresas,
qtd_excel/200::float as indice_export_excel,
linhas_excel/30000::float as indice_linhas_excel,
meses_historico/24::float as indice_meses_historico,
usuarios/5::float as indice_usuarios,
case
when
quantidade_de_pesquisas = 10000 and registros_por_pesquisa = 30000 and busca_perfil_empresas = 400
and qtd_excel = 100 and linhas_excel = 20000 and meses_historico = 12 and usuarios = 5 then 'Padrão'
else 'Fora do Padrao'
end as padrao
from (select
customer.id as customer_id,
customer."name" as name,
coalesce(pi_custom.monthly_searches, pi_default.monthly_searches) AS quantidade_de_pesquisas,
coalesce(pi_custom.search_lines_limit, pi_default.search_lines_limit) AS registros_por_pesquisa,
coalesce(pi_custom.filter_possible_guys_limit, pi_default.filter_possible_guys_limit) AS busca_perfil_empresas,
coalesce(pi_custom.excel_downloads, pi_default.excel_downloads) as qtd_excel,
coalesce(pi_custom.excel_lines, pi_default.excel_lines) AS linhas_excel,
coalesce(pi_custom.search_days_limit, pi_default.search_days_limit) AS meses_historico,
coalesce(pi_custom.user_limit, pi_default.user_limit) AS usuarios,
plan."name" as plano
FROM customer
INNER JOIN customer_plan ON customer.id = customer_plan.customer_id
INNER JOIN plan_complete pc ON customer_plan.plan_complete_id = pc.id
inner join plan on plan.id = pc.plan_id
LEFT JOIN plan_info as pi_default ON pc.plan_info_id = pi_default.id
LEFT JOIN plan_info as pi_custom ON customer_plan.plan_info_id = pi_custom.id
where
current_date between (customer_plan."start") and (customer_plan."expiration") AND
customer.deleted_at is null AND
customer_plan.deleted_at is null AND
pc.service_id = 19 and -- search
(plan."name" like 'Expert' ) and
customer.fake_customer is false) as a1
      ;;
    }

  dimension: customer_id {
    type: number
    sql: ${TABLE}.customer_id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: plano {
    type: string
    sql: ${TABLE}.plano ;;
  }

  dimension: padrao {
    type: string
    sql: ${TABLE}.padrao ;;
  }

  dimension: quantidade_de_pesquisas {
    type: number
    sql: ${TABLE}.quantidade_de_pesquisas ;;
  }

  dimension: registros_por_pesquisa {
    type: number
    sql: ${TABLE}.registros_por_pesquisa ;;
  }

  dimension: busca_perfil_empresas {
    type: number
    sql: ${TABLE}.busca_perfil_empresas ;;
  }

  dimension: qtd_excel {
    type: number
    sql: ${TABLE}.qtd_excel ;;
  }

  dimension: linhas_excel {
    type: number
    sql: ${TABLE}.linhas_excel ;;
  }

  dimension: meses_historico {
    type: number
    sql: ${TABLE}.meses_historico ;;
  }

  dimension: usuarios {
    type: number
    sql: ${TABLE}.usuarios ;;
  }

  dimension: indice_qtd_pesquisas {
    type: number
    sql: ${TABLE}.indice_qtd_pesquisas ;;
  }

  dimension: indice_registros_pesquisas {
    type: number
    sql: ${TABLE}.indice_registros_pesquisas ;;
  }

  dimension: indice_busca_perfil_empresas {
    type: number
    sql: ${TABLE}.indice_busca_perfil_empresas ;;
  }

  dimension: indice_export_excel {
    type: number
    sql: ${TABLE}.indice_export_excel ;;
  }

  dimension: indice_linhas_excel {
    type: number
    sql: ${TABLE}.indice_linhas_excel ;;
  }

  dimension: indice_meses_historico {
    type: number
    sql: ${TABLE}.indice_meses_historico ;;
  }

  dimension: indice_usuarios {
    type: number
    sql: ${TABLE}.indice_usuarios ;;
  }

}
