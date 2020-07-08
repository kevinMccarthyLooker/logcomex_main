view: cs_dash_imp {
  derived_table: {
    #persist_for: "24 hours"
    #indexes: ["ETA"]
    sql: select db_maritimo.id AS "ID",
           db_maritimo.dtoperacao AS "ETA",
           db_cad_porto_origem.nome_real AS "PORTO ORIGEM",
           db_cad_porto_carga.nome_real AS "PORTO EMBARQUE",
           db_cad_porto_descarga.nome_real AS "PORTO DESCARGA",
           db_cad_porto_destino.nome_real AS "PORTO DESTINO",
           db_maritimo.cdconsignatario AS "CNPJ CONSIGNATARIO",
           db_cad_consig.nome_real AS "CONSIGNATARIO",
           db_maritimo_consig.nmconsignatario AS "CONSIGNATARIO FINAL",
           db_cad_notify.nome_real AS "NOTIFICADO",
           db_maritimo.vlcubagem AS "VOLUMES",
           db_cad_pais_origem.trade as "TRADE LINE",
           db_consignatarios.atv_principal_text AS "ATIVIDADE",
           db_maritimo.teus AS "TEUS",
           db_maritimo.vlpesobruto AS "PESO BRUTO",
           db_maritimo.tipoconhecimento as "EMBARQUE",
           db_maritimo.data_registro as "DATA_REGISTRO",
           db_maritimo.available_at as "AVAILABLE_AT"
      FROM db_maritimo
      LEFT JOIN db_maritimo AS db_maritimo_consig ON db_maritimo_consig.nrcemaster = LPAD(db_maritimo.nrcemercante::TEXT, 15, '0')
      LEFT JOIN vw_db_consignatarios AS db_consignatarios ON db_consignatarios.cnpj = db_maritimo_consig.cdconsignatario
      LEFT JOIN db_cad_consig ON db_maritimo.id_consig = db_cad_consig.id
      LEFT JOIN db_cad_notify ON db_maritimo.id_notify = db_cad_notify.id
      LEFT JOIN db_cad_pais as db_cad_pais_origem ON db_maritimo.id_pais_origem = db_cad_pais_origem.id
      LEFT JOIN db_cad_porto as db_cad_porto_origem ON db_maritimo.id_porto_origem = db_cad_porto_origem.id
      LEFT JOIN db_cad_porto as db_cad_porto_carga  ON db_maritimo.id_porto_carga = db_cad_porto_carga.id
      LEFT JOIN db_cad_porto as db_cad_porto_descarga ON db_maritimo.id_porto_descarga = db_cad_porto_descarga.id
      LEFT JOIN db_cad_porto as db_cad_porto_destino ON db_maritimo.id_porto_destino = db_cad_porto_destino.id
      LEFT JOIN db_cad_pais as db_cad_pais_destino ON db_maritimo_consig.id_pais_destino = db_cad_pais_destino.id
      WHERE db_maritimo.dtoperacao >= '2019-01-01 00:00:00'-- and db_maritimo.dtoperacao < '2020-03-16 00:00:00'
      AND db_maritimo.categoriacarga = 'I'
      AND db_maritimo.deleted_at IS NULL
      GROUP BY "ID","ETA","PORTO DESCARGA","PORTO DESTINO","PORTO EMBARQUE","PORTO ORIGEM", "CNPJ CONSIGNATARIO",
      "CONSIGNATARIO","CONSIGNATARIO FINAL","NOTIFICADO", "VOLUMES", "TRADE LINE", "ATIVIDADE","TEUS","PESO BRUTO", "EMBARQUE", "DATA_REGISTRO", "AVAILABLE_AT"
      --ORDER BY "TEUS" DESC
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }
  dimension: id {
    type: string
    sql: ${TABLE}."ID" ;;
  }

  dimension_group: eta {
    type: time
    timeframes: [
      date,
      month_num,
      month_name,
      year
    ]
    sql: ${TABLE}."ETA" ;;
    label: "PERÍODO"
  }

  dimension_group: data_registro {
    type: time
    timeframes: [
      date,
      month_num,
      month_name,
      year
    ]
    sql: ${TABLE}."DATA_REGISTRO" ;;
  }

  dimension_group: available_at {
    type: time
    timeframes: [
      date,
      month_num,
      month_name,
      year
    ]
    sql: ${TABLE}."AVAILABLE_AT" ;;
  }

  dimension: atv_principal_text {
    type: string
    label: "ATIVIDADE"
    sql: ${TABLE}."ATIVIDADE" ;;
  }

  dimension: trade {
    type: string
    label: "TRADE LINE"
    sql: ${TABLE}."TRADE LINE" ;;
  }


  dimension: porto_origem {
    type: string
    label: "PORTO ORIGEM"
    sql: ${TABLE}."PORTO ORIGEM" ;;
  }

  dimension: porto_embarque {
    type: string
    label: "PORTO EMBARQUE"
    sql: ${TABLE}."PORTO EMBARQUE" ;;
  }

  dimension: porto_descarga {
    type: string
    label: "PORTO DESCARGA"
    sql: ${TABLE}."PORTO DESCARGA" ;;
  }

  dimension: porto_destino {
    type: string
    label: "PORTO DESTINO"
    sql: ${TABLE}."PORTO DESTINO" ;;
  }

  dimension: cnpj_consignatario {
    type: string
    label: "CNPJ CONSIGNATARIO"
    sql: ${TABLE}."CNPJ CONSIGNATARIO" ;;
  }

  dimension: consignatario {
    type: string
    sql: ${TABLE}."CONSIGNATARIO" ;;
    label: "AGENTE DE CARGA"
  }

  dimension: consignatario_final {
    type: string
    label: "CONSIGNATARIO FINAL"
    sql: ${TABLE}."CONSIGNATARIO FINAL" ;;
  }

  dimension: notificado {
    type: string
    sql: ${TABLE}."NOTIFICADO" ;;
  }

  dimension: embarque {
    type: string
    sql: ${TABLE}."EMBARQUE" ;;
    label: "EMBARQUE"
  }

  measure: teus {
    type: sum
    sql: ${TABLE}."TEUS" ;;
    label: "TEUS"
  }

   measure: volumes {
    type: sum
    sql: ${TABLE}."VOLUMES" ;;
    label: "VOLUME"
  }

  measure: vlpesobruto {
    type: sum
    sql: ${TABLE}."PESO BRUTO" ;;
    label: "PESO BRUTO"
  }

  set: detail {
    fields: [
      id,
      porto_origem,
      porto_embarque,
      porto_descarga,
      porto_destino,
      cnpj_consignatario,
      consignatario,
      consignatario_final,
      notificado,
      trade,
      volumes
    ]
  }
}
