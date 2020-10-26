view: db_export_cargo_reception_item_due {
  sql_table_name: public.db_export_cargo_reception_item_due ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: cdncm_compl {
    type: number
    sql: ${TABLE}."cdncm_compl" ;;
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

  dimension: descr_ncm {
    type: string
    sql: ${TABLE}."descr_ncm" ;;
  }

  dimension: id_due {
    type: number
    sql: ${TABLE}."id_due" ;;
  }

  dimension: id_exp_cargo_details {
    type: number
    sql: ${TABLE}."id_exp_cargo_details" ;;
  }

  dimension: id_item {
    type: number
    sql: ${TABLE}."id_item" ;;
  }

  dimension: identificacao {
    type: number
    sql: ${TABLE}."identificacao" ;;
  }

  dimension: num_due {
    type: string
    sql: ${TABLE}."num_due" ;;
  }

  dimension: num_item {
    type: number
    sql: ${TABLE}."num_item" ;;
  }

  dimension: qtd_export {
    type: number
    sql: ${TABLE}."qtd_export" ;;
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
