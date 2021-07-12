view: usuarios_clientes_acessos_dia_plataforma {

  derived_table: {
    sql:
    select *,
    case
    when user_created <= dia then true
    else false
    end as existia
    from
      (
        select
        qq1.dia,
        qq1.customer_name,
        qq1.customer_id,
        qq1.user_name,
        qq1.user_email,
        qq1.user_id,
        qq1.user_created,
        case
        when qq2.user_id is null then false
        else true
        end as acessou,
        qq2.qtd_acessos
        from
          (
            select
        dia,
        customer."name" as customer_name,
        customer."id" AS customer_id,
        u."name" as user_name,
        u.id as user_id,
        u.email as user_email,
        date(u.created_at) as user_created
        FROM public.customer  AS customer
        inner join user_profile_customer upc on upc.customer_id = customer.id
        inner join users u on u.id = upc.user_id
        inner JOIN public.customer_plan  AS customer_plan ON (customer."id")=(customer_plan."customer_id")
        inner JOIN (select (current_date - interval '61' day) + (interval '1' day * generate_series(0,61)) as dia) as dias on 1 = 1
        where (date(dias.dia) between (date(customer_plan."start")) and date((customer_plan."expiration")))
          and (customer."fake_customer")=false
          and customer.deleted_at is null
          and customer_plan.deleted_at is null
          and dia >= current_date - interval '61' day
          and upc.deleted_at is null
          and u.deleted_at is null
          --and customer.id = 1259
          and u.email not like '%@logcomex.com'
        group by 1,2,3,4,5,6,7
          ) as qq1
        left join
          (
            select
        date(al.created_at) as day_access,
        al.customer_id,
        al.user_id,
        count(distinct al.id) as qtd_acessos
        FROM access_log al
        inner join customer c2 on c2.id = al.customer_id
        inner join customer_plan cp on cp.customer_id = c2.id
        where (date(al.created_at) between cp."start" and cp.expiration or date(al.created_at) between cp.trial_start and cp.trial_end)
        and al.created_at >= current_date - interval '61 days'
        and c2.fake_customer is false and c2.deleted_at is null
        and cp.deleted_at is null
        group by 1,2,3
            --order by 1 asc
          ) as qq2 on qq2.day_access = qq1.dia and qq2.customer_id = qq1.customer_id and qq2.user_id = qq1.user_id
      ) as qq3;;
  }

  dimension: customer_id {
    type: number
    sql: ${TABLE}."customer_id" ;;
  }

  dimension: customer_name{
    type: string
    sql: ${TABLE}."customer_name" ;;
  }

  dimension: user_name{
    type: string
    sql: ${TABLE}."user_name" ;;
  }

  dimension: user_email{
    type: string
    sql: ${TABLE}."user_email" ;;
  }

  dimension: user_id{
    type: string
    sql: ${TABLE}."user_id" ;;
  }

  dimension: acessou {
    type: yesno
    sql: ${TABLE}."acessou" ;;
  }

  dimension: existia {
    type: yesno
    sql: ${TABLE}."existia" ;;
  }

  dimension: qtd_acessos {
    type: number
    sql: ${TABLE}."qtd_acessos" ;;
  }


  dimension: cluster_acessos{
    type: string
    sql:
    case
    when ${qtd_acessos} is null then '0 access in the day'
    when ${qtd_acessos} = 1 then '1 access per day'
    when ${qtd_acessos} = 2 then '2 access per day'
    when ${qtd_acessos} = 3 then '3 access per day'
    when ${qtd_acessos} > 3 then 'over 3 accesses in the day'
    else ${qtd_acessos}::text
    end ;;
  }


  dimension: cluster_sequencia{
    type: string
    sql:
    case
    when ${qtd_acessos} is null then 0
    when ${qtd_acessos} = 1 then 1
    when ${qtd_acessos} = 2 then 2
    when ${qtd_acessos} = 3 then 3
    when ${qtd_acessos} > 3 then 4
    else 5
    end ;;
  }


  dimension_group: dia {
    type: time
    timeframes: [
      raw,
      time,
      date
    ]
    sql: ${TABLE}."dia" ;;
  }

  measure: count {
    type: count
    drill_fields: [customer_id,customer_name,user_name,user_email,user_id,qtd_acessos,dia_date]
  }


}
