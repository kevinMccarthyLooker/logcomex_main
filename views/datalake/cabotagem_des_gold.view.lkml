view: cabotagem_des_gold {
  sql_table_name: antaq.cabotagem_des_gold ;;

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

  measure: count {
    type: count
    drill_fields: []
  }
}
