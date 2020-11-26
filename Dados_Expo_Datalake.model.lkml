connection: "dremio_datalake"

include: "/**/big_data_expo_datalake.view.lkml"
include: "/**/db_maritimo_expo_silver.view.lkml"
include: "/**/cargo_reception_items_silver.view.lkml"

explore:big_data_expo_datalake  {
  label: "db_mar + cargo details via datalake"
}

explore:db_maritimo_expo_silver  {
  label: "db_mar expo via datalake"
}

explore: cargo_reception_items_silver {
  label: "cargo_items via datalake"
}
