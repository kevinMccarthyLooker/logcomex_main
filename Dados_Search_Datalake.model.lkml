connection: "dremio_datalake"

include: "/**/searchx_gold.view.lkml"
include: "/**/searchx_gold_v2.view.lkml"
include: "/**/searchx_importadores_agrupado.view.lkml"


explore:searchx_gold  {
}

explore:searchx_gold_v2  {
}

explore:searchx_importadores_agrupado  {
}
