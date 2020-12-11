view: db_export_cargo_reception_fcl {
  sql_table_name: public.db_export_cargo_reception_fcl ;;
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

  dimension: dispensa_lacres {
    type: yesno
    sql: ${TABLE}."dispensa_lacres" ;;
  }

  dimension: id_exp_cargo_details {
    type: number
    sql: ${TABLE}."id_exp_cargo_details" ;;
  }

  dimension: id_nf {
    type: number
    sql: ${TABLE}."id_nf" ;;
  }

  dimension: lacres {
    type: string
    sql: ${TABLE}."lacres" ;;
  }

  dimension: peso_aferido {
    type: number
    sql: ${TABLE}."peso_aferido" ;;
  }

  dimension: tara {
    type: number
    sql: ${TABLE}."tara" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, conteiner]
  }
}
