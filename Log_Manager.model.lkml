connection: "log_manager"

include: "/**/account.view.lkml"
include: "/**/processos.view.lkml"
include: "/**/empresa_pessoa.view.lkml"
include: "/**/organizations.view.lkml"
include: "/**/paises.view.lkml"
include: "/**/plans.view.lkml"
include: "/**/workflow.view.lkml"
include: "/**/workflow_step.view.lkml"

explore: log_manager {

  #sql_always_where: ${customer.fake_customer}=false and ${customer.deleted_raw} is null;;
  #persist_with: my_datagroup
  view_name: processos

  join: account {
    #view_label: "Customer"
    sql_on: ${processos.account_id}=${account.id} ;;
    type: left_outer
    relationship: many_to_one
  }
}
