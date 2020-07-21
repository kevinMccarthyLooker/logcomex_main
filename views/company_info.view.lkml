view: company_info {
  sql_table_name: public.company_info ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: cep {
    type: string
    sql: ${TABLE}."cep" ;;
  }

  dimension: company_id {
    type: number
    sql: ${TABLE}."company_id" ;;
  }

  dimension: complement {
    type: string
    sql: ${TABLE}."complement" ;;
  }

  dimension: county {
    type: string
    sql: ${TABLE}."county" ;;
  }

  dimension: legal_nature {
    type: string
    sql: ${TABLE}."legal_nature" ;;
  }

  dimension: main_activity {
    type: string
    sql: ${TABLE}."main_activity" ;;
  }

  dimension: main_activity_code {
    type: string
    sql: ${TABLE}."main_activity_code" ;;
  }

  dimension: neighborhood {
    type: string
    sql: ${TABLE}."neighborhood" ;;
  }

  dimension: number {
    type: number
    sql: ${TABLE}."number" ;;
  }

  dimension_group: opening {
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
    sql: ${TABLE}."opening" ;;
  }

  dimension: phones {
    type: string
    sql: ${TABLE}."phones" ;;
  }

  dimension: public_place {
    type: string
    sql: ${TABLE}."public_place" ;;
  }

  dimension: share_capital {
    type: number
    sql: ${TABLE}."share_capital" ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}."state" ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}."type" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
