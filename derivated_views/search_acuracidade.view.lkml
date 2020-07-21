view: search_acuracidade {
  derived_table: {

    sql:
        select  anomes as ano_mes,
                qtde_total,
                qtde_com_match,
                cast( cast (qtde_com_match as NUMERIC)/ qtde_total * 100 AS NUMERIC(4,2)) as pct_match
        from (
                select  anomes,
                        sum(case when tp_match is not null then 1 else 0 end) as qtde_com_match,
                        count(*) as qtde_total
                        from di_commodities
                        group by 1) as sel_di
         ;;

  }

  dimension: ano_mes {
    type: number
    value_format: "0"
    label: "Ano Mês"
    sql: ${TABLE}."ano_mes" ;;
  }

  dimension: qtde_total {
    type: number
    label: "qtde_total"
    sql: ${TABLE}."qtde_total" ;;
  }

  dimension: qtde_com_match {
    type: number
    label: "qtde_com_match"
    sql: ${TABLE}."qtde_com_match" ;;
  }

  dimension: pct_match {
    type: number
    sql: ${TABLE}."pct_match" ;;
  }

  measure: pct_match_measure {
    type: number
    sql:  cast( cast (${TABLE}."qtde_com_match" as NUMERIC)/ ${TABLE}."qtde_total" * 100 AS NUMERIC(4,2)) ;;
  }

}
