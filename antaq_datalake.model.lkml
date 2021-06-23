connection: "dremio_datalake"

include: "/**/view_antaq_maritimo_import_gold.view.lkml"
include: "/**/view_antaq_maritimo_export_gold.view.lkml"
include: "/**/cabotagem_des_gold.view.lkml"
include: "/**/cabotagem_emb_gold.view.lkml"

explore: view_antaq_maritimo_import_gold {}

explore: view_antaq_maritimo_export_gold {}

explore: cabotagem_des_gold {}

explore: cabotagem_emb_gold {}
