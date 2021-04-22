view: due_gold {
  derived_table: {
    sql: SELECT * FROM DUE.due_gold
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: id_due {
    type: number
    sql: ${TABLE}.id_due ;;
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

  dimension: id_info_bl {
    type: number
    sql: ${TABLE}.id_info_bl ;;
  }

  dimension: dat {
    type: string
    sql: ${TABLE}.dat ;;
  }

  dimension: via_internacional_transportation {
    type: string
    sql: ${TABLE}.via_internacional_transportation ;;
  }

  dimension: internacional_bill_of_landing {
    type: string
    sql: ${TABLE}.internacional_bill_of_landing ;;
  }

  dimension: pu_due_id {
    type: number
    sql: ${TABLE}.pu_due_id ;;
  }

  dimension_group: created_at_info_bl {
    type: time
    sql: ${TABLE}.created_at_info_bl ;;
  }

  dimension_group: updated_at_info_bl {
    type: time
    sql: ${TABLE}.updated_at_info_bl ;;
  }

  dimension: id_historico {
    type: number
    sql: ${TABLE}.id_historico ;;
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

  dimension_group: created_at_historico {
    type: time
    sql: ${TABLE}.created_at_historico ;;
  }

  dimension_group: updated_at_historico {
    type: time
    sql: ${TABLE}.updated_at_historico ;;
  }

  dimension: id_container {
    type: number
    sql: ${TABLE}.id_container ;;
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

  dimension: pu_due_id1 {
    type: number
    sql: ${TABLE}.pu_due_id1 ;;
  }

  dimension_group: created_at_container {
    type: time
    sql: ${TABLE}.created_at_container ;;
  }

  dimension_group: updated_at_container {
    type: time
    sql: ${TABLE}.updated_at_container ;;
  }

  dimension: id_complement {
    type: number
    sql: ${TABLE}.id_complement ;;
  }

  dimension: pu_reference_id {
    type: number
    sql: ${TABLE}.pu_reference_id ;;
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

  dimension: pu_due_id2 {
    type: number
    sql: ${TABLE}.pu_due_id2 ;;
  }

  dimension_group: processed_at_complement {
    type: time
    sql: ${TABLE}.processed_at_complement ;;
  }

  dimension_group: created_at_complement {
    type: time
    sql: ${TABLE}.created_at_complement ;;
  }

  dimension_group: updated_at_complement {
    type: time
    sql: ${TABLE}.updated_at_complement ;;
  }

  dimension: id_manifestation_shipping_data {
    type: number
    sql: ${TABLE}.id_manifestation_shipping_data ;;
  }

  dimension: via_transport_value {
    type: string
    sql: ${TABLE}.via_transport_value ;;
  }

  dimension: urf_key_location {
    type: number
    sql: ${TABLE}.urf_key_location ;;
  }

  dimension: urf_value_location {
    type: string
    sql: ${TABLE}.urf_value_location ;;
  }

  dimension: pu_due_customs_transit_id {
    type: number
    sql: ${TABLE}.pu_due_customs_transit_id ;;
  }

  dimension_group: created_at_manifestation_shipping_data {
    type: time
    sql: ${TABLE}.created_at_manifestation_shipping_data ;;
  }

  dimension_group: updated_at_manifestation_shipping_data {
    type: time
    sql: ${TABLE}.updated_at_manifestation_shipping_data ;;
  }

  dimension: id_manifestation_shipping_data_detail {
    type: number
    sql: ${TABLE}.id_manifestation_shipping_data_detail ;;
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

  dimension: pu_due_manifestation_shipping_data_id {
    type: number
    sql: ${TABLE}.pu_due_manifestation_shipping_data_id ;;
  }

  dimension_group: created_at_manifestation_shipping_data_detail {
    type: time
    sql: ${TABLE}.created_at_manifestation_shipping_data_detail ;;
  }

  dimension_group: updated_at_manifestation_shipping_data_detail {
    type: time
    sql: ${TABLE}.updated_at_manifestation_shipping_data_detail ;;
  }

  dimension: id_manifestation_shipping_data_detail_knowledges {
    type: number
    sql: ${TABLE}.id_manifestation_shipping_data_detail_knowledges ;;
  }

  dimension: nr_bill_of_lading {
    type: string
    sql: ${TABLE}.nr_bill_of_lading ;;
  }

  dimension: date_issue_bill_of_landing {
    type: date
    sql: ${TABLE}.date_issue_bill_of_landing ;;
  }

  dimension: pu_due_manifestation_shipping_data_detail_id {
    type: number
    sql: ${TABLE}.pu_due_manifestation_shipping_data_detail_id ;;
  }

  dimension_group: created_at_manifestation_shipping_data_detail_knowledges {
    type: time
    sql: ${TABLE}.created_at_manifestation_shipping_data_detail_knowledges ;;
  }

  dimension_group: created_at_manifestation_shipping_data_detail_knowledges0 {
    type: time
    sql: ${TABLE}.created_at_manifestation_shipping_data_detail_knowledges0 ;;
  }

  dimension: id_manifestation_shipping_data_detailed_by_knowledge {
    type: number
    sql: ${TABLE}.id_manifestation_shipping_data_detailed_by_knowledge ;;
  }

  dimension: consignee_destination_country_value {
    type: string
    sql: ${TABLE}.consignee_destination_country_value ;;
  }

  dimension: consignee_name {
    type: string
    sql: ${TABLE}.consignee_name ;;
  }

  dimension: pu_due_manifestation_shipping_data_detail_knowledges_id {
    type: number
    sql: ${TABLE}.pu_due_manifestation_shipping_data_detail_knowledges_id ;;
  }

  dimension_group: created_at_manifestation_shipping_data_detailed_by_knowledge {
    type: time
    sql: ${TABLE}.created_at_manifestation_shipping_data_detailed_by_knowledge ;;
  }

  dimension_group: updated_at_manifestation_shipping_data_detailed_by_knowledge {
    type: time
    sql: ${TABLE}.updated_at_manifestation_shipping_data_detailed_by_knowledge ;;
  }

  dimension: id_manifestation_shipping_data_detailed_by_knowledge_cl {
    type: number
    sql: ${TABLE}.id_manifestation_shipping_data_detailed_by_knowledge_cl ;;
  }

  dimension: urf_key {
    type: number
    sql: ${TABLE}.urf_key ;;
  }

  dimension: urf_value {
    type: string
    sql: ${TABLE}.urf_value ;;
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

  dimension: pu_due_manifestation_shipping_data_detailed_by_knowledge_id {
    type: number
    sql: ${TABLE}.pu_due_manifestation_shipping_data_detailed_by_knowledge_id ;;
  }

  dimension_group: created_at_manifestation_shipping_data_detailed_by_knowledge_cl {
    type: time
    sql: ${TABLE}.created_at_manifestation_shipping_data_detailed_by_knowledge_cl ;;
  }

  dimension_group: updated_at_manifestation_shipping_data_detailed_by_knowledge_cl {
    type: time
    sql: ${TABLE}.updated_at_manifestation_shipping_data_detailed_by_knowledge_cl ;;
  }

  set: detail {
    fields: [
      id_due,
      due_number,
      digit,
      processed_at_due_time,
      created_at_due_time,
      updated_at_due_time,
      id_info_bl,
      dat,
      via_internacional_transportation,
      internacional_bill_of_landing,
      pu_due_id,
      created_at_info_bl_time,
      updated_at_info_bl_time,
      id_historico,
      event_datetime_time,
      event,
      responsible,
      created_at_historico_time,
      updated_at_historico_time,
      id_container,
      identification,
      tare,
      seal,
      pu_due_id1,
      created_at_container_time,
      updated_at_container_time,
      id_complement,
      pu_reference_id,
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
      pu_due_id2,
      processed_at_complement_time,
      created_at_complement_time,
      updated_at_complement_time,
      id_manifestation_shipping_data,
      via_transport_value,
      urf_key_location,
      urf_value_location,
      pu_due_customs_transit_id,
      created_at_manifestation_shipping_data_time,
      updated_at_manifestation_shipping_data_time,
      id_manifestation_shipping_data_detail,
      manifest_key_sequence,
      cpf_cnpj_manifestator_key,
      cpf_cnpj_manifestator_value,
      manifest_issue_date,
      pu_due_manifestation_shipping_data_id,
      created_at_manifestation_shipping_data_detail_time,
      updated_at_manifestation_shipping_data_detail_time,
      id_manifestation_shipping_data_detail_knowledges,
      nr_bill_of_lading,
      date_issue_bill_of_landing,
      pu_due_manifestation_shipping_data_detail_id,
      created_at_manifestation_shipping_data_detail_knowledges_time,
      created_at_manifestation_shipping_data_detail_knowledges0_time,
      id_manifestation_shipping_data_detailed_by_knowledge,
      consignee_destination_country_value,
      consignee_name,
      pu_due_manifestation_shipping_data_detail_knowledges_id,
      created_at_manifestation_shipping_data_detailed_by_knowledge_time,
      updated_at_manifestation_shipping_data_detailed_by_knowledge_time,
      id_manifestation_shipping_data_detailed_by_knowledge_cl,
      urf_key,
      urf_value,
      no_seals_required,
      seals,
      measured_weight,
      pu_due_manifestation_shipping_data_detailed_by_knowledge_id,
      created_at_manifestation_shipping_data_detailed_by_knowledge_cl_time,
      updated_at_manifestation_shipping_data_detailed_by_knowledge_cl_time
    ]
  }
}
