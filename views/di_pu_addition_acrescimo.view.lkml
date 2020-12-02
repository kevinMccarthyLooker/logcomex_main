view: di_pu_addition_acrescimo {
  sql_table_name: public.di_pu_addition_acrescimo ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
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

  dimension: desc_acre_ded {
    type: string
    sql: ${TABLE}."desc_acre_ded" ;;
  }

  dimension: di_pu_addition_id {
    type: number
    sql: ${TABLE}."di_pu_addition_id" ;;
  }

  dimension: moeda_acre_ded {
    type: string
    sql: ${TABLE}."moeda_acre_ded" ;;
  }

  dimension: tipo_acre_ded {
    type: string
    sql: ${TABLE}."tipo_acre_ded" ;;
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

  dimension: val_moeda_acre_ded {
    type: number
    sql: ${TABLE}."val_moeda_acre_ded" ;;
  }

  dimension: val_real_acre_ded {
    type: number
    sql: ${TABLE}."val_real_acre_ded" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
