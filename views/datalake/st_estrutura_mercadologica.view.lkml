view: st_estrutura_mercadologica {
  sql_table_name: st_importacoes.estrutura_mercadologica_prev_prata ;;
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

  dimension: cod_ncm {
    type: number
    sql: ${TABLE}.cod_ncm ;;
  }

  dimension: cod_subfamilia {
    type: number
    sql: ${TABLE}.cod_subfamilia ;;
  }

  dimension: dsc_departamento {
    type: string
    sql: ${TABLE}.dsc_departamento ;;
  }

  dimension: dsc_departamento_cama {
    type: yesno
    sql: case
         when ${TABLE}.dsc_departamento = 'CAMA MESA & BANHO' then true
         else false
         end;;
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

  dimension: ind_desab_familia {
    type: number
    sql: ${TABLE}.ind_desab_familia ;;
  }

  dimension: ind_desab_linha {
    type: number
    sql: ${TABLE}.ind_desab_linha ;;
  }

  dimension: ind_desab_subfamilia {
    type: number
    sql: ${TABLE}.ind_desab_subfamilia ;;
  }

  dimension: item_desc {
    type: string
    sql: ${TABLE}.item_desc ;;
  }

  dimension: perc_prob {
    type: string
    sql: ${TABLE}.perc_prob ;;
  }

  dimension: pit {
    type: number
    sql: ${TABLE}.pit ;;
  }

  dimension: prev_cod_familia {
    type: string
    sql: ${TABLE}.prev_cod_familia ;;
  }

  dimension: prev_cod_linha {
    type: string
    sql: ${TABLE}.prev_cod_linha ;;
  }

  dimension: prev_cod_subfamilia {
    type: string
    sql: ${TABLE}.prev_cod_subfamilia ;;
  }

  dimension: prev_dsc_familia {
    type: string
    sql: ${TABLE}.prev_dsc_familia ;;
  }

  dimension: prev_dsc_linha {
    type: string
    sql: ${TABLE}.prev_dsc_linha ;;
  }

  dimension: prev_dsc_subfamilia {
    type: string
    sql: ${TABLE}.prev_dsc_subfamilia ;;
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
