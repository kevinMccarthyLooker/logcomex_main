connection: "st_postgres2"

include: "/**/**/visao_mercado_template.view.lkml"
#include: "/**/**/visao_mercado_template.dashboard.lookml"


datagroup: v_mercado_datagroup {
  sql_trigger: select CURRENT_DATE ;;
  #sql_trigger: SELECT FLOOR(EXTRACT(epoch from NOW()) / (12*60*60)) ;; # a cada 12 horas
  max_cache_age: "24 hours"
  label: "v_mercado_datagroup"
  description: "DG do Dash Template de Visão de Mercado"
}

explore: visao_mercado_template {
  persist_with: v_mercado_datagroup
}
