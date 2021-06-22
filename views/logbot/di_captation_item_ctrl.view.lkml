view: di_captation_item_ctrl {
  sql_table_name: public.di_captation_item_ctrl ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
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

  dimension: di_captation_list_ctrl_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."di_captation_list_ctrl_id" ;;
  }

  dimension: di_number {
    type: number
    sql: ${TABLE}."di_number" ;;
  }

  dimension: digit {
    type: number
    sql: ${TABLE}."digit" ;;
  }

  dimension_group: processed {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."processed_at" ;;
  }

  dimension: status {
    type: number
    sql: ${TABLE}."status" ;;
  }

  dimension: status_dsc {
    type: string
    sql: case
         when ${TABLE}."status" = 0 then 'Pendente'
         when ${TABLE}."status" = 1 then 'Processando'
         when ${TABLE}."status" = 2 then 'Erro'
         when ${TABLE}."status" = 3 then 'Processado'
         when ${TABLE}."status" = 4 then 'Agendado'
         when ${TABLE}."status" = 5 then 'Abortado'
         else 'VERIFICAR'
         end;;
  }

  dimension: status_message {
    type: string
    sql: ${TABLE}."status_message" ;;
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
    drill_fields: [id, di_captation_list_ctrl.id]
  }
}
