connection: "dremio_datalake"

include: "/**/bi_imports_mvw_gold.view.lkml"
include: "/**/external_frete_imp_mar.dashboard"
include: "/**/agentes_de_carga_gold.view.lkml"
include: "/**/despachantes_gold.view.lkml"

explore: despachantes_gold {}
explore: agentes_de_carga_gold {}

explore:bi_imports_mvw_gold  {
}
