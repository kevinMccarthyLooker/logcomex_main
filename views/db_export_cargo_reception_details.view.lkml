view: db_export_cargo_reception_details {
  sql_table_name: public.db_export_cargo_reception_details ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: cod_ra {
    type: number
    sql: ${TABLE}."cod_ra" ;;
  }

  dimension: cod_urf {
    type: number
    sql: ${TABLE}."cod_urf" ;;
  }

  dimension: condutor_codigo {
    type: string
    sql: ${TABLE}."condutor_codigo" ;;
  }

  dimension: condutor_nome {
    type: string
    sql: ${TABLE}."condutor_nome" ;;
  }

  dimension: condutorbrasileiro {
    type: yesno
    sql: ${TABLE}."condutorbrasileiro" ;;
  }

  dimension: conhecimento {
    type: string
    sql: ${TABLE}."conhecimento" ;;
  }

  dimension: conteiner_dat_confere {
    type: string
    sql: ${TABLE}."conteiner_dat_confere" ;;
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

  dimension_group: dataregistro {
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
    sql: ${TABLE}."dataregistro" ;;
  }

  dimension: desc_ra {
    type: string
    sql: ${TABLE}."desc_ra" ;;
  }

  dimension: desc_tp_doc_manifest {
    type: string
    sql: ${TABLE}."desc_tp_doc_manifest" ;;
  }

  dimension: desc_urf {
    type: string
    sql: ${TABLE}."desc_urf" ;;
  }

  dimension: descr_avaria {
    type: string
    sql: ${TABLE}."descr_avaria" ;;
  }

  dimension: descr_divergencia {
    type: string
    sql: ${TABLE}."descr_divergencia" ;;
  }

  dimension_group: dt_emissao {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."dt_emissao" ;;
  }

  dimension: elem_segur_dat_confere {
    type: string
    sql: ${TABLE}."elem_segur_dat_confere" ;;
  }

  dimension: entregador_cnpj {
    type: string
    sql: ${TABLE}."entregador_cnpj" ;;
  }

  dimension: entregador_nome {
    type: string
    sql: ${TABLE}."entregador_nome" ;;
  }

  dimension_group: filter {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."filter_date" ;;
  }

  dimension: has_conteiner_nota {
    type: yesno
    sql: ${TABLE}."has_conteiner_nota" ;;
  }

  dimension: ind_escaneamento {
    type: string
    sql: ${TABLE}."ind_escaneamento" ;;
  }

  dimension: ind_transito_simpl {
    type: yesno
    sql: ${TABLE}."ind_transito_simpl" ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}."latitude" ;;
  }

  dimension: local_armazenamento {
    type: string
    sql: ${TABLE}."local_armazenamento" ;;
  }

  dimension: local_referencia {
    type: string
    sql: ${TABLE}."local_referencia" ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}."longitude" ;;
  }

  dimension: motivo_nao_pesagem {
    type: string
    sql: ${TABLE}."motivo_nao_pesagem" ;;
  }

  dimension: nacionalidaderecebedor {
    type: string
    sql: ${TABLE}."nacionalidaderecebedor" ;;
  }

  dimension: nrcemercante {
    type: number
    sql: ${TABLE}."nrcemercante" ;;
  }

  dimension: num_doc_manifest {
    type: string
    sql: ${TABLE}."num_doc_manifest" ;;
  }

  dimension: observacoes {
    type: string
    sql: ${TABLE}."observacoes" ;;
  }

  dimension: peso_aferido {
    type: number
    sql: ${TABLE}."peso_aferido" ;;
  }

  dimension: pu_export_cargo_reception_id {
    type: number
    sql: ${TABLE}."pu_export_cargo_reception_id" ;;
  }

  dimension: recebedor_cnpj {
    type: string
    sql: ${TABLE}."recebedor_cnpj" ;;
  }

  dimension: recebedor_nome {
    type: string
    sql: ${TABLE}."recebedor_nome" ;;
  }

  dimension: recepcao_mau_funcionamento {
    type: string
    sql: ${TABLE}."recepcao_mau_funcionamento" ;;
  }

  dimension: responsavel_cnpj {
    type: string
    sql: ${TABLE}."responsavel_cnpj" ;;
  }

  dimension: responsavel_nome {
    type: string
    sql: ${TABLE}."responsavel_nome" ;;
  }

  dimension: sequential_number {
    type: number
    sql: ${TABLE}."sequential_number" ;;
  }

  dimension: tipo {
    type: number
    sql: ${TABLE}."tipo" ;;
  }

  dimension: tipodocumentooperacao {
    type: string
    sql: ${TABLE}."tipodocumentooperacao" ;;
  }

  dimension: tipooperacaocarga {
    type: string
    sql: ${TABLE}."tipooperacaocarga" ;;
  }

  dimension: tp_doc_manifest {
    type: number
    sql: ${TABLE}."tp_doc_manifest" ;;
  }

  dimension: transp_condutor_cpf {
    type: string
    sql: ${TABLE}."transp_condutor_cpf" ;;
  }

  dimension: transp_condutor_nome {
    type: string
    sql: ${TABLE}."transp_condutor_nome" ;;
  }

  dimension: transportador_cnpj {
    type: string
    sql: ${TABLE}."transportador_cnpj" ;;
  }

  dimension: transportador_nome {
    type: string
    sql: ${TABLE}."transportador_nome" ;;
  }

  dimension: unid_transp_dat_confere {
    type: string
    sql: ${TABLE}."unid_transp_dat_confere" ;;
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

  dimension: veic_dat_condutor_confere {
    type: string
    sql: ${TABLE}."veic_dat_condutor_confere" ;;
  }

  dimension: veiculo_lacres {
    type: string
    sql: ${TABLE}."veiculo_lacres" ;;
  }

  dimension: veiculo_placa {
    type: string
    sql: ${TABLE}."veiculo_placa" ;;
  }

  dimension: viatransporte {
    type: string
    sql: ${TABLE}."viatransporte" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }

  measure: count_distinct_ce {
    type: count_distinct
    sql: ${TABLE}."nrcemercante" ;;
    drill_fields: [id]
  }

}
