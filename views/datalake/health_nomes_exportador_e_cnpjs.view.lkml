view: health_nomes_exportador_e_cnpjs {
  derived_table: {
    sql: SELECT * FROM big_data_expo.health_check_nomes_e_cnpj_exportador
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }


  dimension: mvw_expo_ano_mes {
    type: string
    sql: ${TABLE}.mvw_expo_ano_mes ;;
  }

  dimension: mvw_expo_cnpj_exportador {
    type: string
    sql: ${TABLE}.mvw_expo_cnpj_exportador ;;
  }

  dimension: mvw_expo_nome_exportador {
    type: string
    sql: ${TABLE}.mvw_expo_nome_exportador ;;
  }

  dimension: siscarga_embarcador {
    type: string
    sql: ${TABLE}.siscarga_embarcador ;;
  }

  dimension: siscarga_embarcador_nome {
    type: string
    sql: ${TABLE}.siscarga_embarcador_nome ;;
  }

  dimension: siscarga_embarcador_cnpj {
    type: string
    sql: ${TABLE}.siscarga_embarcador_cnpj ;;
  }

  dimension: cad_shipper_codigo {
    type: string
    sql: ${TABLE}.cad_shipper_codigo ;;
  }

  dimension: cad_shipper_nome_original {
    type: string
    sql: ${TABLE}.cad_shipper_nome_original ;;
  }

  dimension: cad_shipper_nome_real {
    type: string
    sql: ${TABLE}.cad_shipper_nome_real ;;
  }

  dimension_group: cad_updated_at {
    type: time
    sql: ${TABLE}.cad_updated_at ;;
  }

  dimension: mar_dtoperacao {
    type: date
    sql: ${TABLE}.mar_dtoperacao ;;
  }

  dimension: mar_nrcemercante {
    type: number
    sql: ${TABLE}.mar_nrcemercante ;;
  }

  dimension: mar_txshipper {
    type: string
    sql: ${TABLE}.mar_txshipper ;;
  }

  dimension: mar_cdshipper {
    type: string
    sql: ${TABLE}.mar_cdshipper ;;
  }

  dimension_group: mar_updated_at {
    type: time
    sql: ${TABLE}.mar_updated_at ;;
  }

  dimension_group: mar_checked_at {
    type: time
    sql: ${TABLE}.mar_checked_at ;;
  }

  set: detail {
    fields: [
      mvw_expo_ano_mes,
      mvw_expo_cnpj_exportador,
      mvw_expo_nome_exportador,
      siscarga_embarcador,
      siscarga_embarcador_nome,
      siscarga_embarcador_cnpj,
      cad_shipper_codigo,
      cad_shipper_nome_original,
      cad_shipper_nome_real,
      cad_updated_at_time,
      mar_dtoperacao,
      mar_nrcemercante,
      mar_txshipper,
      mar_cdshipper,
      mar_updated_at_time,
      mar_checked_at_time
    ]
  }
}
