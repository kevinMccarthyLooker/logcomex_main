connection: "dremio_datalake"

include: "/**/big_data_expo_datalake.view.lkml"
include: "/**/bi_exports_mvw_gold.view.lkml"
include: "/**/cargo_reception_items_silver.view.lkml"
include: "/**/external_valor_frete_expo.dashboard.lookml"

explore:big_data_expo_datalake  {
  label: "db_mar + cargo details via datalake"
}

explore:bi_exports_mvw_gold  {
  label: "db_mar expo via datalake"
}

explore: cargo_reception_items_silver {
  label: "cargo_items via datalake"
}
