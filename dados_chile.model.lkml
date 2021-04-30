connection: "db"

include: "/views/chile/db_chile.view.lkml"
include: "/views/chile/chile_pais.view.lkml"
include: "/views/chile/chile_porto.view.lkml"
include: "/views/chile/db_chile_exp.view.lkml"

explore: db_chile {
  join: chile_pais {
    sql_on: ${chile_pais.cod} = ${db_chile.pa_orig} ;;
    relationship: many_to_one
    type: left_outer
  }

  join: chile_porto {
    view_label: "chile porto origem"
    sql_on: ${chile_porto.cd_porto} = ${db_chile.pto_emb} ;;
    relationship: many_to_one
    type: left_outer
  }

  join: chile_porto_destino {
    from: chile_porto
    view_label: "chile porto destino"
    sql_on: ${chile_porto_destino.cd_porto} = ${db_chile.pto_desem} ;;
    relationship: many_to_one
    type: left_outer
  }
}

explore: db_chile_exp {
  join: chile_pais {
    view_label: "chile pais destino"
    sql_on: ${chile_pais.cod} = ${db_chile_exp.paisdestino} ;;
    relationship: many_to_one
    type: left_outer
  }

  join: chile_porto {
    view_label: "chile porto desembarque"
    sql_on: ${chile_porto.cd_porto} = cast(${db_chile_exp.puertodesemb} as int) ;;
    relationship: many_to_one
    type: left_outer
  }

  join: chile_porto_embarque {
    from: chile_porto
    view_label: "chile porto embarque"
    sql_on: ${chile_porto_embarque.cd_porto} = cast(${db_chile_exp.puertoemb} as int) ;;
    relationship: many_to_one
    type: left_outer
  }

}
