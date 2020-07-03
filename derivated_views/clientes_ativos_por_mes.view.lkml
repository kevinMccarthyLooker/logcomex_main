view: clientes_ativos_por_mes {
  derived_table: {
    sql:
      SELECT
        mes as AnoMes,
       COUNT(DISTINCT customer."id") AS QtdeCustomer
      FROM public.customer  AS customer
      LEFT JOIN public.customer_plan  AS customer_plan ON (customer."id")=(customer_plan."customer_id")
      LEFT JOIN (select last_day(date '2020-01-01' + (interval '1' month * generate_series(0,11))) as mes) as meses on 1 =1
      WHERE (meses.mes between (customer_plan."start") and (customer_plan."expiration")
              and (customer_plan."deleted_at") is null) AND ((customer."fake_customer")=false and (customer."deleted_at") is null)
      group by 1
;;
  }

  measure: qtde_customers {
    type: count
  }

  dimension: AnoMes {
    type: string
    label: "AnoMes"
    sql: ${TABLE}."AnoMes" ;;
  }
}
