view: consumo_automacao {
  sql_table_name: logbot.consumo_automacao ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: cert_id {
    type: string
    sql: ${TABLE}.cert_id ;;
  }

  dimension: cert_propriedade {
    type: string
    sql: ${TABLE}.cert_propriedade ;;
  }

  dimension: certs_id {
    type: number
    sql: ${TABLE}.certs_id ;;
  }

  dimension: certs_ide {
    type: number
    value_format_name: id
    sql: ${TABLE}.certs_ide ;;
  }

  dimension_group: created {
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
    sql: ${TABLE}.created_at ;;
  }

  dimension: di {
    type: string
    sql: ${TABLE}.di ;;
  }

  dimension: razao_social_e {
    type: string
    sql: ${TABLE}.razao_social_e ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension_group: updated {
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
    sql: ${TABLE}.updated_at ;;
  }

  dimension_group: used {
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
    sql: ${TABLE}.used_at ;;
  }

  dimension: used_formatted {
    #group_label: "Created" label: "Date"
    sql: ${used_date} ;;
    html: {{ rendered_value | date: "%d/%m/%Y" }};;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
