connection: "excel-api"

include: "/**/excel_controller.view.lkml"
include: "/**/excel_controller_status.view.lkml"

explore: excel_controller {
   join: excel_controller_status {
     relationship: many_to_one
     sql_on: ${excel_controller.excel_controller_status_id} = ${excel_controller_status.id} ;;
   }

}
