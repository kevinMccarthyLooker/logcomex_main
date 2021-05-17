view: st_brinquedos_teste_st {

  derived_table: {
    sql: select * from public.search_ncm_brinquedo_st ;;
  #  indexes: ["id_import"]
  #  sql_trigger_value: select current_date;;
  }


  dimension: id_import {
    type: number
    sql: ${TABLE}.id_import ;;
    primary_key: yes
  }

  dimension: desc_prodt {
    type: string
    sql: ${TABLE}.desc_prodt ;;
  }

  measure: count {
    type: count
  }


}
