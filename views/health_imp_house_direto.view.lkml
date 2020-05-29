view: health_imp_house_direto {
  derived_table: {
    sql: select

             d.col,
             count(*) filter (where value is null) as null_count,
             count(*) filter (where value is not null) as not_null_count
      from (
           select

           db_ce_history.dt_entregue AS "SAÍDA PORTO"

      FROM db_maritimo m
      LEFT JOIN db_ce_history on db_ce_history.ce = m.nrcemercante
      WHERE m.dtoperacao >= '2020-01-01 00:00:00'
      AND m.categoriacarga = 'I'
      AND m.deleted_at IS NULL
      AND db_ce_history.deleted_at is NULL
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

                m.id_notify AS "NOTIFICADO"

      FROM db_maritimo m
      LEFT JOIN db_ce_history on db_ce_history.ce = m.nrcemercante
      WHERE m.dtoperacao >= '2020-01-01 00:00:00'
      AND m.categoriacarga = 'I'
      AND m.deleted_at IS NULL
      AND db_ce_history.deleted_at is NULL
      AND tipoconhecimento in ('10','12')
      and (nmconsignatario like '% TRADE %' or nmconsignatario like '% TRADING %')
           ) as t
        cross join jsonb_each_text(to_jsonb(t)) as d(col, value)
      group by d.col

      UNION ALL

      select (select column_name from  information_schema.columns
                where table_name =  'db_ce_dta'
                and column_name = 'armazem_destino') , count(m.id), (select count(m.id) from db_ce_dta d
                                                        left join db_maritimo m on m.nrcemercante = d.ce
                                                        where url_file is not null
                                                        and armazem_destino is not null
                                                        AND recinto_aduaneiro_origem ~' PORT'
                                                        OR recinto_aduaneiro_origem LIKE '%.PORT%'
                                                        and tipoconhecimento in ('10','12')
                                                        AND dtoperacao >= '2020-01-01')
      from db_ce_dta d
        left join db_maritimo m on m.nrcemercante = d.ce
        where url_file is not null
        and armazem_destino is null
        AND recinto_aduaneiro_origem ~' PORT'
        OR recinto_aduaneiro_origem LIKE '%.PORT%'
        and tipoconhecimento in ('10','12')
        AND dtoperacao >= '2020-01-01'

        UNION ALL

      select (select column_name  from  information_schema.columns
                where table_name =  'db_ce_dta'
                and column_name = 'unidade_local_destino'),
        count(d.iddta) as Preenchidos, (select count(d.iddta) from db_ce_dta d
                                inner join db_maritimo m on m.nrcemercante = d.ce
                                where m.dtoperacao >=  '2020-01-01'
                                and recinto_aduaneiro_destino is not null
                                or unidade_local_destino is not null
                                AND m.categoriacarga = 'I'
                                AND m.deleted_at IS NULL
                                AND d.deleted_at is NULL
                                AND tipoconhecimento in ('10','12')) AS Nulos
        from db_ce_dta d
        inner join db_maritimo m on m.nrcemercante = d.ce
        where m.dtoperacao >=  '2020-01-01'
        and recinto_aduaneiro_destino is null
        and unidade_local_destino is null
        AND m.categoriacarga = 'I'
        AND m.deleted_at IS NULL
        AND d.deleted_at is NULL
        AND tipoconhecimento in ('10','12')
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
