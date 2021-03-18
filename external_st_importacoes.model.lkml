connection: "dremio_datalake"

include: "/**/**/st_importacoes_fase01.view"
include: "/**/**/st_importacao_fase01.dashboard.lookml"  # incluindo o dashs do tipo lkml para ser visualizado

explore: st_importacoes_fase01 {}
