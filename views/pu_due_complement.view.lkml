view: pu_due_complement {
  sql_table_name: public.pu_due_complement ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: administrative_control {
    type: string
    sql: ${TABLE}."administrative_control" ;;
  }

  dimension: bul_code {
    type: string
    sql: ${TABLE}."bul_code" ;;
  }

  dimension: bul_description {
    type: string
    sql: ${TABLE}."bul_description" ;;
  }

  dimension: bul_fiscal_region_acronym {
    type: string
    sql: ${TABLE}."bul_fiscal_region_acronym" ;;
  }

  dimension: bul_latitude {
    type: string
    sql: ${TABLE}."bul_latitude" ;;
  }

  dimension: bul_longitude {
    type: string
    sql: ${TABLE}."bul_longitude" ;;
  }

  dimension: cargo_situation_list {
    type: string
    sql: ${TABLE}."cargo_situation_list" ;;
  }

  dimension: cba_code {
    type: string
    sql: ${TABLE}."cba_code" ;;
  }

  dimension: cba_depositary_cnpj {
    type: string
    sql: ${TABLE}."cba_depositary_cnpj" ;;
  }

  dimension: cba_depositary_name {
    type: string
    sql: ${TABLE}."cba_depositary_name" ;;
  }

  dimension: cba_description {
    type: string
    sql: ${TABLE}."cba_description" ;;
  }

  dimension: cba_latitude {
    type: string
    sql: ${TABLE}."cba_latitude" ;;
  }

  dimension: cba_longitude {
    type: string
    sql: ${TABLE}."cba_longitude" ;;
  }

  dimension: cba_rfb_code {
    type: string
    sql: ${TABLE}."cba_rfb_code" ;;
  }

  dimension: cba_rfb_description {
    type: string
    sql: ${TABLE}."cba_rfb_description" ;;
  }

  dimension: cba_without_coordinate {
    type: yesno
    sql: ${TABLE}."cba_without_coordinate" ;;
  }

  dimension: cba_without_depositary_cnpj {
    type: yesno
    sql: ${TABLE}."cba_without_depositary_cnpj" ;;
  }

  dimension: cba_zone {
    type: string
    sql: ${TABLE}."cba_zone" ;;
  }

  dimension: ccd_code {
    type: string
    sql: ${TABLE}."ccd_code" ;;
  }

  dimension: ccd_depositary_cnpj {
    type: string
    sql: ${TABLE}."ccd_depositary_cnpj" ;;
  }

  dimension: ccd_depositary_name {
    type: string
    sql: ${TABLE}."ccd_depositary_name" ;;
  }

  dimension: ccd_description {
    type: string
    sql: ${TABLE}."ccd_description" ;;
  }

  dimension: ccd_latitude {
    type: string
    sql: ${TABLE}."ccd_latitude" ;;
  }

  dimension: ccd_longitude {
    type: string
    sql: ${TABLE}."ccd_longitude" ;;
  }

  dimension: ccd_rfb_code {
    type: string
    sql: ${TABLE}."ccd_rfb_code" ;;
  }

  dimension: ccd_rfb_description {
    type: string
    sql: ${TABLE}."ccd_rfb_description" ;;
  }

  dimension: ccd_without_coordinate {
    type: yesno
    sql: ${TABLE}."ccd_without_coordinate" ;;
  }

  dimension: ccd_without_depositary_cnpj {
    type: yesno
    sql: ${TABLE}."ccd_without_depositary_cnpj" ;;
  }

  dimension: ccd_zone {
    type: string
    sql: ${TABLE}."ccd_zone" ;;
  }

  dimension: cce_indicator {
    type: string
    sql: ${TABLE}."cce_indicator" ;;
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

  dimension_group: creation {
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
    sql: ${TABLE}."creation_date" ;;
  }

  dimension: db_channel {
    type: number
    sql: ${TABLE}."db_channel" ;;
  }

  dimension: due_situation {
    type: string
    sql: ${TABLE}."due_situation" ;;
  }

  dimension: dul_code {
    type: string
    sql: ${TABLE}."dul_code" ;;
  }

  dimension: dul_description {
    type: string
    sql: ${TABLE}."dul_description" ;;
  }

  dimension: dul_fiscal_region_acronym {
    type: string
    sql: ${TABLE}."dul_fiscal_region_acronym" ;;
  }

  dimension: dul_latitude {
    type: string
    sql: ${TABLE}."dul_latitude" ;;
  }

  dimension: dul_longitude {
    type: string
    sql: ${TABLE}."dul_longitude" ;;
  }

  dimension: empty_list {
    type: yesno
    sql: ${TABLE}."empty_list" ;;
  }

  dimension: fau_code {
    type: string
    sql: ${TABLE}."fau_code" ;;
  }

  dimension: fau_description {
    type: string
    sql: ${TABLE}."fau_description" ;;
  }

  dimension: fau_latitude {
    type: string
    sql: ${TABLE}."fau_latitude" ;;
  }

  dimension: fau_longitude {
    type: string
    sql: ${TABLE}."fau_longitude" ;;
  }

  dimension: fau_region_acronym {
    type: string
    sql: ${TABLE}."fau_region_acronym" ;;
  }

  dimension: foreign_exporter {
    type: yesno
    sql: ${TABLE}."foreign_exporter" ;;
  }

  dimension: has_locking {
    type: yesno
    sql: ${TABLE}."has_locking" ;;
  }

  dimension: importing_country_code {
    type: number
    sql: ${TABLE}."importing_country_code" ;;
  }

  dimension: importing_country_name {
    type: string
    sql: ${TABLE}."importing_country_name" ;;
  }

  dimension: item_due_type {
    type: number
    sql: ${TABLE}."item_due_type" ;;
  }

  dimension: json_data {
    type: string
    sql: ${TABLE}."json_data" ;;
  }

  dimension: last_request_retification_date {
    type: string
    sql: ${TABLE}."last_request_retification_date" ;;
  }

  dimension: last_request_status_code {
    type: number
    sql: ${TABLE}."last_request_status_code" ;;
  }

  dimension: last_request_type {
    type: number
    sql: ${TABLE}."last_request_type" ;;
  }

  dimension: message {
    type: string
    sql: ${TABLE}."message" ;;
  }

  dimension: ni_declaring_name {
    type: string
    sql: ${TABLE}."ni_declaring_name" ;;
  }

  dimension: ni_declaring_number {
    type: string
    sql: ${TABLE}."ni_declaring_number" ;;
  }

  dimension: ni_exporter_name {
    type: string
    sql: ${TABLE}."ni_exporter_name" ;;
  }

  dimension: ni_exporter_number {
    type: string
    sql: ${TABLE}."ni_exporter_number" ;;
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

  dimension: proxy_ip {
    type: string
    sql: ${TABLE}."proxy_ip" ;;
  }

  dimension: pu_due_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."pu_due_id" ;;
  }

  dimension: pu_reference_id {
    type: number
    sql: ${TABLE}."pu_reference_id" ;;
  }

  dimension: ruc_daughter {
    type: yesno
    sql: ${TABLE}."ruc_daughter" ;;
  }

  dimension: ruc_daughters {
    type: string
    sql: ${TABLE}."ruc_daughters" ;;
  }

  dimension: ruc_master_type {
    type: yesno
    sql: ${TABLE}."ruc_master_type" ;;
  }

  dimension: ruc_number {
    type: string
    sql: ${TABLE}."ruc_number" ;;
  }

  dimension: status {
    type: number
    sql: ${TABLE}."status" ;;
  }

  dimension: tries {
    type: number
    sql: ${TABLE}."tries" ;;
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

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      importing_country_name,
      ni_declaring_name,
      ni_exporter_name,
      ccd_depositary_name,
      cba_depositary_name,
      pu_due.id
    ]
  }
}
