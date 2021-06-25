connection: "dremio_datalake"

include: "/**/consumo_customers_excel.view.lkml"
include: "/**/st_importacoes_segmentacao_excel.view.lkml"
include: "/**/metrica_extracao_excel.view.lkml"

explore: consumo_customers_excel {}

explore: st_importacoes_segmentacao_excel {}

explore: metrica_extracao_excel {}
