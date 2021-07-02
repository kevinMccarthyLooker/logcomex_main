view: aereo_awb_list {
  sql_table_name: public.aereo_awb_list ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: awb {
    type: string
    sql: ${TABLE}."awb" ;;
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

  dimension: details_status {
    type: string
    sql: ${TABLE}."details_status" ;;
  }

  dimension: processado { #retira os vinculados ao tracking, e veriricada se ja foi processado ou nao
    type: yesno
    sql:
    case
    when ${TABLE}.details_status = 'pending' and (source_file not in ('TRACKING', 'MANUAL_TRACKING') or source_file is null) then false
    else true
    end;;

  }
  dimension: di_id {
    type: number
    sql: ${TABLE}."di_id" ;;
  }

  dimension: dta_id {
    type: number
    sql: ${TABLE}."dta_id" ;;
  }

  dimension: hwb {
    type: string
    sql: ${TABLE}."hwb" ;;
  }

  dimension: id_urf {
    type: number
    sql: ${TABLE}."id_urf" ;;
  }

  dimension: mantra_not_registered {
    type: yesno
    sql: ${TABLE}."mantra_not_registered" ;;
  }

  dimension_group: periodo {
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
    sql: ${TABLE}."periodo" ;;
  }

  dimension: retornado_bot {
    type: number
    sql: ${TABLE}."retornado_bot" ;;
  }

  dimension: sequencia {
    type: number
    sql: ${TABLE}."sequencia" ;;
  }

  dimension: source_file {
    type: string
    sql: ${TABLE}."source_file" ;;
  }

  dimension: termo {
    type: number
    sql: ${TABLE}."termo" ;;
  }

  dimension: tries {
    type: number
    sql: ${TABLE}."tries" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }

#  measure: count_pending {
#    type: count
#    filters: [source_file: "-TRACKING,-MANUAL_TRACKING",details_status: "pending"]
#    drill_fields: [id]
#  }

}
