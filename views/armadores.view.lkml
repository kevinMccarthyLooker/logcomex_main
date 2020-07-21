view: armadores {
  sql_table_name: public.armadores ;;

  dimension: arm_cod_int {
    type: string
    sql: ${TABLE}."arm_cod_int" ;;
  }

  dimension: armador {
    type: string
    sql: ${TABLE}."armador" ;;
  }

  dimension: ida {
    type: number
    sql: ${TABLE}."ida" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
