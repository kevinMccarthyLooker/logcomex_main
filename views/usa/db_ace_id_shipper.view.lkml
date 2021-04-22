view: db_ace_id_shipper {
  sql_table_name: public.db_ace_id_shipper ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: id_shipper {
    type: number
    sql: ${TABLE}."id_shipper" ;;
  }

  dimension: identifier {
    type: number
    sql: ${TABLE}."identifier" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
