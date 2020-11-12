view: consumo_plano_clientes {
  # Or, you could make this view a derived table, like this:
  derived_table: {
    sql:select *,
(case when qq1.quantidade_de_pesquisas_plano = 0 or quantidade_de_pesquisas_plano = 9999999 then true else false end) as pesquisas_ilimitadas,
(case when qq1.busca_perfil_empresas_plano = 0 or qq1.busca_perfil_empresas_plano = 9999999 then true else false end) as perfil_ilimitados,
(case when qq1.periodo between qq1.data_inicio_trial and qq1.data_fim_trial then true else false end) as consulta_trial,
(qq1.qtd_pesquisas::float/(case when qq1.quantidade_de_pesquisas_plano = 0 then 9999999 else qq1.quantidade_de_pesquisas_plano end)::float) as percentual_diario_pesquisas,
sum(qq1.qtd_pesquisas::float/(case when qq1.quantidade_de_pesquisas_plano = 0 then 9999999 else qq1.quantidade_de_pesquisas_plano end)::float) OVER (PARTITION by customer_id, ano, mes ORDER by periodo) as porcentagem_acumulada_pesquisas,
(qq1.quantity_possible_importer + qq1.quantity_possible_exporter) as qtd_perfil,
(qq1.quantity_possible_importer + qq1.quantity_possible_exporter)::float/(case when qq1.busca_perfil_empresas_plano = 0 then 9999999 else qq1.busca_perfil_empresas_plano end)::float as percentual_diario_perfil,
sum((qq1.quantity_possible_importer + qq1.quantity_possible_exporter)::float/(case when qq1.busca_perfil_empresas_plano = 0 then 9999999 else qq1.busca_perfil_empresas_plano end)::float) OVER (PARTITION by customer_id, ano, mes ORDER by periodo) as percentual_acumulado_perfil,
count(periodo) OVER (PARTITION by customer_id, ano, mes ORDER BY periodo) as contador_dias
from(
select
concat(date(fh.created_at),fh.customer_id) as id_table,
extract(year from fh.created_at) as ano,
extract(month from fh.created_at) as mes,
date(fh.created_at) as periodo,
fh.customer_id as customer_id,
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
coalesce(avg(case when fh.total_lines > coalesce(pi_custom.search_lines_limit , pi_default.search_lines_limit) then fh.total_lines - coalesce(pi_custom.search_lines_limit , pi_default.search_lines_limit)  else null end),0) as avg_extrapoled
from filter_history fh
inner join user_profile_customer upc on upc.user_id = fh.user_id and fh.customer_id = upc.customer_id
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
--and c2.id = 2102  --  portal 316 banrisul
and upc.logcomex_fake is false -- nao contabiliza pesquisas de usuarios logcomex
group by id_table,ano,mes, periodo, fh.customer_id, nome,quantidade_de_pesquisas_plano, busca_perfil_empresas_plano, qtd_excel_plano,
excel_lines_plano, search_lines_plano, plano, data_inicio, data_fim, data_inicio_trial, data_fim_trial
order by periodo) qq1
;;
  }

  dimension: pesquisas_ilimitadas {
    type: yesno
    sql: ${TABLE}.pesquisas_ilimitadas ;;
  }

  dimension: perfil_ilimitados {
    type: yesno
    sql: ${TABLE}.perfil_ilimitados ;;
  }

  dimension: consulta_trial {
    type: yesno
    sql: ${TABLE}.consulta_trial ;;
  }

  dimension: percentual_diario_pesquisas {
    type: number
    sql: ${TABLE}.percentual_diario_pesquisas ;;
  }

  dimension: porcentagem_acumulada_pesquisas {
    type: number
    sql: ${TABLE}.porcentagem_acumulada_pesquisas ;;
  }

  dimension: percentual_diario_perfil {
    type: number
    sql: ${TABLE}.percentual_diario_perfil ;;
  }

  dimension: qtd_perfil {
    type: number
    sql: ${TABLE}.qtd_perfil ;;
  }

  dimension: percentual_acumulado_perfil {
    type: number
    sql: ${TABLE}.percentual_acumulado_perfil ;;
  }


  dimension: contador_dias {
    type: number
    sql: ${TABLE}.contador_dias ;;
  }

  dimension: id {
    type: number
    primary_key: yes
    sql: ${TABLE}.id_table ;;
  }


  dimension: ano {
    type: string
    sql: ${TABLE}.ano ;;
  }

  dimension: mes {
    type: string
    sql: ${TABLE}.mes ;;

  }

  dimension_group: periodo {
    type: time
    timeframes: [
      raw,
      month,
      year
    ]
    sql: ${TABLE}.periodo ;;
  }

  dimension: customer_id {
    type: number
    sql: ${TABLE}.customer_id ;;
  }

  dimension: nome {
    type: string
    sql: ${TABLE}.nome ;;

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

  dimension: excel_lines_plano {
    type: number
    sql: ${TABLE}.excel_lines_plano ;;
  }

  dimension: search_lines_plano {
    type: number
    sql: ${TABLE}.search_lines_plano ;;
  }

  dimension: plano {
    type: string
    sql: ${TABLE}.plano ;;

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

  dimension: qtd_pesquisas {
    type: number
    sql: ${TABLE}.qtd_pesquisas ;;

  }

  dimension: quantity_possible_importer {
    type: number
    sql: ${TABLE}.quantity_possible_importer ;;

  }

  dimension: quantity_possible_exporter {
    type: number
    sql: ${TABLE}.quantity_possible_exporter ;;

  }

  dimension: qtd_extrapoled_dim {
    type: number
    sql: ${TABLE}.qtd_extrapoled;;

  }

  dimension: avg_extrapoled_dim {
    type: number
    sql: ${TABLE}.avg_extrapoled;;

  }

  measure: qtd_pesquisas_mea {
    type: sum
    sql: ${TABLE}.qtd_pesquisas ;;
  }

  measure: qtd_perfil_mea {
    type: sum
    sql: ${TABLE}.qtd_perfil ;;
  }


  measure: max_porcentagem_acumulada_pesquisas {
    type: max
    sql: ${TABLE}.porcentagem_acumulada_pesquisas ;;
  }

  measure: max_percentual_acumulado_perfil {
    type: max
    sql: ${TABLE}.percentual_acumulado_perfil ;;
  }

  measure: qtd_extrapoled_mea {
    type: number
    sql: ${qtd_extrapoled_dim} ;;
  }

  # dimension: extrapoled_searchs {
  # type: yesno
  # sql: case when ${qtd_extrapoled_dim} > 0 then true else false end;;
  # }

  # measure: porcentual_avg_qtd_pesquisas_mea {
  # type: average
  # sql: ${TABLE}.porcentagem_acumulada_pesquisas;; # O MAXIMO REPRESENTA O ACUMULADO DO MES

  # }

  # measure: porcentual_avg_qtd_perfil {
  #   type: average
  #   sql: ${TABLE}.percentual_acumualdo_perfil;; # o maximo representa o acumulado do mes
  # }

  # dimension: data_extrapolou {
  #   type: date
  #   sql: ${TABLE}.data_extrapolou ;;
  # }

  # dimension: dias_extrapolou {
  #   type:number
  #   sql: ${TABLE}.dias_extrapolou ;;
  # }



  # dimension: porcent_qtd_pesquisas_dim {
  #   type: number
  #   sql: ${TABLE}.porcent_qtd_pesquisas ;;

  # }



  # dimension: porcent_qtd_busca_perfil_dim {
  #   type: number
  #   sql: ${TABLE}.porcent_qtd_busca_perfil;;

  # }


  # measure: qtd_busca_perfil  {
  #   type: sum
  #   sql: ${TABLE}.qtd_busca_perfil ;;

  # }

  # measure: qtd_extrapoled  {
  #   type: sum
  #   sql: ${TABLE}.qtd_extrapoled ;;

  # }

  # measure: median_extrapoled {
  #   type: median
  #   filters: [avg_extrapoled_dim: ">0"]
  #   sql: ${TABLE}.avg_extrapoled;;

  # }

  # measure: porcent_qtd_busca_perfil {
  #   type: average
  #   filters: [porcent_qtd_busca_perfil_dim: ">=0"]
  #   sql: ${TABLE}.porcent_qtd_busca_perfil;;

  # }


  # measure: median_dias_extrapolou {
  #   type: median
  #   sql: ${dias_extrapolou} ;;
  # }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  measure: count_distinct_customers {
    type: count_distinct
    sql: ${customer_id} ;;
  }

  set: detail {  #drills para o planos
    fields: [
      ano,
      mes,
      customer_id,
      nome,
      plano,
      quantidade_de_pesquisas_plano,
      qtd_pesquisas
    ]
  }


}
