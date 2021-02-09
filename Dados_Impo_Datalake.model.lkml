connection: "dremio_datalake"

include: "/**/bi_imports_mvw_gold.view.lkml"
include: "/**/external_frete_imp_mar.dashboard"

explore:bi_imports_mvw_gold  {
}
