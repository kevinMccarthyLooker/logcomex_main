view: pu_export_cargo_reception_detail {
  sql_table_name: public.pu_export_cargo_reception_detail ;;
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

  dimension: has_error {
    type: yesno
    sql: ${TABLE}."has_error" ;;
  }

  dimension: json_data {
    type: string
    sql: ${TABLE}."json_data" ;;
  }

  dimension_group: processed {
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
    sql: ${TABLE}."processed_at" ;;
  }

  dimension_group: processed_time {
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
    sql: ${TABLE}."processed_time" ;;
  }

  dimension: proxy_ip {
    type: string
    sql: ${TABLE}."proxy_ip" ;;
  }

  dimension: pu_export_cargo_reception_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."pu_export_cargo_reception_id" ;;
  }

  dimension: sequential_number {
    type: number
    sql: ${TABLE}."sequential_number" ;;
  }

  dimension: status {
    type: number
    sql: ${TABLE}."status" ;;
  }

  dimension: type {
    type: number
    sql: ${TABLE}."type" ;;
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

  dimension: year {
    type: string
    sql: ${TABLE}."year" ;;
  }

  measure: detalhes_count {
    type: count
    drill_fields: [id, pu_export_cargo_reception.id]
  }

  measure: processados_via_jsondata {
    type: count
    filters: [json_data : "-NULL"]
    drill_fields: [id, pu_export_cargo_reception.id]
  }

  measure: percent_processado {
    type: number
    value_format_name: percent_2
    sql: 1.0* ${processados_via_jsondata} / ${detalhes_count} ;;
  }

  measure: processados_via_processed_at {
    type: count
    filters: [processed_date: "-NULL"]
    drill_fields: [id, pu_export_cargo_reception.id]
  }

  measure: nao_processados {
    type: count
    filters: [json_data : "NULL", has_error: "no"]
    drill_fields: [id, pu_export_cargo_reception.id]
  }

  measure: percent_nao_processado {
    type: number
    value_format_name: percent_2
    sql: 1.0* ${nao_processados} / ${detalhes_count} ;;
  }

  measure: com_erros {
    type: count
    filters: [has_error: "yes"]
    drill_fields: [id, pu_export_cargo_reception.id]
  }

  measure: percent_erros {
    type: number
    value_format_name: percent_2
    sql: 1.0* ${com_erros} / ${detalhes_count} ;;
  }

  measure: seq_nao_obtidos {
    type: number
    sql: ${max_sequencial} - ${min_sequencial} - ${detalhes_count} ;;
  }

  measure: min_sequencial {
    type:  min
    sql: ${sequential_number} ;;
  }

  measure: max_sequencial {
    type:  max
    sql: ${sequential_number} ;;
  }

  measure: dif_sequencial {
    type: number
    sql: ${max_sequencial} - ${min_sequencial} ;;
  }

}
