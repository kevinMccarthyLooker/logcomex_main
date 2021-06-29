view: search_leads_gold {
  sql_table_name: comercial_leads.search_leads_gold ;;

  dimension: cnpj_norm {
    type: string
    sql: ${TABLE}.cnpj_norm ;;
  }

  dimension: lead {
    type: yesno
    sql: case when ${TABLE}.cnpj_norm is null then false
         else true
         end;;
  }

  dimension: lead_match {
    type: yesno
    sql: ${lead} ;;
    html: {% if value == 'Yes' %}
            <font color="green">{{ lead }}</font>
          {% else %}
            <font color="red">{{ lead }}</font>
          {% endif %};;
  }

  dimension: company_id {
    type: string
    sql: ${TABLE}.company_id ;;
  }

  dimension: deal_id {
    type: string
    sql: ${TABLE}.deal_id ;;
  }

  dimension: deal_name {
    type: string
    sql: ${TABLE}.deal_name ;;
  }

  dimension: deal_stage {
    type: string
    sql: ${TABLE}.deal_stage ;;
  }

  dimension: importador_cnpj {
    type: string
    sql: ${TABLE}.importador_cnpj ;;
  }

  dimension: importador_cnpj_8dig {
    type: string
    sql: left(${TABLE}.importador_cnpj,10) ;;  #utiliza 10 caracteres, pois tem os pontos da mascara do cnpj
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

  dimension: name_lead {
    type: string
    sql: ${TABLE}.name_lead ;;
  }

  dimension: qtd_registros {
    type: number
    sql: ${TABLE}.qtd_registros ;;
  }

  dimension: valor {
    type: number
    sql: ${TABLE}.valor ;;
  }

  dimension: customer_name {
    type: string
    sql: ${TABLE}.customer_name ;;
  }

  dimension: cnpj_customer {
    type: string
    sql: ${TABLE}.cnpj_customer ;;
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

  dimension: importador_classificacao {
    type: string
    sql: case
         when ${cliente} is true and ${lead} is false then '2 - Customer'
         when ${cliente} is false and ${lead} is true then '1 - Lead'
         when ${cliente} is false and ${lead} is false then '0 - Free'
         when ${cliente} is true and ${lead} is true then '2 - Customer'
         else 'Error'
         end;;
  }

  dimension: branches_activity {
    type: string
    sql: ${TABLE}.branches_activity ;;
  }

  measure: count_distinc_cnpj {
    type: count_distinct
    sql: ${importador_cnpj} ;;
    #drill_fields: [id, name, custom_name]
  }

  measure: count_distinc_customer_id {
    type: count_distinct
    sql: ${customer_id} ;;
    #drill_fields: [id, name, custom_name]
  }

  measure: count_distinc_cnpj_leads {
    type: count_distinct
    sql: ${cnpj_norm} ;;
    #drill_fields: [id, name, custom_name]
  }

  measure: count_distinc_cnpj_8dig {
    type: count_distinct
    sql: ${importador_cnpj_8dig} ;;
    #drill_fields: [id, name, custom_name]
  }

  measure: sum_valor_cif {
    type: sum
    sql: ${valor} ;;
  }

  measure: sum_qtd_registros {
    type: sum
    sql: ${qtd_registros} ;;
  }

  measure: count {
    type: count
    drill_fields: [deal_name]
  }
}
