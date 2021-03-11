connection: "dremio_datalake"

include: "/**/tracking_air.view.lkml"
include: "/**/tracking_sea.view.lkml"

datagroup: tracking_embed_datagroup {
  sql_trigger: SELECT CURRENT_DATE ;;
  max_cache_age: "24 hours"
  label: "tracking_embed_datagroup"
  description: "DG do Dash Embedado tracking, Atualizados a cada 24h"
}

explore: tracking_air {
persist_with: tracking_embed_datagroup
access_filter: {
  field: tracking_air.customer_id
  user_attribute: customer_id
}
}

explore: tracking_sea {
persist_with: tracking_embed_datagroup
access_filter: {
  field: tracking_sea.customer_id
  user_attribute: customer_id
}
}
