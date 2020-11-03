connection: "db"

include: "/**/db_export_cargo_reception_details.view.lkml"
include: "/**/db_maritimo_agosto_2020.view.lkml"
include: "/**/db_maritimo.view.lkml"
include: "/**/db_export_cargo_reception_nf.view.lkml"
include: "/**/db_export_cargo_reception_nf_itens.view.lkml"
include: "/**/db_export_cargo_reception_fcl.view.lkml"
include: "/**/db_export_cargo_reception_carga.view.lkml"
include: "/**/db_export_cargo_reception_item_due.view.lkml"
include: "/**/db_commodities_export.view.lkml"
include: "/**/db_siscori_cod_ncm.view.lkml"
include: "/**/db_siscori_incoterm.view.lkml"
include: "/**/db_siscori_natinf.view.lkml"
include: "/**/db_siscori_sitdesp.view.lkml"
include: "/**/db_siscori_unidcomerc.view.lkml"
include: "/**/db_siscori_unidmed.view.lkml"
include: "/**/db_siscori_unid_fiscal.view.lkml"

explore:db_maritimo_agosto_2020  {
  label: "db_maritimo agosto 2020"
}

explore: db_maritimo {
  label: "db maritimo + cargo reception details"
  sql_always_where: ${categoriacarga} = 'E' and ${dtoperacao_raw} >= '2020/08/01' and ${dtoperacao_raw} < '2020/09/01';;   # limitando tipo e periodo

  join: db_export_cargo_reception_details {
    relationship: many_to_one
    sql_on: ${db_export_cargo_reception_details.nrcemercante} = ${db_maritimo.nrcemercante};;
    type: inner
  }
}

explore: db_export_cargo_reception_details {
  label: "cargo reception details"

  join: db_export_cargo_reception_nf {
    relationship: many_to_one
    sql_on: ${db_export_cargo_reception_nf.id_exp_cargo_details} = ${db_export_cargo_reception_details.id} ;;
    type: left_outer
  }

  join: db_export_cargo_reception_nf_itens {
    relationship: many_to_one
    sql_on: ${db_export_cargo_reception_nf_itens.id_nf} = ${db_export_cargo_reception_nf.id_nf};;
    type: left_outer
  }

  join: db_export_cargo_reception_fcl  {
    relationship: many_to_one
    sql_on: ${db_export_cargo_reception_fcl.id_exp_cargo_details} = ${db_export_cargo_reception_details.id}
      or ${db_export_cargo_reception_fcl.id_nf} = ${db_export_cargo_reception_nf.id_nf} ;;
    type: left_outer
  }

  join: db_export_cargo_reception_fcl_via_nota  {
    from: db_export_cargo_reception_fcl
    relationship: many_to_one
    sql_on: ${db_export_cargo_reception_fcl.id_nf} = ${db_export_cargo_reception_nf.id_nf} ;;
    type: left_outer
  }

  join: db_export_cargo_reception_fcl_via_det  {
    from: db_export_cargo_reception_fcl
    relationship: many_to_one
    sql_on: ${db_export_cargo_reception_fcl.id_exp_cargo_details} = ${db_export_cargo_reception_details.id} ;;
    type: left_outer
  }

  join: db_export_cargo_reception_carga  {
    relationship: many_to_one
    sql_on: ${db_export_cargo_reception_carga.id_exp_cargo_details} = ${db_export_cargo_reception_details.id} ;;
    type: left_outer
  }

  join: db_export_cargo_reception_item_due  {
    relationship: many_to_one
    sql_on: ${db_export_cargo_reception_item_due.id_exp_cargo_details} = ${db_export_cargo_reception_details.id} ;;
    type: left_outer
  }

}

explore: db_commodities_export {
  label: "siscori exportacao"

  join: db_siscori_cod_ncm {
    relationship: many_to_one
    sql_on: ${db_siscori_cod_ncm.id} = ${db_commodities_export.id_cdncm} ;;
    type: left_outer
  }

  join: db_siscori_incoterm {
    relationship: many_to_one
    sql_on: ${db_siscori_incoterm.id} = ${db_commodities_export.id_incoterm} ;;
    type: left_outer
  }

  join: db_siscori_natinf {
    relationship: many_to_one
    sql_on: ${db_siscori_natinf.id} = ${db_commodities_export.id_nat_inf} ;;
    type: left_outer
  }

  join: db_siscori_sitdesp {
    relationship: many_to_one
    sql_on: ${db_siscori_sitdesp.id} = ${db_commodities_export.id_sit_desp} ;;
    type: left_outer
  }

  join: db_siscori_unidcomerc {
    relationship: many_to_one
    sql_on: ${db_siscori_unidcomerc.id} = ${db_commodities_export.id_unid_comerc} ;;
    type: left_outer
  }

  join: db_siscori_unidmed {
    relationship: many_to_one
    sql_on: ${db_siscori_unidmed.id} = ${db_commodities_export.id_unid_estat} ;;
    type: left_outer
  }

  join: db_siscori_unid_fiscal {
    view_label: "unidade_desembaraco"
    relationship: many_to_one
    sql_on: ${db_siscori_unid_fiscal.id} = ${db_commodities_export.id_unid_desembaraco} ;;
    type: left_outer
  }

  join: db_siscori_unid_fiscal_2 {
    view_label: "unidade_embarque"
    from: db_siscori_unid_fiscal
    relationship: many_to_one
    sql_on: ${db_siscori_unid_fiscal.id} = ${db_commodities_export.id_unid_embq} ;;
    type: left_outer
  }

}
