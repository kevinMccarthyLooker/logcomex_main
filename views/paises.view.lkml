view: paises {
  sql_table_name: public.paises ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: account_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."account_id" ;;
  }

  dimension: bandeira {
    type: string
    sql: ${TABLE}."bandeira" ;;
  }

  dimension: codigo_bacen {
    type: string
    sql: ${TABLE}."codigo_bacen" ;;
  }

  dimension: codigo_geral {
    type: string
    sql: ${TABLE}."codigo_geral" ;;
  }

  dimension: codigo_rf {
    type: string
    sql: ${TABLE}."codigo_rf" ;;
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

  dimension: name_en {
    type: string
    sql: ${TABLE}."name_en" ;;
  }

  dimension: name_pt {
    type: string
    sql: ${TABLE}."name_pt" ;;
  }

  dimension: org_id {
    type: number
    sql: ${TABLE}."org_id" ;;
  }

  dimension: sigla_2 {
    type: string
    sql: ${TABLE}."sigla_2" ;;
  }

  dimension: sigla_3 {
    type: string
    sql: ${TABLE}."sigla_3" ;;
  }

  dimension: token {
    type: string
    sql: ${TABLE}."token" ;;
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

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."user_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, account.account_id, users.name, users.user_id]
  }
}
