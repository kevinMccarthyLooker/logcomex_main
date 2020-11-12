view: db_export_cargo_reception_nf {
  sql_table_name: public.db_export_cargo_reception_nf ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: anomes_nf {
    type: number
    sql: ${TABLE}."anomes_nf" ;;
  }

  dimension: cpf_cnpj_destinatario {
    type: string
    sql: ${TABLE}."cpf_cnpj_destinatario" ;;
  }

  dimension: cpf_cnpj_emissor {
    type: string
    sql: ${TABLE}."cpf_cnpj_emissor" ;;
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
    sql: ${TABLE}."created_at" ;;
  }

  dimension_group: data_cancelamento {
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
    sql: ${TABLE}."data_cancelamento" ;;
  }

  dimension_group: data_emissao {
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
    sql: ${TABLE}."data_emissao" ;;
  }

  dimension: id_exp_cargo_details {
    type: number
    sql: ${TABLE}."id_exp_cargo_details" ;;
  }

  dimension: id_nf {
    type: number
    sql: ${TABLE}."id_nf" ;;
  }

  dimension: modelo {
    type: string
    sql: ${TABLE}."modelo" ;;
  }

  dimension: nome_destinatario {
    type: string
    sql: ${TABLE}."nome_destinatario" ;;
  }

  dimension: nome_emissor {
    type: string
    sql: ${TABLE}."nome_emissor" ;;
  }

  dimension: num_nf {
    type: string
    sql: ${TABLE}."num_nf" ;;
  }

  dimension: num_serie {
    type: string
    sql: ${TABLE}."num_serie" ;;
  }

  dimension: sigla_uf_emitente {
    type: string
    sql: ${TABLE}."sigla_uf_emitente" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
