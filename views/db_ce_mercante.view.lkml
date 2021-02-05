view: db_ce_mercante {
  sql_table_name: public.db_ce_mercante ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: aa {
    type: number
    sql: ${TABLE}."aa" ;;
  }

  dimension: aa_man {
    type: number
    sql: ${TABLE}."aa_man" ;;
  }

  dimension: certificado_id_v2 {
    type: number
    value_format_name: id
    sql: ${TABLE}."certificado_id_v2" ;;
  }

  dimension: cnpj_consig {
    type: string
    sql: ${TABLE}."cnpj_consig" ;;
  }

  dimension: conta_origem {
    type: string
    sql: ${TABLE}."conta_origem" ;;
  }

  dimension: customer_id {
    type: number
    sql: ${TABLE}."customer_id" ;;
  }

  dimension_group: data_operacao {
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
    sql: ${TABLE}."data_operacao" ;;
  }

  dimension_group: data_registro {
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
    sql: ${TABLE}."data_registro" ;;
  }

  dimension: destino {
    type: string
    sql: ${TABLE}."destino" ;;
  }

  dimension_group: dt_lista_master {
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
    sql: ${TABLE}."dt_lista_master" ;;
  }

  dimension_group: dt_processamento {
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
    sql: ${TABLE}."dt_processamento" ;;
  }

  dimension_group: dt_processamento_ini {
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
    sql: ${TABLE}."dt_processamento_ini" ;;
  }

  dimension_group: dt_puc {
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
    sql: ${TABLE}."dt_puc" ;;
  }

  dimension_group: dt_siscarga {
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
    sql: ${TABLE}."dt_siscarga" ;;
  }

  dimension_group: dt_siscarga_basico {
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
    sql: ${TABLE}."dt_siscarga_basico" ;;
  }

  dimension_group: dt_siscarga_error {
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
    sql: ${TABLE}."dt_siscarga_error" ;;
  }

  dimension_group: dt_siscarga_pdf {
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
    sql: ${TABLE}."dt_siscarga_pdf" ;;
  }

  dimension_group: dt_siscarga_update {
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
    sql: ${TABLE}."dt_siscarga_update" ;;
  }

  dimension_group: dt_vinculacao_cert {
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
    sql: ${TABLE}."dt_vinculacao_cert" ;;
  }

  dimension: error_message {
    type: string
    sql: ${TABLE}."error_message" ;;
  }

  dimension: id_cert_siscarga_v2 {
    type: number
    sql: ${TABLE}."id_cert_siscarga_v2" ;;
  }

  dimension: ide {
    type: number
    sql: ${TABLE}."ide" ;;
  }

  dimension: idu {
    type: number
    sql: ${TABLE}."idu" ;;
  }

  dimension: isnotradar {
    type: yesno
    sql: ${TABLE}."isnotradar" ;;
  }

  dimension: navio {
    type: string
    sql: ${TABLE}."navio" ;;
  }

  dimension: numero_bl {
    type: string
    sql: ${TABLE}."numero_bl" ;;
  }

  dimension: numero_ce {
    type: number
    sql: ${TABLE}."numero_ce" ;;
  }

  dimension: numero_manifesto {
    type: string
    sql: ${TABLE}."numero_manifesto" ;;
  }

  dimension: origem {
    type: string
    sql: ${TABLE}."origem" ;;
  }

  dimension: origem_dados {
    type: string
    sql: ${TABLE}."origem_dados" ;;
  }

  dimension: seq {
    type: number
    sql: ${TABLE}."seq" ;;
  }

  dimension: seq_man {
    type: number
    sql: ${TABLE}."seq_man" ;;
  }

  dimension: siscarga_consulta {
    type: string
    sql: ${TABLE}."siscarga_consulta" ;;
  }

  dimension: tipo_trafego {
    type:  string
    sql:  CASE  WHEN (right(left(lpad(numero_ce :: text, 15, '0'),6),2) = '07') THEN 'Exportação'
                WHEN (right(left(lpad(numero_ce :: text, 15, '0'),6),2) = '05') THEN 'Importação'
                WHEN (right(left(lpad(numero_ce :: text, 15, '0'),6),2) = '03') THEN 'Cabotagem'
                WHEN (right(left(lpad(numero_ce :: text, 15, '0'),6),2) = '09') THEN 'Passagem'
                else 'Outros' end
    ;;
  }

  dimension: processado {
    type: yesno
    sql:  CASE  WHEN (${dt_processamento_date} is not null) THEN true
                else false end
    ;;
  }

  dimension: processado_hoje {
    type: yesno
    sql:  case when ${TABLE}."dt_processamento_date" >= current_date then true else false end;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
