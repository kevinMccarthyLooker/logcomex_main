view: status_integracao {

  derived_table: {
    sql:
    select qq1.*,
    case
    when (qq2.id is not null and qq3.id is null) then 'Apenas Plano Ativo'
    when (qq2.id is not null and qq3.id is not null) then 'Plano e Trial Ativo'
    when (qq2.id is null and qq3.id is not null) then 'Apenas Trial Ativo'
    else null
    end as tipo_plano,
    case
    when qq1.id in (10,16,77,106) then 'Isenta de Pagamento'
    else 'Não Isenta de Pagamento'
    end as faturamento
    from
      (
        select distinct customer.id, customer.name, customer_api_relations.id_hubspot_customer, customer_api_relations.id_omie_customer -- empresas com plano e/ou trial ativo
        from customer_api_relations
        inner join customer ON customer_api_relations.id_customer = customer.id
        inner join customer_plan ON customer.id = customer_plan.customer_id
        where customer.fake_customer = false
        and customer.deleted_at is null
        and ((current_date between customer_plan.trial_start and customer_plan.trial_end) or (current_date between customer_plan."start" and customer_plan.expiration))
        and customer_plan.deleted_at is null
        and customer_api_relations.deleted_at is null
      ) as qq1
    left join
      (
        select distinct customer.id  -- empresas com plano ativo
        from customer
        inner join customer_plan ON customer.id = customer_plan.customer_id
        where customer.fake_customer = false
        and customer.deleted_at is null
        and current_date between customer_plan."start" and customer_plan.expiration
        and customer_plan.deleted_at is null
      ) as qq2 on qq2.id = qq1.id
    left join
      (
        select distinct customer.id  -- empresas com trial ativo
        from customer
        inner join customer_plan ON customer.id = customer_plan.customer_id
        where customer.fake_customer = false
        and customer.deleted_at is null
        and current_date between customer_plan.trial_start and customer_plan.trial_end
        and customer_plan.deleted_at is null
      ) as qq3 on qq3.id = qq1.id;;
  }

  dimension: customer_id {
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."name" ;;
  }

  dimension: id_hubspot_customer {
    type: number
    sql: ${TABLE}."id_hubspot_customer" ;;
  }

  dimension: id_omie_customer {
    type: number
    sql: ${TABLE}."id_omie_customer" ;;
  }

  dimension: tipo_plano {
    type: string
    sql: ${TABLE}."tipo_plano" ;;
  }

  dimension: faturamento {
    type: string
    sql: ${TABLE}."faturamento" ;;
  }

  measure: count {
    type: count
    drill_fields: [details*]
  }

  set: details {
    fields: [customer_id,name,id_hubspot_customer,id_omie_customer,tipo_plano]
  }

  measure: count_customers {
    type: count_distinct
    sql: ${customer_id} ;;
  }

}
