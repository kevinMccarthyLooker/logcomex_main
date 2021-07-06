connection: "dremio_datalake"

include: "/**/consumo_customers_excel.view.lkml"
include: "/**/st_importacoes_segmentacao_excel.view.lkml"
include: "/**/metrica_extracao_excel.view.lkml"
include: "/**/metrica_search_fob.view.lkml"
include: "/**/consumo_automacao.view.lkml"

explore: consumo_automacao {} # consumo da api de automacao do logbot por certificado e empresa

explore: consumo_customers_excel {}

explore: st_importacoes_segmentacao_excel {}

explore: metrica_extracao_excel {}

explore: metrica_search_fob {}
