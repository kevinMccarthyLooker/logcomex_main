connection: "dremio_datalake"

include: "/**/**/st_importacoes_fase01.view"
include: "/**/**/st_importacoes_brinquedos.view"
include: "/**/**/st_importacoes_utilidades.view"
include: "/**/**/st_importacoes_estrutura_mercadologica.view"
include: "/**/**/estrutura_mercadologica_prev_prata.view"
#include: "/**/**/st_importacao_fase01.dashboard.lookml"  # incluindo o dashs do tipo lkml para ser visualizado
#include: "/**/**/st_importacoes_brinquedos.dashboard.lookml"
#include: "/**/**/st_importacoes_utilidades.dashboard.lookml"

explore: estrutura_mercadologica_prev_prata {}

explore: st_importacoes_fase01 {}

explore: st_importacoes_brinquedos {}

explore: st_importacoes_utilidades {}

explore: st_importacoes_estrutura_mercadologica {}
