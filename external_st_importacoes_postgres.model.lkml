connection: "st_postgres"

include: "/**/**/st_importacoes_moda.view"
include: "/**/**/st_importacoes_brinquedos_psql.view"

include: "/**/**/st_importacoes_moda.dashboard.lookml"

explore: st_importacoes_brinquedos_psql {}
explore: st_importacoes_moda {}
