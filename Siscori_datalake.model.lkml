connection: "dremio_datalake"

include: "/**/siscori_gold.view.lkml"
include: "/**/external_siscori_datalake.dashboard"

datagroup: siscori_datagroup {
  sql_trigger: SELECT CURRENT_DATE ;;
  max_cache_age: "24 hours"
  description: "Dash Embedado Siscori, Atualizados a cada 24h"
}

explore:siscori_gold  {
  persist_with: siscori_datagroup
}
