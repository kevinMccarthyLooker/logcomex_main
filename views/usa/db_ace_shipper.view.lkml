view: db_ace_shipper {
  sql_table_name: public.db_ace_shipper ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}."city" ;;
  }

  dimension: comm_number {
    type: string
    sql: ${TABLE}."comm_number" ;;
  }

  dimension: contact_name {
    type: string
    sql: ${TABLE}."contact_name" ;;
  }

  dimension: country_code {
    type: string
    sql: ${TABLE}."country_code" ;;
  }

  dimension: id_comm_type {
    type: number
    sql: ${TABLE}."id_comm_type" ;;
  }

  dimension: shipper_address1 {
    type: string
    sql: ${TABLE}."shipper_address1" ;;
  }

  dimension: shipper_address2 {
    type: string
    sql: ${TABLE}."shipper_address2" ;;
  }

  dimension: shipper_address3 {
    type: string
    sql: ${TABLE}."shipper_address3" ;;
  }

  dimension: shipper_address4 {
    type: string
    sql: ${TABLE}."shipper_address4" ;;
  }

  dimension: shipper_name {
    type: string
    sql: ${TABLE}."shipper_name" ;;
  }

  dimension: shipper_name_orig {
    type: string
    sql: ${TABLE}."shipper_name_orig" ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}."state" ;;
  }

  dimension: zip_code {
    type: zipcode
    sql: ${TABLE}."zip_code" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, contact_name, shipper_name]
  }
}
