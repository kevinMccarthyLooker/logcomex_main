connection: "api"

include: "/**/access_log.view.lkml"
include: "/**/report_log.view.lkml"
include: "/**/users.view.lkml"
include: "/**/user_profile_customer.view.lkml"
include: "/**/customer.view.lkml"
include: "/**/customer_plan.view.lkml"
include: "/**/customer_type.view.lkml"
include: "/**/plan_complete.view.lkml"
include: "/**/service.view.lkml"
include: "/**/plan.view.lkml"
include: "/**/tickets_movidesk.view.lkml"
include: "/**/dau_wau_mau_dates.view.lkml"
include: "/**/customer_derived_plan_info.view.lkml"
include: "/**/customer_derived_trial_info.view.lkml"
include: "/**/user_derived_info.view.lkml"

datagroup: my_datagroup {
  sql_trigger: select count(*) from public.customer_plan ;;
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

explore: usage {
  sql_always_where: ${customer.fake_customer}=false and ${customer.deleted_raw} is null;;
#   always_filter: {}
#   access_filter: {
#     field: customer.id
#     user_attribute: name
#   }

  persist_with: my_datagroup
  view_name: customer

  join: customer_type {
    view_label: "Customer"
    sql_on: ${customer.customer_type_id}=${customer_type.id} ;;
    type: left_outer
    relationship: many_to_one
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

  join: tickets_movidesk {
    sql_on: ${tickets_movidesk.id_customer}=${customer.id} ;;
    relationship: many_to_one
    type: left_outer
  }

  join: users {
    sql_on: ${user_profile_customer.user_id}=${users.id} ;;
    relationship: many_to_one
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
  join: plan_complete {
    sql_on: ${customer_plan.plan_complete_id}=${plan_complete.id} ;;
    relationship: many_to_one
    type: left_outer
  }
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
}


# explore: users {}
