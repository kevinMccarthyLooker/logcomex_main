connection: "st_postgres2"

include: "/**/**/visao_mercado_template.view.lkml"
include: "/**/**/visao_mercado_template.dashboard.lookml"

explore: visao_mercado_template {}
