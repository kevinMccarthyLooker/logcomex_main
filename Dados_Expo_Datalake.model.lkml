connection: "dremio_datalake"

include: "/**/expo_maritimo_cooked.view.lkml"
include: "/**/cargo_reception_datalake.view.lkml"

explore:expo_maritimo_cooked  {
  label: "origens - dados maritimo"
}

explore: cargo_reception_datalake  {
  label: "origens - dados cargo reception"
}
