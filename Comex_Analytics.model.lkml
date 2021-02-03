connection: "dremio_datalake"

include: "/**/comex_analytics_di.view.lkml"
include: "/**/comex_analytics_adicoes.view.lkml"

explore:comex_analytics_di  {
}

explore: comex_analytics_adicoes {
}
