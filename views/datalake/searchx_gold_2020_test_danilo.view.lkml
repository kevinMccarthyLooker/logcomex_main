view: searchx_gold_2020_test_danilo {
  sql_table_name: searchx.searchx_gold_2020_test_danilo ;;

  dimension: ano_mes_registro {
    type: string
    sql: ${TABLE}.ano_mes_registro ;;
  }

  dimension: customer_id {
    type: number
    sql: ${TABLE}.customer_id ;;
  }

  dimension: importador_cnpj {
    type: string
    sql: ${TABLE}.importador_cnpj ;;
  }

  dimension: importador_nome {
    type: string
    sql: ${TABLE}.importador_nome ;;
  }

  dimension: valor {
    type: number
    sql: ${TABLE}.valor ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
