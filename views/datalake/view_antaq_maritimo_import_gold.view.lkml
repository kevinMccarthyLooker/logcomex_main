view: view_antaq_maritimo_import_gold {
  sql_table_name: antaq.view_antaq_maritimo_import_gold ;;

  dimension: ano_antaq {
    type: number
    value_format: "0"
    sql: ${TABLE}.ano_antaq ;;
  }

  dimension: destino {
    type: string
    sql: ${TABLE}.destino ;;
  }

  dimension: mes_antaq {
    type: string
    sql: ${TABLE}.mes_antaq ;;
  }

  measure: teus_antaq {
    type: sum
    sql: ${TABLE}.teus_antaq ;;
  }

  measure: teus_log {
    type: sum
    sql: ${TABLE}.teus_log ;;
  }

  measure: teus_parcial {
    type: sum
    value_format: "0"
    sql: ${TABLE}.teus_parcial ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
