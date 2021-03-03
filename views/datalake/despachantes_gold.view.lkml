view: despachantes_gold {
  sql_table_name: despachantes_valor.despachantes_gold ;;

  dimension: branches_activity {
    type: string
    sql: ${TABLE}.branches_activity ;;
  }

  dimension: cnpj {
    type: string
    sql: ${TABLE}.cnpj ;;
  }

  dimension: cnpj_comp {
    type: string
    sql: ${TABLE}.cnpj_comp ;;
  }

  dimension: comissaria {
    type: string
    sql: ${TABLE}.comissaria ;;
  }

  dimension: cpf_responsavel {
    type: string
    sql: ${TABLE}.cpf_responsavel ;;
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

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: responsavel {
    type: string
    sql: ${TABLE}.responsavel ;;
  }

  dimension: responsavel_tratado {
    type: string
    sql: case when (${TABLE}.responsavel = '' or ${TABLE}.responsavel is null) then 'NÃO ENCONTRADO'
         else ${TABLE}.responsavel
         end ;;
  }

  dimension: total_dolares {
    type: number
    sql: ${TABLE}.total_dolares ;;
  }

  dimension: total_reais {
    type: number
    sql: ${TABLE}.total_reais ;;
  }

  measure: count_distinct_customer_id {
    type: count_distinct
    sql: ${customer_id} ;;
    drill_fields: [customer_id,name,cnpj]
  }

  measure: count_distinc_responsavel {
    type: count_distinct
    sql: ${responsavel} ;;
    #drill_fields: [importador_nome]
  }

  measure: sum_total_reais{
    type: sum
    sql: ${total_reais} ;;
  }

  measure: sum_total_dolares{
    type: sum
    sql: ${total_dolares} ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
