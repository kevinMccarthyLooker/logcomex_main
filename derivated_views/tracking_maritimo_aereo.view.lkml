view: tracking_maritimo_aereo {
  derived_table: {
    sql:
select 'Maritimo' as modal,
       tracking.id,
       ('Maritimo' || to_char(tracking.id, '999999')) as chave,
       customer_id,
       tracking_status.description as status,
       bl_number as documento,
       ce_number as CE,
       user_id,
       created_at,
       updated_at,
       deleted_at,
       reference,
       token,
       executed_at,
       consignee_id,
       tracking_internal_status.description as internal_status,
       is_master,
       shipowner_id as armador_ciaaerea,
       completed_at,
       tracking_robot_id,
       operation_date as operacao,
       di_desembaracada_date
from tracking
inner join tracking_status on tracking.status_id = tracking_status.id
inner join tracking_internal_status on tracking.internal_status_id = tracking_internal_status.id
where deleted_at is null
union
select 'Aereo' as modal,
       tracking_aerial.id,
       ('Aereo' || to_char(tracking_aerial.id, '999999')) as chave,
       customer_id,
       tracking_aerial_status.description as status,
       (coalesce((awb),'') || '-' || coalesce((hwb),'')) as documento,
       0 as CE,
       user_id,
       created_at,
       updated_at,
       deleted_at,
       reference,
       token,
       executed_at,
       consignee_id,
       tracking_internal_status.description as internal_status,
       false as is_master,
       airline_id as armador_ciaaerea,
       '2000-01-01' as completed_at,
       999 as tracking_robot_id,
       '2000-01-01' as operacao,
       '2000-01-01' as di_desembaracada_date
from tracking_aerial
inner join tracking_aerial_status on tracking_aerial.tracking_aerial_status_id = tracking_aerial_status.id
inner join tracking_internal_status on tracking_aerial.internal_status = tracking_internal_status.id
where deleted_at is null
;;
  }

  dimension: modal {
    type: string
    sql: ${TABLE}."modal" ;;
  }

  dimension: chave {
    type: string
    sql: ${TABLE}."chave" ;;
  }

  dimension: tracking_id {
    type: number
    sql: ${TABLE}."tracking_id" ;;
  }

  dimension: customer_id {
    type: number
    sql: ${TABLE}."customer_id" ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}."status" ;;
  }

  dimension: documento {
    type: string
    sql: ${TABLE}."documento" ;;
  }

  dimension: CE {
    type: string
    sql: ${TABLE}."CE" ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}."user_id" ;;
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

  dimension: reference {
    type: string
    sql: ${TABLE}."reference" ;;
  }

  dimension: token {
    type: string
    sql: ${TABLE}."token" ;;
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

  measure: count {
    type: count_distinct
    sql: ${chave} ;;
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

    set: detail {
    fields: [customer.id, user_id]
  }

}
