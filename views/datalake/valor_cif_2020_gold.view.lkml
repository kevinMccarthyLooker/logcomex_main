view: valor_cif_2020_gold {
  sql_table_name: importadores_cif.valor_cif_2020_gold ;;

  dimension: cdncm_compl {
    type: string
    sql: ${TABLE}.cdncm_compl ;;
  }

  dimension: desc_ncm {
    type: string
    sql: ${TABLE}.desc_ncm ;;
  }

  dimension: seg_cdncm_compl {
    type: string
    sql: ${TABLE}.seg_cdncm_compl ;;
  }

  dimension: segmento_logcomex {
    type: string
    sql: ${TABLE}.segmento_logcomex ;;
  }

  dimension: branches_activity {
    type: string
    sql: ${TABLE}.branches_activity ;;
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

  dimension: qtd_registros {
    type: number
    sql: ${TABLE}.qtd_registros ;;
  }

  dimension: valor_max_ncm {
    type: number
    sql: ${TABLE}.valor_max_ncm ;;
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
    drill_fields: [details*]
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

  measure: sum_qtd_registros {
    type: sum
    sql: ${qtd_registros} ;;
  }

  measure: sum_valor_ncm {
    type: sum
    sql: ${valor_max_ncm} ;;
  }

  set: details {
    fields: [customer_id, importador_nome, importador_cnpj]
  }
}
