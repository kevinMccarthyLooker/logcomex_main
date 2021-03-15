view: st_importacoes_segmentacao_excel {
  sql_table_name: customers.st_importacoes_segmentacao_excel ;;

  dimension: classe_do_produto {
    type: string
    sql: ${TABLE}.classe_do_produto ;;
  }

  dimension: descricao_internacional {
    type: string
    sql: ${TABLE}.descricao_internacional ;;
  }

  dimension: ean {
    type: string
    sql: ${TABLE}.ean ;;
  }

  dimension: fob_unitario {
    type: number
    sql: ${TABLE}.fob_unitario ;;
  }

  dimension: grupo_do_produto {
    type: string
    sql: ${TABLE}.grupo_do_produto ;;
  }

  dimension: ncm {
    type: string
    sql: ${TABLE}.NCM ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: count_grupo {
    type: count_distinct
    sql:${TABLE}.grupo_do_produto ;;
  }

  measure: count_classe {
    type: count_distinct
    sql:${TABLE}.classe_do_produto ;;
  }


}
