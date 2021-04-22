view: db_ace_consignee {
  sql_table_name: public.db_ace_consignee ;;
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

  dimension: consignee_address1 {
    type: string
    sql: ${TABLE}."consignee_address1" ;;
  }

  dimension: consignee_address2 {
    type: string
    sql: ${TABLE}."consignee_address2" ;;
  }

  dimension: consignee_address3 {
    type: string
    sql: ${TABLE}."consignee_address3" ;;
  }

  dimension: consignee_address4 {
    type: string
    sql: ${TABLE}."consignee_address4" ;;
  }

  dimension: consignee_name {
    type: string
    sql: ${TABLE}."consignee_name" ;;
  }

  dimension: consignee_name_orig {
    type: string
    sql: ${TABLE}."consignee_name_orig" ;;
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
    drill_fields: [id, consignee_name, contact_name]
  }
}
