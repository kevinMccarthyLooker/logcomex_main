connection: "dremio_datalake"

include: "/**/**/st_importacoes_fase01.view"                # include all views in the views/ folder in this project

explore: st_importacoes_fase01 {}
