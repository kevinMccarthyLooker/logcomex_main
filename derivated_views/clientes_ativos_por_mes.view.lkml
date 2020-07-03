view: clientes_ativos_por_mes {
  derived_table: {
    sql:
      SELECT
      mes as anomes,
      customer."id" AS customer_id,
      customer."id" AS customer_id_measure
      FROM public.customer  AS customer
      LEFT JOIN public.customer_plan  AS customer_plan ON (customer."id")=(customer_plan."customer_id")
      LEFT JOIN (select last_day(date '2019-08-01' + (interval '1' month * generate_series(0,15))) as mes) as meses on 1 = 1
      WHERE (meses.mes between (customer_plan."start") and (customer_plan."expiration")
              and (customer_plan."deleted_at") is null) AND ((customer."fake_customer")=false and (customer."deleted_at") is null)
;;
  }

  dimension: customer_id {
    type: number
    sql: ${TABLE}."customer_id" ;;
  }

  measure: count_ativos_mes {
    type: count_distinct
    sql: ${TABLE}."customer_id_measure" ;;
  }


  dimension_group: anomes {
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
    sql: ${TABLE}."anomes" ;;
  }
}
