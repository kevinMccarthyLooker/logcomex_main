connection: "dremio_datalake"

include: "/**/big_data_expo_datalake.view.lkml"
include: "/**/bi_exports_mvw_gold.view.lkml"
include: "/**/cargo_reception_items_silver.view.lkml"
include: "/**/external_real_exportador.dashboard.lookml"
include: "/**/external_frete_export.dashboard.lookml"
include: "/**/external_frete_exp_mar.dashboard.lookml"
include: "/**/exportadores_2020_gold.view.lkml"


datagroup: real_export_frete_export_embed_datagroup {
  sql_trigger: SELECT CURRENT_DATE ;;
  max_cache_age: "24 hours"
  label: "real_export_frete_export_embed_datagroup"
  description: " DG dos Dashs Embedados Real Exportador e Frete Exportacao, Atualizados a cada 24h"
}

explore: exportadores_2020_gold {}

explore:big_data_expo_datalake  {
  persist_with: real_export_frete_export_embed_datagroup
  #real exportador
}

explore:bi_exports_mvw_gold  {
  persist_with: real_export_frete_export_embed_datagroup
  #frete exportação
}

explore: cargo_reception_items_silver {
  persist_with: real_export_frete_export_embed_datagroup
}
