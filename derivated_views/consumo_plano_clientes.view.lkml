view: consumo_plano_clientes {
  # Or, you could make this view a derived table, like this:
  derived_table: {
    sql:select TO_TIMESTAMP(concat(qq1.year,' ',qq1.month) ,'YYYY MM') as tempo,
concat(qq1.year,qq1.month,qq1.customer_id) as id,
qq1.year as ano,
qq1.month as mes,
qq1.customer_id as customer_id,
qq1.name as nome,
qq3.plano,
qq3.data_inicio  as data_inicio,
qq3.data_fim as data_fim,
qq3.data_inicio_trial  as data_inicio_trial,
qq3.data_fim_trial as data_fim_trial,
qq3.quantidade_de_pesquisas_plano,
qq1.qtd_pesquisas as qtd_pesquisas,
(case
when qq3.quantidade_de_pesquisas_plano = 9999999 or (qq3.busca_perfil_empresas_plano = 0 or qq3.busca_perfil_empresas_plano = 9999999) then true
else false
end) as ilimitado,
(case
when qq3.quantidade_de_pesquisas_plano >0
then
(qq1.qtd_pesquisas::float/qq3.quantidade_de_pesquisas_plano::float)
else
-1
end) as porcent_qtd_pesquisas,
qq3.busca_perfil_empresas_plano,
(qq2.quantity_possible_importer + qq2.quantity_possible_exporter) as qtd_busca_perfil,
(case
when qq3.busca_perfil_empresas_plano > 0
then
((coalesce(qq2.quantity_possible_importer,0) + coalesce(qq2.quantity_possible_exporter,0))::float/qq3.busca_perfil_empresas_plano)
else -1
end) as porcent_qtd_busca_perfil,
qq3.qtd_excel_plano
from(
select fh."year", fh."month" , fh.customer_id, c2."name" , count(*) as qtd_pesquisas
from filter_history fh
inner join customer c2 on c2.id = fh.customer_id
inner join customer_plan cp on cp.customer_id = c2.id
inner join plan_complete pc2 on pc2.id = cp.plan_complete_id
where fh.debited = true -- flag que contabiliza
and fh.service_id = 19 -- produto search
and pc2.service_id = 19 -- plano com search
and c2.deleted_at is null -- verifica se foi deletado
and c2.fake_customer is false -- verifica se é cliente teste
and cp.deleted_at is null -- verifica se o plano foi deletado
group by fh."year", fh."month" ,fh.customer_id, c2."name"
order by fh."year", fh."month" desc) as qq1
left join (
select "year", "month" , "customer_id", sum(case when filters @> '[{"name": "possibleImporter"}]' then 1 else 0 end) as quantity_possible_importer,
sum(case when filters @> '[{"name": "possibleExporter"}]' then 1 else 0 end) as quantity_possible_exporter
from "filter_history"
where "debited" = True and "service_id" = 19
and "filters" is not null
and (filters @> '[{"name": "possibleImporter"}]' or filters @> '[{"name": "possibleExporter"}]')
group by "year" ,"month" ,"customer_id") qq2 on qq1.year = qq2.year and qq1.month = qq2.month and qq1.customer_id = qq2.customer_id
left join(
select
customer.id as customer_id,
coalesce(pi_custom.monthly_searches, pi_default.monthly_searches) AS quantidade_de_pesquisas_plano,
coalesce(pi_custom.filter_possible_guys_limit, pi_default.filter_possible_guys_limit,9999999) AS busca_perfil_empresas_plano,
coalesce(pi_custom.excel_downloads, pi_default.excel_downloads) as qtd_excel_plano,
plan."name" as plano,
customer_plan."start"  as data_inicio,
customer_plan.expiration as data_fim,
customer_plan.trial_start as data_inicio_trial,
customer_plan.trial_end as data_fim_trial
FROM customer
INNER JOIN customer_plan ON customer.id = customer_plan.customer_id
INNER JOIN plan_complete pc ON customer_plan.plan_complete_id = pc.id
inner join plan on plan.id = pc.plan_id
LEFT JOIN plan_info as pi_default ON pc.plan_info_id = pi_default.id
LEFT JOIN plan_info as pi_custom ON customer_plan.plan_info_id = pi_custom.id
where
customer.deleted_at is null AND
customer_plan.deleted_at is null AND
pc.service_id = 19 and -- search
customer.fake_customer is false
) qq3 on qq1.customer_id = qq3.customer_id
;;
  }

  dimension: id {
    type: number
    primary_key: yes
    sql: ${TABLE}.id ;;
  }

  dimension: customer_id {
    type: number
    sql: ${TABLE}.customer_id ;;
  }

  dimension: ilimitado {
    type: yesno
    sql: ${TABLE}.ilimitado ;;
  }

  dimension: quantidade_de_pesquisas_plano {
    type: number
    sql: ${TABLE}.quantidade_de_pesquisas_plano ;;
  }

  dimension: busca_perfil_empresas_plano {
    type: number
    sql: ${TABLE}.busca_perfil_empresas_plano ;;
  }

  dimension: qtd_excel_plano {
    type: number
    sql: ${TABLE}.qtd_excel_plano ;;
  }

  dimension: ano {
    type: string
    sql: ${TABLE}.ano ;;
  }

  dimension: mes {
    type: string
    sql: ${TABLE}.mes ;;

  }

  dimension: nome {
    type: string
    sql: ${TABLE}.nome ;;

  }

  dimension: plano {
    type: string
    sql: ${TABLE}.plano ;;

  }

  dimension_group: tempo {
    type: time
    timeframes: [
      raw,
      month,
      year
    ]
    sql: ${TABLE}.tempo ;;
  }

  dimension_group: data_inicio {
    type: time
    timeframes: [
      raw,
      date,
      month,
      year
    ]
    sql: ${TABLE}.data_inicio ;;
  }

  dimension_group: data_fim {
    type: time
    timeframes: [
      raw,
      date,
      month,
      year
    ]
    sql: ${TABLE}.data_fim ;;
  }

  dimension_group: data_inicio_trial {
    type: time
    timeframes: [
      raw,
      date,
      month,
      year
    ]
    sql: ${TABLE}.data_inicio_trial ;;
  }

  dimension_group: data_fim_trial {
    type: time
    timeframes: [
      raw,
      date,
      month,
      year
    ]
    sql: ${TABLE}.data_fim_trial ;;
  }

  measure: qtd_pesquisas {
    type: sum
    sql: ${TABLE}.qtd_pesquisas ;;

  }

  measure: qtd_busca_perfil  {
    type: sum
    sql: ${TABLE}.qtd_busca_perfil ;;

  }

  dimension: porcent_qtd_pesquisas_dim {
    type: number
    sql: ${TABLE}.porcent_qtd_pesquisas ;;

  }

  measure: porcent_qtd_pesquisas {
    type: average
    filters: [porcent_qtd_pesquisas_dim:">=0"]
    sql: ${TABLE}.porcent_qtd_pesquisas ;;

  }

  dimension: porcent_qtd_busca_perfil_dim {
    type: number
    sql: ${TABLE}.porcent_qtd_busca_perfil;;

  }

  measure: porcent_qtd_busca_perfil {
    type: average
    filters: [porcent_qtd_busca_perfil_dim: ">=0"]
    sql: ${TABLE}.porcent_qtd_busca_perfil;;

  }


}
