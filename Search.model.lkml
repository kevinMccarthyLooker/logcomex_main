connection: "filter-api"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project

explore: filter_search {
  view_name: filter_history
}
