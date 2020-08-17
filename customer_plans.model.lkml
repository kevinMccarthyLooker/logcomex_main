connection: "api"

include: "/**/customer.view.lkml"
include: "/**/customer_plan.view.lkml"
include: "/**/plan_complete.view.lkml"
include: "/**/plan_info.view.lkml"

# modelo pa analisar os planos dos clientes

explore: customer {

  join: customer_plan {
   relationship: one_to_many
    sql_on: ${customer.id} = ${customer_plan.customer_id};;
    sql_where: ${customer_plan.deleted_raw} is null;; #evita planos apagados
  }

  join: plan_complete {
   relationship: one_to_many
    sql_on: ${customer_plan.plan_complete_id} = ${plan_complete.id} ;;
    sql_where: ${plan_complete.service_id} = 19 ;; #produto search
  }

  join: plan_info{
    type: left_outer
    relationship: one_to_many
    sql_on: ${plan_info.id} = ${plan_complete.plan_info_id} ;;
  }

  join: plan_info_2 { # plan_info e repetido para busca planos da customer_plan
    from: plan_info
    type: left_outer
    relationship: one_to_many
    sql_on: ${plan_info_2.id} = ${customer_plan.plan_info_id} ;;

  }

  sql_always_where: ${fake_customer} is false and ${deleted_raw} is null ;;

}
