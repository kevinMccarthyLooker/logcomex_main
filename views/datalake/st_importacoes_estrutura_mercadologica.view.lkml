view: st_importacoes_estrutura_mercadologica {

  derived_table: {
    sql: st_importacoes.estrutura_mercadologica_bronze  ;;
  }

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: cod_departamento {
    type: number
    sql: ${TABLE}.cod_departamento ;;
  }

  dimension: cod_familia {
    type: number
    sql: ${TABLE}.cod_familia ;;
  }

  dimension: cod_linha {
    type: number
    sql: ${TABLE}.cod_linha ;;
  }

  dimension: cod_subfamilia {
    type: number
    sql: ${TABLE}.cod_subfamilia ;;
  }

  dimension: dsc_departamento {
    type: string
    sql: ${TABLE}.dsc_departamento ;;
  }

  dimension: dsc_familia {
    type: string
    sql: ${TABLE}.dsc_familia ;;
  }

  dimension: dsc_linha {
    type: string
    sql: ${TABLE}.dsc_linha ;;
  }

  dimension: dsc_subfamilia {
    type: string
    sql: ${TABLE}.dsc_subfamilia ;;
  }

  dimension: ean {
    type: number
    sql: ${TABLE}.ean ;;
  }

  dimension: item_desc {
    type: string
    sql: ${TABLE}.item_desc ;;
  }

  dimension: pit {
    type: number
    sql: ${TABLE}.pit ;;
  }

  dimension: sku {
    type: number
    sql: ${TABLE}.sku ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
