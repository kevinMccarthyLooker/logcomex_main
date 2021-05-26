view: clientes_ativos_por_mes {
  derived_table: {
    sql:
    SELECT
      date(mes) as anomes,
      customer."name" as customer_name,
      customer."id" AS customer_id,
      customer."id" AS customer_id_measure,
      customer_plan.id as customer_plan_id
      FROM public.customer  AS customer
      LEFT JOIN public.customer_plan  AS customer_plan ON (customer."id")=(customer_plan."customer_id")
      LEFT JOIN (select last_day(date '2019-06-01' + (interval '1' month * generate_series(0,30))) as mes) as meses on 1 = 1
      where (date(meses.mes) between (date(customer_plan."start")) and date((customer_plan."expiration"))
      and (customer_plan."deleted_at") is null)
      AND (customer."fake_customer")=false
;;
  }

  dimension: customer_id {
    type: number
    sql: ${TABLE}."customer_id" ;;
  }

  dimension: customer_name{
    type: string
    sql: ${TABLE}."customer_name" ;;
  }

  dimension: customer_plan_id {
    type: number
    sql: ${TABLE}."customer_plan_id" ;;
  }

  dimension: quarter {
    type: string
      sql:
      CASE
      WHEN (${TABLE}."anomes" = '2020-03-31') THEN 'Q1'
      WHEN (${TABLE}."anomes" = '2020-06-30') THEN 'Q2'
      WHEN (${TABLE}."anomes" = '2020-09-30') THEN 'Q3'
      ELSE 'N/A'
      END ;;
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

  measure: count_ativos_mes {
    type: count_distinct
    sql: ${TABLE}."customer_id_measure" ;;
    drill_fields: [detail*]
  }

  set: detail {
    fields: [
      customer_name,
      customer_id
    ]
  }

}
