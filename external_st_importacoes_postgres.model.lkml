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
include: "/**/**/visao_completa_mercado.dashboard.lookml"

datagroup: st_impo_datagroup {
  sql_trigger: select CURRENT_DATE ;;
  #sql_trigger: SELECT FLOOR(EXTRACT(epoch from NOW()) / (12*60*60)) ;; # a cada 12 horas
  max_cache_age: "24 hours"
  label: "st_impo_datagroup"
  description: "DG dos Dashs da ST Importações"
}


explore: st_importacoes_utilidades_psql {
  persist_with: st_impo_datagroup
}

explore: st_importacoes_brinquedos_psql {
  persist_with: st_impo_datagroup
}

explore: st_importacoes_moda {
  persist_with: st_impo_datagroup
}

explore: search_estrutura_atrib_st {
  persist_with: st_impo_datagroup
}
