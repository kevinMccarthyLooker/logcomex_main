connection: "dremio_datalake"

include: "/**/searchx_gold.view.lkml"
include: "/**/searchx_gold_v2.view.lkml"
include: "/**/searchx_importadores_agrupado.view.lkml"


explore:searchx_gold  {
}

explore:searchx_gold_v2  {

  join: searchx_importadores_agrupado {
    sql_on: ${searchx_gold_v2.importador_nome}=${searchx_importadores_agrupado.importador_nome_agp} ;;
    relationship: one_to_one
    type: left_outer
  }

}

explore:searchx_importadores_agrupado  {
}
