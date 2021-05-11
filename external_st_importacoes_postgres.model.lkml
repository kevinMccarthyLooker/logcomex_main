connection: "st_postgres"

include: "/**/**/st_importacoes_moda.view"
include: "/**/**/st_importacoes_brinquedos_psql.view"
include: "/**/**/st_importacoes_utilidades_psql.view"


include: "/**/**/st_importacoes_moda.dashboard.lookml"
#include: "/**/**/st_importacoes_brinquedos_psql.dashboard.lookml"
#include: "/**/**/st_importacoes_utilidades_psql.dashboard.lookml"


explore: st_importacoes_utilidades_psql {}
explore: st_importacoes_brinquedos_psql {}
explore: st_importacoes_moda {}
