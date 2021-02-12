connection: "dremio_datalake"

include: "/**/db_maritimo_bronze.view.lkml"
include: "/**/db_maritimo_gold.view.lkml"
include: "/**/maritimo_exportacao_gold.view.lkml"
include: "/**/comex_analytics_gold.view.lkml"
include: "/**/exportacao_gold.view.lkml"
include: "/**/health_nomes_exportador_e_cnpjs.view.lkml"


datagroup: exportacao_gold_datagroup {
  sql_trigger: SELECT CURRENT_DATE ;;
  max_cache_age: "24 hours"
  label: "exportacao_gold_datagroup"
  description: "Atualizado a cada 24h"
}

explore:exportacao_gold  {
  #persist_with: exportacao_gold_datagroup
}
explore:db_maritimo_bronze  {
}
explore:db_maritimo_gold  {
}
explore:comex_analytics_gold  {
}
explore:maritimo_exportacao_gold  {
}
explore:health_nomes_exportador_e_cnpjs  {
}
