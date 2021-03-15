view: health_nome_exp {
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
            db_maritimo.cdshipper AS "CNPJ EXPORTADOR",
            db_cad_shipper.nome_real AS "EXPORTADOR",
            db_embarcador.codigo    AS "CNPJ EMBARCADOR COMP",
            db_embarcador.nome_real AS "NOME EMBARCADOR COMP"
      FROM db_maritimo
      LEFT JOIN vw_db_consignatarios ON vw_db_consignatarios.cnpj = db_maritimo.cdshipper
      LEFT JOIN db_cad_shipper ON db_maritimo.id_shipper = db_cad_shipper.id
      LEFT JOIN db_cad_shipper db_embarcador ON db_maritimo.id_embarcador_comp = db_cad_shipper.id
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
