connection: "db"

include: "/views/db_export_cargo_reception_details.view.lkml"
include: "/**/db_maritimo_agosto_2020.view.lkml"
include: "/**/db_maritimo.view.lkml"


explore:db_maritimo_agosto_2020  {
  label: "DB MARITIMO AGOSTO 2020"
}

explore: db_maritimo {
  label: "DB MARITIMO AGO 2020 INNER EXPORT CARGO DETAILS"
  sql_always_where: ${categoriacarga} = 'E' and ${dtoperacao_raw} >= '2020/08/01' and ${dtoperacao_raw} < '2020/09/01';;   # limitando tipo e periodo

  join: db_export_cargo_reception_details {
    relationship: many_to_one
    sql_on: ${db_export_cargo_reception_details.nrcemercante} = ${db_maritimo.nrcemercante};;
  }
}


explore: db_export_cargo_reception_details {}
