connection: "db"

include: "/views/view_AntaqMaritimo.view.lkml"
include: "/views/antaq_carga.view.lkml"
include: "/views/antaq_atracacao.view.lkml"
include: "/views/aereo_dados_no_tempo.view.lkml"
include: "/views/health_data.view.lkml"
include: "/views/antaqxmaritimo.view.lkml"
include: "/views/cs_dash_imp.view.lkml"


explore: view_AntaqMaritimo {
  label: "Base Log"
}

explore: antaq_carga  {
  join: antaq_atracacao {
    relationship: one_to_one
    sql_on: ${antaq_carga.idatracacao} = ${antaq_atracacao.idatracacao} ;;

  }
  label: "Base Antaq"
}

explore: health_data {}

explore: antaqxmaritimo {
  label: " Imp AntaqMaritimo"
}

explore: cs_dash_imp {}
