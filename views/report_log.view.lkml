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

  measure: count_api_logs {
    type:  count
    filters: [report_type_id: "3"]
    drill_fields: [customer.name, users.name, count]
  }

  measure: count_screen_logs {
    type:  count
    filters: [report_type_id: "1"]
    drill_fields: [customer.name, users.name, count]
  }

  measure: count_excel_logs {
    type:  count
    filters: [report_type_id: "2"]
    drill_fields: [customer.name, users.name, count]
    }

  measure: total_line_numbers {
    type: sum
    sql:  ${line_numbers};;
  }
}
