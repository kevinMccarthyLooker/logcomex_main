view: follow_up_status {

  derived_table: {
    sql:
SELECT distinct 'maritimo' as modal,
c.id as customer_id,
c."name" as customer_name,
tpi.force_certificate as force_certificate,
fu1.tracking_id,
date(t2.created_at) as created_at,
concat('maritimo|',fu1.tracking_id) as chave,
case when (extract(epoch from (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 0 limit 1)::timestamp - (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 11 limit 1)::timestamp)) / 3600.00 < 0 then null
     else (extract(epoch from (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 0 limit 1)::timestamp - (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 11 limit 1)::timestamp)) / 3600.00 end as diff_00,-- Documento -> VALIDANDO EMBARQUE
case when (extract(epoch from (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 1 limit 1)::timestamp - (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 0 limit 1)::timestamp))  / 3600.00 < 0 then null
     else (extract(epoch from (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 1 limit 1)::timestamp - (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 0 limit 1)::timestamp))  / 3600.00 end as diff_01,-- Validando -> Transito Int.
case when (extract(epoch from (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 2 limit 1)::timestamp - (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 0 limit 1)::timestamp))  / 3600.00 < 0 then null
     else (extract(epoch from (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 2 limit 1)::timestamp - (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 0 limit 1)::timestamp))  / 3600.00 end as diff_02,-- Validando -> Manifestado
case when (extract(epoch from (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 2 limit 1)::timestamp - (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 1 limit 1)::timestamp))  / 3600.00 < 0 then null
     else (extract(epoch from (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 2 limit 1)::timestamp - (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 1 limit 1)::timestamp))  / 3600.00 end as diff_03,-- Transito Int -> Manifestado
case when (extract(epoch from (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 3 limit 1)::timestamp - (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 2 limit 1)::timestamp))  / 3600.00 < 0 then null
     else (extract(epoch from (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 3 limit 1)::timestamp - (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 2 limit 1)::timestamp))  / 3600.00 end as diff_04,-- Manifestado -> Reg. Presenca
case when (extract(epoch from (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 4 limit 1)::timestamp - (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 3 limit 1)::timestamp))  / 3600.00 < 0 then null
     else (extract(epoch from (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 4 limit 1)::timestamp - (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 3 limit 1)::timestamp))  / 3600.00 end as diff_05,-- Reg. Presenca -> Reg. DTA
case when (extract(epoch from (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 5 limit 1)::timestamp - (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 3 limit 1)::timestamp))  / 3600.00 < 0 then null
     else (extract(epoch from (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 5 limit 1)::timestamp - (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 3 limit 1)::timestamp))  / 3600.00 end as diff_06,-- Reg. Presenca -> Reg. DI
case when (extract(epoch from (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 5 limit 1)::timestamp - (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 4 limit 1)::timestamp))  / 3600.00 < 0 then null
     else (extract(epoch from (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 5 limit 1)::timestamp - (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 4 limit 1)::timestamp))  / 3600.00 end as diff_07,-- Reg. DTA -> Reg. DI
case when (extract(epoch from (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 9 limit 1)::timestamp - (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 5 limit 1)::timestamp))  / 3600.00 < 0 then null
     else (extract(epoch from (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 9 limit 1)::timestamp - (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 5 limit 1)::timestamp))  / 3600.00 end as diff_08,-- Reg. DI -> DI Desemb.
case when (extract(epoch from (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 6 limit 1)::timestamp - (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 9 limit 1)::timestamp))  / 3600.00 < 0 then null
     else (extract(epoch from (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 6 limit 1)::timestamp - (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 9 limit 1)::timestamp))  / 3600.00 end as diff_09,-- DI Desemb. -> Lib. Carregamento
null::float as diff_10
FROM follow_up fu1
inner join tracking t2 on t2.id = fu1.tracking_id
inner join customer c on c.id = t2.customer_id
inner join customer_plan cp on cp.customer_id = c.id
inner join tracking_plan_info tpi on tpi.id = cp.tracking_plan_info_id
where fu1.deleted_at is null
and c.deleted_at is null
and c.fake_customer is false
and cp.deleted_at is null
union
SELECT distinct 'aereo' as modal,
c.id as customer_id,
c."name" as customer_name,
tpi.force_certificate as force_certificate,
fu1.tracking_aerial_id as tracking_id,
date(ta.created_at) as created_at,
concat('aereo|',fu1.tracking_aerial_id) as chave,
case when (extract(epoch from (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 0 and extract('YEAR' from follow_up.date_time) > 1900 limit 1)::timestamp - (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 10 and extract('YEAR' from follow_up.date_time) > 1900 limit 1)::timestamp)) / 3600.00 < 0 then null
     else (extract(epoch from (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 0 and extract('YEAR' from follow_up.date_time) > 1900 limit 1)::timestamp - (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 10 and extract('YEAR' from follow_up.date_time) > 1900 limit 1)::timestamp)) / 3600.00 end AS diff_00,-- Aguardando Doc. -> Pendente Mantra
case when (extract(epoch from (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 1 and extract('YEAR' from follow_up.date_time) > 1900 limit 1)::timestamp - (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 0  and extract('YEAR' from follow_up.date_time) > 1900 limit 1)::timestamp)) / 3600.00 < 0 then null
     else (extract(epoch from (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 1 and extract('YEAR' from follow_up.date_time) > 1900 limit 1)::timestamp - (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 0  and extract('YEAR' from follow_up.date_time) > 1900 limit 1)::timestamp)) / 3600.00 end AS diff_01,-- Pendente M. -> Transito Int.
case when (extract(epoch from (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 2 and extract('YEAR' from follow_up.date_time) > 1900 limit 1)::timestamp - (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 1  and extract('YEAR' from follow_up.date_time) > 1900 limit 1)::timestamp)) / 3600.00 < 0 then null
     else (extract(epoch from (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 2 and extract('YEAR' from follow_up.date_time) > 1900 limit 1)::timestamp - (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 1  and extract('YEAR' from follow_up.date_time) > 1900 limit 1)::timestamp)) / 3600.00 end AS diff_02,-- Transito Int. -> Chegada Dest.
case when (extract(epoch from (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 3 and extract('YEAR' from follow_up.date_time) > 1900 limit 1)::timestamp - (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 2  and extract('YEAR' from follow_up.date_time) > 1900 limit 1)::timestamp)) / 3600.00 < 0 then null
     else (extract(epoch from (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 3 and extract('YEAR' from follow_up.date_time) > 1900 limit 1)::timestamp - (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 2  and extract('YEAR' from follow_up.date_time) > 1900 limit 1)::timestamp)) / 3600.00 end AS diff_03,-- Chegada Dest. -> Registro DTA
case when (extract(epoch from (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 4 and extract('YEAR' from follow_up.date_time) > 1900 limit 1)::timestamp - (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 2  and extract('YEAR' from follow_up.date_time) > 1900 limit 1)::timestamp)) / 3600.00 < 0 then null
     else (extract(epoch from (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 4 and extract('YEAR' from follow_up.date_time) > 1900 limit 1)::timestamp - (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 2  and extract('YEAR' from follow_up.date_time) > 1900 limit 1)::timestamp)) / 3600.00 end AS diff_04,-- Chegada Dest. -> Visado
case when (extract(epoch from (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 6 and extract('YEAR' from follow_up.date_time) > 1900 limit 1)::timestamp - (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 3  and extract('YEAR' from follow_up.date_time) > 1900 limit 1)::timestamp)) / 3600.00 < 0 then null
     else (extract(epoch from (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 6 and extract('YEAR' from follow_up.date_time) > 1900 limit 1)::timestamp - (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 3  and extract('YEAR' from follow_up.date_time) > 1900 limit 1)::timestamp)) / 3600.00 end AS diff_05,-- Registro DTA -> DTA Desemb.
case when (extract(epoch from (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 5 and extract('YEAR' from follow_up.date_time) > 1900 limit 1)::timestamp - (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 4  and extract('YEAR' from follow_up.date_time) > 1900 limit 1)::timestamp)) / 3600.00 < 0 then null
     else (extract(epoch from (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 5 and extract('YEAR' from follow_up.date_time) > 1900 limit 1)::timestamp - (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 4  and extract('YEAR' from follow_up.date_time) > 1900 limit 1)::timestamp)) / 3600.00 end AS diff_06,-- Visado -> Registro DI
case when (extract(epoch from (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 5 and extract('YEAR' from follow_up.date_time) > 1900 limit 1)::timestamp - (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 6  and extract('YEAR' from follow_up.date_time) > 1900 limit 1)::timestamp)) / 3600.00 < 0 then null
     else (extract(epoch from (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 5 and extract('YEAR' from follow_up.date_time) > 1900 limit 1)::timestamp - (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 6  and extract('YEAR' from follow_up.date_time) > 1900 limit 1)::timestamp)) / 3600.00 end AS diff_07,-- DTA Desemb. -> Registro DI
case when (extract(epoch from (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 9 and extract('YEAR' from follow_up.date_time) > 1900 limit 1)::timestamp - (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 5  and extract('YEAR' from follow_up.date_time) > 1900 limit 1)::timestamp)) / 3600.00 < 0 then null
     else (extract(epoch from (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 9 and extract('YEAR' from follow_up.date_time) > 1900 limit 1)::timestamp - (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 5  and extract('YEAR' from follow_up.date_time) > 1900 limit 1)::timestamp)) / 3600.00 end AS diff_08,-- Registro DI -> DI Parametrizada
case when (extract(epoch from (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 8 and extract('YEAR' from follow_up.date_time) > 1900 limit 1)::timestamp - (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 9  and extract('YEAR' from follow_up.date_time) > 1900 limit 1)::timestamp)) / 3600.00 < 0 then null
     else (extract(epoch from (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 8 and extract('YEAR' from follow_up.date_time) > 1900 limit 1)::timestamp - (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 9  and extract('YEAR' from follow_up.date_time) > 1900 limit 1)::timestamp)) / 3600.00 end AS diff_09,-- DI Parametrizada -> Di Desemb.
case when (extract(epoch from (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 7 and extract('YEAR' from follow_up.date_time) > 1900 limit 1)::timestamp - (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 8  and extract('YEAR' from follow_up.date_time) > 1900 limit 1)::timestamp)) / 3600.00 < 0 then null
     else (extract(epoch from (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 7 and extract('YEAR' from follow_up.date_time) > 1900 limit 1)::timestamp - (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 8  and extract('YEAR' from follow_up.date_time) > 1900 limit 1)::timestamp)) / 3600.00 end AS diff_10 -- Di Desemb. -> Recebida
FROM follow_up fu1
inner join tracking_aerial ta on ta.id = fu1.tracking_aerial_id
inner join customer c on c.id = ta.customer_id
inner join customer_plan cp on cp.customer_id = c.id
inner join tracking_plan_info tpi on tpi.id = cp.tracking_plan_info_id
where c.fake_customer is false and c.deleted_at is null
and cp.deleted_at is null;;
indexes: ["chave"]
sql_trigger_value: select current_date;;
}


  dimension: chave  {
    primary_key: yes
    type: string
    sql: ${TABLE}.chave ;;
  }

  dimension: customer_id  {
    type: number
    sql: ${TABLE}.customer_id ;;
  }

  dimension: customer_name  {
    type: string
    sql: ${TABLE}.customer_name ;;
  }

  dimension: force_certificate  {
    type: yesno
    sql: ${TABLE}.force_certificate ;;
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

  dimension: diff_07 {
    type: number
    sql: ${TABLE}.diff_06 ;;
  }

  dimension: diff_08 {
    type: number
    sql: ${TABLE}.diff_06 ;;
  }

  dimension: diff_09 {
    type: number
    sql: ${TABLE}.diff_06 ;;
  }

  dimension: diff_10 {
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

  measure: diff_07_avg  {
    type: average
    sql: ${TABLE}.diff_06 ;;
  }

  measure: diff_08_avg  {
    type: average
    sql: ${TABLE}.diff_06 ;;
  }

  measure: diff_09_avg  {
    type: average
    sql: ${TABLE}.diff_06 ;;
  }

  measure: diff_10_avg  {
    type: average
    sql: ${TABLE}.diff_10 ;;
  }


}
