connection: "dremio_datalake"

include: "/**/comex_analytics_di.view.lkml"
include: "/**/comex_analytics_adicoes.view.lkml"

datagroup: comex_analytics_embed_datagroup {
  sql_trigger: SELECT CURRENT_DATE ;;
  max_cache_age: "24 hours"
  label: "comex_analytics_embed_datagroup"
  description: "DG do Dash Embedado Comex Analytics, Atualizados a cada 24h"
}

explore:comex_analytics_di  {
persist_with: comex_analytics_embed_datagroup
}

explore: comex_analytics_adicoes {
}
