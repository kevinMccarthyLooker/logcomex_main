view: db_cad_armador {
  sql_table_name: public.db_cad_armador ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: carrier_cod {
    type: string
    sql: ${TABLE}."carrier_cod" ;;
  }

  dimension: class {
    type: string
    sql: ${TABLE}."class" ;;
  }

  dimension: codigo {
    type: string
    sql: ${TABLE}."codigo" ;;
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

  dimension_group: deleted {
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
    sql: ${TABLE}."deleted_at" ;;
  }

  dimension: logo {
    type: string
    sql: ${TABLE}."logo" ;;
  }

  dimension: nome_original {
    type: string
    sql: ${TABLE}."nome_original" ;;
  }

  dimension: nome_real {
    type: string
    sql: ${TABLE}."nome_real" ;;
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

  measure: count {
    type: count
    drill_fields: [id]
  }
}
