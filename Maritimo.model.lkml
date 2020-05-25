connection: "db"

include: "/views/view_AntaqMaritimo.view.lkml"
include: "/views/antaq_carga.view.lkml"
include: "/views/antaq_atracacao.view.lkml"
include: "/views/aereo_dados_no_tempo.view.lkml"
include: "/views/health_data.view.lkml"
include: "/views/antaqxmaritimo.view.lkml"
include: "/views/cs_dash_imp.view.lkml"
include: "/views/view_infografico.view.lkml"
include: "/views/view_infografico_exp.view.lkml"
include: "/views/db_siscori_cod_ncm.view.lkml"
include: "/views/db_siscori_incoterm.view.lkml"
include: "/views/client_documents_by_method.view.lkml"
include: "/views/health_imp_house_direto.view.lkml"
include: "/views/health_data_exp.view.lkml"


explore: client_documents_by_method {
  label: "Client Documents By Method"
}

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
explore: health_data_exp {}

explore: antaqxmaritimo {
  label: " Imp AntaqMaritimo"
}

explore: cs_dash_imp {}

explore: health_imp_house_direto {}

explore: view_infografico {
  join: db_siscori_cod_ncm {
    relationship: one_to_one
    sql_on: ${db_siscori_cod_ncm.id} = ${view_infografico.id_cdncm} ;;
  }
  join: db_siscori_incoterm {
    relationship: one_to_one
    sql_on: ${db_siscori_incoterm.id} = ${view_infografico.id_incoterm} ;;
  }
  label: "Infográfico Importação"
}

explore: view_infografico_exp {
  join: db_siscori_cod_ncm {
    relationship: one_to_one
    sql_on: ${db_siscori_cod_ncm.id} = ${view_infografico_exp.id_cdncm} ;;
  }
  join: db_siscori_incoterm {
    relationship: one_to_one
    sql_on: ${db_siscori_incoterm.id} = ${view_infografico_exp.id_incoterm} ;;
  }
  label: "Infográfico Exportação"
}
