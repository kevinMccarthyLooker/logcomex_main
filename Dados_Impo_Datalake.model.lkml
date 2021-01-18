connection: "dremio_datalake"

include: "/**/bi_imports_mvw_gold.view.lkml"
include: "/**/comex_analytics_datalake.view.lkml"
include: "/**/external_comex_analytics.dashboard.lookml"


explore:bi_imports_mvw_gold  {
}

explore:comex_analytics_datalake  {
}
