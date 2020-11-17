connection: "dremio_datalake"

include: "/**/big_data_expo_datalake.view.lkml"
include: "/**/big_data_expo_test_datalake.view.lkml"

explore:big_data_expo_datalake  {
  label: "exp + maritimo via datalake"
}

explore:big_data_expo_test_datalake  {
  label: "teste: exp + maritimo via datalake"
}
