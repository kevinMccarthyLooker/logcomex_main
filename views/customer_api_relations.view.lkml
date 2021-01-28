view: customer_api_relations {
  sql_table_name: public.customer_api_relations ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: id_customer {
    type: number
    sql: ${TABLE}."id_customer" ;;
  }

  dimension: id_hubspot_customer {
    type: number
    sql: ${TABLE}."id_hubspot_customer" ;;
  }

  dimension: id_movidesk {
    type: string
    sql: ${TABLE}."id_movidesk" ;;
  }

  dimension: hub_trigger_register_cs {
    type: string
    sql: ${TABLE}."hub_trigger_register_cs" ;;
  }

  dimension: id_omie_customer {
    type: number
    sql: ${TABLE}."id_omie_customer" ;;
  }

  dimension_group: deleted {
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
    sql: ${TABLE}."deleted_at" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
