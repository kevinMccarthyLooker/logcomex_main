view: st_importacoes_estrutura_mercadologica {
  sql_table_name: st_importacoes.estrutura_mercadologica_bronze ;;
  drill_fields: [id]

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

  measure: count_dsc_departamento {
    type: count_distinct
    sql:${TABLE}.dsc_departamento ;;
    drill_fields: [dsc_departamento]
  }

  measure: count_dsc_familia {
    type: count_distinct
    sql:${TABLE}.dsc_familia ;;
    drill_fields: [dsc_familia]
  }

  measure: count_dsc_linha{
    type: count_distinct
    sql:${TABLE}.dsc_linha ;;
    drill_fields: [dsc_linha]
  }

  measure: count_dsc_subfamilia{
    type: count_distinct
    sql:${TABLE}.dsc_subfamilia ;;
    drill_fields: [dsc_subfamilia]
  }

}
