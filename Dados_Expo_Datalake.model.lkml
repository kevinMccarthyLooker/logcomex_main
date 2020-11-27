connection: "dremio_datalake"

include: "/**/big_data_expo_datalake.view.lkml"
include: "/**/bi_exports_mvw_gold.view.lkml"

explore:big_data_expo_datalake  {
  label: "db_mar + cargo details via datalake"
}

explore:bi_exports_mvw_gold  {
  label: "db_mar expo via datalake"
}
