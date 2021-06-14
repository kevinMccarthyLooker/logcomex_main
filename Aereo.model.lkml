connection: "aereo"

include: "/views/aereo_dados_no_tempo.view.lkml"
include: "/views/aereo_consignatario.view.lkml"
include: "/views/aereo_awb_details.view.lkml"
include: "/views/company_info.view.lkml"
include: "/views/company.view.lkml"
include: "/views/recinto_aduaneiro.view.lkml"
include: "/**/active_importers_match_radar.view.lkml"
#include: "/**/despachantes.dashboard.lookml"

#explore: aereo_dados_no_tempo {}


explore: aereo_awb_details {
  label: "AereoConsig"
  join: aereo_consignatario {
    relationship: many_to_one
    sql_on: ${aereo_awb_details.consignatario_id} = ${aereo_consignatario.id} ;;
  }
  join: company {
    relationship: one_to_one
    sql_on: ${aereo_consignatario.company_id} = ${company.id} ;;
  }
  join: company_info {
    relationship: one_to_one
    sql_on: ${aereo_consignatario.company_id} = ${company_info.company_id} ;;
  }
  join: recinto_aduaneiro {
    relationship: one_to_one
    sql_on: ${aereo_awb_details.id_recinto_aduaneiro} = ${recinto_aduaneiro.id} ;;
  }
}

explore: aereo_details {
  from: aereo_awb_details
  label: "Aereo"
}

explore: active_importers_match_radar {
  label: "Importadores Ativos e no Radar"
}
