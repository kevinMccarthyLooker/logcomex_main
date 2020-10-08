connection: "filter-api"

include: "/**/filter_history.view.lkml"
include: "/**/customer.view.lkml"

explore: filter_search {
  view_name: filter_history

  join: customer {
    sql_on: ${customer.id} = ${filter_history.customer_id};;
    type: left_outer
    relationship: many_to_one
  }


}
