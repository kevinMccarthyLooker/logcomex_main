connection: "api"

include: "/**/customer.view.lkml"
include: "/**/planos_ativos_detalhes.view.lkml"

# modelo pa analisar os planos dos clientes

explore: customer {

  join: planos_ativos_detalhes {
  relationship: one_to_one
  sql_on: ${customer.id} = ${planos_ativos_detalhes.customer_id};;
  }
}
