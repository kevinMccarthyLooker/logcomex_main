view: customer_info {
  sql_table_name: public.customer_info ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    hidden:  yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: customer_id {
    type: number
    hidden:  yes
    sql: ${TABLE}."customer_id" ;;
  }

  dimension: total_valor_pag {
    type: number
    sql: ${TABLE}."total_valor_pag" ;;
    value_format_name: usd
  }

  dimension: ramo_atividade {
    type: string
    sql: ${TABLE}."branches_activity" ;;
  }

  dimension_group: hub_atualizado_em {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."hub_date_updated_at" ;;
  }

  dimension: connector_tableau {
    type: yesno
    sql: ${TABLE}."connector_tableau" ;;
  }

  dimension: connector_powerbi {
    type: yesno
    sql: ${TABLE}."connector_powerbi" ;;
  }

  dimension: api_automation {
    type: yesno
    sql: ${TABLE}."api_automation" ;;
  }

}
