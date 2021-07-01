view: metrica_search_fob {
  sql_table_name: cs_risco_churn.metrica_search_fob ;;

  dimension: cnpj {
    type: string
    sql: ${TABLE}.cnpj ;;
  }

  dimension: customer_id {
    type: number
    sql: ${TABLE}.customer_id ;;
  }

  dimension: customer_name {
    type: string
    sql: ${TABLE}.customer_name ;;
  }

  dimension: importador_cnpj {
    type: string
    sql: ${TABLE}.importador_cnpj ;;
  }

  dimension: metrica_search_fob_nota {
    type: number
    sql: ${TABLE}.metrica_search_fob_nota ;;
  }

  dimension: porcent {
    type: number
    sql: ${TABLE}.porcent ;;
  }

  dimension: previous_quarter {
    type: number
    sql: ${TABLE}.previous_quarter ;;
  }

  dimension: previous_quarter_year {
    type: number
    sql: ${TABLE}.previous_quarter_year ;;
  }

  measure: count {
    type: count
    drill_fields: [customer_name]
  }
}
