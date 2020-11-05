view: certificate_consignee_radar {
  sql_table_name: public.certificate_consignee_radar ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: certificate_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."certificate_id" ;;
  }

  dimension_group: ces_processed {
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
    sql: ${TABLE}."ces_processed_at" ;;
  }

  dimension: consignee_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."consignee_id" ;;
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

  dimension_group: deleted {
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
    sql: ${TABLE}."deleted_at" ;;
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
    drill_fields: [id, certificate.id, certificate.owner_name, consignee.id, consignee.name]
  }
}
