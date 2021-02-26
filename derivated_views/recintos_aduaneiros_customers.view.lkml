view: recintos_aduaneiros_customers {

  derived_table: {
    sql:
    select *
    from
      (
        select recinto_aduaneiro, sum(total_reais) as total_reais, sum(total_dolares) as total_dolares
        from di_pu
        where di_pu.data_chegada_carga >= current_date - interval '6' month -- ultimos 6 meses
        group by 1
      ) as qq1
    left join
      (
        SELECT DISTINCT c.id as customer_id, c.name, c.cnpj, ci.branches_activity
        FROM "api"."customer" c
        INNER JOIN "api"."customer_info" ci ON c.id = ci.customer_id
        INNER JOIN "api"."customer_plan" cp on cp.customer_id = c.id
        INNER JOIN "api"."plan_complete" pc on pc.id = cp.plan_complete_id
        WHERE c.fake_customer IS FALSE AND c.deleted_at IS NULL
        AND cp.deleted_at IS NULL and CURRENT_DATE BETWEEN cp."start" and cp."expiration"
        --AND C.customer_type_id in(2,3,4,14,23) -- porto,armazem, terminal, aeroporto, terminal/armazem - recintos aduaneiros
        AND c.id IN -- para pegar apenas um id, quando ha clientes com filiais cadastradas
        (   SELECT qq1.max_id
            from(
            SELECT left(c.cnpj,8),max(c.id) as max_id
            FROM "api"."customer" c
            INNER JOIN "api"."customer_info" ci ON c.id = ci.customer_id
            INNER JOIN "api"."customer_plan" cp on cp.customer_id = c.id
            INNER JOIN "api"."plan_complete" pc on pc.id = cp.plan_complete_id
            WHERE c.fake_customer IS FALSE AND c.deleted_at IS NULL
            AND cp.deleted_at IS NULL and CURRENT_DATE BETWEEN cp."start" and cp."expiration"
            GROUP BY 1) as qq1
        )
      ) as qq2 on similarity(qq1.recinto_aduaneiro, qq2.name) > 0.62 ;;
  }

  dimension: recinto_aduaneiro {
    type: string
    sql: ${TABLE}.recinto_aduaneiro ;;
  }

  dimension: customer_id {
    type: number
    sql: ${TABLE}.customer_id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: cnpj_customer {
    type: string
    sql: ${TABLE}.cnpj ;;
  }

  dimension: branches_activity {
    type: string
    sql: ${TABLE}.branches_activity ;;
  }

  dimension: total_reais {
    type: number
    sql: ${TABLE}.total_reais ;;
  }

  dimension: total_dolares {
    type: number
    sql: ${TABLE}.total_dolares ;;
  }

  measure: count {
    type: count
  }

  measure: count_distinct_customers {
    type: count_distinct
    sql: ${customer_id} ;;
  }

  measure: count_distinct_recintos {
    type: count_distinct
    sql: ${recinto_aduaneiro} ;;
  }

  measure: sum_total_reais {
    type: sum
    sql: ${total_reais} ;;
  }

  measure: sum_total_dolares {
    type: sum
    sql: ${total_dolares} ;;
  }


}
