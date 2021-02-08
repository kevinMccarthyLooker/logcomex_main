connection: "dremio_datalake"

include: "/**/searchx_gold.view.lkml"
include: "/**/searchx_gold_v2.view.lkml"
include: "/**/searchx_gold_v2_2020.view.lkml"
include: "/**/valor_cif_2020_gold.view.lkml"
include: "/**/st_importacoes_06_12_2020.view.lkml"

datagroup: valor_cif_datagroup {
  sql_trigger: SELECT CURRENT_DATE ;;
  max_cache_age: "24 hours"
  label: "valor_cif_datagroup"
  description: " Valor CIF X Importadores Atualizados a cada 24h"
}

explore: st_importacoes_06_12_2020 {

}

explore:valor_cif_2020_gold  {
  persist_with: valor_cif_datagroup
}

explore:searchx_gold_v2_2020  {

}

explore:searchx_gold  {

}

explore:searchx_gold_v2  {
  persist_for: "24 hours"

}
