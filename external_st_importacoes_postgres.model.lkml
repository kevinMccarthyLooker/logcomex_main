connection: "st_postgres"

include: "/**/**/st_importacoes_moda.view"
include: "/**/**/st_importacoes_moda.dashboard.lookml"

explore: st_importacoes_moda {}
