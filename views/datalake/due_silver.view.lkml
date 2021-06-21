view: due_silver {
  sql_table_name: DUE.due_silver ;;

  dimension: administrative_control {
    type: string
    sql: ${TABLE}.administrative_control ;;
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

  dimension: cba_code {
    type: string
    sql: ${TABLE}.cba_code ;;
  }

  dimension: cba_depositary_cnpj {
    type: string
    sql: ${TABLE}.cba_depositary_cnpj ;;
  }

  dimension: cba_depositary_name {
    type: string
    sql: ${TABLE}.cba_depositary_name ;;
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

  dimension: cba_zone {
    type: string
    sql: ${TABLE}.cba_zone ;;
  }

  dimension: ccd_code {
    type: string
    sql: ${TABLE}.ccd_code ;;
  }

  dimension: ccd_depositary_cnpj {
    type: string
    sql: ${TABLE}.ccd_depositary_cnpj ;;
  }

  dimension: ccd_depositary_name {
    type: string
    sql: ${TABLE}.ccd_depositary_name ;;
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

  dimension: ccd_zone {
    type: string
    sql: ${TABLE}.ccd_zone ;;
  }

  dimension: consignee_destination_country_value {
    type: string
    sql: ${TABLE}.consignee_destination_country_value ;;
  }

  dimension: consignee_name {
    type: string
    sql: ${TABLE}.consignee_name ;;
  }

  dimension: cpf_cnpj_manifestator_key {
    type: string
    sql: ${TABLE}.cpf_cnpj_manifestator_key ;;
  }

  dimension: cpf_cnpj_manifestator_key0 {
    type: string
    sql: ${TABLE}.cpf_cnpj_manifestator_key0 ;;
  }

  dimension: cpf_cnpj_manifestator_value {
    type: string
    sql: ${TABLE}.cpf_cnpj_manifestator_value ;;
  }

  dimension: cpf_cnpj_manifestator_value0 {
    type: string
    sql: ${TABLE}.cpf_cnpj_manifestator_value0 ;;
  }

  dimension_group: created_at_complement {
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
    sql: ${TABLE}.created_at_complement ;;
  }

  dimension_group: created_at_container {
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
    sql: ${TABLE}.created_at_container ;;
  }

  dimension_group: created_at_due {
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
    sql: ${TABLE}.created_at_due ;;
  }

  dimension_group: created_at_historico {
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
    sql: ${TABLE}.created_at_historico ;;
  }

  dimension_group: created_at_historico0 {
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
    sql: ${TABLE}.created_at_historico0 ;;
  }

  dimension_group: created_at_info_bl {
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
    sql: ${TABLE}.created_at_info_bl ;;
  }

  dimension_group: created_at_manifestation_shipping_data {
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
    sql: ${TABLE}.created_at_manifestation_shipping_data ;;
  }

  dimension_group: created_at_manifestation_shipping_data_detail {
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
    sql: ${TABLE}.created_at_manifestation_shipping_data_detail ;;
  }

  dimension_group: created_at_manifestation_shipping_data_detail_knowledges {
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
    sql: ${TABLE}.created_at_manifestation_shipping_data_detail_knowledges ;;
  }

  dimension_group: created_at_manifestation_shipping_data_detail_knowledges0 {
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
    sql: ${TABLE}.created_at_manifestation_shipping_data_detail_knowledges0 ;;
  }

  dimension_group: created_at_manifestation_shipping_data_detailed_by_knowledge {
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
    sql: ${TABLE}.created_at_manifestation_shipping_data_detailed_by_knowledge ;;
  }

  dimension_group: created_at_manifestation_shipping_data_detailed_by_knowledge_cl {
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
    sql: ${TABLE}.created_at_manifestation_shipping_data_detailed_by_knowledge_cl ;;
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
    sql: ${TABLE}.creation_date ;;
  }

  dimension: dat {
    type: string
    sql: ${TABLE}.dat ;;
  }

  dimension_group: date_issue_bill_of_landing {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date_issue_bill_of_landing ;;
  }

  dimension_group: date_issue_bill_of_landing0 {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date_issue_bill_of_landing0 ;;
  }

  dimension: db_channel {
    type: number
    sql: ${TABLE}.db_channel ;;
  }

  dimension: digit {
    type: string
    sql: ${TABLE}.digit ;;
  }

  dimension: due_number {
    type: string
    sql: ${TABLE}.due_number ;;
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

  dimension: event {
    type: string
    sql: ${TABLE}.event ;;
  }

  dimension_group: event_datetime {
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
    sql: ${TABLE}.event_datetime ;;
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

  dimension: id_complement {
    type: number
    sql: ${TABLE}.id_complement ;;
  }

  dimension: id_container {
    type: number
    sql: ${TABLE}.id_container ;;
  }

  dimension: id_due {
    type: number
    sql: ${TABLE}.id_due ;;
  }

  dimension: id_historico {
    type: number
    sql: ${TABLE}.id_historico ;;
  }

  dimension: id_info_bl {
    type: number
    sql: ${TABLE}.id_info_bl ;;
  }

  dimension: id_manifestation_shipping_data {
    type: number
    sql: ${TABLE}.id_manifestation_shipping_data ;;
  }

  dimension: id_manifestation_shipping_data_detail {
    type: number
    sql: ${TABLE}.id_manifestation_shipping_data_detail ;;
  }

  dimension: id_manifestation_shipping_data_detail_knowledges {
    type: number
    sql: ${TABLE}.id_manifestation_shipping_data_detail_knowledges ;;
  }

  dimension: id_manifestation_shipping_data_detailed_by_knowledge {
    type: number
    sql: ${TABLE}.id_manifestation_shipping_data_detailed_by_knowledge ;;
  }

  dimension: id_manifestation_shipping_data_detailed_by_knowledge_cl {
    type: number
    sql: ${TABLE}.id_manifestation_shipping_data_detailed_by_knowledge_cl ;;
  }

  dimension: identification {
    type: string
    sql: ${TABLE}.identification ;;
  }

  dimension: identification0 {
    type: string
    sql: ${TABLE}.identification0 ;;
  }

  dimension: importing_country_code {
    type: number
    sql: ${TABLE}.importing_country_code ;;
  }

  dimension: importing_country_name {
    type: string
    sql: ${TABLE}.importing_country_name ;;
  }

  dimension: internacional_bill_of_landing {
    type: string
    sql: ${TABLE}.internacional_bill_of_landing ;;
  }

  dimension_group: manifest_issue {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.manifest_issue_date ;;
  }

  dimension: manifest_key_sequence {
    type: number
    sql: ${TABLE}.manifest_key_sequence ;;
  }

  dimension: measured_weight {
    type: number
    sql: ${TABLE}.measured_weight ;;
  }

  dimension: ni_declaring_name {
    type: string
    sql: ${TABLE}.ni_declaring_name ;;
  }

  dimension: ni_declaring_number {
    type: string
    sql: ${TABLE}.ni_declaring_number ;;
  }

  dimension: ni_exporter_name {
    type: string
    sql: ${TABLE}.ni_exporter_name ;;
  }

  dimension: ni_exporter_number {
    type: string
    sql: ${TABLE}.ni_exporter_number ;;
  }

  dimension: no_seals_required {
    type: yesno
    sql: ${TABLE}.no_seals_required ;;
  }

  dimension: nr_bill_of_lading {
    type: string
    sql: ${TABLE}.nr_bill_of_lading ;;
  }

  dimension: nr_bill_of_lading0 {
    type: string
    sql: ${TABLE}.nr_bill_of_lading0 ;;
  }

  dimension_group: processed_at_complement {
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
    sql: ${TABLE}.processed_at_complement ;;
  }

  dimension_group: processed_at_due {
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
    sql: ${TABLE}.processed_at_due ;;
  }

  dimension: pu_due_customs_transit_id {
    type: number
    sql: ${TABLE}.pu_due_customs_transit_id ;;
  }

  dimension: pu_due_id {
    type: number
    sql: ${TABLE}.pu_due_id ;;
  }

  dimension: pu_due_id0 {
    type: number
    value_format_name: id
    sql: ${TABLE}.pu_due_id0 ;;
  }

  dimension: pu_due_id1 {
    type: number
    value_format_name: id
    sql: ${TABLE}.pu_due_id1 ;;
  }

  dimension: pu_due_id2 {
    type: number
    value_format_name: id
    sql: ${TABLE}.pu_due_id2 ;;
  }

  dimension: pu_due_manifestation_shipping_data_detail_id {
    type: number
    sql: ${TABLE}.pu_due_manifestation_shipping_data_detail_id ;;
  }

  dimension: pu_due_manifestation_shipping_data_detail_knowledges_id {
    type: number
    sql: ${TABLE}.pu_due_manifestation_shipping_data_detail_knowledges_id ;;
  }

  dimension: pu_due_manifestation_shipping_data_detailed_by_knowledge_id {
    type: number
    sql: ${TABLE}.pu_due_manifestation_shipping_data_detailed_by_knowledge_id ;;
  }

  dimension: pu_due_manifestation_shipping_data_id {
    type: number
    sql: ${TABLE}.pu_due_manifestation_shipping_data_id ;;
  }

  dimension: pu_reference_id {
    type: number
    sql: ${TABLE}.pu_reference_id ;;
  }

  dimension: responsible {
    type: string
    sql: ${TABLE}.responsible ;;
  }

  dimension: ruc_number {
    type: string
    sql: ${TABLE}.ruc_number ;;
  }

  dimension: seal {
    type: string
    sql: ${TABLE}.seal ;;
  }

  dimension: seals {
    type: string
    sql: ${TABLE}.seals ;;
  }

  dimension: status {
    type: number
    sql: ${TABLE}.status ;;
  }

  dimension: tare {
    type: string
    sql: ${TABLE}.tare ;;
  }

  dimension: tare0 {
    type: number
    sql: ${TABLE}.tare0 ;;
  }

  dimension_group: updated_at_complement {
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
    sql: ${TABLE}.updated_at_complement ;;
  }

  dimension_group: updated_at_container {
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
    sql: ${TABLE}.updated_at_container ;;
  }

  dimension_group: updated_at_due {
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
    sql: ${TABLE}.updated_at_due ;;
  }

  dimension_group: updated_at_info_bl {
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
    sql: ${TABLE}.updated_at_info_bl ;;
  }

  dimension_group: updated_at_manifestation_shipping_data {
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
    sql: ${TABLE}.updated_at_manifestation_shipping_data ;;
  }

  dimension_group: updated_at_manifestation_shipping_data_detail {
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
    sql: ${TABLE}.updated_at_manifestation_shipping_data_detail ;;
  }

  dimension_group: updated_at_manifestation_shipping_data_detailed_by_knowledge {
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
    sql: ${TABLE}.updated_at_manifestation_shipping_data_detailed_by_knowledge ;;
  }

  dimension_group: updated_at_manifestation_shipping_data_detailed_by_knowledge_cl {
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
    sql: ${TABLE}.updated_at_manifestation_shipping_data_detailed_by_knowledge_cl ;;
  }

  dimension: urf_key {
    type: number
    sql: ${TABLE}.urf_key ;;
  }

  dimension: urf_key_location {
    type: number
    sql: ${TABLE}.urf_key_location ;;
  }

  dimension: urf_key_location0 {
    type: number
    sql: ${TABLE}.urf_key_location0 ;;
  }

  dimension: urf_value {
    type: string
    sql: ${TABLE}.urf_value ;;
  }

  dimension: urf_value_location {
    type: string
    sql: ${TABLE}.urf_value_location ;;
  }

  dimension: urf_value_location0 {
    type: string
    sql: ${TABLE}.urf_value_location0 ;;
  }

  dimension: via_internacional_transportation {
    type: string
    sql: ${TABLE}.via_internacional_transportation ;;
  }

  dimension: via_transport_value {
    type: string
    sql: ${TABLE}.via_transport_value ;;
  }

  dimension: via_transport_value0 {
    type: string
    sql: ${TABLE}.via_transport_value0 ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      importing_country_name,
      ni_declaring_name,
      ni_exporter_name,
      ccd_depositary_name,
      cba_depositary_name,
      consignee_name
    ]
  }
}
