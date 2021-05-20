view: exp_usa {
  sql_table_name: public.exp_usa ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: bill_of_lading_number {
    type: string
    sql: ${TABLE}."Bill of Lading Number" ;;
  }

  dimension: booking_location_city {
    type: string
    sql: ${TABLE}."Booking Location City" ;;
  }

  dimension: booking_location_country {
    type: string
    sql: ${TABLE}."Booking Location Country" ;;
  }

  dimension: booking_location_country_iso3 {
    type: string
    sql: ${TABLE}."Booking Location Country ISO3" ;;
  }

  dimension: booking_location_state {
    type: string
    sql: ${TABLE}."Booking Location State" ;;
  }

  dimension: container_number {
    type: string
    sql: ${TABLE}."Container Number" ;;
  }

  dimension: container_quantity {
    type: string
    sql: ${TABLE}."Container Quantity" ;;
  }

  dimension: container_teu {
    type: string
    sql: ${TABLE}."Container TEU" ;;
  }

  dimension: conteiner_desc_1 {
    type: string
    sql: ${TABLE}."conteiner_desc_1" ;;
  }

  dimension: conteiner_desc_2 {
    type: string
    sql: ${TABLE}."conteiner_desc_2" ;;
  }

  dimension: conteiner_desc_3 {
    type: string
    sql: ${TABLE}."conteiner_desc_3" ;;
  }

  dimension: conteiner_desc_4 {
    type: string
    sql: ${TABLE}."conteiner_desc_4" ;;
  }

  dimension: country_destination {
    type: string
    sql: ${TABLE}."Country Destination" ;;
  }

  dimension_group: departure {
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
    sql: ${TABLE}."Departure Date" ;;
  }

  dimension: destination_country_iso3 {
    type: string
    sql: ${TABLE}."Destination Country ISO3" ;;
  }

  dimension: destination_port_id {
    type: string
    sql: ${TABLE}."Destination Port ID" ;;
  }

  dimension_group: dtexportacao {
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
    sql: ${TABLE}."dtexportacao" ;;
  }

  dimension: flight_code {
    type: string
    sql: ${TABLE}."Flight Code" ;;
  }

  dimension: port_destination {
    type: string
    sql: ${TABLE}."Port Destination" ;;
  }

  dimension: scac {
    type: string
    sql: ${TABLE}."scac" ;;
  }

  dimension: shipment_equipment_type {
    type: number
    sql: ${TABLE}."Shipment Equipment Type" ;;
  }

  dimension: shipment_id {
    type: string
    sql: ${TABLE}."Shipment ID" ;;
  }

  dimension: shipment_shipping_quantity {
    type: string
    sql: ${TABLE}."Shipment Shipping Quantity" ;;
  }

  dimension: shipment_shipping_quantity_unit {
    type: string
    sql: ${TABLE}."Shipment Shipping Quantity Unit" ;;
  }

  dimension: shipment_shipping_weight {
    type: string
    sql: ${TABLE}."Shipment Shipping Weight" ;;
  }

  dimension: shipment_shipping_weight_unit {
    type: string
    sql: ${TABLE}."Shipment Shipping Weight Unit" ;;
  }

  dimension: shipper_addr1 {
    type: string
    sql: ${TABLE}."Shipper Addr1" ;;
  }

  dimension: shipper_addr2 {
    type: string
    sql: ${TABLE}."Shipper Addr2" ;;
  }

  dimension: shipper_city {
    type: string
    sql: ${TABLE}."Shipper City" ;;
  }

  dimension: shipper_country {
    type: string
    sql: ${TABLE}."Shipper Country" ;;
  }

  dimension: shipper_country_iso3 {
    type: string
    sql: ${TABLE}."Shipper Country ISO3" ;;
  }

  dimension: shipper_name {
    type: string
    sql: ${TABLE}."Shipper Name" ;;
  }

  dimension: shipper_postal_code {
    type: string
    sql: ${TABLE}."Shipper Postal Code" ;;
  }

  dimension: shipper_state {
    type: string
    sql: ${TABLE}."Shipper State" ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}."﻿source" ;;
  }

  dimension: us_port {
    type: string
    sql: ${TABLE}."US Port" ;;
  }

  dimension: us_port_id {
    type: number
    sql: ${TABLE}."US Port ID" ;;
  }

  dimension: vessel_flag {
    type: number
    sql: ${TABLE}."Vessel Flag" ;;
  }

  dimension: vessel_name {
    type: string
    sql: ${TABLE}."Vessel Name" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, shipper_name, vessel_name]
  }
}
