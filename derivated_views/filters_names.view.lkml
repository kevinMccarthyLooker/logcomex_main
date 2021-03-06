view: filters_names {

  derived_table: {
    sql: select bi_condition_filter.id,
          bi_condition_filter.bi_field,
          bi_condition_filter."name",
          (case
          when bi_condition_filter.bi_field = 'consignatario' then 'Consignatário Aereo'
          when bi_condition_filter.bi_field = 'nmconsignatario' then 'Consignatário Marítimo'
          else bi_condition_filter.label_pt
          end) as label_pt,
          bi_column_service.service_id
          from bi_condition_filter
          join bi_column_service on bi_condition_filter.id = bi_column_service.bi_condition_filter_id
          join bi_column on bi_column_service.bi_column_id = bi_column.id
          where bi_condition_filter.deleted_at is null ;;
  }


  dimension: id {
    type: number
    primary_key: yes
    sql: ${TABLE}.id ;;
  }

  dimension: bi_field {
    type: string
    sql: ${TABLE}.bi_field ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: label_pt {
    type: string
    sql: ${TABLE}.label_pt ;;
  }

  dimension: service_id {
    type: number
    sql: ${TABLE}.service_id ;;
  }

  }
