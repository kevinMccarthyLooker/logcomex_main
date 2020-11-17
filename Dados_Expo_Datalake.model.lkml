connection: "dremio_datalake"

include: "/**/big_data_expo_datalake.view.lkml"

explore:big_data_expo_datalake  {
  label: "exp + maritimo via datalake"
}
