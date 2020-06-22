connection: "aereo"

include: "/views/aereo_dados_no_tempo.view.lkml"
include: "/views/aereo_consignatario.view.lkml"
include: "/views/aereo_awb_details.view.lkml"


#explore: aereo_dados_no_tempo {}


explore: aereo_awb_details {
  label: "AereoConsig"
  join: aereo_consignatario {
    relationship: one_to_one
    sql_on: ${aereo_awb_details.agente_de_carga_id} = ${aereo_consignatario.id} ;;
  }
}
