view: exportadores_2020_gold {
  sql_table_name: exportadores_teus.exportadores_2020_gold ;;

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

  dimension: desc_ncm {
    type: string
    sql: ${TABLE}.desc_ncm ;;
  }

  dimension: mar_itemcarga_cdncms {
    type: string
    sql: ${TABLE}.mar_itemcarga_cdncms ;;
  }

  dimension: mvw_cnpj_exportador {
    type: string
    sql: ${TABLE}.mvw_cnpj_exportador ;;
  }

  dimension: mvw_cnpj_exportador_8dig {
    type: string
    sql: left(${TABLE}.mvw_cnpj_exportador,8) ;;
  }

  dimension: mvw_nome_exportador {
    type: string
    sql: ${TABLE}.mvw_nome_exportador ;;
  }

  dimension: mvw_nome_exportador_tratado {
    type: string
    sql: case when (${TABLE}.mvw_nome_exportador = '' or ${TABLE}.mvw_nome_exportador is null) then 'NÃO ENCONTRADO'
         else ${TABLE}.mvw_nome_exportador
         end ;;
  }

  dimension: qtd_registros {
    type: number
    sql: ${TABLE}.qtd_registros ;;
  }

  dimension: valor_ncm {
    type: number
    sql: ${TABLE}.valor ;;
  }

  dimension: valor_teus {
    type: number
    sql: ${TABLE}.valor_teus ;;
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
    sql: ${mvw_nome_exportador} ;;
    #drill_fields: [importador_nome]
  }

  measure: count_distinc_cnpj {
    type: count_distinct
    sql: ${mvw_cnpj_exportador} ;;
    #drill_fields: [id, name, custom_name]
  }

  measure: count_distinc_cnpj_8dig {
    type: count_distinct
    sql: ${mvw_cnpj_exportador_8dig} ;;
    #drill_fields: [id, name, custom_name]
  }

  measure: sum_valor_teus_total {
    type: sum
    sql: ${valor_teus} ;;
  }

  measure: sum_qtd_registros {
    type: sum
    sql: ${qtd_registros} ;;
  }

  set: details {
    fields: [customer_id, mvw_nome_exportador, mvw_cnpj_exportador]
  }

}
