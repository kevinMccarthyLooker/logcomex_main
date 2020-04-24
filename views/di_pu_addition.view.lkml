view: di_pu_addition {
  sql_table_name: public.di_pu_addition ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: addition_number {
    type: string
    sql: ${TABLE}."addition_number" ;;
  }

  dimension: cod_ncm {
    type: number
    sql: ${TABLE}."cod_ncm" ;;
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

  dimension: desc_aplicacao {
    type: string
    sql: ${TABLE}."desc_aplicacao" ;;
  }

  dimension: desc_mercadoria {
    type: string
    sql: ${TABLE}."desc_mercadoria" ;;
  }

  dimension: desc_relac_exp_fabr {
    type: string
    sql: ${TABLE}."desc_relac_exp_fabr" ;;
  }

  dimension: desc_vinc_imp_exp {
    type: string
    sql: ${TABLE}."desc_vinc_imp_exp" ;;
  }

  dimension: destq_ncm {
    type: string
    sql: ${TABLE}."destq_ncm" ;;
  }

  dimension: di_control_pu_addition_id {
    type: number
    sql: ${TABLE}."di_control_pu_addition_id" ;;
  }

  dimension: di_number {
    type: number
    sql: ${TABLE}."di_number" ;;
  }

  dimension: endereco_fabric {
    type: string
    sql: ${TABLE}."endereco_fabric" ;;
  }

  dimension: endereco_shipper {
    type: string
    sql: ${TABLE}."endereco_shipper" ;;
  }

  dimension: error_message {
    type: string
    sql: ${TABLE}."error_message" ;;
  }

  dimension: id_pais_aquis {
    type: number
    sql: ${TABLE}."id_pais_aquis" ;;
  }

  dimension: id_pais_origem {
    type: number
    sql: ${TABLE}."id_pais_origem" ;;
  }

  dimension: id_pais_procedencia {
    type: number
    sql: ${TABLE}."id_pais_procedencia" ;;
  }

  dimension: ident_doc_vinc {
    type: string
    sql: ${TABLE}."ident_doc_vinc" ;;
  }

  dimension: incoterm {
    type: string
    sql: ${TABLE}."incoterm" ;;
  }

  dimension: local_condicao {
    type: string
    sql: ${TABLE}."local_condicao" ;;
  }

  dimension: metodo_valoracao {
    type: string
    sql: ${TABLE}."metodo_valoracao" ;;
  }

  dimension: moeda {
    type: string
    sql: ${TABLE}."moeda" ;;
  }

  dimension: moeda_condicao {
    type: string
    sql: ${TABLE}."moeda_condicao" ;;
  }

  dimension: moeda_frete_carga {
    type: string
    sql: ${TABLE}."moeda_frete_carga" ;;
  }

  dimension: moeda_segur_carga {
    type: string
    sql: ${TABLE}."moeda_segur_carga" ;;
  }

  dimension: nm_fabric {
    type: string
    sql: ${TABLE}."nm_fabric" ;;
  }

  dimension: nm_pais_aquis {
    type: string
    sql: ${TABLE}."nm_pais_aquis" ;;
  }

  dimension: nm_pais_origem {
    type: string
    sql: ${TABLE}."nm_pais_origem" ;;
  }

  dimension: nm_shipper {
    type: string
    sql: ${TABLE}."nm_shipper" ;;
  }

  dimension: pais_procedencia {
    type: string
    sql: ${TABLE}."pais_procedencia" ;;
  }

  dimension: peso_liquido {
    type: number
    sql: ${TABLE}."peso_liquido" ;;
  }

  dimension: qtd_med_estat {
    type: number
    sql: ${TABLE}."qtd_med_estat" ;;
  }

  dimension: tipo_doc_vinc {
    type: string
    sql: ${TABLE}."tipo_doc_vinc" ;;
  }

  dimension: tp_multimodal {
    type: string
    sql: ${TABLE}."tp_multimodal" ;;
  }

  dimension: unid_med_estat {
    type: string
    sql: ${TABLE}."unid_med_estat" ;;
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
    sql: ${TABLE}."updated_at" ;;
  }

  dimension: urf_entrada {
    type: string
    sql: ${TABLE}."urf_entrada" ;;
  }

  dimension: val_frete {
    type: number
    sql: ${TABLE}."val_frete" ;;
  }

  dimension: val_frete_carga_moeda {
    type: number
    sql: ${TABLE}."val_frete_carga_moeda" ;;
  }

  dimension: val_frete_carga_real {
    type: number
    sql: ${TABLE}."val_frete_carga_real" ;;
  }

  dimension: val_multa_rec {
    type: number
    sql: ${TABLE}."val_multa_rec" ;;
  }

  dimension: val_multa_rec_ajust {
    type: number
    sql: ${TABLE}."val_multa_rec_ajust" ;;
  }

  dimension: val_segur_carga_moeda {
    type: number
    sql: ${TABLE}."val_segur_carga_moeda" ;;
  }

  dimension: val_segur_carga_real {
    type: number
    sql: ${TABLE}."val_segur_carga_real" ;;
  }

  dimension: val_seguro {
    type: number
    sql: ${TABLE}."val_seguro" ;;
  }

  dimension: valor_moeda_cond {
    type: number
    sql: ${TABLE}."valor_moeda_cond" ;;
  }

  dimension: valor_real_cond {
    type: number
    sql: ${TABLE}."valor_real_cond" ;;
  }

  dimension: via_transp {
    type: string
    sql: ${TABLE}."via_transp" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
