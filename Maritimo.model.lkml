connection: "db"

include: "/views/aereo_dados_no_tempo.view.lkml"
include: "/views/health_data.view.lkml"
include: "/views/teste_health_data.view.lkml"
include: "/views/nyk_base.view.lkml"
include: "/views/nyk_sql.view.lkml"
include: "/views/antaqxmaritimo.view.lkml"
include: "/views/cs_dash_imp.view.lkml"
include: "/views/view_infografico.view.lkml"
include: "/views/view_infografico_exp.view.lkml"
include: "/views/db_siscori_cod_ncm.view.lkml"
include: "/views/db_siscori_incoterm.view.lkml"
include: "/**/client_documents_by_method.view.lkml"
include: "/views/health_imp_house_direto.view.lkml"
include: "/views/health_data_exp.view.lkml"
include: "/views/teste_health_data_exp.view.lkml"
include: "/views/health_nome_exp.view.lkml"
include: "/views/antaqxmaritimo_exp.view.lkml"
include: "/views/db_cad_armador.view.lkml"
include: "/views/db_maritimo.view.lkml"
include: "/views/db_ce_mercante.view.lkml"
include: "/views/antaqxmaritimo_cab.view.lkml"
include: "/views/antaqxmaritimo_cab_emb.view.lkml"
include: "/views/db_export_cargo_reception_details.view.lkml"
include: "/**/crescimento_consignatario.view.lkml"
include: "/**/db_maritimo_agosto_2020.view.lkml"
include: "/**/db_cad_pais.view.lkml"
include: "/**/db_cad_porto.view.lkml"
include: "/**/db_cad_fcl.view.lkml"
include: "/**/puc_embarques.view.lkml"
include: "/**/db_siscarga_basico_erro.view.lkml"


datagroup: antaq_datagroup {
  sql_trigger: SELECT CURRENT_DATE ;;
  max_cache_age: "24 hours"
  label: "Antaq"
  description: "Atualizados a cada 24h"
}

explore: db_siscarga_basico_erro {
  label: "DB Siscarga Basico Erro"
}

explore: puc_embarques {
  label: "Puc Embarques"
}

explore: client_documents_by_method {
  label: "Client Documents By Method"
}

explore:crescimento_consignatario  {
  label: "Crescimento do Consignatario"
}

explore: health_data {}
explore: health_data_exp {}
explore: health_nome_exp {}
explore: cs_dash_imp {}
explore: health_imp_house_direto {}
explore: antaqxmaritimo_exp {
  label: "Exp AntaqMaritimo"
}


datagroup: health_datagroup {
  sql_trigger: SELECT CURRENT_DATE ;;
  max_cache_age: "24 hours"
  label: "health_datagroup"
}

explore: teste_health_data {
  persist_with: health_datagroup
  label:"health_data_mvw"
}

explore: teste_health_data_exp{
persist_with: health_datagroup
  label:"health_data_exp_mvw"
}



explore: antaqxmaritimo {
  label: " Imp AntaqMaritimo"
  persist_with: antaq_datagroup
}


explore: antaqxmaritimo_cab {
  label: "Cab AntaqMaritimo Desembarcados"
}

explore: antaqxmaritimo_cab_emb {
  label: "Cab AntaqMaritimo Embarcados"
}

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

explore: db_maritimo {
  join: db_cad_armador {
    relationship: many_to_one
    sql_on: ${db_cad_armador.id} = ${db_maritimo.id_armador} ;;
  }

  join: db_cad_pais_origem {
    from: db_cad_pais
    relationship: many_to_one
    sql_on: ${db_cad_pais_origem.id} = ${db_maritimo.id_pais_origem} ;;
    type: left_outer
  }

  join: db_cad_pais_destino {
    from: db_cad_pais
    relationship: many_to_one
    sql_on: ${db_cad_pais_destino.id} = ${db_maritimo.id_pais_destino} ;;
    type: left_outer
  }

  join: db_cad_porto_origem {
    from: db_cad_porto
    relationship: many_to_one
    sql_on: ${db_cad_porto_origem.id} = ${db_maritimo.id_porto_origem} ;;
    type: left_outer
  }

  join: db_cad_porto_destino {
    from: db_cad_porto
    relationship: many_to_one
    sql_on: ${db_cad_porto_destino.id} = ${db_maritimo.id_porto_destino} ;;
    type: left_outer
  }

  join: db_cad_fcl {
    relationship: many_to_one
    sql_on: ${db_cad_fcl.id} = ${db_maritimo.id_fcl} ;;
    type: left_outer
  }

  join: db_export_cargo_reception_details {
    relationship: many_to_one
    sql_on: ${db_export_cargo_reception_details.nrcemercante} = ${db_maritimo.nrcemercante} ;;

  }
  join: nyk_base {
    relationship: many_to_many
    sql_on: ${nyk_base.nm_embarque} = ${db_maritimo.nmembarcacao} ;;
  }
}


explore: db_ce_mercante {
  label: "Embarques"
  join: db_maritimo {
    type: left_outer
    relationship: one_to_one
    sql_on: ${db_maritimo.nrcemercante} = ${db_ce_mercante.numero_ce} ;;
  }
}

explore: nyk_sql {
  label: "Base NYK Sql"
}
