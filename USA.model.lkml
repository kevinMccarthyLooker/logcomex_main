connection: "dremio_datalake"

include: "/**/usa_2020_bronze.view.lkml"
include: "/**/usa_2020_bronze_v2.view.lkml"
include: "/**/usa_shipment_join_items_silver.view.lkml"

explore: usa_2020_bronze  {
}

explore: usa_2020_bronze_v2 {
}

explore: usa_shipment_join_items_silver {
}
