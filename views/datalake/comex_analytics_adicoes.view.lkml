view: comex_analytics_adicoes {
  derived_table: {
    sql: SELECT * FROM comex_analytics_teste.comex_analytics_adicoes_teste_gold;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: di_number {
    type: number
    sql: ${TABLE}.di_number ;;
  }

  dimension: add_ncm {
    type: number
    sql: ${TABLE}.add_ncm ;;
  }

  dimension: add_incoterm {
    type: string
    sql: ${TABLE}.add_incoterm ;;
  }

  dimension: add_qtd_estat {
    type: number
    sql: ${TABLE}.add_qtd_estat ;;
  }

  dimension: add_fornecedor_nome {
    type: string
    sql: ${TABLE}.add_fornecedor_nome ;;
  }

  dimension: add_fornecedor_endereco {
    type: string
    sql: ${TABLE}.add_fornecedor_endereco ;;
  }

  dimension: add_desc_prod {
    type: string
    sql: ${TABLE}.add_desc_prod ;;
  }

  dimension: add_nm_pais_origem {
    type: string
    sql: ${TABLE}.add_nm_pais_origem ;;
  }

  dimension: add_nm_pais_aquis {
    type: string
    sql: ${TABLE}.add_nm_pais_aquis ;;
  }

  dimension: add_qtd_item {
    type: number
    sql: ${TABLE}.add_qtd_item ;;
  }

  dimension: add_peso_liq_item {
    type: number
    sql: ${TABLE}.add_peso_liq_item ;;
  }

  set: detail {
    fields: [
      di_number,
      add_ncm,
      add_incoterm,
      add_qtd_estat,
      add_fornecedor_nome,
      add_fornecedor_endereco,
      add_desc_prod,
      add_nm_pais_origem,
      add_nm_pais_aquis,
      add_qtd_item,
      add_peso_liq_item
    ]
  }
}
