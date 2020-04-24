connection: "aereo"

include: "/**/di_pu.view.lkml"
include: "/**/di_pu_addition.view.lkml"

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

explore: di_pu {}

explore: di_pu_addition {
  join: di_pu {
    relationship: many_to_one
    sql_on:  ${di_pu.di_number} = ${di_pu_addition.di_number} ;;
  }
}
