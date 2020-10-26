view: tracking_internal_status {
  sql_table_name: public.tracking_internal_status ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}."description" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
