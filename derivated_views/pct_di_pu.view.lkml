view: pct_di_pu {
  derived_table: {
    sql: SELECT ano_mes,
               num_di_control,
               num_di_pu,
               case when num_di_control > 0 then cast( cast (num_di_pu as NUMERIC)/ num_di_control AS NUMERIC(5,4)) else 0.0 end as pct_di_pu,
               num_di_match,
               case when num_di_pu > 0 then cast( cast (num_di_match as NUMERIC)/ num_di_pu AS NUMERIC(5,4)) else 0.0 end as pct_di_match
        FROM
          (SELECT
             CAST(substr(di_control.data_hora_registro :: text, 1, 4) || substr(di_control.data_hora_registro :: text, 6, 2) AS
                  INTEGER)   AS ano_mes,
             count(1)        AS num_di_control,
             sum(CASE WHEN di_pu.di_number IS NOT NULL
               THEN 1
                 ELSE 0 END) AS num_di_pu,
             sum(CASE WHEN EXISTS(SELECT 1
                                  FROM di_commodities
                                  WHERE di_commodities.di_number = di_pu.di_number)
               THEN 1
                 ELSE 0 END) AS num_di_match
             FROM di_control
        LEFT JOIN di_pu ON di_control.di_number = di_pu.di_number
        WHERE di_control.data_hora_registro >= '2018/01/01'
        and (di_control.via_transporte <> 'N/A' or di_control.via_transporte is null)
        GROUP BY 1
        ORDER BY 1) as sel_di
         ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: ano_mes {
    type: number
    value_format: "0"
    label: "Ano Mês"
    sql: ${TABLE}."ano_mes" ;;
  }

  dimension: num_di_control {
    type: number
    label: "Di Control"
    sql: ${TABLE}."num_di_control" ;;
  }

  dimension: num_di_pu {
    type: number
    label: "Di Pu"
    sql: ${TABLE}."num_di_pu" ;;
  }

  dimension: pct_di_pu {
    type: number
    sql: ${TABLE}."pct_di_pu" ;;
  }

  dimension: num_di_match {
    type: number
    label: "Di Match"
    sql: ${TABLE}."num_di_match" ;;
  }

  dimension: pct_di_match {
    type: number
    sql: ${TABLE}."pct_di_match" ;;
  }

  set: detail {
    fields: [
      ano_mes,
      num_di_control,
      num_di_pu,
      pct_di_pu,
      num_di_match,
      pct_di_match
    ]
  }
}
