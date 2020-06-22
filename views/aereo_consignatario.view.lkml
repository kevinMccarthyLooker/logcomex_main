view: aereo_consignatario {
  sql_table_name: public.aereo_consignatario ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: adjust {
    type: number
    sql: ${TABLE}."adjust" ;;
  }

  dimension: ajustado {
    type: string
    sql: ${TABLE}."ajustado" ;;
  }

  dimension: cnpj {
    type: string
    sql: ${TABLE}."cnpj" ;;
  }

  dimension: company_id {
    type: number
    sql: ${TABLE}."company_id" ;;
  }

  dimension: consignatario {
    type: string
    sql: ${TABLE}."consignatario" ;;
  }

  dimension: normalizado {
    type: string
    sql: ${TABLE}."normalizado" ;;
  }

  dimension: original_name {
    type: string
    sql: ${TABLE}."original_name" ;;
  }

  dimension: sugerido {
    type: string
    sql: ${TABLE}."sugerido" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, original_name]
  }
}
