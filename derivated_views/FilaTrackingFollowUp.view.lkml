view: filatrackingfollowup {
  derived_table: {
    sql:
      select  tracking.id,
              tracking.status_id,
             (case
                  when tracking.status_id = 2 then 0
                  when tracking.status_id = 1 then 1
                  else 2 end) as ordem_status
      from "tracking"
               inner join "extra_data_container" on "tracking"."bl_number" = "extra_data_container"."bl"
      where "archived_at" is null
        and "status_id" not in ('11')
        and "done" = false
        and "internal_status_id" = '1'
        and "shipowner_id" is not null
        and "tracking"."deleted_at" is null
      order by "ordem_status" asc, "executed_at" asc
;;
  }

  dimension: tracking_id {
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: status_id {
    type: number
    sql: ${TABLE}."status_id" ;;
  }

  measure: count_total {
    type: count_distinct
    sql: ${TABLE}."id" ;;
  }

}
