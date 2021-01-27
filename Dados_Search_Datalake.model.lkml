connection: "dremio_datalake"

include: "/**/searchx_gold.view.lkml"
include: "/**/searchx_gold_v2.view.lkml"
include: "/**/searchx_importadores_agrupado.view.lkml"
include: "/**/searchx_gold_v2_index.view.lkml"
include: "/**/searchx_gold_2020_test_danilo.view.lkml"
include: "/**/searchx_gold_mensal_max_ncm_test.view.lkml"


#datagroup: searchx_datagroup {
#
#  sql_trigger: SELECT max(id) FROM searchx.searchx_gold_v2_index ;;
#  max_cache_age: "24 hours"
#  label: "ETL ID added"
#  description: "Triggered when new ID is added to ETL log"
#}

explore:searchx_gold_mensal_max_ncm_test  {
  persist_for: "24 hours"
}

explore:searchx_gold_2020_test_danilo  {
  persist_for: "24 hours"
}

explore:searchx_gold_v2_index  {
  persist_for: "24 hours"
}

explore:searchx_gold  {
}

explore:searchx_gold_v2  {
  persist_for: "24 hours"

  join: searchx_importadores_agrupado {
    sql_on: ${searchx_gold_v2.importador_nome}=${searchx_importadores_agrupado.importador_nome_agp} ;;
    relationship: one_to_one
    type: left_outer
  }

}

explore:searchx_importadores_agrupado  {
}
