connection: "st_postgres2"

include: "/**/**/st_importacoes_moda.view"
include: "/**/**/st_importacoes_brinquedos_psql.view"
include: "/**/**/st_importacoes_utilidades_psql.view"
include: "/**/**/search_estrutura_atrib_st.view"


include: "/**/**/st_importacoes_moda.dashboard.lookml"
include: "/**/**/st_importacoes_brinquedos_psql.dashboard.lookml"
include: "/**/**/st_importacoes_utilidades_psql.dashboard.lookml"
#include: "/**/**/st_importacoes_fase01_unificado.dashboard.lookml" #primeiro dash criado pra repetir os gráficos, apagar apos validar novo dash unificado
include: "/**/**/st_importacoes_visao_uni_vol.dashboard.lookml"
include: "/**/**/st_importacoes_visao_uni_fob.dashboard.lookml"


explore: st_importacoes_utilidades_psql {}
explore: st_importacoes_brinquedos_psql {}
explore: st_importacoes_moda {}
explore: search_estrutura_atrib_st {
  #persist_for: "12 hours"
}
