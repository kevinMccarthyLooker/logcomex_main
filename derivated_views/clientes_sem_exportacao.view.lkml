view: clientes_sem_exportacao {

 derived_table: {
    sql:
    select distinct c.id, c."name" as customer_name, u."name" as user_name, u.email as user_email
    from customer c
    inner join customer_plan cp on cp.customer_id = c.id
    inner join plan_complete pc on pc.id = cp.plan_complete_id
    inner join user_profile_customer upc on upc.customer_id = c.id
    inner join users u on u.id = upc.user_id
    where c.fake_customer is false
    and c.deleted_at is null
    and cp.deleted_at is null
    and pc.deleted_at is null
    and current_date between cp."start" and cp.expiration
    and c.id not in (
    select distinct c.id
    from customer c
    inner join customer_plan cp on cp.customer_id = c.id
    inner join plan_complete pc on pc.id = cp.plan_complete_id
    where c.fake_customer is false
    and c.deleted_at is null
    and cp.deleted_at is null
    and pc.deleted_at is null
    and current_date between cp."start" and cp.expiration
    and pc.service_id = 2)
    --and c.id = 5
    and u.email not like '%@logcomex.com' ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: customer_name {
    type: string
    sql: ${TABLE}.customer_name ;;
  }

  dimension: user_name {
    type: string
    sql: ${TABLE}.user_name ;;
  }

  dimension: user_email {
    type: string
    sql: ${TABLE}.user_email ;;
  }

  measure: count {
    type: count
  }


}
