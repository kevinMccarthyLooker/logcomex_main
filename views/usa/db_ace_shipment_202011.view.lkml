view: db_ace_shipment_202011 {
  sql_table_name: public.db_ace_shipment_202011 ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension_group: actual_arrival {
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
    sql: ${TABLE}."actual_arrival_date" ;;
  }

  dimension: carrier_code {
    type: string
    sql: ${TABLE}."carrier_code" ;;
  }

  dimension: cd_country_dest {
    type: string
    sql: ${TABLE}."cd_country_dest" ;;
  }

  dimension: cd_country_lading {
    type: string
    sql: ${TABLE}."cd_country_lading" ;;
  }

  dimension: cd_port_foreign_dest {
    type: string
    sql: ${TABLE}."cd_port_foreign_dest" ;;
  }

  dimension: cd_port_foreign_lading {
    type: string
    sql: ${TABLE}."cd_port_foreign_lading" ;;
  }

  dimension: conveyance_id {
    type: string
    sql: ${TABLE}."conveyance_id" ;;
  }

  dimension_group: dt_created {
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
    sql: ${TABLE}."dt_created_at" ;;
  }

  dimension_group: dt_deleted {
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
    sql: ${TABLE}."dt_deleted_at" ;;
  }

  dimension_group: dt_updated {
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
    sql: ${TABLE}."dt_updated_at" ;;
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
    sql: ${TABLE}."estimated_arrival_date" ;;
  }

  dimension: id_bill_type {
    type: number
    sql: ${TABLE}."id_bill_type" ;;
  }

  dimension: id_country_dest {
    type: number
    sql: ${TABLE}."id_country_dest" ;;
  }

  dimension: id_country_lading {
    type: number
    sql: ${TABLE}."id_country_lading" ;;
  }

  dimension: id_entry_type {
    type: number
    sql: ${TABLE}."id_entry_type" ;;
  }

  dimension: id_manifest_unit {
    type: number
    sql: ${TABLE}."id_manifest_unit" ;;
  }

  dimension: id_measurement_unit {
    type: number
    sql: ${TABLE}."id_measurement_unit" ;;
  }

  dimension: id_mode_transp {
    type: number
    sql: ${TABLE}."id_mode_transp" ;;
  }

  dimension: id_port_foreign_destination {
    type: number
    sql: ${TABLE}."id_port_foreign_destination" ;;
  }

  dimension: id_port_foreign_lading {
    type: number
    sql: ${TABLE}."id_port_foreign_lading" ;;
  }

  dimension: id_port_unlading {
    type: number
    sql: ${TABLE}."id_port_unlading" ;;
  }

  dimension: id_port_usa_destination {
    type: number
    sql: ${TABLE}."id_port_usa_destination" ;;
  }

  dimension: id_qualifier {
    type: number
    sql: ${TABLE}."id_qualifier" ;;
  }

  dimension: id_status {
    type: number
    sql: ${TABLE}."id_status" ;;
  }

  dimension: id_vessel {
    type: number
    sql: ${TABLE}."id_vessel" ;;
  }

  dimension: id_weight_unit {
    type: number
    sql: ${TABLE}."id_weight_unit" ;;
  }

  dimension: identifier {
    type: number
    sql: ${TABLE}."identifier" ;;
  }

  dimension: manifest_quantity {
    type: number
    sql: ${TABLE}."manifest_quantity" ;;
  }

  dimension: measurement {
    type: number
    sql: ${TABLE}."measurement" ;;
  }

  dimension: nm_city_dest {
    type: string
    sql: ${TABLE}."nm_city_dest" ;;
  }

  dimension: nm_city_unlading {
    type: string
    sql: ${TABLE}."nm_city_unlading" ;;
  }

  dimension: nm_port_foreign_dest {
    type: string
    sql: ${TABLE}."nm_port_foreign_dest" ;;
  }

  dimension: nm_port_foreign_lading {
    type: string
    sql: ${TABLE}."nm_port_foreign_lading" ;;
  }

  dimension: nm_port_unlading {
    type: string
    sql: ${TABLE}."nm_port_unlading" ;;
  }

  dimension: nm_port_usa_dest {
    type: string
    sql: ${TABLE}."nm_port_usa_dest" ;;
  }

  dimension: nm_vessel {
    type: string
    sql: ${TABLE}."nm_vessel" ;;
  }

  dimension: num_house {
    type: string
    sql: ${TABLE}."num_house" ;;
  }

  dimension: num_manifest {
    type: string
    sql: ${TABLE}."num_manifest" ;;
  }

  dimension: num_master {
    type: string
    sql: ${TABLE}."num_master" ;;
  }

  dimension: num_subhouse {
    type: string
    sql: ${TABLE}."num_subhouse" ;;
  }

  dimension: num_voyage {
    type: string
    sql: ${TABLE}."num_voyage" ;;
  }

  dimension: place_of_receipt {
    type: string
    sql: ${TABLE}."place_of_receipt" ;;
  }

  dimension: secondary_notify_party {
    type: string
    sql: ${TABLE}."secondary_notify_party" ;;
  }

  dimension: weight {
    type: number
    sql: ${TABLE}."weight" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
