connection: "logbot"

include: "/**/pu_export_cargo_reception.view.lkml"
include: "/**/pu_export_cargo_reception_detail.view.lkml"

explore: pu_export_cargo_reception {
  label: "Dados Logbot"

  join: pu_export_cargo_reception_detail {
    relationship: one_to_many
    sql_on: ${pu_export_cargo_reception.id} = ${pu_export_cargo_reception_detail.pu_export_cargo_reception_id};;
    type: left_outer
  }

}
