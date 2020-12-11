connection: "aereo"

include: "/**/di_pu.view.lkml"
include: "/**/di_pu_addition.view.lkml"
include: "/**/di_pu_addition_acrescimo.view.lkml"
include: "/**/di_pu_addition_imposto.view.lkml"
include: "/**/di_pu_addition_itens.view.lkml"
include: "/**/di_pu_docs.view.lkml"
include: "/**/di_pu_pagamentos.view.lkml"
include: "/**/di_control_pu.view.lkml"
include: "/**/di_control.view.lkml"
include: "/**/di_control_pu_addition.view.lkml"
include: "/**/di_pendente_robos.view.lkml"
include: "/derivated_views/di_pu_pendente.view.lkml"
include: "/**/search_acuracidade.view.lkml"


# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
# explore: order_items {
#   join: orders {
#     relationship: many_to_one
#     sql_on: ${orders.id} = ${order_items.order_id} ;;
#   }
#
#   join: users {
#     relationship: many_to_one
#     sql_on: ${users.id} = ${orders.user_id} ;;
#   }
# }

explore: di_control{}
explore: di_control_pu {}
explore: di_pu {}
explore: di_control_pu_addition {}
explore: di_pu_addition {}
explore: di_pendente_robos {}
explore: di_pu_pendente {}
explore: search_acuracidade{}
explore: di_joins {
  from: di_control
  view_label: "DI JOINS"
  label: "DI JOINS"
  join: di_control_pu {
    relationship: one_to_one
    sql_on: ${di_joins.id} = ${di_control_pu.di_control_id} ;;
  }
  join: di_pu {
    relationship: one_to_one
    sql_on: ${di_control_pu.di_control_id} = ${di_pu.di_control_pu_id} ;;
  }
  join: di_control_pu_addition {
    relationship: one_to_many
    sql_on: ${di_control_pu.id} = ${di_control_pu_addition.di_control_pu_id} ;;
  }
  join: di_pu_addition {
    relationship: one_to_one
    sql_on: ${di_control_pu_addition.id} = ${di_pu_addition.di_control_pu_addition_id} ;;
  }
}
