view: follow_up_status {

  derived_table: {
    sql: SELECT distinct 'maritimo' as modal, fu1.tracking_id,
date_part('day',(SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 3 limit 1)::timestamp - (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 2 limit 1)::timestamp) AS diff_01, --manifestado_presenca,
date_part('day',(SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 5 limit 1)::timestamp - (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 3 limit 1)::timestamp) AS diff_02, --presenca_di,
date_part('day',(SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 9 limit 1)::timestamp - (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 5 limit 1)::timestamp) AS diff_03, --_deembaracada,
date_part('day',(SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 6 limit 1)::timestamp - (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 9 limit 1)::timestamp) AS diff_04,  --desembaracada_liberado
null::float as diff_05,
null::float as diff_06
FROM follow_up fu1
where fu1.deleted_at is null --and fu1.tracking_id = 648698
union
SELECT distinct 'aereo' as modal, fu1.tracking_aerial_id,
date_part('day',(SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 2 limit 1)::timestamp - (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 1 limit 1)::timestamp) AS diff_01, -- transitoInt_chegada
date_part('day',(SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 3 limit 1)::timestamp - (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 2 limit 1)::timestamp) AS diff_02, -- chegada_registro_dta
date_part('day',(SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 4 limit 1)::timestamp - (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 3 limit 1)::timestamp) AS diff_03, -- registro_dta_visado
date_part('day',(SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 5 limit 1)::timestamp - (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 4 limit 1)::timestamp) AS diff_04, -- visado_registroDI
date_part('day',(SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 8 limit 1)::timestamp - (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 5 limit 1)::timestamp)::int AS diff_05, -- registroDI_diDesembaracada
date_part('day',(SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 7 limit 1)::timestamp - (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 8 limit 1)::timestamp)::int AS diff_06  -- diDesembaraca_recebida
FROM follow_up fu1
where fu1.deleted_at is null;; #--and tracking_aerial_id = 18135 ;;
  }


  dimension: tracking_id  {
    primary_key: yes
    type: number
    sql: ${TABLE}.tracking_id ;;
  }

  dimension: diff_01  {
    type: number
    sql: ${TABLE}.diff_01 ;;
  }

  dimension: diff_02  {
    type: number
    sql: ${TABLE}.diff_02 ;;
  }

  dimension: diff_03  {
    type: number
    sql: ${TABLE}.diff_03 ;;
  }

  dimension: diff_04  {
    type: number
    sql: ${TABLE}.diff_04 ;;
  }

  dimension: diff_05  {
    type: number
    sql: ${TABLE}.diff_05 ;;
  }

  dimension: diff_06 {
    type: number
    sql: ${TABLE}.diff_06 ;;
  }

  dimension: modal {
    type: string
    sql: ${TABLE}.modal ;;
  }

  measure: diff_01_avg  {
    type: average
    sql: ${TABLE}.diff_01 ;;
  }


  measure: diff_02_avg  {
    type: average
    sql: ${TABLE}.diff_02 ;;
  }

  measure: diff_03_avg  {
    type: average
    sql: ${TABLE}.diff_03 ;;
  }

  measure: diff_04_avg  {
    type: average
    sql: ${TABLE}.diff_04 ;;
  }

  measure: diff_05_avg  {
    type: average
    sql: ${TABLE}.diff_05 ;;
  }

  measure: diff_06_avg  {
    type: average
    sql: ${TABLE}.diff_06 ;;
  }


}
