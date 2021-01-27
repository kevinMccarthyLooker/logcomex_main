view: searchx_gold_mensal_max_ncm_test {
  sql_table_name: searchx.searchx_gold_mensal_max_ncm_test ;;

  dimension: ano_mes_registro {
    type: string
    sql: ${TABLE}.ano_mes_registro ;;
  }

  dimension: cdncm_compl {
    type: string
    sql: ${TABLE}.cdncm_compl ;;
  }

  dimension: cod_cnae_import {
    type: string
    sql: ${TABLE}.cod_cnae_import ;;
  }

  dimension: customer_id {
    type: number
    sql: ${TABLE}.customer_id ;;
  }

  dimension: desc_cnae_import {
    type: string
    sql: ${TABLE}.desc_cnae_import ;;
  }

  dimension: importador_cnpj {
    type: string
    sql: ${TABLE}.importador_cnpj ;;
  }

  dimension: importador_nome {
    type: string
    sql: ${TABLE}.importador_nome ;;
  }

  dimension: nome_ncm_pt {
    type: string
    sql: ${TABLE}.nome_ncm_pt ;;
  }

  dimension: valor_max {
    type: number
    sql: ${TABLE}.valor_max ;;
  }

  dimension: valor_mes {
    type: number
    sql: ${TABLE}.valor_mes ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
