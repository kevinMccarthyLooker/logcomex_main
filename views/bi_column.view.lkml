view: bi_column {
  sql_table_name: public.bi_column ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: alias {
    type: string
    sql: ${TABLE}."alias" ;;
  }

  dimension: alias_en {
    type: string
    sql: ${TABLE}."alias_en" ;;
  }

  dimension: config_status_id {
    type: number
    sql: ${TABLE}."config_status_id" ;;
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

  dimension: db_column_representation {
    type: string
    sql: ${TABLE}."db_column_representation" ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}."description" ;;
  }

  dimension: field_type_id {
    type: number
    sql: ${TABLE}."field_type_id" ;;
  }

  dimension: method {
    type: string
    sql: ${TABLE}."method" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."name" ;;
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
    drill_fields: [id, name, bi_filters.count]
  }
}
