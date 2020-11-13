view: consumo_plano_clientes_search_mensal {
  # Or, you could make this view a derived table, like this:
  derived_table: {
    sql:select *,
    (case when qq.quantidade_de_pesquisas_plano = 0 or quantidade_de_pesquisas_plano = 9999999 then true else false end) as pesquisas_ilimitadas,
      (case when qq.busca_perfil_empresas_plano = 0 or qq.busca_perfil_empresas_plano = 9999999 then true else false end) as perfil_ilimitados,
      qq.qtd_pesquisas::float/qq.quantidade_de_pesquisas_plano::float as percentual_pesquisas,
      (qq.quantity_possible_importer + qq.quantity_possible_exporter) as qtd_perfil,
      (qq.quantity_possible_importer + qq.quantity_possible_exporter)::float/(case when qq.busca_perfil_empresas_plano = 0 then 9999999 else qq.busca_perfil_empresas_plano end)::float as percentual_perfil
      from(
      select
      concat(extract("year" from fh.created_at),extract("month" from fh.created_at),fh.customer_id) as id_table,
      TO_TIMESTAMP(concat(extract("year" from fh.created_at),' ',extract("month" from fh.created_at)) ,'YYYY MM') as periodo,
      extract("year" from fh.created_at) as ano,
      extract("month" from fh.created_at) as mes,
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
      extrapolados.data_extrapolou,
      extrapolados.dias_extrapolou,
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
      left join(
      select qq2.customer_id, qq2.mes , qq2.ano as ano, min(qq2.data_consulta) as data_extrapolou, min(dias) as dias_extrapolou
      from(
      select fh.customer_id,extract(month from fh.created_at ) as mes, extract(year from fh.created_at ) as ano, date(fh.created_at) as data_consulta,
      coalesce(pi_custom.monthly_searches, pi_default.monthly_searches) AS quantidade_de_pesquisas_plano,
      sum(count(fh.source_hash)) OVER (PARTITION by fh.customer_id, extract(month from fh.created_at ),extract(year from fh.created_at ) ORDER BY date(fh.created_at)),
      sum(count(fh.source_hash)) OVER (PARTITION by fh.customer_id, extract(month from fh.created_at ),extract(year from fh.created_at ) ORDER BY date(fh.created_at))/coalesce(pi_custom.monthly_searches, pi_default.monthly_searches) as percentual,
      count(date(fh.created_at)) OVER (PARTITION by fh.customer_id, extract(month from fh.created_at ),extract(year from fh.created_at ) ORDER BY date(fh.created_at)) as dias
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
      and upc.logcomex_fake is false -- nao contabiliza pesquisas de usuarios logcomex
      --and fh.customer_id = 2102
      group by fh.customer_id,mes, ano, date(fh.created_at),quantidade_de_pesquisas_plano
      order by 2) as qq2
      where qq2.percentual > 1
      group by qq2.customer_id,qq2.mes, qq2.ano) as extrapolados on extrapolados.customer_id = fh.customer_id and extrapolados.mes = extract(month from fh.created_at) and extrapolados.ano = extract(year from fh.created_at)
      where fh.debited = true -- flag que contabiliza
      and fh.service_id = 19 -- produto search
      and pc2.service_id = 19 -- plano com search
      and c2.deleted_at is null -- verifica se foi deletado
      and c2.fake_customer is false -- verifica se é cliente teste
      and cp.deleted_at is null -- verifica se o plano foi deletado
      and upc.logcomex_fake is false -- nao contabiliza pesquisas de usuarios logcomex
      --and c2.id = 2102
      group by id_table, periodo, extract("year" from fh.created_at) , extract("month" from fh.created_at) ,fh.customer_id, nome,
      quantidade_de_pesquisas_plano,busca_perfil_empresas_plano,qtd_excel_plano,
      excel_lines_plano,search_lines_plano,plano,data_inicio,data_fim,data_inicio_trial,
      data_fim_trial, extrapolados.data_extrapolou, extrapolados.dias_extrapolou
      order by periodo) as qq
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

  dimension: pesquisas_ilimitadas {
    type: yesno
    sql: ${TABLE}.pesquisas_ilimitadas ;;
  }

  dimension: perfil_ilimitados {
    type: yesno
    sql: ${TABLE}.perfil_ilimitados ;;
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

  dimension: search_lines_plano {
    type: number
    sql: ${TABLE}.search_lines_plano ;;
  }


  dimension: ano {
    type: number
    sql: ${TABLE}.ano ;;
  }

  dimension: mes {
    type: number
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

  dimension: data_extrapolou {
    type: date
    sql: ${TABLE}.data_extrapolou ;;
  }

  dimension: dias_extrapolou {
    type:number
    sql: ${TABLE}.dias_extrapolou ;;
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
    sql: case when ${percentual_pesquisas_dim} > 1 then true
      else false end;;
  }


  dimension: percentual_pesquisas_dim {
    type: number
    sql: ${TABLE}.percentual_pesquisas ;;

  }

  measure: avg_percentual_pesquisas {
    type: median
    filters: [percentual_pesquisas_dim:">=0"]
    sql: ${TABLE}.percentual_pesquisas ;;

  }

  dimension: percentual_perfil_dim {
    type: number
    sql: ${TABLE}.percentual_perfil;;

  }

  measure: qtd_pesquisas {
    type: sum
    sql: ${TABLE}.qtd_pesquisas ;;

  }

  measure: qtd_perfil_sum  {
    type: sum
    sql: ${TABLE}.qtd_perfil ;;

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

  measure: avg_percentual_percentual_perfil {
    type: median
    filters: [percentual_perfil_dim: ">=0"]
    sql: ${TABLE}.percentual_perfil;;

  }


  measure: median_dias_extrapolou {
    type: median
    sql: ${dias_extrapolou} ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  set: detail {  #drills para o planos
    fields: [
      customer_id,
      nome,
      mes,
      plano,
      quantidade_de_pesquisas_plano,
      qtd_pesquisas
    ]
  }


}
