connection: "dremio_datalake"

include: "/**/comex_analytics_di.view.lkml"
include: "/**/comex_analytics_adicoes.view.lkml"
include: "/**/comex_analytics.dashboard"
include: "/**/certificate_radar_queue_gold.view.lkml"

datagroup: comex_analytics_embed_datagroup {
  sql_trigger: SELECT CURRENT_DATE ;;
  max_cache_age: "24 hours"
  label: "comex_analytics_embed_datagroup"
  description: "DG do Dash Embedado Comex Analytics, Atualizados a cada 24h"
}

explore:comex_analytics_di  {
persist_with: comex_analytics_embed_datagroup
  access_filter: {
    field: comex_analytics_di.id_customer
    user_attribute: customer_id
  }
}

explore: comex_analytics_adicoes {
}

explore: certificate_radar_queue_gold {
}
