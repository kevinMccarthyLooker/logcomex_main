connection: "dremio_datalake"

include: "/**/searchx_gold.view.lkml"
include: "/**/searchx_gold_v2.view.lkml"
include: "/**/searchx_gold_cif_cnae_ncm_2020.view.lkml"
include: "/**/searchx_gold_sum_cif_2020_mensal.view.lkml"
include: "/**/searchx_gold_v2_2020.view.lkml"
include: "/**/valor_cif_2020_gold.view.lkml"


#datagroup: searchx_datagroup {
#
#  sql_trigger: SELECT max(id) FROM searchx.searchx_gold_v2_index ;;
#  max_cache_age: "24 hours"
#  label: "ETL ID added"
#  description: "Triggered when new ID is added to ETL log"
#}

explore:valor_cif_2020_gold  {
}

explore:searchx_gold_v2_2020  {
}

explore:searchx_gold_cif_cnae_ncm_2020  {
}

explore:searchx_gold  {
}

explore:searchx_gold_sum_cif_2020_mensal  {
}

explore:searchx_gold_v2  {
  persist_for: "24 hours"

}
