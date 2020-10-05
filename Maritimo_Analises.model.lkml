connection: "db"

include: "/**/db_export_cargo_reception_details.view.lkml"
include: "/**/db_maritimo_agosto_2020.view.lkml"
include: "/**/db_maritimo.view.lkml"
include: "/**/db_export_cargo_reception_nf.view.lkml"
include: "/**/db_export_cargo_reception_nf_itens.view.lkml"
include: "/**/db_export_cargo_reception_fcl.view.lkml"


explore:db_maritimo_agosto_2020  {
  label: "DB MARITIMO AGOSTO 2020"
}

explore: db_maritimo {
  label: "DB MARITIMO INNER CARGO DETAILS"
  sql_always_where: ${categoriacarga} = 'E' and ${dtoperacao_raw} >= '2020/08/01' and ${dtoperacao_raw} < '2020/09/01';;   # limitando tipo e periodo

  join: db_export_cargo_reception_details {
    relationship: many_to_one
    sql_on: ${db_export_cargo_reception_details.nrcemercante} = ${db_maritimo.nrcemercante};;
    type: inner
  }
}


explore: db_export_cargo_reception_details {
  label: "CARGO DETAILS INNER NF INNER FCL"
  sql_always_where: ${filter_date} >= '2020/08/01' and ${filter_date} < '2020/09/01' ;;

  join: db_export_cargo_reception_nf {
    relationship: many_to_one
    sql_on: ${db_export_cargo_reception_nf.id_exp_cargo_details} = ${db_export_cargo_reception_details.id} ;;
    type: left_outer

  }

  join: db_export_cargo_reception_nf_itens {
    relationship: many_to_one
    sql_on: ${db_export_cargo_reception_nf_itens.id_exp_cargo_details} = ${db_export_cargo_reception_details.id}
            and ${db_export_cargo_reception_nf_itens.id_nf} = ${db_export_cargo_reception_nf.id_nf};;
    type: left_outer
  }

  join: db_export_cargo_reception_fcl  {
    relationship: many_to_one
    sql_on: ${db_export_cargo_reception_fcl.id_exp_cargo_details} = ${db_export_cargo_reception_details.id}
            and ${db_export_cargo_reception_fcl.id_nf} = ${db_export_cargo_reception_nf.id_nf} ;;
    type: left_outer
  }


}
