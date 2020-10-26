view: bi_column_customer_plan_derivated {

  derived_table: {
    sql:
  select cp.id as customer_plan_id,
  bc.alias as coluna
  from customer_plan cp
   join plan_complete pc on cp.plan_complete_id = pc.id
   join bi_column_customer_plan bccp on cp.id = bccp.customer_plan_id
   join bi_column bc on bccp.bi_column_id = bc.id and bc.method is not null
   join bi_column_service bcs on bc.id = bcs.bi_column_id and bcs.service_id = pc.service_id
   left join bi_condition_filter bcf on bcs.bi_condition_filter_id = bcf.id
  where cp.deleted_at is null
    and bc.config_status_id = 1 -- ativo
    and pc.deleted_at isnull
  union distinct
  select distinct cp.id as customer_plan_id,
  bc.alias as coluna
  from customer_plan cp
   join plan_complete pc on cp.plan_complete_id = pc.id
   join bi_column_plan_complete bcpc on bcpc.plan_complete_id = pc.id
   join bi_column bc on bcpc.bi_column_id = bc.id and bc.method is not null
   join bi_column_service bcs on bc.id = bcs.bi_column_id and bcs.service_id = pc.service_id
   left join bi_condition_filter bcf on bcs.bi_condition_filter_id = bcf.id
  where cp.deleted_at is null
        and bc.config_status_id = 1 -- ativo
        and pc.deleted_at isnull;;
  }

  dimension: customer_plan_id {
    type: number
    sql: ${TABLE}.customer_plan_id ;;
  }

  dimension: coluna {
    type: string
    sql: ${TABLE}.coluna ;;
  }

  #
}
