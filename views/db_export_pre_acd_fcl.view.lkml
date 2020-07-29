view: db_export_pre_acd_fcl {
  sql_table_name: public.db_export_pre_acd_fcl ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: conteiner {
    type: string
    sql: ${TABLE}."conteiner" ;;
  }

  dimension: dispensa_lacre {
    type: yesno
    sql: ${TABLE}."dispensa_lacre" ;;
  }

  dimension: export_pre_acd_details_id {
    type: number
    sql: ${TABLE}."export_pre_acd_details_id" ;;
  }

  dimension: lacres {
    type: string
    sql: ${TABLE}."lacres" ;;
  }

  dimension: tara {
    type: number
    sql: ${TABLE}."tara" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
