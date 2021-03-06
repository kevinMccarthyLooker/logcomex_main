view: planos_ativos_detalhes {
  # Or, you could make this view a derived table, like this:
  derived_table: {
    sql: select *,
(case when indice_qtd_pesquisas <= 1 then 1 else 0 end ) as padrao_pesquisas,
(case when indice_registros_pesquisas <= 1 then 1 else 0 end ) as padrao_registros,
(case when indice_busca_perfil_empresas <= 1 then 1 else 0 end ) as padrao_perfil,
(case when indice_busca_perfil_empresas <= 1 then 1 else 0 end ) as padrao_export_excel,
(case when indice_linhas_excel <= 1 then 1 else 0 end ) as padrao_linhas_excel,
(case when indice_meses_historico <= 1 then 1 else 0 end ) as padrao_historico,
(case when indice_usuarios <= 1 then 1 else 0 end ) as padrao_usuarios,
(case when indice_qtd_pesquisas = 1 then 1 else 0 end ) as padrao_exato_pesquisas,
(case when indice_registros_pesquisas = 1 then 1 else 0 end ) as padrao_exato_registros,
(case when indice_busca_perfil_empresas = 1 then 1 else 0 end ) as padrao_exato__perfil,
(case when indice_busca_perfil_empresas = 1 then 1 else 0 end ) as padrao_exato_export_excel,
(case when indice_linhas_excel = 1 then 1 else 0 end ) as padrao_exato_linhas_excel,
(case when indice_meses_historico = 1 then 1 else 0 end ) as padrao_exato_historico,
(case when indice_usuarios = 1 then 1 else 0 end ) as padrao_exato_usuarios
from (select *,
quantidade_de_pesquisas/300::float as indice_qtd_pesquisas,
registros_por_pesquisa/5000::float as indice_registros_pesquisas,
busca_perfil_empresas/15::float as indice_busca_perfil_empresas,
(case
when qtd_excel >0 then 1.5
else 0
end)::float
as indice_export_excel,
(case
when linhas_excel >0 then 1.5
else 0
end)::float
as indice_linhas_excel,
(case
when meses_historico <=24 then meses_historico::float/6
else meses_historico::float/180
end) as indice_meses_historico,
usuarios/1::float as indice_usuarios,
case
when
quantidade_de_pesquisas = 300 and registros_por_pesquisa = 5000 and busca_perfil_empresas = 15
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
plan."name" as plano,
customer_plan."start"  as data_inicio,
customer_plan.expiration as data_fim
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
busca_perfil_empresas/40::float as indice_busca_perfil_empresas,
qtd_excel/5::float as indice_export_excel,
linhas_excel/1000::float as indice_linhas_excel,
(case
when meses_historico <=24 then meses_historico::float/12
else meses_historico::float/365
end) as indice_meses_historico,
usuarios/1::float as indice_usuarios,
case
when
quantidade_de_pesquisas = 1000 and registros_por_pesquisa = 10000 and busca_perfil_empresas = 40
and qtd_excel = 5 and linhas_excel = 1000 and meses_historico = 12 and usuarios = 1 then 'Padrão'
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
plan."name" as plano,
customer_plan."start"  as data_inicio,
customer_plan.expiration as data_fim
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
(case
when meses_historico <=24 then meses_historico::float/12
else meses_historico::float/365
end) as indice_meses_historico,
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
plan."name" as plano,
customer_plan."start"  as data_inicio,
customer_plan.expiration as data_fim
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
quantidade_de_pesquisas/6000::float as indice_qtd_pesquisas,
registros_por_pesquisa/30000::float as indice_registros_pesquisas,
busca_perfil_empresas/400::float as indice_busca_perfil_empresas,
qtd_excel/100::float as indice_export_excel,
linhas_excel/10000::float as indice_linhas_excel,
(case
when meses_historico <=24 then meses_historico::float/12
else meses_historico::float/365
end) as indice_meses_historico,
usuarios/5::float as indice_usuarios,
case
when
quantidade_de_pesquisas = 6000 and registros_por_pesquisa = 30000 and busca_perfil_empresas = 400
and qtd_excel = 100 and linhas_excel = 10000 and meses_historico = 12 and usuarios = 5 then 'Padrão'
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
plan."name" as plano,
customer_plan."start"  as data_inicio,
customer_plan.expiration as data_fim
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
quantidade_de_pesquisas/12000::float as indice_qtd_pesquisas,
registros_por_pesquisa/100000::float as indice_registros_pesquisas,
busca_perfil_empresas/1000::float as indice_busca_perfil_empresas,
qtd_excel/200::float as indice_export_excel,
linhas_excel/20000::float as indice_linhas_excel,
(case
when meses_historico <=24 then meses_historico::float/24
else meses_historico::float/730
end) as indice_meses_historico,
usuarios/7::float as indice_usuarios,
case
when
quantidade_de_pesquisas = 12000 and registros_por_pesquisa = 100000 and busca_perfil_empresas = 1000
and qtd_excel = 200 and linhas_excel = 20000 and meses_historico = 24 and usuarios = 7 then 'Padrão'
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
plan."name" as plano,
customer_plan."start"  as data_inicio,
customer_plan.expiration as data_fim
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
customer.fake_customer is false) as a1) as qq1
;;
    }

  dimension: customer_id {
    type: number
    sql: ${TABLE}.customer_id ;;
    primary_key: yes
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

  dimension: data_inicio {
    type: date
    sql: ${TABLE}.data_inicio ;;
  }

  dimension: data_fim {
    type: date
    sql: ${TABLE}.data_fim ;;
  }

# medidas utilizadas para calcular a qtd de beneficios com valor menor ou igual ao dos planos vendidos
  measure: numero_de_planos {
    type: count
    drill_fields: [detail*]
  }

  measure: qtd_padrao_pesquisa {
    type: sum
    sql: ${TABLE}.padrao_pesquisas ;;
  }


  measure: qtd_padrao_registros {
    type: sum
    sql: ${TABLE}.padrao_registros ;;
  }

  measure: qtd_padrao_perfil {
    type: sum
    sql: ${TABLE}.padrao_perfil ;;
  }

  measure: qtd_padrao_export_excel {
    type: sum
    sql: ${TABLE}.padrao_export_excel ;;
  }

  measure: qtd_padrao_linhas_excel {
    type: sum
    sql: ${TABLE}.padrao_linhas_excel ;;
  }

  measure: qtd_padrao_historico {
    type: sum
    sql: ${TABLE}.padrao_historico ;;
  }

  measure: qtd_padrao_usuarios {
    type: sum
    sql: ${TABLE}.padrao_usuarios ;;
  }

# medidas utilizadas para calcular a qtd de beneficios exatamente no padrao dos planos vendidos
  measure: qtd_padrao_exato_pesquisa {
    type: sum
    sql: ${TABLE}.padrao_exato_pesquisas ;;
  }


  measure: qtd_padrao_exato_registros {
    type: sum
    sql: ${TABLE}.padrao_exato_registros ;;
  }

  measure: qtd_padrao_exato_perfil {
    type: sum
    sql: ${TABLE}.padrao_exato__perfil ;;
  }

  measure: qtd_padrao_exato_export_excel {
    type: sum
    sql: ${TABLE}.padrao_exato_export_excel ;;
  }

  measure: qtd_padrao_exato_linhas_excel {
    type: sum
    sql: ${TABLE}.padrao_exato_linhas_excel ;;
  }

  measure: qtd_padrao_exato_historico {
    type: sum
    sql: ${TABLE}.padrao_exato_historico ;;
  }

  measure: qtd_padrao_exato_usuarios {
    type: sum
    sql: ${TABLE}.padrao_exato_usuarios ;;
  }

 # media dos beneficios
  measure: avg_quantidade_de_pesquisas {
    type: average
    #retirando outliers da media
    sql:CASE WHEN ${TABLE}.quantidade_de_pesquisas < 9999999
        THEN ${TABLE}.quantidade_de_pesquisas
        ELSE NULL
        END ;;
  }

  measure: avg_registros_por_pesquisa {
    type: average
    sql: ${TABLE}.registros_por_pesquisa ;;
  }

  measure: avg_busca_perfil_empresas {
    type: average
    #retirando outliers da media
    sql:CASE WHEN ${TABLE}.busca_perfil_empresas < 9999999
        THEN ${TABLE}.busca_perfil_empresas
        ELSE NULL
        END ;;

  }

  measure: avg_qtd_excel {
    type: average
    sql: ${TABLE}.qtd_excel ;;
  }

  measure: avg_linhas_excel {
    type: average
    sql:CASE WHEN ${TABLE}.linhas_excel < 200000
        THEN ${TABLE}.linhas_excel
        ELSE NULL
        END ;;
  }

  measure: avg_meses_historico {
    type: average
    # trantando quando o plano é em dias
    sql:CASE WHEN ${TABLE}.meses_historico > 24
        THEN ${TABLE}.meses_historico/30
        ELSE ${TABLE}.meses_historico
        END ;;
  }

  measure: avg_usuarios {
    type: average
    # removendo outliers
    sql:CASE WHEN ${TABLE}.usuarios <9
        THEN ${TABLE}.usuarios
        ELSE NULL
        END ;;
  }

  # media dos indices
  measure: avg_indice_pesquisas{
    # removendo outliers
    type: average
    sql:CASE WHEN ${TABLE}.indice_qtd_pesquisas < 100 and ${TABLE}.indice_qtd_pesquisas >1
        THEN ${TABLE}.indice_qtd_pesquisas
        ELSE NULL
        END
    ;;
  }

  measure: avg_indice_registros_pesquisas {
    type: average
    sql:CASE WHEN ${TABLE}.indice_registros_pesquisas  < 100 and  ${TABLE}.indice_registros_pesquisas  >1
        THEN ${TABLE}.indice_registros_pesquisas
        ELSE NULL
        END
    ;;
  }

  measure: avg_indice_busca_perfil_empresas {
    type: average
    sql:CASE WHEN ${TABLE}.indice_busca_perfil_empresas  < 100 and  ${TABLE}.indice_busca_perfil_empresas  >1
        THEN ${TABLE}.indice_busca_perfil_empresas
        ELSE NULL
        END
    ;;
  }

  measure: avg_indice_export_excel {
    type: average
    sql:CASE WHEN ${TABLE}.indice_export_excel < 100 and  ${TABLE}.indice_export_excel >1
        THEN ${TABLE}.indice_export_excel
        ELSE NULL
        END
    ;;
  }

  measure: avg_indice_linhas_excel {
    type: average
    sql:CASE WHEN ${TABLE}.indice_linhas_excel < 100 and ${TABLE}.indice_linhas_excel >1
        THEN ${TABLE}.indice_linhas_excel
        ELSE NULL
        END
    ;;
  }

  measure: avg_indice_meses_historico {
    type: average
    sql:CASE WHEN ${TABLE}.indice_meses_historico < 100 and ${TABLE}.indice_meses_historico >1
        THEN ${TABLE}.indice_meses_historico
        ELSE NULL
        END
    ;;
  }

  measure: avg_indice_usuarios {
    type: average
    sql:CASE WHEN ${TABLE}.indice_usuarios < 100 and ${TABLE}.indice_usuarios >1
        THEN ${TABLE}.indice_usuarios
        ELSE NULL
        END
    ;;
  }

  set: detail {  #drills para o planos
    fields: [
      customer_id,
      name,
      plano,
      padrao
    ]
  }


}
