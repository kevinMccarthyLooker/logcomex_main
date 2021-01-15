connection: "dremio_datalake"

include: "/**/bi_imports_mvw_gold.view.lkml"
include: "/**/comex_analytics_datalake.view.lkml"



explore:bi_imports_mvw_gold  {
}

explore:comex_analytics_datalake  {
}
