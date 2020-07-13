view: tracking_status {
  sql_table_name: public.tracking_status ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: color {
    type: string
    sql: ${TABLE}."color" ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}."description" ;;
  }

  dimension: order {
    type: number
    sql: ${TABLE}."order" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
