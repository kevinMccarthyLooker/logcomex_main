view: shipowner {
  sql_table_name: public.shipowner ;;
  drill_fields: [id]

  dimension: id {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }


  dimension: external_id {
    type: number
    sql: ${TABLE}."external_id";;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."name" ;;
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

  dimension_group: updated_at {
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

  dimension: timeout_minutes {
    type: number
    sql: ${TABLE}."timeout_minutes";;
  }

  dimension: request_per_minute {
    type: number
    sql: ${TABLE}."request_per_minute";;
  }

  dimension: cache_in_hours {
    type: number
    sql: ${TABLE}."cache_in_hours";;
  }

  dimension: tries {
    type: number
    sql: ${TABLE}."tries";;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
