view: searchx_gold_cif_cnae_ncm_2020 {
  sql_table_name: searchx.searchx_gold_cif_cnae_ncm_2020 ;;

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

  dimension: importador_cnpj_8dig {
    type: string
    sql: left(${TABLE}.importador_cnpj,10) ;;
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

  dimension: valor_cnae_ncm {
    type: number
    sql: ${TABLE}.valor_cnae_ncm ;;
  }

  dimension: valor_total {
    type: number
    sql: ${TABLE}.valor_total ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: count_distinct_customer_id {
    type: count_distinct
    sql: ${customer_id} ;;
    #drill_fields: [customer_id, name, custom_name]
  }

  measure: count_distinc_imp_name {
    type: count_distinct
    sql: ${importador_nome} ;;
    #drill_fields: [importador_nome]
  }

  measure: count_distinc_cnpj {
    type: count_distinct
    sql: ${importador_cnpj} ;;
    #drill_fields: [id, name, custom_name]
  }

  measure: count_distinc_cnpj_8dig {
    type: count_distinct
    sql: ${importador_cnpj_8dig} ;;
    #drill_fields: [id, name, custom_name]
  }

  measure: sum_valor_total {
    type: sum
    sql: ${valor_total} ;;
  }
}
