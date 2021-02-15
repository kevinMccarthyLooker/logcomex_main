connection: "dremio_datalake"

include: "/**/consumo_customers_excel.view.lkml"

explore: consumo_customers_excel {}
