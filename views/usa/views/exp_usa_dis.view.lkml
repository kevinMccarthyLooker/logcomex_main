view: exp_usa_dis {
  sql_table_name: public.exp_usa_dis ;;
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

  dimension: booking_location {
    type: string
    sql: ${TABLE}."Booking Location" ;;
  }

  dimension: container_gross_weight_kg {
    type: string
    sql: ${TABLE}."Container Gross Weight KG" ;;
  }

  dimension: container_id {
    type: string
    sql: ${TABLE}."Container ID" ;;
  }

  dimension: container_measurement {
    type: string
    sql: ${TABLE}."Container Measurement" ;;
  }

  dimension: container_number {
    type: string
    sql: ${TABLE}."Container Number" ;;
  }

  dimension: container_quantity {
    type: string
    sql: ${TABLE}."Container Quantity" ;;
  }

  dimension: container_quantity_units {
    type: string
    sql: ${TABLE}."Container Quantity Units" ;;
  }

  dimension: container_seal_number {
    type: string
    sql: ${TABLE}."Container Seal Number" ;;
  }

  dimension: container_tare_weight_kg {
    type: string
    sql: ${TABLE}."Container Tare Weight KG" ;;
  }

  dimension: container_teu {
    type: string
    sql: ${TABLE}."Container TEU" ;;
  }

  dimension: container_type {
    type: string
    sql: ${TABLE}."Container Type" ;;
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

  dimension: destination {
    type: string
    sql: ${TABLE}."destination" ;;
  }

  dimension: destination_country_iso3 {
    type: string
    sql: ${TABLE}."Destination Country ISO3" ;;
  }

  dimension: destination_port_id {
    type: number
    sql: ${TABLE}."Destination Port ID" ;;
  }

  dimension: flight_code {
    type: string
    sql: ${TABLE}."Flight Code" ;;
  }

  dimension: item_description {
    type: string
    sql: ${TABLE}."Item Description" ;;
  }

  dimension: item_gross_weight_kg {
    type: string
    sql: ${TABLE}."Item Gross Weight KG" ;;
  }

  dimension: item_measurement {
    type: string
    sql: ${TABLE}."Item Measurement" ;;
  }

  dimension: item_quantity {
    type: string
    sql: ${TABLE}."Item Quantity" ;;
  }

  dimension: item_quantity_units {
    type: string
    sql: ${TABLE}."Item Quantity Units" ;;
  }

  dimension: manifest_scac {
    type: string
    sql: ${TABLE}."Manifest SCAC" ;;
  }

  dimension: pais_port_destination {
    type: string
    sql: ${TABLE}."pais_port_destination" ;;
  }

  dimension: port_destination {
    type: string
    sql: ${TABLE}."Port Destination" ;;
  }

  dimension_group: record {
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
    sql: ${TABLE}."Record Date" ;;
  }

  dimension: shipment_id {
    type: string
    sql: ${TABLE}."Shipment ID" ;;
  }

  dimension: shipper_country_iso3 {
    type: string
    sql: ${TABLE}."Shipper Country ISO3" ;;
  }

  dimension: shipper_name {
    type: string
    sql: ${TABLE}."Shipper Name" ;;
  }

  dimension: shipperfulladdress1 {
    type: string
    sql: ${TABLE}."shipperfulladdress1" ;;
  }

  dimension: shipperfulladdress2 {
    type: string
    sql: ${TABLE}."shipperfulladdress2" ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}."Source" ;;
  }

  dimension: us_port {
    type: string
    sql: ${TABLE}."US Port" ;;
  }

  dimension: us_port_id {
    type: string
    sql: ${TABLE}."US Port ID" ;;
  }

  dimension: vessel_flag {
    type: string
    sql: ${TABLE}."Vessel Flag" ;;
  }

  dimension: vessel_imo {
    type: string
    sql: ${TABLE}."Vessel IMO" ;;
  }

  dimension: vessel_name {
    type: string
    sql: ${TABLE}."Vessel Name" ;;
  }

  dimension: vessel_scac {
    type: string
    sql: ${TABLE}."Vessel SCAC" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, shipper_name, vessel_name]
  }
}
