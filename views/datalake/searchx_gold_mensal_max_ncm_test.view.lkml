view: searchx_gold_mensal_max_ncm_test {
  sql_table_name: searchx.searchx_gold_mensal_max_ncm_test ;;

  dimension: ano_mes_registro {
    type: string
    sql: ${TABLE}.ano_mes_registro ;;
  }

  dimension: cdncm_compl {
    type: string
    sql: ${TABLE}.cdncm_compl ;;
  }

  dimension: cod_cnae_import {
    type: string
    sql: ${TABLE}.cod_cnae_import ;;
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

  dimension: desc_cnae_import {
    type: string
    sql: ${TABLE}.desc_cnae_import ;;
  }

  dimension: importador_cnpj {
    type: string
    sql: ${TABLE}.importador_cnpj ;;
  }

  dimension: importador_nome {
    type: string
    sql: ${TABLE}.importador_nome ;;
  }

  dimension: importador_nome_tratado {
    type: string
    sql: case when (${TABLE}.importador_nome = '' or ${TABLE}.importador_nome is null) then 'NÃO ENCONTRADO'
         else ${TABLE}.importador_nome
         end ;;
  }

  dimension: importador_encontrado {
    type: yesno
    sql: case when (${TABLE}.importador_nome = '' or ${TABLE}.importador_nome is null) then false
         else true
         end ;;
  }

  dimension: nome_ncm_pt {
    type: string
    sql: ${TABLE}.nome_ncm_pt ;;
  }

  dimension: valor_max {
    type: number
    sql: ${TABLE}.valor_max ;;
  }

  dimension: valor_mes {
    type: number
    sql: ${TABLE}.valor_mes ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: count_distinc_cnpj {
    type: count_distinct
    sql: ${TABLE}.importador_cnpj ;;
    #drill_fields: [id, name, custom_name]
  }

  measure: count_distinct_customer_id {
    type: count_distinct
    sql: ${TABLE}.customer_id ;;
    #drill_fields: [customer_id, name, custom_name]
  }


}
