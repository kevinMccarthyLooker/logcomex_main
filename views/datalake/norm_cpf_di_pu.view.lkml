view: norm_cpf_di_pu {
  derived_table: {
    sql: SELECT * FROM di_sistema.norm_cpf_di_pu_bronze
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: numero_di {
    type: string
    sql: ${TABLE}.numero_di ;;
  }

  dimension: info_complementar_di {
    type: string
    sql: ${TABLE}.info_complementar_di ;;
  }

  dimension: cpf {
    type: string
    sql: ${TABLE}.cpf ;;
  }

  dimension: qtd_cpf {
    type: number
    sql: ${TABLE}.qtd_cpf ;;
  }

  set: detail {
    fields: [numero_di, info_complementar_di, cpf, qtd_cpf]
  }
}
