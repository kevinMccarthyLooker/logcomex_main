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

  measure:count{
    type: count
  }

}
