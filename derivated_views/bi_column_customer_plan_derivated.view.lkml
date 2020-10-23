view: bi_column_customer_plan_derivated {

  derived_table: {
    sql:select distinct cp.id as customer_plan_id,
        qq1.coluna as coluna
        from(
        select
        bccp.customer_plan_id as customer_plan_id,
        null as plan_complete_id,
        bc.alias as coluna
        from bi_column_customer_plan bccp
        inner join bi_column bc on bc.id = bccp.bi_column_id
        union all
        select
        null as customer_plan_id,
        bcpc.plan_complete_id as plan_complete_id,
        bc.alias as coluna
        from bi_column_plan_complete bcpc
        inner join bi_column bc on bc.id = bcpc.bi_column_id
        where bc.config_status_id = 1) as qq1
        inner join customer_plan cp on (cp.id = qq1.customer_plan_id or cp.plan_complete_id = qq1.plan_complete_id);;
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
