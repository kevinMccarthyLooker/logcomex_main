view: tracking_maritimo_aereo {
  derived_table: {
    sql:
select 'Maritimo' as modal,
       tracking.id as tracking_id,
       tracking.id as tracking_maritimo_id,
       0 as tracking_aereo_id,
       ('Maritimo' || to_char(tracking.id, '999999')) as chave,
       tracking.customer_id,
       (case
       when customer_id in (select c.id from customer c inner join customer_plan cp on cp.customer_id = c.id inner join tracking_plan_info tpi on tpi.id = cp.tracking_plan_info_id
              where c.deleted_at is null  and c.fake_customer is false and cp.deleted_at is null and tpi.force_certificate is false) then 'No'
     else 'Yes'
     end) as force_certificate,
       tracking_status.description as status,
       tracking.bl_number as documento,
       tracking.ce_number as ce_number,
       tracking.user_id,
       u2."name" as user_name,
       u2.email as user_email,
       tracking.created_at,
       tracking.updated_at,
       tracking.deleted_at,
       tracking.archived_at,
       tracking.reference,
       tracking.token,
       tracking.executed_at,
       tracking.consignee_id,
       tracking_internal_status.description as internal_status,
       tracking.is_master,
       tracking.shipowner_id as armador_ciaaerea,
       --tracking.completed_at,
       tracking.tracking_robot_id,
       tracking.operation_date as operacao,
       tracking.di_desembaracada_date,
       tracking.bl_emit_date as documento_emit_date,
       tracking.eta as eta,
       tracking.ets as ets,
       tracking.ce_emit_date as ce_emit_date,
       tracking.manifest_date as manifest_date,
       tracking.load_presence_date as load_presence_date,
       tracking.release_loading_date as release_loading_date,
       tracking.completed_at as completed_at,
       tracking.robot_updated_at as robot_updated_at,
       tracking.is_api as is_api,
       qq2.created_at as last_follow_up,
       qq2.comment as last_workflow,
       qq2.date_time as last_workflow_date,
       null::timestamp as aereo_data_embarque_ets,
       null::timestamp as aereo_data_hora_chegada,
       (case
       when tracking.tracking_maritime_load_category_id = 1 then 'Importação'
       when tracking.tracking_maritime_load_category_id = 2 then 'Exportação'
       when tracking.tracking_maritime_load_category_id = 3 then 'Cabotagem'
       else tracking.tracking_maritime_load_category_id::text
       end) as categoriacarga
from tracking
inner join tracking_status on tracking.status_id = tracking_status.id
inner join tracking_internal_status on tracking.internal_status_id = tracking_internal_status.id
--left join sistema.db_maritimo dbm on tracking.ce_number = dbm.nrcemercante
left join users u2 on u2.id = tracking.user_id
left join(
select
fu.tracking_id,
qq1.created_at,
fu."comment",
fu.date_time
from follow_up fu
inner join(
select max(fu2.date_time) as date_time,
max(fu2.created_at) as created_at,
fu2.tracking_id as tracking_id
from follow_up fu2
where (fu2.user_id is null or fu2.user_id = 7002) -- usuaio utilizado para inserir dados manualmente
group by 3) as qq1 on qq1.date_time = fu.date_time and qq1.tracking_id = fu.tracking_id
where fu.tracking_id is not null and (fu.user_id is null or fu.user_id = 7002)) as qq2 on qq2.tracking_id = tracking.id
--where tracking.deleted_at is null
union
select 'Aereo' as modal,
       tracking_aerial.id as tracking_id,
       0 as tracking_maritimo_id,
       tracking_aerial.id as tracking_aereo_id,
       ('Aereo' || to_char(tracking_aerial.id, '999999')) as chave,
       customer_id,
       (case
       when customer_id in (select c.id from customer c inner join customer_plan cp on cp.customer_id = c.id inner join tracking_plan_info tpi on tpi.id = cp.tracking_plan_info_id
              where c.deleted_at is null  and c.fake_customer is false and cp.deleted_at is null and tpi.force_certificate is false) then 'No'
     else 'Yes'
     end) as force_certificate,
       tracking_aerial_status.description as status,
       (coalesce((tracking_aerial.awb),'') || '-' || coalesce((tracking_aerial.hwb),'')) as documento,
       0 as ce_number,
       tracking_aerial.user_id,
       u2."name" as user_name,
       u2.email as user_email,
       tracking_aerial.created_at,
       tracking_aerial.updated_at,
       tracking_aerial.deleted_at,
       tracking_aerial.archived_at,
       tracking_aerial.reference,
       tracking_aerial.token,
       tracking_aerial.executed_at,
       tracking_aerial.consignee_id,
       tracking_aerial_internal_status.description as internal_status,
       false as is_master,
       tracking_aerial.airline_id as armador_ciaaerea,
       --'2000-01-01' as completed_at,
       999 as tracking_robot_id,
       '2000-01-01' as operacao,
       '2000-01-01' as di_desembaracada_date,
       tracking_aerial.hawb_emit_date as documento_emit_date,
       tracking_aerial.eta as eta,
       tracking_aerial.ets as ets,
       '2000-01-01' as ce_emit_date,
       '2000-01-01' as manifest_date,
       '2000-01-01' as load_presence_date,
       '2000-01-01' as release_loading_date,
       null::timestamp as completed_at,
       tracking_aerial.robot_updated_at as robot_updated_at,
       tracking_aerial.is_api as is_api,
       qq2.created_at as last_follow_up,
       qq2.comment as last_workflow,
       qq2.date_time as last_workflow_date,
       qq3.data_embarque_ets as aereo_data_embarque_ets,
       qq3.data_hora_chegada as aereo_data_hora_chegada,
       'aereo_sem_categ' as categoriacarga
from tracking_aerial
inner join tracking_aerial_status on tracking_aerial.tracking_aerial_status_id = tracking_aerial_status.id
inner join tracking_aerial_internal_status on tracking_aerial.internal_status = tracking_aerial_internal_status.id
left join users u2 on u2.id = tracking_aerial.user_id
left join (
select
fu.tracking_aerial_id,
qq1.created_at,
fu."comment",
fu.date_time
from follow_up fu
inner join(
select max(fu2.date_time) as date_time,
max(fu2.created_at) as created_at,
fu2.tracking_aerial_id as tracking_aerial_id
from follow_up fu2
where (fu2.user_id is null or fu2.user_id = 7002) -- usuario utilizado para inserir dados manualmente
group by 3) as qq1 on qq1.date_time = fu.date_time and qq1.tracking_aerial_id = fu.tracking_aerial_id
where fu.tracking_aerial_id is not null and (fu.user_id is null or fu.user_id = 7002)) as qq2 on qq2.tracking_aerial_id = tracking_aerial.id
left join
          (
            select list.awb, list.hwb, details.data_hawb as data_embarque_ets, atracacao.data_hora_chegada
            from aereo.aereo_awb_list list
            inner join aereo.aereo_awb_details details on details.id_awb_list = list.id
            inner join aereo.aereo_etapas_atracao atracacao on atracacao.id_awb_details = details.id
            where atracacao.doc_saida = 'DI/DAS'
            and details.data_hawb is not null
            and atracacao.data_hora_chegada is not null
            and (atracacao.data_hora_chegada - details.data_hawb) < interval '1000 days'
            and list.awb is not null
            and list.hwb is not null
          ) as qq3 on qq3.awb = tracking_aerial.awb and qq3.hwb = tracking_aerial.hwb
--where tracking_aerial.deleted_at is null
    ;;
indexes: ["chave"]
sql_trigger_value: SELECT FLOOR(EXTRACT(epoch from (NOW() - interval '3' hour)) / (4*60*60));;
  }
#teste de comentario
  dimension: modal {
    type: string
    sql: ${TABLE}."modal" ;;
  }

  dimension: chave {
    type: string
    sql: ${TABLE}."chave" ;;
  }

  dimension: categoriacarga {
    type: string
    sql: ${TABLE}."categoriacarga" ;;
  }

  dimension: tracking_id {
    type: number
    sql: ${TABLE}."tracking_id" ;;
  }

  dimension: tracking_maritimo_id {
    type: number
    sql: ${TABLE}."tracking_maritimo_id" ;;
  }

  dimension: tracking_aereo_id {
    type: number
    sql: ${TABLE}."tracking_aereo_id" ;;
  }

  dimension: customer_id {
    type: number
    sql: ${TABLE}."customer_id" ;;
  }

  dimension: force_certificate {
    type: string
    sql: ${TABLE}."force_certificate" ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}."status" ;;
  }

  dimension: status_ordenado_maritimo {
    type: string
    sql: case when ${status} = 'Aguardando BL' then '0 - Aguardando BL'
              when ${status} = 'Validando Embarque' then '1 - Validando Embarque'
              when ${status} = 'Em Transito Internacional' then '2 - Em Transito Internacional'
              when ${status} = 'Manifestado' then '3 - Manifestado'
              when ${status} = 'Carga Carregada/Descarregada' then '4 - Carga Carregada/Descarregada'
              when ${status} = 'Registro Presenca de carga' then '5 - Registro Presenca de carga'
              when ${status} = 'Registro DTA' then '6 - Registro DTA'
              when ${status} = 'Registro DI' then '7 - Registro DI'
              when ${status} = 'DI Desembaraçada' then '8 - DI Desembaraçada'
              when ${status} = 'Liberado p/ Carregamento' then '9 - Liberado p/ Carregamento'
              else ${status} end;;
  }

  dimension: status_ordenado_aereo {
    type: string
    sql: case when ${status} = 'Pendente mantra' then '0 - Pendente mantra'
              when ${status} = 'Trânsito Internacional' then '1 - Trânsito Internacional'
              when ${status} = 'Chegada destino' then '2 - Chegada destino'
              when ${status} = 'Registro DTA' then '3 - Registro DTA'
              when ${status} = 'Visado' then '4 - Visado'
              when ${status} = 'DTA desembaraçada' then '5 - DTA desembaraçada'
              when ${status} = 'Registro DI' then '6 - Registro DI'
              when ${status} = 'DI parametrizada' then '7 - DI parametrizada'
              when ${status} = 'DI desembaraçada' then '8 - DI desembaraçada'
              when ${status} = 'Recebida' then '9 - Recebida'
              else ${status} end;;
  }


  dimension: documento {
    type: string
    sql: ${TABLE}."documento" ;;
  }

  dimension: ce {
    type: number
    sql: ${TABLE}.ce_number ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}."user_id" ;;
  }

  dimension: user_name {
    type: string
    sql: ${TABLE}."user_name" ;;
  }

  dimension: user_email {
    type: string
    sql: ${TABLE}."user_email" ;;
  }

  dimension: user_id_null {
    type: yesno
    hidden: yes
    sql: case when ${TABLE}."user_id" is null then true
         else false
         end;;
  }

  dimension_group: executed_vs_followup {
    type: duration
    intervals: [day, hour]
    sql_start: ${TABLE}."last_follow_up" ;;
    sql_end: ${TABLE}."executed_at";;
  }

  dimension: diferenca_executado_followup {
    type:  string
    sql:  CASE WHEN (${days_executed_vs_followup} < 1) THEN 'A - 0 dias'
          WHEN (${days_executed_vs_followup} = 1) THEN 'B - 1 dia'
          WHEN (${days_executed_vs_followup} = 2) THEN 'C - 2 dias'
          WHEN (${days_executed_vs_followup} > 2 AND ${days_executed_vs_followup} <= 5) THEN 'D - de 3 a 5 dias'
          WHEN (${days_executed_vs_followup} >= 6 AND ${days_executed_vs_followup} <= 15) THEN 'E - de 6 a 15 dias'
          WHEN (${days_executed_vs_followup} >= 16 AND ${days_executed_vs_followup} <= 45) THEN 'F - de 16 a 45 dias'
          WHEN (${days_executed_vs_followup} >= 46 AND ${days_executed_vs_followup} <= 120) THEN 'G - de 46 a 120 dias'
          else 'H - mais de 120 dias' end
          ;;
  }

  dimension_group: last_execution {
    type: duration
    intervals: [day, hour]
    sql_start: ${TABLE}."executed_at" ;;
    sql_end: CURRENT_TIMESTAMP;;
  }

  dimension_group: last_update {
    type: duration
    intervals: [day, hour]
    sql_start: ${robot_updated_at_raw} ;;
    sql_end: CURRENT_TIMESTAMP;;
  }

  dimension_group: transit_time {
    type: duration
    intervals: [day, hour]
    sql_start: ${TABLE}."documento_emit_date" ;;
    sql_end: ${TABLE}."operacao";; #manifest_date
  }

  dimension: ultima_atualizacao {
    type:  string
    sql:  CASE WHEN (${days_last_execution} < 1) THEN 'A - 0 dias'
    WHEN (${days_last_execution} = 1) THEN 'B - 1 dia'
    WHEN (${days_last_execution} = 2) THEN 'C - 2 dias'
    WHEN (${days_last_execution} > 2 AND ${days_last_execution} <= 5) THEN 'D - de 3 a 5 dias'
    WHEN (${days_last_execution} >= 6 AND ${days_last_execution} <= 15) THEN 'E - de 6 a 15 dias'
    WHEN (${days_last_execution} >= 16 AND ${days_last_execution} <= 45) THEN 'F - de 16 a 45 dias'
    WHEN (${days_last_execution} >= 46 AND ${days_last_execution} <= 120) THEN 'G - de 46 a 120 dias'
    else 'H - mais de 120 dias' end
    ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."created_at" ;;
  }

  dimension_group: updated {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."updated_at" ;;
  }

  dimension_group: deleted {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."deleted_at" ;;
  }

  dimension_group: archived {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."archived_at" ;;
  }

  dimension: reference {
    type: string
    sql: ${TABLE}."reference" ;;
  }

  dimension: token {
    type: string
    sql: ${TABLE}."token" ;;
    link: {
      label: "Tracking-Logcomex"
      url: "https://sistema.logcomex.io/#/tracking/{{ value }}"
    }
    }

  dimension_group: executed {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."executed_at" ;;
  }

  dimension: consignee_id {
    type: number
    sql: ${TABLE}."consignee_id" ;;
  }

  dimension: internal_status {
    type: string
    sql: ${TABLE}."internal_status" ;;
  }

  dimension: is_master {
    type: yesno
    sql: ${TABLE}."is_master" ;;
  }

  dimension: embarque_tipo {
    type: string
    sql: CASE
         WHEN ${is_master} = 'Yes' then 'MASTER'
         ELSE 'HOUSE'
         END;;
  }

  dimension: armador_ciaaerea {
    type: number
    sql: ${TABLE}."armador_ciaaerea" ;;
  }

  dimension_group: completed {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."completed_at" ;;
  }

  dimension: tracking_robot_id {
    type: number
    sql: ${TABLE}."tracking_robot_id" ;;
  }

  dimension_group: operacao {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."operacao" ;;
  }

  dimension_group: di_desembaracada_date {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."di_desembaracada_date" ;;
  }

  dimension_group: last_follow_up_date {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."last_follow_up" ;;
  }

  dimension_group: last_workflow_date {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."last_workflow_date" ;;
  }


  dimension: last_workflow {
    type: string
    sql: ${TABLE}."last_workflow" ;;
  }

  dimension_group: documento_emit_date {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."documento_emit_date" ;;
  }

  dimension_group: eta {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."eta" ;;
  }

  dimension_group: ets {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."ets" ;;
  }

  dimension_group: ce_emit_date {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."ce_emit_date" ;;
  }

  dimension_group: manifest_date {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."manifest_date" ;;
  }

  dimension_group: load_presence_date {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."load_presence_date" ;;
  }

  dimension_group: release_loading_date {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."release_loading_date" ;;
  }

  dimension_group: completed_at {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."completed_at" ;;
  }

  dimension_group: robot_updated_at {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."robot_updated_at" ;;
  }

  dimension: is_api {
    type: yesno
    sql: ${TABLE}."is_api" ;;
  }

  dimension_group: aereo_data_embarque_ets {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."aereo_data_embarque_ets" ;;
  }

  dimension_group: aereo_data_hora_chegada {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."aereo_data_hora_chegada" ;;
  }

  dimension_group: aereo_transit_time {
    type: duration
    intervals: [day, hour]
    sql_start: ${TABLE}."aereo_data_embarque_ets" ;;
    sql_end: ${TABLE}."aereo_data_hora_chegada";;
  }


  measure: avg_days_transit_time_aereo {
    type: average
    sql: ${days_aereo_transit_time} ;;
  }

  measure: count_distinct_users {
    type: count_distinct
    sql: ${user_id} ;;
    drill_fields: [user_id,user_email,customer.name,customer_id]
  }

  measure: count_api {
    type: count_distinct
    sql: ${chave} ;;
    filters: [is_api: "yes"]
    drill_fields: [detail*]
  }

  measure: count_seguir_emb {
    type: count_distinct
    sql: ${chave} ;;
    filters: [is_api: "no"]
    filters: [user_id_null: "yes"]
    drill_fields: [detail*]
  }

  measure: count_screen {
    type: count_distinct
    sql: ${chave} ;;
    filters: [is_api: "no"]
    filters: [user_id_null: "no"]
    drill_fields: [detail*]
  }

  measure: count_customers_api {
    type: count_distinct
    sql: ${customer_id} ;;
    filters: [is_api: "yes"]
    drill_fields: [detail_customer*]
  }

  measure: count_customers_seguir_emb {
    type: count_distinct
    sql: ${customer_id} ;;
    filters: [is_api: "no"]
    filters: [user_id_null: "yes"]
    drill_fields: [detail_customer*]
  }

  measure: count_customers_screen {
    type: count_distinct
    sql: ${customer_id} ;;
    filters: [is_api: "no"]
    filters: [user_id_null: "no"]
    drill_fields: [detail_customer*]
  }

  measure: count {
    type: count_distinct
    sql: ${chave} ;;
    drill_fields: [detail*]
  }

  measure: count_with_zero {
    type: number
    sql: coalesce(${count},0) ;;
  }

  measure: count_nao_encontrado {
    type: count_distinct
    sql: ${chave} ;;
    filters: [status: "Validando Embarque, Pendente mantra"]
    drill_fields: [detail*]
  }

  measure: count_last_7_days {
    type: count_distinct
    sql: ${chave} ;;
    filters: [created_date: "7 days"]
    drill_fields: [detail*]
  }

  measure: count_last_30_days {
    type: count_distinct
    sql: ${chave} ;;
    filters: [created_date: "30 days"]
    drill_fields: [detail*]
  }

  measure: count_maritimo {
    type: count_distinct
    sql: ${chave} ;;
    filters: [modal: "Maritimo"]
    drill_fields: [detail*]
  }

  measure: count_maritimo_last_30_days {
    type: count_distinct
    sql: ${chave} ;;
    filters: [created_date: "30 days"]
    filters: [modal: "Maritimo"]
    drill_fields: [detail*]
  }

  measure: count_aereo {
    type: count_distinct
    sql: ${chave} ;;
    filters: [modal: "Aereo"]
    drill_fields: [detail*]
  }

  measure: count_aereo_last_30_days {
    type: count_distinct
    sql: ${chave} ;;
    filters: [created_date: "30 days"]
    filters: [modal: "Aereo"]
    drill_fields: [detail*]
  }

  measure: dt_ultimo_embarque {
    type: date
    sql: MAX(${created_date}) ;;
    convert_tz: no
  }

  measure: avg_last_exec {
    type: average_distinct
    sql_distinct_key: ${chave} ;;
    sql: ${days_last_execution} ;;
  }

  measure: avg_transit_time {
    type: average
    sql: ${days_transit_time} ;;
  }

    set: detail {
    fields: [customer_id, customer.name, status, internal_status, created_raw, token]
  }

    set: detail_customer {
      fields: [customer_id, customer.name,force_certificate]
    }

}
