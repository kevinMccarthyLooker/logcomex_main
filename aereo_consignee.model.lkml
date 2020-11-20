connection: "db" # utlizada a conexao db, pois ela consegue ver os schemas api e aereo

include: "/**/di_pu_sistema.view.lkml"                # include all views in the views/ folder in this project
#include: "/**/external_du_pi.dashboard.lookml"
include: "/**/active_importers_match_radar.view.lkml"

explore: active_importers_match_radar {
  label: "Importadores Ativos e no Radar"
}


explore: di_pu_sistema {

  access_filter: {
    field: di_pu_sistema.importador_nome
    user_attribute: importador_nome
  }

}
