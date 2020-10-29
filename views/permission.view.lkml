view: permission {
  sql_table_name: public.permission ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: active {
    type: yesno
    sql: ${TABLE}."active" ;;
  }

  dimension: basic_column {
    type: yesno
    sql: ${TABLE}."basic_column" ;;
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

  dimension: dependency {
    type: string
    sql: ${TABLE}."dependency" ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}."description" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."name" ;;
  }

  dimension: service_id {
    type: number
    sql: ${TABLE}."service_id" ;;
  }

  dimension: slug {
    type: string
    sql: ${TABLE}."slug" ;;
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
    drill_fields: [id, name, permission_group.count]
  }
}
