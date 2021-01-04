view: follow_up_status {

  derived_table: {
    sql:
SELECT distinct 'maritimo' as modal, fu1.tracking_id, date(t2.created_at) as created_at, concat('maritimo|',fu1.tracking_id) as chave,
case when (date_part('day',(SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 2 limit 1)::timestamp - (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 11 limit 1)::timestamp)) < 0 then null
     else (date_part('day',(SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 2 limit 1)::timestamp - (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 11 limit 1)::timestamp)) end aS diff_00, -- BL_manifestado
case when (date_part('day',(SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 2 limit 1)::timestamp - (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 0 limit 1)::timestamp)) < 0 then null
     else (date_part('day',(SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 2 limit 1)::timestamp - (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 0 limit 1)::timestamp)) end as diff_01, -- validando_manifestado
case when (date_part('day',(SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 3 limit 1)::timestamp - (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 2 limit 1)::timestamp)) < 0 then null
     else (date_part('day',(SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 3 limit 1)::timestamp - (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 2 limit 1)::timestamp)) end as diff_02, --manifestado_presenca
case when (date_part('day',(SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 5 limit 1)::timestamp - (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 3 limit 1)::timestamp)) < 0 then null
     else (date_part('day',(SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 5 limit 1)::timestamp - (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 3 limit 1)::timestamp)) end aS diff_03, --presenca_di
case when (date_part('day',(SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 9 limit 1)::timestamp - (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 5 limit 1)::timestamp)) < 0 then null
     else (date_part('day',(SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 9 limit 1)::timestamp - (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 5 limit 1)::timestamp)) end aS diff_04, --di_desembaracada
case when (date_part('day',(SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 6 limit 1)::timestamp - (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 9 limit 1)::timestamp)) < 0 then null
     else (date_part('day',(SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 6 limit 1)::timestamp - (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 9 limit 1)::timestamp)) end aS diff_05, --desembaracada_liberado
null::float as diff_06
FROM follow_up fu1
inner join tracking t2 on t2.id = fu1.tracking_id
where fu1.deleted_at is null
union
SELECT distinct 'aereo' as modal, fu1.tracking_aerial_id as tracking_id, date(ta.created_at) as created_at, concat('aereo|',fu1.tracking_aerial_id) as chave,
case when (date_part('day',(SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 1 limit 1)::timestamp - (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 0 limit 1)::timestamp)) < 0 then null
     else (date_part('day',(SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 1 limit 1)::timestamp - (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 0 limit 1)::timestamp)) end AS diff_00, -- mantra_transito
case when (date_part('day',(SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 2 and extract('YEAR' from follow_up.date_time) > 1900 limit 1)::timestamp - (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 1 and extract('YEAR' from follow_up.date_time) > 1900 limit 1)::timestamp)) < 0 then null
     else (date_part('day',(SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 2 and extract('YEAR' from follow_up.date_time) > 1900 limit 1)::timestamp - (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 1 and extract('YEAR' from follow_up.date_time) > 1900 limit 1)::timestamp)) end AS diff_01, -- transitoInt_chegada
case when (date_part('day',(SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 3 limit 1)::timestamp - (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 2 limit 1)::timestamp)) < 0 then null
     else (date_part('day',(SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 3 limit 1)::timestamp - (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 2 limit 1)::timestamp)) end AS diff_02, -- chegada_registro_dta
case when (date_part('day',(SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 4 limit 1)::timestamp - (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 3 limit 1)::timestamp)) < 0 then null
     else (date_part('day',(SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 4 limit 1)::timestamp - (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 3 limit 1)::timestamp)) end AS diff_03, -- registro_dta_visado
case when (date_part('day',(SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 5 limit 1)::timestamp - (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 4 limit 1)::timestamp)) < 0 then null
     else (date_part('day',(SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 5 limit 1)::timestamp - (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 4 limit 1)::timestamp)) end AS diff_04, -- visado_registroDI
case when (date_part('day',(SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 8 limit 1)::timestamp - (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 5 limit 1)::timestamp)) < 0 then null
     else (date_part('day',(SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 8 limit 1)::timestamp - (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 5 limit 1)::timestamp)) end AS diff_05, -- registroDI_diDesembaracada
case when (date_part('day',(SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 7 limit 1)::timestamp - (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 8 limit 1)::timestamp)) < 0 then null
     else (date_part('day',(SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 7 limit 1)::timestamp - (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 8 limit 1)::timestamp)) end AS diff_06  -- diDesembaraca_recebida
FROM follow_up fu1
inner join tracking_aerial ta on ta.id = fu1.tracking_aerial_id ;;
}


  dimension: chave  {
    primary_key: yes
    type: string
    sql: ${TABLE}.chave ;;
  }

  dimension: tracking_id {
    type: number
    sql: ${TABLE}.tracking_id ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."created_at" ;;
  }

  dimension: diff_00 {
    type: number
    sql: ${TABLE}.diff_00 ;;
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

  measure: diff_00_avg  {
    type: average
    sql: ${TABLE}.diff_00 ;;
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
