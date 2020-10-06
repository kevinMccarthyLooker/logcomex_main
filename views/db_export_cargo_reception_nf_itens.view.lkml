view: db_export_cargo_reception_nf_itens {
  sql_table_name: public.db_export_cargo_reception_nf_itens ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: cdncm_compl {
    type: number
    sql: ${TABLE}."cdncm_compl" ;;
  }

  dimension: cfop {
    type: number
    sql: ${TABLE}."cfop" ;;
  }

  dimension: cod_produto {
    type: string
    sql: ${TABLE}."cod_produto" ;;
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

  dimension: descr_ncm {
    type: string
    sql: ${TABLE}."descr_ncm" ;;
  }

  dimension: descricao {
    type: string
    sql: ${TABLE}."descricao" ;;
  }

  dimension: id_exp_cargo_details {
    type: number
    sql: ${TABLE}."id_exp_cargo_details" ;;
  }

  dimension: id_nf {
    type: number
    sql: ${TABLE}."id_nf" ;;
  }

  dimension: num_item {
    type: number
    sql: ${TABLE}."num_item" ;;
  }

  dimension: qtd_estatistica {
    type: number
    sql: ${TABLE}."qtd_estatistica" ;;
  }

  dimension: val_tot_bruto {
    type: number
    sql: ${TABLE}."val_tot_bruto" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
