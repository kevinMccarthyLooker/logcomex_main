view: teste_health_imp_house_direto {
  derived_table: {
    sql: select

                   d.col,
                   count(*) filter (where value is null) as null_count,
                   count(*) filter (where value is not null) as not_null_count
            from (
                 select

                 data_saida AS "SAÍDA PORTO",
                 recinto_aduaneiro_destino as "LOCAL DE LIBERAÇÃO"

            FROM bi_imports_mvw
            WHERE data_operacao >= DATE(current_date - interval '90 days')
            AND tipoconhecimento in ('10','12')
                ) as t
              cross join jsonb_each_text(to_jsonb(t)) as d(col, value)
            group by d.col

            UNION ALL

            select

                   d.col,
                   count(*) filter (where value is null) as null_count,
                   count(*) filter (where value is not null) as not_null_count
            from (
                 select

                      cdnotifypart AS "NOTIFICADO"

            FROM bi_imports_mvw
            WHERE data_operacao >= DATE(current_date - interval '90 days')
            AND tipoconhecimento in ('10','12')
            and (nmconsignatario like '% TRADE %' or nmconsignatario like '% TRADING %')
                 ) as t
              cross join jsonb_each_text(to_jsonb(t)) as d(col, value)
            group by d.col

            UNION ALL

            select  armazem_destino,
                    release_location AS "LOCAL DE LIBERACAO"
            from bi_imports_mvw
              WHERE tipoconhecimento in ('10','12')
              AND data_operacao >= DATE(current_date - interval '90 days')
             ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: col {
    type: string
    sql: ${TABLE}."col" ;;
    label: "Coluna"
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

  set: detail {
    fields: [col, null_count, not_null_count]
  }
}
