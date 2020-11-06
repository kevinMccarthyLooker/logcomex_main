view: consumo_plano_clientes {
  # Or, you could make this view a derived table, like this:
  derived_table: {
    sql:select *,
(case
when qq.quantidade_de_pesquisas_plano = 9999999
or (qq.busca_perfil_empresas_plano = 0 or qq.busca_perfil_empresas_plano = 9999999) then true
else false
end) as ilimitado,
qq.qtd_pesquisas::float/qq.quantidade_de_pesquisas_plano::float as porcent_qtd_pesquisas,
(qq.quantity_possible_importer + qq.quantity_possible_exporter) as qtd_busca_perfil,
(case
when qq.busca_perfil_empresas_plano > 0
then
((coalesce(qq.quantity_possible_importer,0) + coalesce(qq.quantity_possible_exporter,0))::float/qq.busca_perfil_empresas_plano)
else -1
end) as porcent_qtd_busca_perfil
from(
select
concat(fh.year,fh.month,fh.customer_id) as id_table,
TO_TIMESTAMP(concat(fh.year,' ',fh.month) ,'YYYY MM') as tempo,
fh."year" as ano,
fh."month"as mes,
fh.customer_id,
c2."name" as nome,
coalesce(pi_custom.monthly_searches, pi_default.monthly_searches) AS quantidade_de_pesquisas_plano,
coalesce(pi_custom.filter_possible_guys_limit, pi_default.filter_possible_guys_limit,9999999) AS busca_perfil_empresas_plano,
coalesce(pi_custom.excel_downloads, pi_default.excel_downloads) as qtd_excel_plano,
coalesce(pi_custom.excel_lines , pi_default.excel_lines) as excel_lines_plano,
coalesce(pi_custom.search_lines_limit , pi_default.search_lines_limit) as search_lines_plano,
plan."name" as plano,
cp."start"  as data_inicio,
cp.expiration as data_fim,
cp.trial_start as data_inicio_trial,
cp.trial_end as data_fim_trial,
count(*) as qtd_pesquisas,
sum(case when fh.filters @> '[{"name": "possibleImporter"}]' then 1 else 0 end) as quantity_possible_importer,
sum(case when fh.filters @> '[{"name": "possibleExporter"}]' then 1 else 0 end) as quantity_possible_exporter,
sum(case when fh.total_lines > coalesce(pi_custom.search_lines_limit , pi_default.search_lines_limit) then 1 else 0 end) as qtd_extrapoled,
coalesce(AVG(case when fh.total_lines > coalesce(pi_custom.search_lines_limit , pi_default.search_lines_limit) then fh.total_lines - coalesce(pi_custom.search_lines_limit , pi_default.search_lines_limit)  else null end),0) as avg_extrapoled
from filter_history fh
inner join customer c2 on c2.id = fh.customer_id
inner join customer_plan cp on cp.customer_id = c2.id
inner join plan_complete pc2 on pc2.id = cp.plan_complete_id
inner join plan on plan.id = pc2.plan_id
LEFT JOIN plan_info as pi_default ON pc2.plan_info_id = pi_default.id
LEFT JOIN plan_info as pi_custom ON cp.plan_info_id = pi_custom.id
where fh.debited = true -- flag que contabiliza
and fh.service_id = 19 -- produto search
and pc2.service_id = 19 -- plano com search
and c2.deleted_at is null -- verifica se foi deletado
and c2.fake_customer is false -- verifica se é cliente teste
and cp.deleted_at is null -- verifica se o plano foi deletado
group by id_table, tempo,ano, mes ,fh.customer_id, nome,
quantidade_de_pesquisas_plano,busca_perfil_empresas_plano,qtd_excel_plano,
excel_lines_plano,search_lines_plano,plano,data_inicio,data_fim,data_inicio_trial,
data_fim_trial) as qq
;;
  }

  dimension: id {
    type: number
    primary_key: yes
    sql: ${TABLE}.id_table ;;
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


  dimension: avg_extrapoled_dim {
    type: number
    sql: ${TABLE}.avg_extrapoled;;

  }


  dimension: qtd_extrapoled_dim {
    type: number
    sql: ${TABLE}.avg_extrapoled;;

  }

  dimension: extrapoled_searchs {
    type: yesno
    sql: case when ${porcent_qtd_pesquisas_dim} > 1 then true
         else false end;;
  }

  measure: qtd_pesquisas {
    type: sum
    sql: ${TABLE}.qtd_pesquisas ;;

  }

  measure: qtd_busca_perfil  {
    type: sum
    sql: ${TABLE}.qtd_busca_perfil ;;

  }

  measure: qtd_extrapoled  {
    type: sum
    sql: ${TABLE}.qtd_extrapoled ;;

  }

  measure: median_extrapoled {
    type: median
    filters: [avg_extrapoled_dim: ">0"]
    sql: ${TABLE}.avg_extrapoled;;

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



  measure: count {
    type: count
  }


}
