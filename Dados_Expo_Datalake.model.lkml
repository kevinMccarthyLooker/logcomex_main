connection: "dremio_datalake"

include: "/**/expo_maritimo_cooked.view.lkml"

explore:expo_maritimo_cooked  {
  label: "origens - dados expo"
}
