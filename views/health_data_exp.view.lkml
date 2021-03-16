view: health_data_exp {
  derived_table: {
    persist_for: "24 hours"
    indexes: ["dtoperacao"]
    sql: select
      t.tipoconhecimento,
      t.dtoperacao,
      d.col,
       count(*) filter (where value is null) as null_count,
       count(*) filter (where value is not null) as not_null_count,
       count(*) filter (where value = '') as empty
from (
      select
            db_maritimo.tipoconhecimento,
            db_maritimo.dtoperacao,
            db_maritimo.tipo_carga AS "TIPO CARGA",
            db_maritimo.tipoconhecimento AS "EMBARQUE",
            db_maritimo.nmembarcacao AS "NAVIO",
            db_maritimo.nrviagem AS "VIAGEM",
            db_cad_pais_destino.nome_real AS "PAIS DE DESTINO",
            db_cad_porto_origem.nome_real AS "PORTO ORIGEM",
            db_cad_porto_carga.nome_real AS "PORTO EMBARQUE",
            db_cad_terminal_carga.nome_real AS "TERMINAL EMBARQUE",
            db_cad_porto_descarga.nome_real AS "PORTO DESCARGA",
            db_cad_porto_destino.nome_real AS "PORTO DESTINO",
            vw_db_consignatarios.uf AS "UF ORIGEM",
            db_maritimo.cdshipper AS "CNPJ EXPORTADOR",
            db_cad_shipper.nome_real AS "EXPORTADOR",
            substr(db_embarcador.codigo,1,15)     AS "CNPJ EMBARCADOR COMP",
            substr(db_embarcador.nome_real,1,15)  AS "NOME EMBARCADOR COMP",
            vw_db_consignatarios.atv_principal_text AS "ATIVIDADE",
            vw_db_consignatarios.municipio AS "CIDADE",
            vw_db_consignatarios.email AS "EMAIL",
            vw_db_consignatarios.telefone AS "TELEFONE",
            db_cad_consig.nome_real AS "CONSIGNATARIO",
            db_cad_armador.nome_real AS "ARMADOR",
            db_maritimo.oprecolhimentofrete AS "PAGAMENTO",
            db_cad_fcl.nome_real AS "TIPO FCL",
            db_maritimo.itemcarga_cdncms AS "HS CODE",
            db_maritimo.itemcarga_noncms AS "MERCADORIA",
            db_maritimo.teus AS "TEUS",
            db_maritimo.c20 AS "C20",
            db_maritimo.c40 AS "C40",
            db_maritimo.total_fcl AS "QTDE FCL",
            db_maritimo.vlcubagem AS "VOLUMES",
            db_maritimo.vlpesobruto AS "PESO BRUTO"
      FROM db_maritimo
      LEFT JOIN vw_db_consignatarios ON vw_db_consignatarios.cnpj = db_maritimo.cdshipper
      LEFT JOIN db_cad_armador ON db_maritimo.id_armador = db_cad_armador.id
      LEFT JOIN db_cad_consig ON  db_maritimo.id_consig = db_cad_consig.id
      LEFT JOIN db_cad_fcl ON db_maritimo.id_fcl = db_cad_fcl.id
      LEFT JOIN db_cad_pais as db_cad_pais_destino ON db_maritimo.id_pais_destino = db_cad_pais_destino.id
      LEFT JOIN db_cad_porto as db_cad_porto_origem ON  db_maritimo.id_porto_origem = db_cad_porto_origem.id
      LEFT JOIN db_cad_porto as db_cad_porto_carga ON db_maritimo.id_porto_carga = db_cad_porto_carga.id
      LEFT JOIN db_cad_porto as db_cad_porto_descarga ON db_maritimo.id_porto_descarga = db_cad_porto_descarga.id
      LEFT JOIN db_cad_porto as db_cad_porto_destino ON db_maritimo.id_porto_destino = db_cad_porto_destino.id
      LEFT JOIN db_cad_shipper ON db_maritimo.id_shipper = db_cad_shipper.id
      LEFT JOIN db_cad_shipper as db_embarcador ON db_maritimo.id_embarcador_comp = db_embarcador.id
      LEFT JOIN db_cad_terminal as db_cad_terminal_carga ON db_maritimo.id_terminal_carga = db_cad_terminal_carga.id
      where db_maritimo.dtoperacao >= '2020-01-01 00:00:00' and db_maritimo.deleted_at IS NULL
      AND db_maritimo.categoriacarga = 'E'
      AND db_maritimo.tipoconhecimento in ('10','11')
     ) as t
  cross join jsonb_each_text(to_jsonb(t)) as d(col, value)
group by d.col,t.dtoperacao,t.tipoconhecimento
 ;;
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

  measure: null_count {
    type: sum
    sql: ${TABLE}."null_count" ;;
    label: "Nulo"
  }

  measure: not_null_count {
    type: sum
    sql: ${TABLE}."not_null_count" ;;
    label: "Preenchido"
  }

  measure: empty {
    type: sum
    sql: ${TABLE}."empty" ;;
    label: "Vazio"
  }
  dimension: tipoconhecimento {
    type: string
    sql: ${TABLE}."tipoconhecimento" ;;
    label: "Embarque"
  }
  dimension: dtoperacao {
    type: date
    sql: ${TABLE}."dtoperacao" ;;
    label: "Data"
  }

  set: detail {
    fields: [ col, null_count, not_null_count, empty,tipoconhecimento]
  }
}
