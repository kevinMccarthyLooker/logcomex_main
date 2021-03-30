view: users {
  sql_table_name: public.users ;;
  drill_fields: [id]

  dimension: id {
#     hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: clear_prefs {
    label: "Clear Preferences"
    type: yesno
    sql: ${TABLE}."clear_prefs" ;;
  }

  dimension: country_phone_code {
    type: string
    sql: ${TABLE}."country_phone_code" ;;
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

  dimension: twofactor_code {
    type: string
    sql: ${TABLE}."twofactor_code" ;;
  }

  dimension_group: twofactor_valid_until {
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
    sql: ${TABLE}."twofactor_valid_until" ;;
  }

  dimension: twofactor_required {
    type: yesno
    sql: ${TABLE}."twofactor_required" ;;
  }

  dimension: twofactor_code_verified {
    type: yesno
    sql: ${TABLE}."twofactor_code_verified" ;;
  }

  dimension_group: twofactor_verified_at {
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
    sql: ${TABLE}."twofactor_verified_at" ;;
  }


  dimension: customer_profile_default_id {
    type: number
    sql: ${TABLE}."customer_profile_default_id" ;;
  }

  dimension_group: date_birth {
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
    sql: ${TABLE}."date_birth" ;;
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

  dimension: email {
    type: string
    sql: ${TABLE}."email" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."name" ;;
  }

  dimension: password {
    type: string
    sql: ${TABLE}."password" ;;
  }

  dimension: phone_number {
    type: string
    sql: ${TABLE}."phone_number" ;;
  }

  dimension: remember_token {
    type: string
    sql: ${TABLE}."remember_token" ;;
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
    drill_fields: [basic_drills*]
  }

  measure: count_distinc {
    type: count_distinct
    sql: ${users.id} ;;
    drill_fields: [basic_drills*]
  }


  set: basic_drills {fields:[id, name, email]}

}
