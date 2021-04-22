view: db_ace_id_consignee {
  sql_table_name: public.db_ace_id_consignee ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: id_consignee {
    type: number
    sql: ${TABLE}."id_consignee" ;;
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
