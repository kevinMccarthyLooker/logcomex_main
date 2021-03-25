view: follow_up_status {
  derived_table: {
    sql:
SELECT distinct 'maritimo' as modal,
c.id as customer_id,
c."name" as customer_name,
tpi.force_certificate as force_certificate,
fu1.tracking_id,
date(t2.created_at) as created_at,
t2."token" as cod_token,
concat('maritimo|',fu1.tracking_id) as chave,
--case when (extract(epoch from (SELECT min(follow_up.date_time) FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 0 limit 1)::timestamp - (SELECT min(follow_up.date_time) FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 11 and extract('YEAR' from follow_up.date_time) > 1970 limit 1)::timestamp)) / 3600.00 < 0 then null
--     else (extract(epoch from (SELECT min(follow_up.date_time) FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 0 limit 1)::timestamp - (SELECT min(follow_up.date_time) FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 11 and extract('YEAR' from follow_up.date_time) > 1970 limit 1)::timestamp)) / 3600.00 end as diff_00,-- Documento -> VALIDANDO EMBARQUE
null::float as diff_00,
--case when (extract(epoch from (SELECT min(follow_up.date_time) FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 1 limit 1)::timestamp - (SELECT min(follow_up.date_time) FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 0  and extract('YEAR' from follow_up.date_time) > 1970 limit 1)::timestamp)) / 3600.00 < 0 then null
--     else (extract(epoch from (SELECT min(follow_up.date_time) FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 1 limit 1)::timestamp - (SELECT min(follow_up.date_time) FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 0  and extract('YEAR' from follow_up.date_time) > 1970 limit 1)::timestamp)) / 3600.00 end as diff_01,-- Validando -> Transito Int.
null::float as diff_01,
case when (extract(epoch from (SELECT min(follow_up.date_time) FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 2 limit 1)::timestamp - (SELECT min(follow_up.date_time) FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 0  and extract('YEAR' from follow_up.date_time) > 1970 limit 1)::timestamp)) / 3600.00 < 0 then null
     else (extract(epoch from (SELECT min(follow_up.date_time) FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 2 limit 1)::timestamp - (SELECT min(follow_up.date_time) FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 0  and extract('YEAR' from follow_up.date_time) > 1970 limit 1)::timestamp))  / 3600.00 end as diff_02,-- Validando -> Manifestado
--case when (extract(epoch from (SELECT min(follow_up.date_time) FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 2 limit 1)::timestamp - (SELECT min(follow_up.date_time) FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 1  and extract('YEAR' from follow_up.date_time) > 1970 limit 1)::timestamp))  / 3600.00 < 0 then null
--     else (extract(epoch from (SELECT min(follow_up.date_time) FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 2 limit 1)::timestamp - (SELECT min(follow_up.date_time) FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 1  and extract('YEAR' from follow_up.date_time) > 1970 limit 1)::timestamp))  / 3600.00 end as diff_03,-- Transito Int -> Manifestado
null::float as diff_03,
case when (extract(epoch from (SELECT min(follow_up.date_time) FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 3 limit 1)::timestamp - (SELECT min(follow_up.date_time) FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 2  and extract('YEAR' from follow_up.date_time) > 1970 limit 1)::timestamp))  / 3600.00 < 0 then null
     else (extract(epoch from (SELECT min(follow_up.date_time) FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 3 limit 1)::timestamp - (SELECT min(follow_up.date_time) FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 2  and extract('YEAR' from follow_up.date_time) > 1970 limit 1)::timestamp))  / 3600.00 end as diff_04,-- Manifestado -> Reg. Presenca
case when (extract(epoch from (SELECT min(follow_up.date_time) FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 4 limit 1)::timestamp - (SELECT min(follow_up.date_time) FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 3  and extract('YEAR' from follow_up.date_time) > 1970 limit 1)::timestamp))  / 3600.00 < 0 then null
     else (extract(epoch from (SELECT min(follow_up.date_time) FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 4 limit 1)::timestamp - (SELECT min(follow_up.date_time) FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 3  and extract('YEAR' from follow_up.date_time) > 1970 limit 1)::timestamp))  / 3600.00 end as diff_05,-- Reg. Presenca -> Reg. DTA
case when (extract(epoch from (SELECT min(follow_up.date_time) FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 5 limit 1)::timestamp - (SELECT min(follow_up.date_time) FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 3  and extract('YEAR' from follow_up.date_time) > 1970 limit 1)::timestamp))  / 3600.00 < 0 then null
     else (extract(epoch from (SELECT min(follow_up.date_time) FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 5 limit 1)::timestamp - (SELECT min(follow_up.date_time) FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 3  and extract('YEAR' from follow_up.date_time) > 1970 limit 1)::timestamp))  / 3600.00 end as diff_06,-- Reg. Presenca -> Reg. DI
case when (extract(epoch from (SELECT min(follow_up.date_time) FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 5 limit 1)::timestamp - (SELECT min(follow_up.date_time) FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 4  and extract('YEAR' from follow_up.date_time) > 1970 limit 1)::timestamp))  / 3600.00 < 0 then null
     else (extract(epoch from (SELECT min(follow_up.date_time) FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 5 limit 1)::timestamp - (SELECT min(follow_up.date_time) FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 4  and extract('YEAR' from follow_up.date_time) > 1970 limit 1)::timestamp))  / 3600.00 end as diff_07,-- Reg. DTA -> Reg. DI
case when (extract(epoch from (SELECT min(follow_up.date_time) FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 9 limit 1)::timestamp - (SELECT min(follow_up.date_time) FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 5  and extract('YEAR' from follow_up.date_time) > 1970 limit 1)::timestamp))  / 3600.00 < 0 then null
     else (extract(epoch from (SELECT min(follow_up.date_time) FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 9 limit 1)::timestamp - (SELECT min(follow_up.date_time) FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 5  and extract('YEAR' from follow_up.date_time) > 1970 limit 1)::timestamp))  / 3600.00 end as diff_08,-- Reg. DI -> DI Desemb.
case when (extract(epoch from (SELECT min(follow_up.date_time) FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 6 limit 1)::timestamp - (SELECT min(follow_up.date_time) FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 9  and extract('YEAR' from follow_up.date_time) > 1970 limit 1)::timestamp))  / 3600.00 < 0 then null
     else (extract(epoch from (SELECT min(follow_up.date_time) FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 6 limit 1)::timestamp - (SELECT min(follow_up.date_time) FROM follow_up WHERE follow_up.tracking_id = fu1.tracking_id AND follow_up.tracking_status_id = 9  and extract('YEAR' from follow_up.date_time) > 1970 limit 1)::timestamp))  / 3600.00 end as diff_09,-- DI Desemb. -> Lib. Carregamento
null::float as diff_10,
null::float as diff_11
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
ta."token" as cod_token,
concat('aereo|',fu1.tracking_aerial_id) as chave,
--case when (extract(epoch from (SELECT min(follow_up.date_time) FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 0 and extract('YEAR' from follow_up.date_time) > 1970 limit 1)::timestamp - (SELECT min(follow_up.date_time) FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 10 and extract('YEAR' from follow_up.date_time) > 1970 limit 1)::timestamp)) / 3600.00 < 0 then null
--     else (extract(epoch from (SELECT min(follow_up.date_time) FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 0 and extract('YEAR' from follow_up.date_time) > 1970 limit 1)::timestamp - (SELECT min(follow_up.date_time) FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 10 and extract('YEAR' from follow_up.date_time) > 1970 limit 1)::timestamp)) / 3600.00 end AS diff_00,-- Aguardando Doc. -> Pendente Mantra
null::float as diff_00,
case when (extract(epoch from (SELECT min(follow_up.date_time) FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 1 and extract('YEAR' from follow_up.date_time) > 1970 limit 1)::timestamp - (SELECT min(follow_up.date_time) FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 0  and extract('YEAR' from follow_up.date_time) > 1970 limit 1)::timestamp)) / 3600.00 < 0 then null
     else (extract(epoch from (SELECT min(follow_up.date_time) FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 1 and extract('YEAR' from follow_up.date_time) > 1970 limit 1)::timestamp - (SELECT min(follow_up.date_time) FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 0  and extract('YEAR' from follow_up.date_time) > 1970 limit 1)::timestamp)) / 3600.00 end AS diff_01,-- Pendente M. -> Transito Int.
case when (extract(epoch from (SELECT min(follow_up.date_time) FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 2 and extract('YEAR' from follow_up.date_time) > 1970 limit 1)::timestamp - (SELECT min(follow_up.date_time) FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 1  and extract('YEAR' from follow_up.date_time) > 1970 limit 1)::timestamp)) / 3600.00 < 0 then null
     else (extract(epoch from (SELECT min(follow_up.date_time) FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 2 and extract('YEAR' from follow_up.date_time) > 1970 limit 1)::timestamp - (SELECT min(follow_up.date_time) FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 1  and extract('YEAR' from follow_up.date_time) > 1970 limit 1)::timestamp)) / 3600.00 end AS diff_02,-- Transito Int. -> Chegada Dest.
case when (extract(epoch from (SELECT min(follow_up.date_time) FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 3 and extract('YEAR' from follow_up.date_time) > 1970 limit 1)::timestamp - (SELECT min(follow_up.date_time) FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 2  and extract('YEAR' from follow_up.date_time) > 1970 limit 1)::timestamp)) / 3600.00 < 0 then null
     else (extract(epoch from (SELECT min(follow_up.date_time) FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 3 and extract('YEAR' from follow_up.date_time) > 1970 limit 1)::timestamp - (SELECT min(follow_up.date_time) FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 2  and extract('YEAR' from follow_up.date_time) > 1970 limit 1)::timestamp)) / 3600.00 end AS diff_03,-- Chegada Dest. -> Registro DTA
case when (extract(epoch from (SELECT min(follow_up.date_time) FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 4 and extract('YEAR' from follow_up.date_time) > 1970 limit 1)::timestamp - (SELECT min(follow_up.date_time) FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 2  and extract('YEAR' from follow_up.date_time) > 1970 limit 1)::timestamp)) / 3600.00 < 0 then null
     else (extract(epoch from (SELECT min(follow_up.date_time) FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 4 and extract('YEAR' from follow_up.date_time) > 1970 limit 1)::timestamp - (SELECT min(follow_up.date_time) FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 2  and extract('YEAR' from follow_up.date_time) > 1970 limit 1)::timestamp)) / 3600.00 end AS diff_04,-- Chegada Dest. -> Visado
case when (extract(epoch from (SELECT min(follow_up.date_time) FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 6 and extract('YEAR' from follow_up.date_time) > 1970 limit 1)::timestamp - (SELECT min(follow_up.date_time) FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 3  and extract('YEAR' from follow_up.date_time) > 1970 limit 1)::timestamp)) / 3600.00 < 0 then null
     else (extract(epoch from (SELECT min(follow_up.date_time) FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 6 and extract('YEAR' from follow_up.date_time) > 1970 limit 1)::timestamp - (SELECT min(follow_up.date_time) FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 3  and extract('YEAR' from follow_up.date_time) > 1970 limit 1)::timestamp)) / 3600.00 end AS diff_05,-- Registro DTA -> DTA Desemb.
case when (extract(epoch from (SELECT min(follow_up.date_time) FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 5 and extract('YEAR' from follow_up.date_time) > 1970 limit 1)::timestamp - (SELECT min(follow_up.date_time) FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 4  and extract('YEAR' from follow_up.date_time) > 1970 limit 1)::timestamp)) / 3600.00 < 0 then null
     else (extract(epoch from (SELECT min(follow_up.date_time) FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 5 and extract('YEAR' from follow_up.date_time) > 1970 limit 1)::timestamp - (SELECT min(follow_up.date_time) FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 4  and extract('YEAR' from follow_up.date_time) > 1970 limit 1)::timestamp)) / 3600.00 end AS diff_06,-- Visado -> Registro DI
case when (extract(epoch from (SELECT min(follow_up.date_time) FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 5 and extract('YEAR' from follow_up.date_time) > 1970 limit 1)::timestamp - (SELECT min(follow_up.date_time) FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 6  and extract('YEAR' from follow_up.date_time) > 1970 limit 1)::timestamp)) / 3600.00 < 0 then null
     else (extract(epoch from (SELECT min(follow_up.date_time) FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 5 and extract('YEAR' from follow_up.date_time) > 1970 limit 1)::timestamp - (SELECT min(follow_up.date_time) FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 6  and extract('YEAR' from follow_up.date_time) > 1970 limit 1)::timestamp)) / 3600.00 end AS diff_07,-- DTA Desemb. -> Registro DI
case when (extract(epoch from (SELECT min(follow_up.date_time) FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 9 and extract('YEAR' from follow_up.date_time) > 1970 limit 1)::timestamp - (SELECT min(follow_up.date_time) FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 5  and extract('YEAR' from follow_up.date_time) > 1970 limit 1)::timestamp)) / 3600.00 < 0 then null
     else (extract(epoch from (SELECT min(follow_up.date_time) FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 9 and extract('YEAR' from follow_up.date_time) > 1970 limit 1)::timestamp - (SELECT min(follow_up.date_time) FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 5  and extract('YEAR' from follow_up.date_time) > 1970 limit 1)::timestamp)) / 3600.00 end AS diff_08,-- Registro DI -> DI Parametrizada
case when (extract(epoch from (SELECT min(follow_up.date_time) FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 8 and extract('YEAR' from follow_up.date_time) > 1970 limit 1)::timestamp - (SELECT min(follow_up.date_time) FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 9  and extract('YEAR' from follow_up.date_time) > 1970 limit 1)::timestamp)) / 3600.00 < 0 then null
     else (extract(epoch from (SELECT min(follow_up.date_time) FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 8 and extract('YEAR' from follow_up.date_time) > 1970 limit 1)::timestamp - (SELECT min(follow_up.date_time) FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 9  and extract('YEAR' from follow_up.date_time) > 1970 limit 1)::timestamp)) / 3600.00 end AS diff_09,-- DI Parametrizada -> Di Desemb.
case when (extract(epoch from (SELECT min(follow_up.date_time) FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 8 and extract('YEAR' from follow_up.date_time) > 1970 limit 1)::timestamp - (SELECT min(follow_up.date_time) FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 5  and extract('YEAR' from follow_up.date_time) > 1970 limit 1)::timestamp)) / 3600.00 < 0 then null
     else (extract(epoch from (SELECT min(follow_up.date_time) FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 8 and extract('YEAR' from follow_up.date_time) > 1970 limit 1)::timestamp - (SELECT min(follow_up.date_time) FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 5  and extract('YEAR' from follow_up.date_time) > 1970 limit 1)::timestamp)) / 3600.00 end AS diff_10,-- Registro DI -> DI Desemb
case when (extract(epoch from (SELECT min(follow_up.date_time) FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 7 and extract('YEAR' from follow_up.date_time) > 1970 limit 1)::timestamp - (SELECT min(follow_up.date_time) FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 8  and extract('YEAR' from follow_up.date_time) > 1970 limit 1)::timestamp)) / 3600.00 < 0 then null
     else (extract(epoch from (SELECT min(follow_up.date_time) FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 7 and extract('YEAR' from follow_up.date_time) > 1970 limit 1)::timestamp - (SELECT min(follow_up.date_time) FROM follow_up WHERE follow_up.tracking_aerial_id = fu1.tracking_aerial_id AND follow_up.tracking_aerial_status_id = 8  and extract('YEAR' from follow_up.date_time) > 1970 limit 1)::timestamp)) / 3600.00 end AS diff_11 -- DI Desemb. -> Recebida
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
    type: string
    sql: case when ${TABLE}.force_certificate is false then 'No' else 'Yes' end ;;
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

  dimension: cod_token {
    type: string
    sql: ${TABLE}.cod_token ;;
    link: {
      label: "Tracking-Logcomex"
      url: "https://sistema.logcomex.io/#/tracking/{{ value }}"
    }
  }

  dimension: diff_00_hour {
    type: number
    sql: ${TABLE}.diff_00 ;;
  }

  dimension: diff_01_hour  {
    type: number
    sql: ${TABLE}.diff_01 ;;
  }

  dimension: diff_02_hour  {
    type: number
    sql: ${TABLE}.diff_02 ;;
  }

  dimension: diff_03_hour  {
    type: number
    sql: ${TABLE}.diff_03 ;;
  }

  dimension: diff_04_hour  {
    type: number
    sql: ${TABLE}.diff_04 ;;
  }

  dimension: diff_05_hour  {
    type: number
    sql: ${TABLE}.diff_05 ;;
  }

  dimension: diff_06_hour {
    type: number
    sql: ${TABLE}.diff_06 ;;
  }

  dimension: diff_07_hour {
    type: number
    sql: ${TABLE}.diff_07 ;;
  }

  dimension: diff_08_hour {
    type: number
    sql: ${TABLE}.diff_08 ;;
  }

  dimension: diff_09_hour {
    type: number
    sql: ${TABLE}.diff_09 ;;
  }

  dimension: diff_10_hour {
    type: number
    sql: ${TABLE}.diff_10 ;;
  }

  dimension: diff_11_hour {
    type: number
    sql: ${TABLE}.diff_11 ;;
  }

  dimension: modal {
    type: string
    sql: ${TABLE}.modal ;;
  }

  dimension: diff_00_day {
    type: number
    sql: ${TABLE}.diff_00/24 ;;
  }

  dimension: diff_01_day  {
    type: number
    sql: ${TABLE}.diff_01/24 ;;
  }

  dimension: diff_02_day  {
    type: number
    sql: ${TABLE}.diff_02/24 ;;
  }

  dimension: diff_03_day  {
    type: number
    sql: ${TABLE}.diff_03/24 ;;
  }

  dimension: diff_04_day  {
    type: number
    sql: ${TABLE}.diff_04/24 ;;
  }

  dimension: diff_05_day  {
    type: number
    sql: ${TABLE}.diff_05/24 ;;
  }

  dimension: diff_06_day {
    type: number
    sql: ${TABLE}.diff_06/24 ;;
  }

  dimension: diff_07_day {
    type: number
    sql: ${TABLE}.diff_07/24 ;;
  }

  dimension: diff_08_day {
    type: number
    sql: ${TABLE}.diff_08/24 ;;
  }

  dimension: diff_09_day {
    type: number
    sql: ${TABLE}.diff_09/24 ;;
  }

  dimension: diff_10_day {
    type: number
    sql: ${TABLE}.diff_10/24 ;;
  }

  dimension: diff_11_day {
    type: number
    sql: ${TABLE}.diff_11/24 ;;
  }

  measure: diff_00_avg_hour  {
    type: average
    sql: ${TABLE}.diff_00 ;;
  }

  measure: diff_01_avg_hour  {
    type: average
    sql: ${TABLE}.diff_01 ;;
  }

  measure: diff_02_avg_hour  {
    type: average
    sql: ${TABLE}.diff_02 ;;
  }

  measure: diff_03_avg_hour  {
    type: average
    sql: ${TABLE}.diff_03 ;;
  }

  measure: diff_04_avg_hour  {
    type: average
    sql: ${TABLE}.diff_04 ;;
  }

  measure: diff_05_avg_hour  {
    type: average
    sql: ${TABLE}.diff_05 ;;
  }

  measure: diff_06_avg_hour  {
    type: average
    sql: ${TABLE}.diff_06 ;;
  }

  measure: diff_07_avg_hour  {
    type: average
    sql: ${TABLE}.diff_07 ;;
  }

  measure: diff_08_avg_hour  {
    type: average
    sql: ${TABLE}.diff_08 ;;
  }

  measure: diff_09_avg_hour  {
    type: average
    sql: ${TABLE}.diff_09 ;;
  }

  measure: diff_10_avg_hour  {
    type: average
    sql: ${TABLE}.diff_10 ;;
  }

  measure: diff_11_avg_hour  {
    type: average
    sql: ${TABLE}.diff_11 ;;
  }

  measure: diff_00_avg_day  {
    type: average
    sql: ${diff_00_day} ;;
  }

  measure: diff_01_avg_day  {
    type: average
    sql: ${diff_01_day} ;;
  }

  measure: diff_02_avg_day  {
    type: average
    sql: ${diff_02_day} ;;
  }

  measure: diff_03_avg_day  {
    type: average
    sql: ${diff_03_day} ;;
  }

  measure: diff_04_avg_day  {
    type: average
    sql: ${diff_04_day} ;;
  }

  measure: diff_05_avg_day  {
    type: average
    sql: ${diff_05_day} ;;
  }

  measure: diff_06_avg_day  {
    type: average
    sql: ${diff_06_day} ;;
  }

  measure: diff_07_avg_day  {
    type: average
    sql: ${diff_07_day} ;;
  }

  measure: diff_08_avg_day {
    type: average
    sql: ${diff_08_day} ;;
  }

  measure: diff_09_avg_day  {
    type: average
    sql: ${diff_09_day} ;;
  }

  measure: diff_10_avg_day  {
    type: average
    sql: ${diff_10_day} ;;
  }

  measure: diff_11_avg_day  {
    type: average
    sql: ${diff_11_day} ;;
  }

  measure: diff_00_max_day  {
    type: max
    sql: ${diff_00_day} ;;
  }

  measure: diff_01_max_day  {
    type: max
    sql: ${diff_01_day} ;;
  }

  measure: diff_02_max_day  {
    type: max
    sql: ${diff_02_day} ;;
  }

  measure: diff_03_max_day  {
    type: max
    sql: ${diff_03_day} ;;
  }

  measure: diff_04_max_day  {
    type: max
    sql: ${diff_04_day} ;;
  }

  measure: diff_05_max_day  {
    type: max
    sql: ${diff_05_day} ;;
  }

  measure: diff_06_max_day  {
    type: max
    sql: ${diff_06_day} ;;
  }

  measure: diff_07_max_day  {
    type: max
    sql: ${diff_07_day} ;;
  }

  measure: diff_08_max_day {
    type: max
    sql: ${diff_08_day} ;;
  }

  measure: diff_09_max_day  {
    type: max
    sql: ${diff_09_day} ;;
  }

  measure: diff_10_max_day  {
    type: max
    sql: ${diff_10_day} ;;
  }

  measure: diff_11_max_day  {
    type: max
    sql: ${diff_11_day} ;;
  }

  measure: diff_00_min_day  {
    type: min
    sql: ${diff_00_day} ;;
  }

  measure: diff_01_min_day  {
    type: min
    sql: ${diff_01_day} ;;
  }

  measure: diff_02_min_day  {
    type: min
    sql: ${diff_02_day} ;;
  }

  measure: diff_03_min_day  {
    type: min
    sql: ${diff_03_day} ;;
  }

  measure: diff_04_min_day  {
    type: min
    sql: ${diff_04_day} ;;
  }

  measure: diff_05_min_day  {
    type: min
    sql: ${diff_05_day} ;;
  }

  measure: diff_06_min_day  {
    type: min
    sql: ${diff_06_day} ;;
  }

  measure: diff_07_min_day  {
    type: min
    sql: ${diff_07_day} ;;
  }

  measure: diff_08_min_day {
    type: min
    sql: ${diff_08_day} ;;
  }

  measure: diff_09_min_day  {
    type: min
    sql: ${diff_09_day} ;;
  }

  measure: diff_10_min_day  {
    type: min
    sql: ${diff_10_day} ;;
  }

  measure: diff_11_min_day  {
    type: min
    sql: ${diff_11_day} ;;
  }

  measure: diff_00__min_hour {
    type: min
    sql: ${diff_00_hour} ;;
  }

  measure: diff_01__min_hour {
    type: min
    sql: ${diff_01_hour} ;;
  }

  measure: diff_02__min_hour {
    type: min
    sql: ${diff_02_hour} ;;
  }

  measure: diff_03__min_hour {
    type: min
    sql: ${diff_03_hour} ;;
  }

  measure: diff_04__min_hour {
    type: min
    sql: ${diff_04_hour} ;;
  }

  measure: diff_05__min_hour {
    type: min
    sql: ${diff_05_hour} ;;
  }

  measure: diff_06__min_hour {
    type: min
    sql: ${diff_06_hour} ;;
  }

  measure: diff_07__min_hour {
    type: min
    sql: ${diff_07_hour} ;;
  }

  measure: diff_08__min_hour {
    type: min
    sql: ${diff_08_hour} ;;
  }

  measure: diff_09__min_hour {
    type: min
    sql: ${diff_09_hour} ;;
  }

  measure: diff_10__min_hour {
    type: min
    sql: ${diff_10_hour} ;;
  }

  measure: diff_11__min_hour {
    type: min
    sql: ${diff_11_hour} ;;
  }

}
