view: clientes_ativos_por_mes {
  derived_table: {
    sql:
    select qq1.*,
    case
    when qq2.customer_id is null then false
    else true
    end as acessou_tracking
    from
      (
      SELECT
      date(mes) as anomes,
      customer."name" as customer_name,
      customer."id" AS customer_id,
      customer."id" AS customer_id_measure,
      customer_plan.id as customer_plan_id
      FROM public.customer  AS customer
      LEFT JOIN public.customer_plan  AS customer_plan ON (customer."id")=(customer_plan."customer_id")
      LEFT JOIN (select last_day(date '2019-06-01' + (interval '1' month * generate_series(0,35))) as mes) as meses on 1 = 1
      where (date(meses.mes) between (date(customer_plan."start")) and last_day(date((customer_plan."expiration")))
      and (customer_plan."deleted_at") is null)
      AND (customer."fake_customer")=false
      ) as qq1
    left join
      (
        select
        last_day(t.created_at) as anomes,
        customer_id
        from tracking t
        where (t.tracking_maritime_load_category_id = 1 or t.tracking_maritime_load_category_id is null)
        group by 1,2
        union
        select
        last_day(ta.created_at) as anomes,
        customer_id
        from tracking_aerial ta
        group by 1,2
      ) as qq2 on qq2.anomes = qq1.anomes and qq2.customer_id = qq1.customer_id;;
  }

  dimension: customer_id {
    type: number
    sql: ${TABLE}."customer_id" ;;
  }

  dimension: customer_name{
    type: string
    sql: ${TABLE}."customer_name" ;;
  }

  dimension: acessou_tracking{
    type: yesno
    sql: ${TABLE}."acessou_tracking" ;;
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
