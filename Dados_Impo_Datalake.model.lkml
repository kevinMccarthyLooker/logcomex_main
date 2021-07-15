connection: "dremio_datalake"

include: "/**/bi_imports_mvw_gold.view.lkml"
include: "/**/external_frete_imp_mar.dashboard"
include: "/**/agentes_de_carga_gold.view.lkml"
include: "/**/big_data_impo_air_gold.view.lkml"
include: "/**/despachantes_gold.view.lkml"
include: "/**/norm_cpf_di_pu.view.lkml"

explore: despachantes_gold {}
explore: agentes_de_carga_gold {}

explore:bi_imports_mvw_gold  {
}

explore: big_data_impo_air_gold {}

explore: norm_cpf_di_pu {}
