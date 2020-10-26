view: tracking_aerial_status {
  sql_table_name: public.tracking_aerial_status ;;
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

  dimension: main_flow {
    type: yesno
    sql: ${TABLE}."main_flow" ;;
  }

  dimension: order {
    type: number
    sql: ${TABLE}."order" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, tracking_aerial.count]
  }
}
