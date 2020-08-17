connection: "api"

include: "/**/customer.view.lkml"
include: "/**/customer_plan.view.lkml"
include: "/**/plan_complete.view.lkml"
include: "/**/plan_info.view.lkml"

# include all views in the views/ folder in this project
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

explore: customer {
  join: customer_plan {
    relationship: one_to_many
    sql_on: ${customer.id} = ${customer_plan.customer_id};;
  }
}
