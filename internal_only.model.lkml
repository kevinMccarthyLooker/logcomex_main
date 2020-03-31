connection: "api"

# include: "/views/*.view.lkml"                # include all views in the views/ folder in this project
# include: "/**/view.lkml"                   # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

include: "/**/report_log.view.lkml"

explore: usage {
  view_name: report_log

  #comment
}
