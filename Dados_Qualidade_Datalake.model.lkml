connection: "dremio_datalake"

include: "/**/db_maritimo_bronze.view.lkml"
include: "/**/db_maritimo_gold.view.lkml"
include: "/**/maritimo_exportacao_gold.view.lkml"
include: "/**/comex_analytics_gold.view.lkml"

explore:db_maritimo_bronze  {
}
explore:db_maritimo_gold  {
}
explore:comex_analytics_gold  {
}
explore:maritimo_exportacao_gold  {
}
