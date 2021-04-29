view: mvw_db_ace_shipment {

  derived_table: {
    sql: select * from mvw_db_ace_shipment_202008 ;;
  }

  dimension: id {
    type: number
    primary_key: yes
    sql: ${TABLE}.id;;
  }

  dimension: cod_bill {
    type: string
    sql: ${TABLE}.cod_bill;;
  }

  dimension: desc_bill {
    type: string
    sql: ${TABLE}.desc_bill;;
  }

  dimension: num_master {
    type: string
    sql: ${TABLE}.num_master;;
  }

  dimension: num_house {
    type: string
    sql: ${TABLE}.num_house;;
  }

  dimension: num_manifest {
    type: string
    sql: ${TABLE}.num_manifest;;
  }

  dimension: num_voyage {
    type: string
    sql: ${TABLE}.num_voyage;;
  }

  dimension: carrier_code {
    type: string
    sql: ${TABLE}.carrier_code;;
  }

  dimension: vessel_country_name {
    type: string
    sql: ${TABLE}.vessel_country_name;;
  }

  dimension: nm_vessel {
    type: string
    sql: ${TABLE}.nm_vessel;;
  }

  dimension: nm_port_unlading {
    type: string
    sql: ${TABLE}.nm_port_unlading;;
  }

  dimension: nm_city_unlading {
    type: string
    sql: ${TABLE}.nm_city_unlading;;
  }

  dimension: estimated_arrival_date {
    type: string
    sql: ${TABLE}.estimated_arrival_date;;
  }

  dimension: cd_port_foreign_lading {
    type: string
    sql: ${TABLE}.cd_port_foreign_lading;;
  }

  dimension: nm_port_foreign_lading {
    type: string
    sql: ${TABLE}.nm_port_foreign_lading;;
  }

  dimension: cd_country_lading {
    type: string
    sql: ${TABLE}.cd_country_lading;;
  }

  dimension: name_country_lading {
    type: string
    sql: ${TABLE}.name_country_lading;;
  }

  dimension: nm_trade_lane_lading {
    type: string
    sql: ${TABLE}.nm_trade_lane_lading;;
  }

  dimension: manifest_quantity {
    type: string
    sql: ${TABLE}.manifest_quantity;;
  }

  dimension: measurement {
    type: string
    sql: ${TABLE}.measurement;;
  }

  dimension: weight {
    type: string
    sql: ${TABLE}.weight;;
  }

  dimension: weight_measure {
    type: string
    sql: ${TABLE}.weight_measure;;
  }

  dimension: units {
    type: string
    sql: ${TABLE}.units;;
  }

  dimension: unit {
    type: string
    sql: ${TABLE}.unit;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status;;
  }

  dimension: place_of_receipt {
    type: string
    sql: ${TABLE}.place_of_receipt;;
  }

  dimension: nm_port_usa_dest {
    type: string
    sql: ${TABLE}.nm_port_usa_dest;;
  }

  dimension: nm_city_dest {
    type: string
    sql: ${TABLE}.nm_city_dest;;
  }

  dimension: cd_port_foreign_dest {
    type: string
    sql: ${TABLE}.cd_port_foreign_dest;;
  }

  dimension: nm_port_foreign_dest {
    type: string
    sql: ${TABLE}.nm_port_foreign_dest;;
  }

  dimension: cd_country_dest {
    type: string
    sql: ${TABLE}.cd_country_dest;;
  }

  dimension: name_country_dest {
    type: string
    sql: ${TABLE}.name_country_dest;;
  }

  dimension: qualifier {
    type: string
    sql: ${TABLE}.qualifier;;
  }

  dimension: conveyance_id {
    type: string
    sql: ${TABLE}.conveyance_id;;
  }

  dimension: entry_type {
    type: string
    sql: ${TABLE}.entry_type;;
  }

  dimension: mode_transp {
    type: string
    sql: ${TABLE}.mode_transp;;
  }

  dimension: secondary_notify_party {
    type: string
    sql: ${TABLE}.secondary_notify_party;;
  }

  dimension: actual_arrival_date {
    type: string
    sql: ${TABLE}.actual_arrival_date;;
  }

  dimension: container_number {
    type: string
    sql: ${TABLE}.container_number;;
  }

  dimension: item_number {
    type: string
    sql: ${TABLE}.item_number;;
  }

  dimension: trade_update_date {
    type: string
    sql: ${TABLE}.trade_update_date;;
  }

  dimension: run_date {
    type: string
    sql: ${TABLE}.run_date;;
  }

  dimension: desc_item {
    type: string
    sql: ${TABLE}.desc_item;;
  }

  dimension: hs_code {
    type: string
    sql: ${TABLE}.hs_code;;
  }

  dimension: hs_value {
    type: string
    sql: ${TABLE}.hs_value;;
  }

  dimension: piece_count {
    type: string
    sql: ${TABLE}.piece_count;;
  }

  dimension: hs_weight {
    type: string
    sql: ${TABLE}.hs_weight;;
  }

  dimension: item_weight_measure {
    type: string
    sql: ${TABLE}.item_weight_measure;;
  }

  dimension: consignee_name {
    type: string
    sql: ${TABLE}.consignee_name;;
  }

  dimension: consignee_address {
    type: string
    sql: ${TABLE}.consignee_address;;
  }

  dimension: consignee_contact_name {
    type: string
    sql: ${TABLE}.consignee_contact_name;;
  }

  dimension: consignee_communication_type {
    type: string
    sql: ${TABLE}.consignee_communication_type;;
  }

  dimension: consignee_communication_number {
    type: string
    sql: ${TABLE}.consignee_communication_number;;
  }

  dimension: shipper_name {
    type: string
    sql: ${TABLE}.shipper_name;;
  }

  dimension: shipper_address {
    type: string
    sql: ${TABLE}.shipper_address;;
  }

  dimension: shipper_contact_name {
    type: string
    sql: ${TABLE}.shipper_contact_name;;
  }

  dimension: shipper_communication_type {
    type: string
    sql: ${TABLE}.shipper_communication_type;;
  }

  dimension: shipper_communication_number {
    type: string
    sql: ${TABLE}.shipper_communication_number;;
  }

  dimension: notify_party_name {
    type: string
    sql: ${TABLE}.notify_party_name;;
  }

  dimension: notify_party_address {
    type: string
    sql: ${TABLE}.notify_party_address;;
  }

  dimension: notify_party_contact {
    type: string
    sql: ${TABLE}.notify_party_contact;;
  }

  dimension: notify_party_communication_type {
    type: string
    sql: ${TABLE}.notify_party_communication_type;;
  }


  measure:count{
    type: count
  }

}
