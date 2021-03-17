view: big_data_expo_real_exportador {
  derived_table: {
    sql: SELECT * FROM big_data_expo_v4.big_data_expo_real_exportador
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: nf_cpf_cnpj_emissor {
    type: string
    sql: ${TABLE}.nf_cpf_cnpj_emissor ;;
  }

  dimension: nf_nome_emissor {
    type: string
    sql: ${TABLE}.nf_nome_emissor ;;
  }

  dimension: tipo_carga {
    type: string
    sql: ${TABLE}.tipo_carga ;;
  }

  dimension_group: data_embarque {
    type: time
    sql: ${TABLE}.data_embarque ;;
  }

  dimension: embarque {
    type: string
    sql: ${TABLE}.embarque ;;
  }

  dimension: cnpj_exportador {
    type: string
    sql: ${TABLE}.cnpj_exportador ;;
  }

  dimension: nome_exportador {
    type: string
    sql: ${TABLE}.nome_exportador ;;
  }

  dimension: hs_code {
    type: string
    sql: ${TABLE}.hs_code ;;
  }

  dimension: desc_hscode {
    type: string
    sql: ${TABLE}.desc_hscode ;;
  }

  dimension: porto_embarque {
    type: string
    sql: ${TABLE}.porto_embarque ;;
  }

  dimension: porto_origem {
    type: string
    sql: ${TABLE}.porto_origem ;;
  }

  dimension: porto_destino {
    type: string
    sql: ${TABLE}.porto_destino ;;
  }

  dimension: pais_de_destino_final {
    type: string
    sql: ${TABLE}.pais_de_destino_final ;;
  }

  set: detail {
    fields: [
      id,
      nf_cpf_cnpj_emissor,
      nf_nome_emissor,
      tipo_carga,
      data_embarque_time,
      embarque,
      cnpj_exportador,
      nome_exportador,
      hs_code,
      desc_hscode,
      porto_embarque,
      porto_origem,
      porto_destino,
      pais_de_destino_final
    ]
  }

  ####################### --------------> Measures e Dimensions Criadas / Alteradas <-------------------- #########################

  dimension: nome_exportador_filtro {
    type: string
    sql: ${TABLE}.nome_exportador ;;
  }

  dimension: nf_nome_emissor_2 {
    type: string
    sql: ${TABLE}.nf_nome_emissor ;;
  }


  measure: count_mar_id {
    type: count_distinct
    sql: ${TABLE}.id ;;
  }
}
