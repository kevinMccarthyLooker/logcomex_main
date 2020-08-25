connection: "api"
include: "/views/excel_controller.view.lkml"
include: "/derivated_views/consumo_plano_clientes.view.lkml"
#include: "/intermediarioexcel.base.lkml"

explore: consumo_plano_clientes {
  join: excel_controller {
    relationship: many_to_one
    sql_on: ${consumo_plano_clientes.customer_id} = ${excel_controller.customer_id} ;;
  }

}

#include: "intermediarioexcel.base.lkml"

# include: "/**/view.lkml"                   # include all views in this project
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
