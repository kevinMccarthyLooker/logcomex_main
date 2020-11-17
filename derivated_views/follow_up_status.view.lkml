view: follow_up_status {

  derived_table: {
    sql: SELECT distinct fu1.tracking_id,
date_part('day',(SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 3 limit 1)::timestamp - (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 2 limit 1)::timestamp) AS diff_manifestado_presenca,
date_part('day',(SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 5 limit 1)::timestamp - (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 3 limit 1)::timestamp) AS diff_presenca_di,
date_part('day',(SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 9 limit 1)::timestamp - (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 5 limit 1)::timestamp) AS diff_di_deembaracada,
date_part('day',(SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 6 limit 1)::timestamp - (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 9 limit 1)::timestamp) AS diff_desembaracada_liberado
FROM follow_up fu1
where fu1.deleted_at is null ;;

  }


  dimension: tracking_id  {
    type: number
    sql: ${TABLE}.tracking_id ;;
  }

  dimension: diff_manifestado_presenca  {
    type: number
    sql: ${TABLE}.diff_manifestado_presenca ;;
  }

  dimension: diff_presenca_di  {
    type: number
    sql: ${TABLE}.diff_presenca_di ;;
  }

  dimension: diff_di_deembaracada  {
    type: number
    sql: ${TABLE}.diff_di_deembaracada ;;
  }

  dimension: diff_desembaracada_liberado  {
    type: number
    sql: ${TABLE}.diff_desembaracada_liberado ;;
  }

}
