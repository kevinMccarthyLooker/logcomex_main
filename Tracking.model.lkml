connection: "dremio_datalake"

include: "/**/tracking_air.view.lkml"
include: "/**/tracking_sea.view.lkml"
include: "/**/tracking_air.dashboard"
include: "/**/tracking_sea.dashboard"

datagroup: tracking_embed_datagroup {
  sql_trigger: SELECT CURRENT_DATE ;;
  max_cache_age: "24 hours"
  label: "tracking_embed_datagroup"
  description: "DG do Dash Embedado tracking, Atualizados a cada 24h"
}

explore: tracking_air {
persist_with: tracking_embed_datagroup
##access_filter: {
##  field: tracking_air.id_customer
##  user_attribute: id_customer
##}
}

explore: tracking_sea {
persist_with: tracking_embed_datagroup
##access_filter: {
##  field: tracking_sea.id_customer
##  user_attribute: id_customer
##}
}
