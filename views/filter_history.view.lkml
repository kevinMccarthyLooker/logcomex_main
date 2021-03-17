view: filter_history {
  sql_table_name: public.filter_history ;;
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
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."created_at" ;;
  }

  dimension: customer_id {
    type: number
    sql: ${TABLE}."customer_id" ;;
  }

  dimension: filters {
    type: string
    sql: ${TABLE}."filters" ;;
  }

  dimension: month {
    type: string
    sql: ${TABLE}."month" ;;
  }

  dimension: service_id {
    type: number
    sql: ${TABLE}."service_id" ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}."source" ;;
  }

  dimension: fonte {
    type: string
    sql: case
          when ${TABLE}.source = 'filter' then 'Filtro Lateral'
          when ${TABLE}.source = 'UNKNOWN' then 'API'
          when ${TABLE}.source = 'recent_search' then 'Busca Recente'
          when ${TABLE}.source = 'quick_filter' then 'Quick Filter'
          when ${TABLE}.source = 'load_url' then 'URL Compartilhada'
          when ${TABLE}.source = 'home' then 'Página Inicial'
          when ${TABLE}.source = 'home_saved_filter' then 'Filtro Salvo'
          when ${TABLE}.source = 'quick_chart_filter' then 'Filtros Automáticos'
          end
          ;;
  }

  dimension: source_hash {
    type: string
    sql: ${TABLE}."source_hash" ;;
  }

  dimension: total_lines {
    type: number
    sql: ${TABLE}."total_lines" ;;
  }

  dimension: debited {
    type: yesno
    sql: ${TABLE}."debited" ;;
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
    sql: ${TABLE}."user_id" ;;
  }

  dimension: year {
    type: string
    sql: ${TABLE}."year" ;;
  }

  dimension: possibleImporter {
    type: yesno
    sql: filters @> '[{"name": "possibleImporter"}]' ;;
  }

  dimension: possibleExporter {
    type: yesno
    sql: filters @> '[{"name": "possibleExporter"}]' ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }

  measure: count_consulta {
    type: count_distinct
    sql: ${source_hash} ;;
    drill_fields: [id]
  }

  measure: count_consulta_expo {
    type: count_distinct
    filters: [service_id: "21"]
    sql: ${source_hash} ;;
    drill_fields: [id]
  }

  measure: count_consulta_last_30_days {
    type: count_distinct
    filters: [created_date: "30 days"]
    sql: ${source_hash} ;;
    drill_fields: [id]
  }

  measure: count_consulta_this_month {
    type: count_distinct
    filters: [created_date: "this month"]
    sql: ${source_hash} ;;
    drill_fields: [id]
  }

  measure: count_consulta_perfil_impo {
    type: count_distinct
    filters: [possibleImporter: "yes"]
    sql: ${source_hash} ;;
    drill_fields: [id]
  }

  measure: count_consulta_perfil_expo {
    type: count_distinct
    filters: [possibleExporter: "yes"]
    sql: ${source_hash} ;;
    drill_fields: [id]
  }

  measure: count_consulta_6_months {
    type: count_distinct
    filters: [created_date: "6 months"]
    sql: ${source_hash} ;;
    drill_fields: [id]
  }

  measure: min_created{
    type: date
    sql: min(${created_raw}) ;;
    convert_tz: no
  }

}
