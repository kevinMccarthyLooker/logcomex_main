view: di_pu_addition_imposto {
  sql_table_name: public.di_pu_addition_imposto ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: aliq_reduzida {
    type: number
    sql: ${TABLE}."aliq_reduzida" ;;
  }

  dimension: aliquota {
    type: number
    sql: ${TABLE}."aliquota" ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."created_at" ;;
  }

  dimension: desc_fnd_legal {
    type: string
    sql: ${TABLE}."desc_fnd_legal" ;;
  }

  dimension: desc_regime {
    type: string
    sql: ${TABLE}."desc_regime" ;;
  }

  dimension: di_pu_addition_id {
    type: number
    sql: ${TABLE}."di_pu_addition_id" ;;
  }

  dimension: tp_imposto {
    type: string
    sql: ${TABLE}."tp_imposto" ;;
  }

  dimension_group: updated {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."updated_at" ;;
  }

  dimension: val_base_calculo {
    type: number
    sql: ${TABLE}."val_base_calculo" ;;
  }

  dimension: val_calculado {
    type: number
    sql: ${TABLE}."val_calculado" ;;
  }

  dimension: val_devido {
    type: number
    sql: ${TABLE}."val_devido" ;;
  }

  dimension: val_recolher {
    type: number
    sql: ${TABLE}."val_recolher" ;;
  }

  dimension: val_reduzido {
    type: number
    sql: ${TABLE}."val_reduzido" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
