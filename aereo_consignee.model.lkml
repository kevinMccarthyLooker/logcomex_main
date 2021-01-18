connection: "db" # utlizada a conexao db, pois ela consegue ver os schemas api e aereo

include: "/**/comex_analytics.view.lkml"                # include all views in the views/ folder in this project
#include: "/**/external_du_pi.dashboard.lookml"
include: "/**/active_importers_match_radar.view.lkml"

explore: active_importers_match_radar {
  label: "Importadores Ativos e no Radar"
}

explore: comex_analytics {

  access_filter: {
    field: comex_analytics.customer_id
    user_attribute: customer_id
  }

}
