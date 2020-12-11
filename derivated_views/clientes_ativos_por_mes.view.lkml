view: clientes_ativos_por_mes {
  derived_table: {
    sql:
      SELECT
      mes as anomes,
      customer."id" AS customer_id,
      customer."id" AS customer_id_measure
      FROM public.customer  AS customer
      LEFT JOIN public.customer_plan  AS customer_plan ON (customer."id")=(customer_plan."customer_id")
      LEFT JOIN (select last_day(date '2019-06-01' + (interval '1' month * generate_series(0,20))) as mes) as meses on 1 = 1
      WHERE (meses.mes between (customer_plan."start") and (customer_plan."expiration")
              and (customer_plan."deleted_at") is null) AND ((customer."fake_customer")=false
              --and (customer."deleted_at") is null
              )
;;
  }

  dimension: customer_id {
    type: number
    sql: ${TABLE}."customer_id" ;;
    drill_fields: [detail*]
  }

  dimension: quarter {
    type: string
      sql:  CASE  WHEN (${TABLE}."anomes" = '2020-03-31') THEN 'Q1'
                  WHEN (${TABLE}."anomes" = '2020-06-30') THEN 'Q2'
                  WHEN (${TABLE}."anomes" = '2020-09-30') THEN 'Q3'
                  ELSE 'N/A' end
    ;;
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
  set: detail {
    fields: [
      customer.id,
      customer.name,
      customer.executive_name,
    ]
  }

}
