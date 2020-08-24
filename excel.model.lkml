connection: "excel-api"

include: "/**/excel_controller.view.lkml"
include: "/**/excel_controller_status.view.lkml"
include: "/**/consumo_plano_clientes.view"


 explore: excel_controller {
   join: excel_controller_status {
     relationship: many_to_one
     sql_on: ${excel_controller.excel_controller_status_id} = ${excel_controller_status.id} ;;
   }

  join: consumo_plano_clientes {
    relationship: many_to_one
    sql_on: ${excel_controller.customer_id} = ${consumo_plano_clientes.customer_id} ;;
  }


 }
