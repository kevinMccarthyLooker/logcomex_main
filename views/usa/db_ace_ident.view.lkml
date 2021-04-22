view: db_ace_ident {
  sql_table_name: public.db_ace_ident ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: identifier {
    type: number
    sql: ${TABLE}."identifier" ;;
  }

  dimension: num_house {
    type: string
    sql: ${TABLE}."num_house" ;;
  }

  dimension: num_master {
    type: string
    sql: ${TABLE}."num_master" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
