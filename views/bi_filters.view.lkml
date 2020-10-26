view: bi_filters {
  sql_table_name: public.bi_filters ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: bi_column_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."bi_column_id" ;;
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

  measure: count {
    type: count
    drill_fields: [id, bi_column.id, bi_column.name]
  }
}
