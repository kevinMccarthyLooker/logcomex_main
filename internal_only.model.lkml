connection: "api"

# include: "/views/*.view.lkml"                # include all views in the views/ folder in this project
# include: "/**/view.lkml"                   # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

include: "/**/report_log.view.lkml"
include: "/**/users.view.lkml"
include: "/**/user_profile_customer.view.lkml"
include: "/**/customer.view.lkml"
include: "/**/customer_plan.view.lkml"
include: "/**/plan_complete.view.lkml"
include: "/**/service.view.lkml"
include: "/**/plan.view.lkml"


explore: usage {
  group_label: "Usage"
  view_name: customer
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
  join: report_log {
    sql_on: ${users.id}=${report_log.user_id} ;;
    relationship: one_to_many
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
