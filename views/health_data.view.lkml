view: health_data {
  derived_table: {
    sql: select
       d.col,
       count(*) filter (where value is null) as null_count,
       count(*) filter (where value is not null) as not_null_count,
       count(*) filter (where value = '') as empty
from (
     select
     db_maritimo.data_registro AS " DATA PROCESSADO",
     db_maritimo.tipo_carga AS "TIPO CARGA",
     db_maritimo.dtemissaoce AS "ETS",
     db_maritimo.dtoperacao AS "ETA",
     db_ce_history.dt_entregue AS "SAÍDA PORTO",
     db_maritimo.tipoconhecimento AS "EMBARQUE",
     db_maritimo.nmembarcacao AS "NAVIO",
     db_maritimo.nrviagem AS "VIAGEM",
     db_maritimo.nmpaisprocedencia AS "PAIS DE PROCEDÊNCIA",
     db_cad_pais_origem.nome_real AS "PAIS DE ORIGEM",
     db_cad_porto_origem.nome_real AS "PORTO ORIGEM",
     db_cad_porto_carga.nome_real AS "PORTO EMBARQUE",
     db_cad_porto_descarga.nome_real AS "PORTO DESCARGA",
     db_cad_terminal_descarga.nome_real AS "TERMINAL DESCARGA",
     db_cad_porto_destino.nome_real AS "PORTO DESTINO",
     db_consignatarios.uf AS "UF DESTINO",
     db_maritimo.cdconsignatario AS "CNPJ CONSIGNATARIO",
     db_cad_consig.nome_real AS "CONSIGNATARIO",
     db_consignatarios.atv_principal_text AS "ATIVIDADE",
     db_consignatarios.municipio AS "CIDADE",
     db_consignatarios.email AS "EMAIL",
     db_consignatarios.telefone AS "TELEFONE",
     db_cad_shipper.nome_real AS "NOME EXPORTADOR",
     db_cad_notify.nome_real AS "NOTIFICADO",
     db_cad_armador.nome_real AS "ARMADOR",
     db_cad_agente.nome_real AS "AGENTE DE CARGA",
     db_cad_agente_inter.nome_real AS "AGENTE INTERNACIONAL",
     db_maritimo.oprecolhimentofrete AS "PAGAMENTO",
     db_ce_dta.armazem_destino AS "ARMAZEM DESTINO",
     db_cad_fcl.nome_real AS "TIPO FCL",
     db_maritimo.itemcarga_cdncms AS "HS CODE",
     db_maritimo.itemcarga_noncms AS "MERCADORIA",
     db_maritimo.teus AS "TEUS",
     db_maritimo.c20 AS "C20",
     db_maritimo.c40 AS "C40",
     db_maritimo.total_fcl AS "QTDE FCL",
     db_maritimo.vlcubagem AS "VOLUMES",
     db_maritimo.vlpesobruto AS "PESO BRUTO",
     db_maritimo.oprecolhimentofrete AS "RECOLHIMENTO FRETE",
     db_maritimo.cdmoedafrete AS "CD MOEDA FRETE",
     db_maritimo.nmmoedafrete AS "NOME MOEDA FRETE"
FROM db_maritimo
LEFT JOIN db_ce_history on db_ce_history.ce = db_maritimo.nrcemercante AND db_ce_history.deleted_at is NULL
LEFT JOIN db_maritimo AS db_maritimo_consig ON db_maritimo_consig.nrcemaster = LPAD(db_maritimo.nrcemercante::TEXT, 15, '0')
LEFT JOIN vw_db_consignatarios AS db_consignatarios ON db_consignatarios.cnpj = db_maritimo.cdconsignatario
LEFT JOIN db_ce_dta ON db_ce_dta.ce = db_maritimo.nrcemercante
LEFT JOIN db_cad_agente ON db_maritimo.id_agente = db_cad_agente.id
LEFT JOIN db_cad_agente_inter ON db_maritimo.id_agente_inter = db_cad_agente_inter.id
LEFT JOIN db_cad_armador ON db_maritimo.id_armador = db_cad_armador.id
LEFT JOIN db_cad_consig ON db_maritimo.id_consig = db_cad_consig.id
LEFT JOIN db_cad_fcl ON db_maritimo.id_fcl = db_cad_fcl.id
LEFT JOIN db_cad_notify ON db_maritimo.id_notify = db_cad_notify.id
LEFT JOIN db_cad_pais as db_cad_pais_origem ON db_maritimo.id_pais_origem = db_cad_pais_origem.id
LEFT JOIN db_cad_porto as db_cad_porto_origem ON db_maritimo.id_porto_origem = db_cad_porto_origem.id
LEFT JOIN db_cad_porto as db_cad_porto_carga  ON db_maritimo.id_porto_carga = db_cad_porto_carga.id
LEFT JOIN db_cad_porto as db_cad_porto_descarga ON db_maritimo.id_porto_descarga = db_cad_porto_descarga.id
LEFT JOIN db_cad_porto as db_cad_porto_destino ON db_maritimo.id_porto_destino = db_cad_porto_destino.id
LEFT JOIN db_cad_shipper ON db_maritimo.id_shipper = db_cad_shipper.id
LEFT JOIN db_cad_terminal as db_cad_terminal_descarga ON  db_maritimo.id_terminal_descarga = db_cad_terminal_descarga.id
WHERE db_maritimo.dtoperacao >= '2020-01-01 00:00:00'
AND db_maritimo.categoriacarga = 'I' AND db_maritimo.deleted_at IS NULL
GROUP BY db_ce_history.dt_entregue, db_consignatarios.atv_principal_text, db_consignatarios.uf, db_consignatarios.municipio, db_consignatarios.email, db_consignatarios.telefone, db_ce_dta.armazem_destino,
        db_cad_pais_origem.nome_real, db_cad_porto_origem.nome_real, db_cad_porto_carga.nome_real, db_cad_porto_descarga.nome_real, db_cad_terminal_descarga.nome_real, db_cad_porto_destino.nome_real,
        db_cad_consig.nome_real, db_cad_shipper.nome_real, db_cad_notify.nome_real, db_cad_armador.nome_real, db_cad_agente.nome_real, db_cad_agente_inter.nome_real, db_cad_fcl.nome_real, db_maritimo.id
     ) as t
  cross join jsonb_each_text(to_jsonb(t)) as d(col, value)
group by d.col
 ;;
    #sql_trigger_value: SELECT FLOOR(EXTRACT(epoch from NOW())/(168*60*60)) ;;
  }


  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: col {
    type: string
    sql: ${TABLE}."col" ;;
    label: "Campo"
  }

  dimension: null_count {
    type: number
    sql: ${TABLE}."null_count" ;;
    label: "Nulo"
  }

  dimension: not_null_count {
    type: number
    sql: ${TABLE}."not_null_count" ;;
    label: "Preenchido"
  }

  dimension: empty {
    type: number
    sql: ${TABLE}."empty" ;;
    label: "Vazio"
  }

  set: detail {
    fields: [col, null_count, not_null_count, empty]
  }
}
