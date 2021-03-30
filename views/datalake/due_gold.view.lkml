view: due_gold {
  derived_table: {
    sql: SELECT * FROM DUE.due_gold
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: due_number {
    type: string
    sql: ${TABLE}.due_number ;;
  }

  dimension: digit {
    type: string
    sql: ${TABLE}.digit ;;
  }

  dimension_group: processed_at_due {
    type: time
    sql: ${TABLE}.processed_at_due ;;
  }

  dimension_group: created_at_due {
    type: time
    sql: ${TABLE}.created_at_due ;;
  }

  dimension_group: updated_at_due {
    type: time
    sql: ${TABLE}.updated_at_due ;;
  }

  dimension: dat {
    type: string
    sql: ${TABLE}.dat ;;
  }

  dimension: internacional_bill_of_landing {
    type: string
    sql: ${TABLE}.internacional_bill_of_landing ;;
  }

  dimension_group: event_datetime {
    type: time
    sql: ${TABLE}.event_datetime ;;
  }

  dimension: event {
    type: string
    sql: ${TABLE}.event ;;
  }

  dimension: responsible {
    type: string
    sql: ${TABLE}.responsible ;;
  }

  dimension: identification {
    type: string
    sql: ${TABLE}.identification ;;
  }

  dimension: tare {
    type: string
    sql: ${TABLE}.tare ;;
  }

  dimension: seal {
    type: string
    sql: ${TABLE}.seal ;;
  }

  dimension: ruc_number {
    type: string
    sql: ${TABLE}.ruc_number ;;
  }

  dimension: importing_country_code {
    type: number
    sql: ${TABLE}.importing_country_code ;;
  }

  dimension: importing_country_name {
    type: string
    sql: ${TABLE}.importing_country_name ;;
  }

  dimension_group: creation_date {
    type: time
    sql: ${TABLE}.creation_date ;;
  }

  dimension: ni_declaring_number {
    type: string
    sql: ${TABLE}.ni_declaring_number ;;
  }

  dimension: ni_declaring_name {
    type: string
    sql: ${TABLE}.ni_declaring_name ;;
  }

  dimension: ni_exporter_number {
    type: string
    sql: ${TABLE}.ni_exporter_number ;;
  }

  dimension: ni_exporter_name {
    type: string
    sql: ${TABLE}.ni_exporter_name ;;
  }

  dimension: due_situation {
    type: string
    sql: ${TABLE}.due_situation ;;
  }

  dimension: dul_code {
    type: string
    sql: ${TABLE}.dul_code ;;
  }

  dimension: dul_description {
    type: string
    sql: ${TABLE}.dul_description ;;
  }

  dimension: dul_fiscal_region_acronym {
    type: string
    sql: ${TABLE}.dul_fiscal_region_acronym ;;
  }

  dimension: bul_code {
    type: string
    sql: ${TABLE}.bul_code ;;
  }

  dimension: bul_description {
    type: string
    sql: ${TABLE}.bul_description ;;
  }

  dimension: bul_fiscal_region_acronym {
    type: string
    sql: ${TABLE}.bul_fiscal_region_acronym ;;
  }

  dimension: fau_code {
    type: string
    sql: ${TABLE}.fau_code ;;
  }

  dimension: fau_description {
    type: string
    sql: ${TABLE}.fau_description ;;
  }

  dimension: fau_region_acronym {
    type: string
    sql: ${TABLE}.fau_region_acronym ;;
  }

  dimension: ccd_code {
    type: string
    sql: ${TABLE}.ccd_code ;;
  }

  dimension: ccd_zone {
    type: string
    sql: ${TABLE}.ccd_zone ;;
  }

  dimension: ccd_description {
    type: string
    sql: ${TABLE}.ccd_description ;;
  }

  dimension: ccd_rfb_code {
    type: string
    sql: ${TABLE}.ccd_rfb_code ;;
  }

  dimension: ccd_rfb_description {
    type: string
    sql: ${TABLE}.ccd_rfb_description ;;
  }

  dimension: ccd_depositary_cnpj {
    type: string
    sql: ${TABLE}.ccd_depositary_cnpj ;;
  }

  dimension: ccd_depositary_name {
    type: string
    sql: ${TABLE}.ccd_depositary_name ;;
  }

  dimension: cba_code {
    type: string
    sql: ${TABLE}.cba_code ;;
  }

  dimension: cba_zone {
    type: string
    sql: ${TABLE}.cba_zone ;;
  }

  dimension: cba_description {
    type: string
    sql: ${TABLE}.cba_description ;;
  }

  dimension: cba_rfb_code {
    type: string
    sql: ${TABLE}.cba_rfb_code ;;
  }

  dimension: cba_rfb_description {
    type: string
    sql: ${TABLE}.cba_rfb_description ;;
  }

  dimension: cba_depositary_cnpj {
    type: string
    sql: ${TABLE}.cba_depositary_cnpj ;;
  }

  dimension: cba_depositary_name {
    type: string
    sql: ${TABLE}.cba_depositary_name ;;
  }

  dimension: administrative_control {
    type: string
    sql: ${TABLE}.administrative_control ;;
  }

  dimension: db_channel {
    type: number
    sql: ${TABLE}.db_channel ;;
  }

  dimension: via_transport_value {
    type: string
    sql: ${TABLE}.via_transport_value ;;
  }

  dimension: manifest_key_sequence {
    type: number
    sql: ${TABLE}.manifest_key_sequence ;;
  }

  dimension: cpf_cnpj_manifestator_key {
    type: string
    sql: ${TABLE}.cpf_cnpj_manifestator_key ;;
  }

  dimension: cpf_cnpj_manifestator_value {
    type: string
    sql: ${TABLE}.cpf_cnpj_manifestator_value ;;
  }

  dimension: manifest_issue_date {
    type: date
    sql: ${TABLE}.manifest_issue_date ;;
  }

  dimension: nr_bill_of_lading {
    type: string
    sql: ${TABLE}.nr_bill_of_lading ;;
  }

  dimension: date_issue_bill_of_landing {
    type: date
    sql: ${TABLE}.date_issue_bill_of_landing ;;
  }

  dimension: consignee_destination_country_value {
    type: string
    sql: ${TABLE}.consignee_destination_country_value ;;
  }

  dimension: consignee_name {
    type: string
    sql: ${TABLE}.consignee_name ;;
  }

  dimension: identification0 {
    type: string
    sql: ${TABLE}.identification0 ;;
  }

  dimension: urf_key {
    type: number
    sql: ${TABLE}.urf_key ;;
  }

  dimension: urf_value {
    type: string
    sql: ${TABLE}.urf_value ;;
  }

  dimension: tare0 {
    type: number
    sql: ${TABLE}.tare0 ;;
  }

  dimension: no_seals_required {
    type: string
    sql: ${TABLE}.no_seals_required ;;
  }

  dimension: seals {
    type: string
    sql: ${TABLE}.seals ;;
  }

  dimension: measured_weight {
    type: number
    sql: ${TABLE}.measured_weight ;;
  }

  set: detail {
    fields: [
      id,
      due_number,
      digit,
      processed_at_due_time,
      created_at_due_time,
      updated_at_due_time,
      dat,
      internacional_bill_of_landing,
      event_datetime_time,
      event,
      responsible,
      identification,
      tare,
      seal,
      ruc_number,
      importing_country_code,
      importing_country_name,
      creation_date_time,
      ni_declaring_number,
      ni_declaring_name,
      ni_exporter_number,
      ni_exporter_name,
      due_situation,
      dul_code,
      dul_description,
      dul_fiscal_region_acronym,
      bul_code,
      bul_description,
      bul_fiscal_region_acronym,
      fau_code,
      fau_description,
      fau_region_acronym,
      ccd_code,
      ccd_zone,
      ccd_description,
      ccd_rfb_code,
      ccd_rfb_description,
      ccd_depositary_cnpj,
      ccd_depositary_name,
      cba_code,
      cba_zone,
      cba_description,
      cba_rfb_code,
      cba_rfb_description,
      cba_depositary_cnpj,
      cba_depositary_name,
      administrative_control,
      db_channel,
      via_transport_value,
      manifest_key_sequence,
      cpf_cnpj_manifestator_key,
      cpf_cnpj_manifestator_value,
      manifest_issue_date,
      nr_bill_of_lading,
      date_issue_bill_of_landing,
      consignee_destination_country_value,
      consignee_name,
      identification0,
      urf_key,
      urf_value,
      tare0,
      no_seals_required,
      seals,
      measured_weight
    ]
  }
}
