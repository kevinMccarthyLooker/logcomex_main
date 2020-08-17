connection: "api"

include: "/**/customer.view.lkml"
include: "/**/planos_ativos_detalhes.view.lkml"

# modelo pa analisar os planos dos clientes

explore: planos_ativos_detalhes {

  join: customer {
  relationship: one_to_one
  sql_on: ${planos_ativos_detalhes.customer_id} = ${customer.id} ;;
  }
}
