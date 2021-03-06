connection: "api"

include: "/**/access_log.view.lkml"
include: "/**/report_log.view.lkml"
include: "/**/users.view.lkml"
include: "/**/user_profile_customer.view.lkml"
include: "/**/customer.view.lkml"
include: "/**/customer_plan.view.lkml"
include: "/**/customer_type.view.lkml"
include: "/**/plan_complete.view.lkml"
include: "/**/plan_info.view.lkml"
include: "/**/service.view.lkml"
include: "/**/plan.view.lkml"
include: "/**/tickets_movidesk.view.lkml"
include: "/**/dau_wau_mau_dates.view.lkml"
include: "/**/customer_derived_plan_info.view.lkml"
include: "/**/customer_derived_trial_info.view.lkml"
include: "/**/user_derived_info.view.lkml"
include: "/**/bi_filters_customer_plan.view.lkml"
include: "/**/plan_info_join.view.lkml"
include: "/**/cs_healthscore.view.lkml"
include: "/**/cs_novo_health_score.view.lkml"
include: "/**/cs_healthscore_accesslog.view.lkml"
include: "/**/bi_filtros_agrupado.view.lkml"
include: "/**/customer_info.view.lkml"
include: "/**/filter_history.view.lkml"
include: "/**/customer_api_relations.view.lkml"
include: "/**/billing_contract_omie.view.lkml"
include: "/**/service_order_omie.view.lkml"
include: "/**/financial_securities_omie.view.lkml"
include: "/**/nps_04_2020.view.lkml"
include: "/**/nps_08_2020.view.lkml"
include: "/**/nps_11_2020.view.lkml"
include: "/**/clientes_ativos_por_mes.view.lkml"
include: "/**/customer_block_status.view.lkml"
include: "/**/customer_blocked_history.view.lkml"
include: "/**/tracking_maritimo_aereo.view.lkml"
include: "/**/certificate.view.lkml"
include: "/**/robots.view.lkml"
include: "/**/extra_data_container.view.lkml"
include: "/**/extra_data_container_history.view.lkml"
include: "/**/follow_up.view.lkml"
include: "/**/FilaTrackingFollowUp.view.lkml"
include: "/**/tracking_status.view.lkml"
include: "/**/planos_ativos_detalhes.view.lkml"
include: "/**/consumo_plano_clientes_search_mensal.view.lkml"
include: "/**/consumo_plano_clientes_search_diario.view.lkml"
include: "/**/excel_controller.view.lkml"
include: "/**/log_integration_ibroker.view.lkml"
include: "/**/jira_tasks.view.lkml"
include: "/**/satisfaction_survey_movidesk.view.lkml"
include: "/**/acessos_produtos.view.lkml"
include: "/**/tracking_plan_info.view.lkml"
include: "/**/search_filtros.view.lkml"
include: "/**/plan_info_derivated.view.lkml"
include: "/**/bi_filters.view.lkml"
include: "/**/bi_column_customer_plan_derivated.view.lkml"
include: "/**/bi_column.view.lkml"
include: "/**/permission.view.lkml"
include: "/**/permission_group.view.lkml"
include: "/**/group.view.lkml"
include: "/**/consignee.view.lkml"
include: "/**/certificate_consignee_radar.view.lkml"
include: "/**/certificate.view.lkml"
include: "/**/follow_up_status.view.lkml"
include: "/**/big_data_filtros.view.lkml"
include: "/**/search_filtros_agrupados.view.lkml"
include: "/**/hubspot_cs_deal.view.lkml"
include: "/**/filters_names.view.lkml"
include: "/**/trials_ativos_mes.view.lkml"
include: "/**/clientes_sem_exportacao.view.lkml"
include: "/**/hubspot_stage_cs_deal.view.lkml"
include: "/**/hubspot_tickets.view.lkml"
include: "/**/nps_02_2021.view.lkml"
include: "/**/quick_ratio.view.lkml"
include: "/**/clientes_trials_acessos_plataforma.view.lkml"
include: "/**/clientes_acessos_plataforma.view.lkml"
include: "/**/usuarios_clientes_acessos_plataforma.view.lkml"
include: "/**/trials_acessos_plataforma.view.lkml"
include: "/**/health_score_2021.view.lkml"
include: "/**/**/status_integracao.view.lkml"
include: "/**/**/tracking_follow_consignee.view.lkml"
include: "/**/**/log_customer_plan.view.lkml"
include: "/**/**/log_plan_info.view.lkml"
include: "/**/**/log_tracking_plan_info.view.lkml"
include: "/**/**/customer_origin.view.lkml"
include: "/**/**/type_of_contract.view.lkml"
include: "/**/**/usuarios_clientes_acessos_dia_plataforma.view.lkml"
include: "/**/**/usuarios_clientes_acessos_tracking.view.lkml"
include: "/**/**/usuarios_trials_acessos_tracking.view.lkml"



datagroup: internal_only_datagroup {
  sql_trigger: select count(*) from public.customer_plan ;;
  max_cache_age: "6 hours"
  label: "internal_only_datagroup"
  description: " DG Principal do Modelo Internal Only"
}

#datagroup: hs_datagroup {
#  #sql_trigger: select CURRENT_DATE ;; a cada 24 horas
#  sql_trigger: SELECT FLOOR(EXTRACT(epoch from (NOW() - interval '3' hour)) / (12*60*60)) ;; # a cada 12 horas
#  max_cache_age: "13 hours"
#  label: "hs_datagroup"
#  description: "DG do Health Score, atualiza a cada 12h"
#}

explore: status_integracao {}
explore: usuarios_clientes_acessos_plataforma {}
explore: clientes_trials_acessos_plataforma {}
explore: clientes_acessos_plataforma {}
explore: usuarios_clientes_acessos_dia_plataforma {}
explore: trials_acessos_plataforma {}
explore: usuarios_clientes_acessos_tracking {}
explore: usuarios_trials_acessos_tracking {}

explore: clientes_sem_exportacao{}

explore: quick_ratio {}

explore: follow_up_status {
  label: "Tempo no Status - Tracking"
}

explore: search_filtros_agrupados {
  label: "Search e Novo Expo Filtros AGG"
}

explore: dau_wau_mau {
  view_name: report_log
  join: dau_wau_mau_dates {
#     type: cross
    relationship: one_to_one
    sql: left join dau_wau_mau_dates on ${dau_wau_mau_dates.period_end_date} < current_date ;;
  }
  join: users {
    sql_on: ${report_log.user_id}=${users.id} ;;
    relationship: many_to_one
    type: left_outer
  }
  join: user_profile_customer {
    sql_on: ${users.id}=${user_profile_customer.user_id} ;;
    relationship: one_to_many
    type: left_outer
  }
  join: customer {
    sql_on: ${user_profile_customer.customer_id}=${customer.id} ;;
    relationship: many_to_one
    type: left_outer
  }
  #did not join customer_plan because users can't be directly associated to one plan amongst their customer's plans

}

explore: usage_logs {
  view_name: access_log

  join: customer {
    sql_on: ${customer.id}=${access_log.customer_id} ;;
    sql_where: ${customer.fake_customer} is false ;;
    relationship: one_to_many
    type: left_outer
  }

  join: user_profile_customer {
    sql_on: ${user_profile_customer.customer_id}=${customer.id} ;;
    relationship: many_to_one
    type: left_outer
  }

  join: users {
    sql_on: ${user_profile_customer.user_id}=${users.id} ;;
    relationship: many_to_one
    type: left_outer
  }

}

explore: certificate_api {
  view_name: certificate

  join: certificate_consignee_radar {
    sql_on:  ${certificate.id}=${certificate_consignee_radar.certificate_id} ;;
    relationship: many_to_one
    type: left_outer
  }
}

explore: consignee_radar {
  view_name: consignee

  join: certificate_consignee_radar {
    sql_on: ${consignee.id}=${certificate_consignee_radar.consignee_id} ;;
    relationship: one_to_many
    type: inner
  }

  join: certificate {
    #sql_on: ${consignee.cert_id}=${certificate.id}
    #    and ${certificate.customer_id}=${consignee.customer_id};;
    sql_on: ${certificate_consignee_radar.certificate_id} = ${certificate.id}  ;;
    sql_where: ${certificate.valid_until_date} > now() ;;
    relationship: many_to_one
    type: inner
  }

  join: customer {
    sql_on: ${consignee.customer_id}=${customer.id};;
    relationship: many_to_one
    type: left_outer
    }
}

explore: consignee_seguir_embarque {
  view_name: consignee

  join: customer {
    sql_on: ${consignee.customer_id}=${customer.id};;
    relationship: many_to_one
    type: left_outer
  }

  join: customer_plan {
    sql_on: ${customer.id}=${customer_plan.customer_id} ;;
    relationship: one_to_many
    type: left_outer
  }

  join: plan_complete {
    sql_on: ${customer_plan.plan_complete_id}=${plan_complete.id} ;;
    relationship: many_to_one
    type: left_outer
  }

  join: tracking_follow_consignee {
    sql_on:${tracking_follow_consignee.consignee_id} = ${consignee.id};;
    relationship: one_to_many
    type: inner
  }
}


explore: usage {
  sql_always_where: ${customer.fake_customer}=false and ${customer.deleted_raw} is null;;
#   always_filter: {}
#   access_filter: {
#     field: customer.id
#     user_attribute: name
#   }

  persist_with: internal_only_datagroup
  view_name: customer

  join: customer_blocked_history {
    view_label: "Customer"
    sql_on: ${customer.id}=${customer_blocked_history.customer_id} and ${customer_blocked_history.deleted_date} is null ;;
    type: left_outer
    #sql_where: ${customer_blocked_history.deleted_date} is null ;;
    relationship: one_to_one
  }

  join: customer_block_status {
    view_label: "Customer"
    sql_on: ${customer_block_status.id}=${customer_blocked_history.customer_block_status_id} ;;
    type: left_outer
    relationship: one_to_many
  }

  join: customer_type {
    view_label: "Customer"
    sql_on: ${customer.customer_type_id}=${customer_type.id} ;;
    type: left_outer
    relationship: many_to_one
  }

  join: customer_api_relations{
    sql_on: ${customer.id}=${customer_api_relations.id_customer} ;;
    relationship: one_to_many
    type: left_outer
  }

  join: hubspot_tickets {
    sql_on: ${customer_api_relations.id} = ${hubspot_tickets.customer_api_relations_id} ;;
    relationship: one_to_many
    type: left_outer
  }

  join: hubspot_cs_deal {
    sql_on: ${customer_api_relations.id} = ${hubspot_cs_deal.customer_api_relations_id} ;;
    relationship: one_to_many
    type: left_outer
  }

  join: hubspot_stage_cs_deal {
    sql_on: ${customer_api_relations.id} = ${hubspot_stage_cs_deal.customer_api_relations_id} ;;
    relationship: one_to_many
    type: left_outer
  }

  join: billing_contract_omie{
    sql_on: ${customer_api_relations.id}=${billing_contract_omie.customer_api_relations_id} ;;
    relationship: one_to_many
    type: left_outer
  }

  join: service_order_omie{
    sql_on: ${billing_contract_omie.id}=${service_order_omie.billing_contract_id} ;;
    relationship: one_to_many
    type: left_outer
  }

  join: financial_securities_omie {
    sql_on: ${service_order_omie.id} = ${financial_securities_omie.service_order_id} ;;
    relationship: one_to_many
    type: left_outer

  }

#  join: cs_healthscore{
#    sql_on: ${customer.id}=${cs_healthscore.customer_id} ;;
#    relationship: one_to_many
#    type: left_outer
#  }

#  join: cs_novo_health_score{
#    sql_on: ${customer.id}=${cs_novo_health_score.customer_id} ;;
#    relationship: one_to_one
#    type: inner
#  }

#  join: cs_healthscore_accesslog{
#    sql_on: ${customer.id}=${cs_healthscore_accesslog.customer_id} ;;
#    relationship: one_to_many
#    type: left_outer
#  }

  join: customer_info{
    sql_on: ${customer.id}=${customer_info.customer_id} ;;
    relationship: one_to_one
    type: left_outer
  }

  join: customer_derived_plan_info {
    view_label: "Customer"
    sql_on: ${customer.id}=${customer_derived_plan_info.customer_id} ;;
    type: left_outer
    relationship: one_to_one
  }

  join: customer_derived_trial_info {
    view_label: "Customer"
    sql_on: ${customer.id}=${customer_derived_trial_info.customer_id} ;;
    type: left_outer
    relationship: one_to_one
  }

  join: user_profile_customer {
    sql_on: ${user_profile_customer.customer_id}=${customer.id} ;;
    relationship: many_to_one
    type: left_outer
  }

  join: group {
    sql_on: ${user_profile_customer.group_id} = ${group.id} ;;
    relationship: many_to_one
    type: inner
  }

  join: permission_group {
    sql_on: ${group.id} = ${permission_group.group_id} ;;
    relationship: one_to_many
    type: left_outer
  }

  join: permission {
    sql_on: ${permission_group.permission_id} = ${permission.id} ;;
    relationship: many_to_one
    type: inner
  }

  join: acessos_produtos {
    sql_on: ${acessos_produtos.customer_id}=${customer.id} ;;
    relationship: many_to_one
    type: left_outer
  }

  join: users {
    sql_on: ${user_profile_customer.user_id}=${users.id} ;;
    relationship: many_to_one
    type: left_outer
  }

  join: tickets_movidesk {
    sql_on: ${tickets_movidesk.id_customer}=${customer.id} ;;
    relationship: many_to_one
    type: left_outer
  }

  join: search_filtros{
    sql_on: ${customer.id} = ${search_filtros.customer} ;;
    relationship: one_to_many
    type: left_outer
  }

  join: filters_names_search  {
    from: filters_names
    view_label: "Filters Names Search"
    sql_on: ${filters_names_search.name} = ${search_filtros.filtro} and ${search_filtros.service_id} = ${filters_names_search.service_id} ;;
    relationship: many_to_one
    type: left_outer
  }

  join: search_filtros_agrupados{
    sql_on: ${customer.id} = ${search_filtros_agrupados.customer_id};;
    relationship: one_to_many
    type: left_outer
  }

  join: jira_tasks {
    sql_on: ${jira_tasks.tickets_movidesk_id} = ${tickets_movidesk.id_ticket_movidesk} ;;
    relationship: many_to_one
    type: left_outer
  }

  join: satisfaction_survey_movidesk{
    sql_on: ${tickets_movidesk.id_ticket_movidesk} = ${satisfaction_survey_movidesk.tickets_movidesk_id} ;;
    relationship: one_to_many
    type: left_outer

  }

  join: nps_04_2020 {
    sql_on: ${users.email}=${nps_04_2020.email} ;;
    relationship: one_to_many
    type: left_outer
  }

  join: nps_08_2020 {
    sql_on: ${users.email}=${nps_08_2020.email} ;;
    relationship: one_to_many
    type: left_outer
  }

  join: nps_11_2020 {
    sql_on: ${users.email}=${nps_11_2020.email} ;;
    relationship: one_to_many
    type: left_outer
  }

  join: nps_02_2021 {
    sql_on: ${users.email}=${nps_02_2021.email} ;;
    relationship: one_to_many
    type: left_outer
  }

  join: user_derived_info {
    view_label: "Users"
    sql_on: ${users.id}=${user_derived_info.user_id} ;;
    type: left_outer
    relationship: one_to_one
  }

  join: report_log {
    sql_on: ${users.id}=${report_log.user_id} ;;
    relationship: one_to_many
    type: left_outer
  }

  join: bi_filtros_agrupado{
    view_label: "Report Log"
    sql_on: ${report_log.id}=${bi_filtros_agrupado.filters_report_log_id} ;;
    relationship: one_to_one
    type: left_outer
  }

  join: big_data_filtros {
    sql_on: ${users.id} = ${big_data_filtros.user_id} ;;
    relationship: one_to_many
    type: left_outer
  }

  join: filters_names {
    sql_on: ${big_data_filtros.filter} = ${filters_names.bi_field} and ${big_data_filtros.service_id} = ${filters_names.service_id} ;;
    relationship: many_to_one
    type: left_outer
  }

  join: access_log {
    sql_on: ${customer.id}=${access_log.customer_id} ;;
    relationship: one_to_many
    type: left_outer
  }

  join: access_log_user {
    from: access_log
    view_label: "Access Log Users"
    sql_on: ${users.id}=${access_log_user.user_id} ;;
    relationship: one_to_many
    type: left_outer
  }

  join: service_log {
    from: service
    view_label: "Report Log"
    sql_on: cast(cast(${report_log.serviceId} as text) as integer)=${service_log.id};;
    relationship: one_to_one
    type: left_outer
  }
  #better understand customer plan.
  #do care about first customer_plan, etc, for each user?
  join: customer_plan {
    sql_on: ${customer.id}=${customer_plan.customer_id} ;;
    relationship: one_to_many
    type: left_outer
  }

  join: log_customer_plan {
    sql_on: ${customer_plan.id}=${log_customer_plan.customer_plan_id} ;;
    relationship: one_to_many
    type: left_outer
  }

  join: customer_origin {
    sql_on: ${log_customer_plan.customer_origin_id}=${customer_origin.id} ;;
    relationship: many_to_one
    type: left_outer
  }

  join: type_of_contract {
    sql_on: ${log_customer_plan.type_of_contract_id}=${type_of_contract.id} ;;
    relationship: many_to_one
    type: left_outer
  }

  join: log_plan_info {
    sql_on: ${log_customer_plan.plan_info_id}=${log_plan_info.plan_info_id} ;;
    relationship: many_to_many
    type: left_outer
  }

  join: log_tracking_plan_info {
    sql_on: ${log_customer_plan.tracking_plan_info_id}=${log_tracking_plan_info.tracking_plan_info_id} ;;
    relationship: many_to_many
    type: left_outer
  }

  join: plan_info_derivated {  # view derivada do plano para conseguir pegar os valores correntes dos planos dos clientes
    sql_on: ${customer_plan.id} = ${plan_info_derivated.customer_plan_id} ;;
    relationship: one_to_one
    type: left_outer
  }

  join: plan_info_join{
    sql_on: ${customer_plan.id}=${plan_info_join.customer_plan_id} ;;
    relationship: one_to_many
    type: left_outer
  }

  join: bi_filters_customer_plan{
    sql_on: ${customer_plan.id}=${bi_filters_customer_plan.customer_plan_id} ;;
    relationship: one_to_many
    type: left_outer
  }

  join: bi_column_customer_plan_derivated{
    sql_on: ${customer_plan.id}=${bi_column_customer_plan_derivated.customer_plan_id} ;;
    relationship: one_to_many
    type: left_outer
  }

  join: bi_filters {
    sql_on: ${bi_filters_customer_plan.bi_filters_id} = ${bi_filters.id} ;;
    relationship: many_to_one
    type: left_outer

  }

  join: bi_column {
    sql_on: ${bi_filters.bi_column_id} = ${bi_column.id} ;;
    relationship: one_to_one
    type: left_outer

  }

  join: report_log_plan {
    from: report_log
    view_label: "Report Log Customer Plan "
    sql_on: ${customer_plan.id}=${report_log_plan.customer_plan_id} ;;
    relationship: one_to_many
    type: left_outer
  }

  join: plan_complete {
    sql_on: ${customer_plan.plan_complete_id}=${plan_complete.id} ;;
    relationship: many_to_one
    type: left_outer
  }

#  join: plan_info {
#    sql_on: coalesce(${customer_plan.plan_info_id},${plan_complete.plan_info_id}) = ${plan_info.id};;
#    relationship: many_to_one
#    type: left_outer
#  }

  join: service {
    view_label: "Plan Complete"
    sql_on: ${plan_complete.service_id}=${service.id} ;;
    relationship: many_to_one
    type: left_outer
  }
  #service view_label: "Plan Complete"
  #plan  view_label: "Plan Complete"
  join: plan {
    view_label: "Plan Complete"
    sql_on:${plan_complete.plan_id}=${plan.id} ;;
    relationship: many_to_one
    type: left_outer
  }

  join: tracking_plan_info {
    sql_on: ${tracking_plan_info.id}=${customer_plan.tracking_plan_info_id} ;;
    relationship: one_to_many
    type: left_outer
  }

  join: clientes_ativos_por_mes {
    sql_on: ${customer_plan.id}=${clientes_ativos_por_mes.customer_plan_id} ;;
    relationship: one_to_many
    type: left_outer
  }

  join: trials_ativos_mes {
    sql_on: ${customer_plan.id}=${trials_ativos_mes.customer_plan_id} ;;
    relationship: one_to_many
    type: left_outer
  }

  # view com detalhes dos planos dos clientes
  join: planos_ativos_detalhes {
    sql_on: ${customer.id} = ${planos_ativos_detalhes.customer_id} ;;
    relationship: one_to_many
    type: left_outer
  }

 # view com o consumo dos planos
  join: consumo_plano_clientes_search_mensal {
    sql_on: ${customer.id} = ${consumo_plano_clientes_search_mensal.customer_id} ;;
    relationship: one_to_many
    type: left_outer
  }

  join: consumo_plano_clientes_search_diario {
    sql_on: ${customer.id} = ${consumo_plano_clientes_search_diario.customer_id} ;;
    relationship: one_to_many
    type: left_outer
  }

  # view com detalhes do consumo excel NAO ENCONTRA DEVIDO A CONEXAO (VERIFICAR!)
  #join: excel_controller {
  # sql_on: ${customer.id} = ${excel_controller.customer_id} ;;
    #: ${excel_controller.service_id} = 19
    #and ${excel_controller.excel_controller_status_id} = 3;;
  #  relationship: one_to_many
   # type: left_outer
  #}

  join: tracking_maritimo_aereo {
    sql_on: ${customer.id}=${tracking_maritimo_aereo.customer_id} ;;
    relationship: one_to_many
    type: left_outer
  }

  join: follow_up {
    sql_on:
      (${follow_up.tracking_id}=${tracking_maritimo_aereo.tracking_maritimo_id}) or
      (${follow_up.tracking_aerial_id}=${tracking_maritimo_aereo.tracking_id})
  ;;
    relationship: one_to_many
    type: left_outer
  }

  join: robots {
    sql_on: ${robots.id_shipowner}=${tracking_maritimo_aereo.armador_ciaaerea} ;;
    relationship: one_to_many
    type: left_outer
  }

  join: filter_history {
    view_label: "Search Filter History"
    sql_on: ${customer.id}=${filter_history.customer_id} ;;
    relationship: one_to_many
    type: left_outer
  }

  join: filter_history_user {
    from: filter_history
    view_label: "Search Filter History User"
    sql_on: ${users.id}=${filter_history_user.user_id} ;;
    relationship: one_to_many
    type: left_outer
  }

  join: certificate {
    sql_on: ${customer.id}=${certificate.customer_id} ;;
    relationship: one_to_many
    type: left_outer
  }

  join: log_integration_ibroker {
    sql_on: ${customer.id}=${log_integration_ibroker.customer_id} ;;
    relationship: one_to_many
    type: left_outer
  }
}

explore: Logistica_Internacional {
  persist_with: internal_only_datagroup
  view_name: extra_data_container

  join: extra_data_container_history {
    sql_on: ${extra_data_container.id}=${extra_data_container_history.extra_data_container_history_id} ;;
    type: left_outer
    relationship: one_to_many
  }

  join: tracking_maritimo_aereo {
    sql_on: ${extra_data_container.bl} = ${tracking_maritimo_aereo.documento} ;;
    type: left_outer
    relationship: one_to_many
  }

  join: customer {
    sql_on: ${customer.id} = ${tracking_maritimo_aereo.customer_id} ;;
    type: left_outer
    relationship: many_to_one
  }

  join: customer_plan {
    sql_on: ${customer_plan.customer_id} = ${customer.id};;
    type: left_outer
    relationship: one_to_many
  }

  join: plan_complete {
    sql_on: ${plan_complete.id} = ${customer_plan.plan_complete_id} ;;
    type: left_outer
    relationship: many_to_one
  }
}

explore: Robos_Tracking {
    persist_with: internal_only_datagroup
    view_name: filatrackingfollowup

  join: tracking_status {
    sql_on: ${tracking_status.id}=${filatrackingfollowup.status_id} ;;
    type: left_outer
    relationship: one_to_many
  }

}

explore: cs_novo_health_score {
  view_name: health_score_2021
  #persist_with: hs_datagroup
  sql_always_where: ${customer.fake_customer}=false and ${customer.deleted_raw} is null;;

  join: customer {
    sql_on: ${health_score_2021.customer_id} = ${customer.id} ;;
    relationship: many_to_one
    type: inner
  }

#  join: health_score_2021 {
#     sql_on: ${health_score_2021.customer_id} = ${customer.id} ;;
#     relationship: one_to_many
#     type: inner
#   }

  join: customer_info{
    sql_on: ${customer.id}=${customer_info.customer_id} ;;
    relationship: one_to_one
    type: left_outer
  }

  join: user_profile_customer {
    sql_on: ${user_profile_customer.customer_id}=${customer.id} ;;
    relationship: many_to_one
    type: left_outer
  }

  join: users {
    sql_on: ${user_profile_customer.user_id}=${users.id} ;;
    relationship: many_to_one
    type: left_outer
  }

  join: nps_11_2020 {
    sql_on: ${users.email}=${nps_11_2020.email} ;;
    relationship: one_to_many
    type: left_outer
  }

  join: nps_02_2021 {
    sql_on: ${users.email}=${nps_02_2021.email} ;;
    relationship: one_to_many
    type: left_outer
  }

  join: customer_api_relations{
    sql_on: ${customer.id}=${customer_api_relations.id_customer} ;;
    relationship: one_to_many
    type: left_outer
  }

  join: hubspot_cs_deal {
    sql_on: ${customer_api_relations.id} = ${hubspot_cs_deal.customer_api_relations_id} ;;
    relationship: one_to_one
    type: left_outer
  }

}

 explore: tickets_hubspot_with_fake_customers { # explore construido para permitir tickets de empresas fakes "Logcomex S/A" e tickets nao associados
   view_name: hubspot_tickets
   sql_always_where: ${customer.deleted_raw} is null and ${customer_api_relations.deleted_raw} is null  ;;

   join: customer_api_relations{
     sql_on: ${hubspot_tickets.customer_api_relations_id}=${customer_api_relations.id} ;;
     relationship: many_to_one
     type: left_outer
   }

   join: customer {
     sql_on: ${customer_api_relations.id_customer} = ${customer.id} ;;
     relationship: many_to_one
     type: left_outer
   }
 }
