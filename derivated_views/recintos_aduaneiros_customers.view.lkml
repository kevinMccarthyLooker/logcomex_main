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
        SELECT DISTINCT c.id as customer_id,
        (case
        when c.name = 'CONCESSIONARIA DO AEROPORTO INTERNACIONAL DE CONFINS S/A' then 'CONC. AEROPORTO INTERNACIONAL DE CONFINS S/A'
        when c.name = 'SANTOS BRASIL PARTICIPACOES S.A.' then 'SANTOS BRASIL LOGÍSTICA S.A.'
        when c.name = 'PORTONAVE S/A - TERMINAIS PORTUARIOS DE NAVEGANTES' then 'PORT. FLUVIAL DE USO PRIVAT. MISTO_- PORTONAVE S/A'
        else c."name"
        end),
        c.cnpj, ci.branches_activity
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

  dimension: recinto_aduaneiro_tratado {
    type: string
    sql: case when (${TABLE}.recinto_aduaneiro = '' or ${TABLE}.recinto_aduaneiro is null) then 'NÃO ENCONTRADO'
         else ${TABLE}.recinto_aduaneiro
         end ;;
  }

  dimension: customer_id {
    type: number
    sql: ${TABLE}.customer_id ;;
  }

  dimension: cliente {
    type: yesno
    sql: case when ${TABLE}.customer_id is null then false
         else true
         end;;
  }

  dimension: cliente_match {
    type: yesno
    sql: ${cliente} ;;
    html: {% if value == 'Yes' %}
            <font color="green">{{ cliente }}</font>
          {% else %}
            <font color="red">{{ cliente }}</font>
          {% endif %};;
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
    drill_fields: [customer_id,name,cnpj_customer]
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
