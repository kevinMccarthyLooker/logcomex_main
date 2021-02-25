view: agentes_de_carga_gold {
  sql_table_name: agentes_de_carga_teus.agentes_de_carga_gold ;;

  dimension: branches_activity {
    type: string
    sql: ${TABLE}.branches_activity ;;
  }

  dimension: cdempnavegdesconmaster {
    type: string
    sql: ${TABLE}.cdempnavegdesconmaster ;;
  }

  dimension: customer_id {
    type: number
    sql: ${TABLE}.customer_id ;;
  }

  dimension: cliente {
    type: yesno
    sql: case when ${TABLE}.customer_id is null then false
         else true
         end;;
  }

  dimension: cliente_match {
    type: yesno
    sql: ${cliente} ;;
    html: {% if value == 'Yes' %}
            <font color="green">{{ cliente }}</font>
          {% else %}
            <font color="red">{{ cliente }}</font>
          {% endif %};;
  }

  dimension: desc_ncm {
    type: string
    sql: ${TABLE}.desc_ncm ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: ncm {
    type: string
    sql: ${TABLE}.ncm ;;
  }

  dimension: ncm_teus {
    type: number
    sql: ${TABLE}.ncm_teus ;;
  }

  dimension: nmempnavegdesconmaster {
    type: string
    sql: ${TABLE}.Nmempnavegdesconmaster ;;
  }

  dimension: nmempnavegdesconmaster_tratado {
    type: string
    sql: case when (${TABLE}.Nmempnavegdesconmaster = '' or ${TABLE}.Nmempnavegdesconmaster is null) then 'NÃO ENCONTRADO'
         else ${TABLE}.Nmempnavegdesconmaster
         end ;;
  }

  dimension: qtd_registros {
    type: number
    sql: ${TABLE}.qtd_registros ;;
  }

  dimension: total_teus {
    type: number
    sql: ${TABLE}.total_teus ;;
  }

  measure: count_distinct_customer_id {
    type: count_distinct
    sql: ${customer_id} ;;
    drill_fields: [customer_id,nmempnavegdesconmaster,cdempnavegdesconmaster]
  }

  measure: count_distinc_nmempnavegdesconmaster {
    type: count_distinct
    sql: ${nmempnavegdesconmaster} ;;
    #drill_fields: [importador_nome]
  }

  measure: count_distinc_cdempnavegdesconmaster {
    type: count_distinct
    sql: ${cdempnavegdesconmaster} ;;
    #drill_fields: [id, name, custom_name]
  }

  measure: count_distinc_cnpj_8dig {
    type: count_distinct
    sql: left(${cdempnavegdesconmaster},8) ;;
    #drill_fields: [id, name, custom_name]
  }

  measure: sum_total_teus {
    type: sum
    sql: ${total_teus} ;;
  }

  measure: sum_qtd_registros {
    type: sum
    sql: ${qtd_registros} ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
