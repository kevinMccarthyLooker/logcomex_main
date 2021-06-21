view: usa_2020_bronze {
  sql_table_name: USA.usa_2020_bronze ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: cdncm {
    type: number
    sql: ${TABLE}.cdncm ;;
  }

  dimension: consignee_name {
    type: string
    sql: ${TABLE}.consignee_name ;;
  }

  dimension: container_number {
    type: string
    sql: ${TABLE}.container_number ;;
  }

  dimension: desc_item {
    type: string
    sql: ${TABLE}.desc_item ;;
  }

  dimension_group: estimated_arrival {
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
    sql: ${TABLE}.estimated_arrival_date ;;
  }

  dimension: hs_code {
    type: number
    sql: ${TABLE}.hs_code ;;
  }

  dimension: hs_value {
    type: number
    sql: ${TABLE}.hs_value ;;
  }

  dimension: hs_weight {
    type: number
    sql: ${TABLE}.hs_weight ;;
  }

  dimension: id_cdncm {
    type: number
    sql: ${TABLE}.id_cdncm ;;
  }

  dimension: id_consignee {
    type: number
    sql: ${TABLE}.id_consignee ;;
  }

  dimension: id_notify_party {
    type: number
    sql: ${TABLE}.id_notify_party ;;
  }

  dimension: id_shipper {
    type: number
    sql: ${TABLE}.id_shipper ;;
  }

  dimension: id_weight_unit {
    type: number
    sql: ${TABLE}.id_weight_unit ;;
  }

  dimension: identifier {
    type: number
    sql: ${TABLE}.identifier ;;
  }

  dimension: item_number {
    type: number
    sql: ${TABLE}.item_number ;;
  }

  dimension: notify_party_name {
    type: string
    sql: ${TABLE}.notify_party_name ;;
  }

  dimension: piece_count {
    type: number
    sql: ${TABLE}.piece_count ;;
  }

  dimension_group: run {
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
    sql: ${TABLE}.run_date ;;
  }

  dimension: shipper_name {
    type: string
    sql: ${TABLE}.shipper_name ;;
  }

  dimension_group: trade_update {
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
    sql: ${TABLE}.trade_update_date ;;
  }

  measure: count {
    type: count
    drill_fields: [id, consignee_name, shipper_name, notify_party_name]
  }
}
