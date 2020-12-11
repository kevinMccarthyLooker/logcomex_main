view: country {
  sql_table_name: public.country ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: bacen_code {
    type: string
    sql: ${TABLE}."bacen_code" ;;
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

  dimension: flag_path {
    type: string
    sql: ${TABLE}."flag_path" ;;
  }

  dimension: general_code {
    type: string
    sql: ${TABLE}."general_code" ;;
  }

  dimension: initials_2 {
    type: string
    sql: ${TABLE}."initials_2" ;;
  }

  dimension: initials_3 {
    type: string
    sql: ${TABLE}."initials_3" ;;
  }

  dimension: name_en {
    type: string
    sql: ${TABLE}."name_en" ;;
  }

  dimension: name_pt {
    type: string
    sql: ${TABLE}."name_pt" ;;
  }

  dimension: rf_code {
    type: string
    sql: ${TABLE}."rf_code" ;;
  }

  dimension: trade_lane {
    type: string
    sql: ${TABLE}."trade_lane" ;;
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
