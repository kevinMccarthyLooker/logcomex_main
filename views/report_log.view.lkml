view: report_log {
  sql_table_name: public.report_log ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      hour,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."created_at" ;;
  }

  dimension: dia_da_semana_num {
    type: string
    sql: date_part('isodow', ${TABLE}."created_at" )
    ;;
  }

  dimension: dia_da_semana {
    type: string
    sql: CASE WHEN date_part('isodow', ${TABLE}."created_at" ) = 7 THEN '(0) Domingo'
              WHEN date_part('isodow', ${TABLE}."created_at" ) = 1 THEN '(1) Segunda-feira'
              WHEN date_part('isodow', ${TABLE}."created_at" ) = 2 THEN '(2) Terça-feira'
              WHEN date_part('isodow', ${TABLE}."created_at" ) = 3 THEN '(3) Quarta-feira'
              WHEN date_part('isodow', ${TABLE}."created_at" ) = 4 THEN '(4) Quinta-feira'
              WHEN date_part('isodow', ${TABLE}."created_at" ) = 5 THEN '(5) Sexta-feira'
              WHEN date_part('isodow', ${TABLE}."created_at" ) = 6 THEN '(6) Sábado'
              end
    ;;
  }

  dimension: customer_plan_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."customer_plan_id" ;;
  }

  dimension: hash {
    type: string
    sql: ${TABLE}."hash" ;;
  }

  dimension: ip {
    type: string
    sql: ${TABLE}."ip" ;;
  }

  dimension: json_filter {
    type: string
    sql: ${TABLE}."json_filter" ;;
  }

  dimension: json_filter_text {
    type: string
    #sql: replace(replace(replace(replace(replace(cast(${TABLE}."json_filter" as text), '', ''), ',', ', '), '{', ''), '}', ''), ':', ': ') ;;
    sql: cast(${TABLE}."json_filter" as text) ;;
  }

  dimension: serviceId {
    type: number
    sql: cast(${json_filter} ->> 'serviceId' as INTEGER);;
  }

  dimension: line_numbers {
    type: number
    sql: ${TABLE}."line_numbers" ;;
  }

  dimension: link_excel {
    type: string
    sql: ${TABLE}."link_excel" ;;
  }

  dimension: report_type_id {
    type: number
    sql: ${TABLE}."report_type_id" ;;
  }

  dimension: report_type {
    type: string
    sql: case
             when ${TABLE}.report_type_id = 1 then 'Screen'
             when ${TABLE}.report_type_id = 2 then 'Excel'
             when ${TABLE}.report_type_id = 3 then 'Api'
             else 'ERRO'
         end ;;
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

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."user_id" ;;
  }

  dimension: tipo_chamada_bi {
    type: string
    case: {
      when: {
        label: "FiltroInicial"
       # sql: (${json_filter} ->> 'per_page' is null) and (${json_filter} ->> 'grouper' is null );;
        sql: (${json_filter} ->> 'per_page' is null);;
        }
      }
  }

  measure: count {
    type: count
    drill_fields: [customer.name, users.name, json_filter_text]
  }

  measure: count_distinct_user {
    type: count_distinct
    sql: ${user_id} ;;
  }

  measure: count_api_logs {
    type:  count
    filters: [report_type_id: "3"]
    drill_fields: [customer.name, users.name, count]
  }

  measure: count_api_logs_last_30_days {
    type:  count
    filters: [report_type_id: "3", created_date: "30 days"]
    drill_fields: [customer.name, users.name, count]
  }

  measure: count_screen_logs {
    type:  count
    filters: [report_type_id: "1"]
    drill_fields: [customer.name, users.name, count]
  }

  measure: count_screen_logs_last_30_days {
    type:  count
    filters: [report_type_id: "1", created_date: "30 days"]
    drill_fields: [customer.name, users.name, count]
  }

  measure: count_excel_logs {
    type:  count
    filters: [report_type_id: "2"]
    drill_fields: [customer.name, users.name, count]
    }

  measure: count_excel_logs_last_30_days {
    type:  count
    filters: [report_type_id: "2", created_date: "30 days"]
    drill_fields: [customer.name, users.name, count]
  }

  measure: count_excel_logs_last_6_months {
    type:  count
    filters: [report_type_id: "2", created_date: "6 months"]
    drill_fields: [customer.name, users.name, count]
  }

  measure: total_line_numbers {
    type: sum
    sql:  ${line_numbers};;
  }

  measure: min_created {
    type: date
    sql: min(${created_raw}) ;;
    convert_tz: no
  }

}
