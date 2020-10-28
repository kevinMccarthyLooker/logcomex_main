connection: "aereo"

include: "/**/di_pu.view.lkml"                # include all views in the views/ folder in this project

explore: di_pu {

  access_filter: {
    field: di_pu.importador_nome
    user_attribute: importador_nome
  }

}
