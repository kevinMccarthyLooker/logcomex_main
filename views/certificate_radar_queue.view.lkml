view: certificate_radar_queue {
  sql_table_name: public.certificate_radar_queue ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: access_error {
    type: yesno
    sql: ${TABLE}."access_error" ;;
  }

  dimension: cert_id {
    type: number
    sql: ${TABLE}."cert_id" ;;
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

  dimension: error_message {
    type: string
    sql: ${TABLE}."error_message" ;;
  }

  dimension_group: processed {
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
    sql: ${TABLE}."processed_at" ;;
  }

  dimension: successfully_processed {
    type: yesno
    sql: ${TABLE}."successfully_processed" ;;
  }

  dimension: total_consignees_found {
    type: number
    sql: ${TABLE}."total_consignees_found" ;;
  }

  dimension: tries {
    type: number
    sql: ${TABLE}."tries" ;;
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
    drill_fields: [id]
  }
}
