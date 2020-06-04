connection: "filter-api"

include: "/**/filter_history.view.lkml"

explore: filter_search {
  view_name: filter_history
}
