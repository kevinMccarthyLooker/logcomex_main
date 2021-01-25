view: comex_analytics_gold {
  derived_table: {
    sql: SELECT * FROM comex_analytics.comex_analytics_gold
      ;;
  }

  # measure: count {
  #   type: count
  #   drill_fields: [detail*]
  # }

  dimension: di_number {
    type: number
    sql: ${TABLE}.di_number ;;
  }

  dimension_group: data_hora_registro {
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
    sql: ${TABLE}.data_hora_registro ;;
  }

  # dimension_group: data_hora_registro {
  #   type: time
  #   sql: ${TABLE}.data_hora_registro ;;
  # }

  dimension: uf {
    type: string
    sql: ${TABLE}.uf ;;
  }

  dimension: data_registro_di {
    type: date
    sql: ${TABLE}.data_registro_di ;;
  }

  dimension: canal {
    type: string
    sql: ${TABLE}.canal ;;
  }

  dimension: importador_cnpj {
    type: string
    sql: ${TABLE}.importador_cnpj ;;
  }

  dimension: importador_nome {
    type: string
    sql: ${TABLE}.importador_nome ;;
  }

  dimension: importador_endereco {
    type: string
    sql: ${TABLE}.importador_endereco ;;
  }

  dimension: pais_procedencia_cod {
    type: string
    sql: ${TABLE}.pais_procedencia_cod ;;
  }

  dimension: pais_procedencia_nome {
    type: string
    sql: ${TABLE}.pais_procedencia_nome ;;
  }

  dimension: data_chegada_carga {
    type: date
    sql: ${TABLE}.data_chegada_carga ;;
  }

  dimension: urf_entrada_carga {
    type: string
    sql: ${TABLE}.urf_entrada_carga ;;
  }

  dimension: peso_bruto {
    type: number
    sql: ${TABLE}.peso_bruto ;;
  }

  dimension: peso_liquido {
    type: number
    sql: ${TABLE}.peso_liquido ;;
  }

  dimension: recinto_aduaneiro {
    type: string
    sql: ${TABLE}.recinto_aduaneiro ;;
  }

  dimension: armazem {
    type: string
    sql: ${TABLE}.armazem ;;
  }

  dimension: qtde_volume {
    type: number
    sql: ${TABLE}.qtde_volume ;;
  }

  dimension: embalagem {
    type: string
    sql: ${TABLE}.embalagem ;;
  }

  dimension: moeda {
    type: string
    sql: ${TABLE}.moeda ;;
  }

  dimension: prepaid {
    type: number
    sql: ${TABLE}.prepaid ;;
  }

  dimension: collect {
    type: number
    sql: ${TABLE}."collect" ;;
  }

  dimension: terr_nacional {
    type: number
    sql: ${TABLE}.terr_nacional ;;
  }

  dimension: totalmoeda {
    type: number
    sql: ${TABLE}.totalmoeda ;;
  }

  dimension: moeda_seguro {
    type: string
    sql: ${TABLE}.moeda_seguro ;;
  }

  dimension: total_moeda_seguro {
    type: number
    sql: ${TABLE}.total_moeda_seguro ;;
  }

  dimension: via_transporte {
    type: string
    sql: ${TABLE}.via_transporte ;;
  }

  dimension: multimodal {
    type: string
    sql: ${TABLE}.multimodal ;;
  }

  dimension: embarcacao {
    type: string
    sql: ${TABLE}.embarcacao ;;
  }

  dimension: transportador {
    type: string
    sql: ${TABLE}.transportador ;;
  }

  dimension: doc_chegada_carga_tipo {
    type: string
    sql: ${TABLE}.doc_chegada_carga_tipo ;;
  }

  dimension: doc_chegada_carga_identificacao {
    type: string
    sql: ${TABLE}.doc_chegada_carga_identificacao ;;
  }

  dimension: local_embarque {
    type: string
    sql: ${TABLE}.local_embarque ;;
  }

  dimension_group: data_embarque {
    type: time
    sql: ${TABLE}.data_embarque ;;
  }

  dimension: utilizacao {
    type: string
    sql: ${TABLE}.utilizacao ;;
  }

  dimension: informacoes_complementares {
    type: string
    sql: ${TABLE}.informacoes_complementares ;;
  }

  dimension_group: created_at {
    type: time
    sql: ${TABLE}.created_at ;;
  }

  dimension: awb {
    type: string
    sql: ${TABLE}.awb ;;
  }

  dimension: hwb {
    type: string
    sql: ${TABLE}.hwb ;;
  }

  dimension: setor {
    type: number
    sql: ${TABLE}.setor ;;
  }

  dimension: crt {
    type: string
    sql: ${TABLE}.crt ;;
  }

  dimension: nm_pais_aquis {
    type: string
    sql: ${TABLE}.nm_pais_aquis ;;
  }

  dimension: nm_pais_origem {
    type: string
    sql: ${TABLE}.nm_pais_origem ;;
  }

  dimension: cod_ncm {
    type: number
    sql: ${TABLE}.cod_ncm ;;
  }

  dimension: desc_mercadoria {
    type: string
    sql: ${TABLE}.desc_mercadoria ;;
  }

  dimension: qtd_med_estat {
    type: number
    sql: ${TABLE}.qtd_med_estat ;;
  }

  dimension: via_transp {
    type: string
    sql: ${TABLE}.via_transp ;;
  }

  dimension: pais_procedencia {
    type: string
    sql: ${TABLE}.pais_procedencia ;;
  }

  dimension: id_pais_procedencia {
    type: string
    sql: ${TABLE}.id_pais_procedencia ;;
  }

  dimension: urf_entrada {
    type: string
    sql: ${TABLE}.urf_entrada ;;
  }

  dimension: moeda_frete_carga {
    type: string
    sql: ${TABLE}.moeda_frete_carga ;;
  }

  dimension: val_frete_carga_moeda {
    type: number
    sql: ${TABLE}.val_frete_carga_moeda ;;
  }

  dimension: incoterm {
    type: string
    sql: ${TABLE}.incoterm ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: customer_id {
    type: number
    sql: ${TABLE}.customer_id ;;
  }

  dimension: cnpj {
    type: string
    sql: ${TABLE}.cnpj ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: comments {
    type: string
    sql: ${TABLE}.comments ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.user_id ;;
  }

  dimension_group: deleted_at {
    type: time
    sql: ${TABLE}.deleted_at ;;
  }

  dimension_group: created_at0 {
    type: time
    sql: ${TABLE}.created_at0 ;;
  }

  dimension_group: updated_at {
    type: time
    sql: ${TABLE}.updated_at ;;
  }

  dimension_group: dt_sync_mercante {
    type: time
    sql: ${TABLE}.dt_sync_mercante ;;
  }

  dimension_group: dt_sync_siscomex {
    type: time
    sql: ${TABLE}.dt_sync_siscomex ;;
  }

  dimension_group: dt_sync_history_sart {
    type: time
    sql: ${TABLE}.dt_sync_history_sart ;;
  }

  dimension_group: dt_sync_history_done {
    type: time
    sql: ${TABLE}.dt_sync_history_done ;;
  }

  dimension: cert_id {
    type: number
    sql: ${TABLE}.cert_id ;;
  }

  dimension: consignee_type_id {
    type: number
    sql: ${TABLE}.consignee_type_id ;;
  }

  dimension: country_id {
    type: number
    sql: ${TABLE}.country_id ;;
  }

  dimension: token {
    type: string
    sql: ${TABLE}.token ;;
  }

  dimension: v2_cert_id {
    type: number
    sql: ${TABLE}.v2_cert_id ;;
  }

  dimension: ibroker_integration {
    type: string
    sql: ${TABLE}.ibroker_integration ;;
  }

  dimension: id0 {
    type: number
    sql: ${TABLE}.id0 ;;
  }

  dimension: name0 {
    type: string
    sql: ${TABLE}.name0 ;;
  }

  dimension: cnpj0 {
    type: string
    sql: ${TABLE}.cnpj0 ;;
  }

  dimension: address {
    type: string
    sql: ${TABLE}.address ;;
  }

  dimension: phones {
    type: string
    sql: ${TABLE}.phones ;;
  }

  dimension: site {
    type: string
    sql: ${TABLE}.site ;;
  }

  dimension: status_id {
    type: number
    sql: ${TABLE}.status_id ;;
  }

  dimension: slug {
    type: string
    sql: ${TABLE}.slug ;;
  }

  dimension: customer_type_id {
    type: number
    sql: ${TABLE}.customer_type_id ;;
  }

  dimension_group: deleted_at0 {
    type: time
    sql: ${TABLE}.deleted_at0 ;;
  }

  dimension_group: created_at1 {
    type: time
    sql: ${TABLE}.created_at1 ;;
  }

  dimension_group: updated_at0 {
    type: time
    sql: ${TABLE}.updated_at0 ;;
  }

  dimension: pay_day {
    type: number
    sql: ${TABLE}.pay_day ;;
  }

  dimension: custom_hex_color {
    type: string
    sql: ${TABLE}.custom_hex_color ;;
  }

  dimension: custom_logo {
    type: string
    sql: ${TABLE}.custom_logo ;;
  }

  dimension: custom_name {
    type: string
    sql: ${TABLE}.custom_name ;;
  }

  dimension: email_notify_immediate {
    type: string
    sql: ${TABLE}.email_notify_immediate ;;
  }

  dimension: email_notify_hour {
    type: number
    sql: ${TABLE}.email_notify_hour ;;
  }

  dimension: email_reply_to {
    type: string
    sql: ${TABLE}.email_reply_to ;;
  }

  dimension: tracking_processed_loads {
    type: string
    sql: ${TABLE}.tracking_processed_loads ;;
  }

  dimension: api_key {
    type: string
    sql: ${TABLE}.api_key ;;
  }

  dimension: tracking_maritime_days_to_archive {
    type: number
    sql: ${TABLE}.tracking_maritime_days_to_archive ;;
  }

  dimension: tracking_aerial_days_to_archive {
    type: number
    sql: ${TABLE}.tracking_aerial_days_to_archive ;;
  }

  dimension: email_notify_disabled {
    type: string
    sql: ${TABLE}.email_notify_disabled ;;
  }

  dimension: executive_id {
    type: number
    sql: ${TABLE}.executive_id ;;
  }

  dimension: fake_customer {
    type: string
    sql: ${TABLE}.fake_customer ;;
  }

  dimension: blocked {
    type: string
    sql: ${TABLE}.blocked ;;
  }

  dimension: pld {
    type: string
    sql: ${TABLE}.pld ;;
  }

  dimension: id1 {
    type: number
    sql: ${TABLE}.id1 ;;
  }

  dimension: certificate_id {
    type: number
    sql: ${TABLE}.certificate_id ;;
  }

  dimension: consignee_id {
    type: number
    sql: ${TABLE}.consignee_id ;;
  }

  dimension_group: deleted_at1 {
    type: time
    sql: ${TABLE}.deleted_at1 ;;
  }

  dimension_group: created_at2 {
    type: time
    sql: ${TABLE}.created_at2 ;;
  }

  dimension_group: updated_at1 {
    type: time
    sql: ${TABLE}.updated_at1 ;;
  }

  dimension_group: ces_processed_at {
    type: time
    sql: ${TABLE}.ces_processed_at ;;
  }

  dimension: id2 {
    type: number
    sql: ${TABLE}.id2 ;;
  }

  dimension: user_profile_customer_id {
    type: number
    sql: ${TABLE}.user_profile_customer_id ;;
  }

  dimension: file {
    type: string
    sql: ${TABLE}.file ;;
  }

  dimension: password {
    type: string
    sql: ${TABLE}.password ;;
  }

  dimension: valid_until {
    type: date
    sql: ${TABLE}.valid_until ;;
  }

  dimension: owner_name {
    type: string
    sql: ${TABLE}.owner_name ;;
  }

  dimension: owner_cpf {
    type: string
    sql: ${TABLE}.owner_cpf ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }

  dimension: mercante_access {
    type: string
    sql: ${TABLE}.mercante_access ;;
  }

  dimension: siscarga_access {
    type: string
    sql: ${TABLE}.siscarga_access ;;
  }

  dimension: siscomex_access {
    type: string
    sql: ${TABLE}.siscomex_access ;;
  }

  dimension: transit_access {
    type: string
    sql: ${TABLE}.transit_access ;;
  }

  dimension: error_message {
    type: string
    sql: ${TABLE}.error_message ;;
  }

  dimension: profile {
    type: string
    sql: ${TABLE}.profile ;;
  }

  dimension_group: deleted_at2 {
    type: time
    sql: ${TABLE}.deleted_at2 ;;
  }

  dimension_group: created_at3 {
    type: time
    sql: ${TABLE}.created_at3 ;;
  }

  dimension_group: updated_at2 {
    type: time
    sql: ${TABLE}.updated_at2 ;;
  }

  dimension: file_hash {
    type: string
    sql: ${TABLE}.file_hash ;;
  }

  dimension: v2_id {
    type: number
    sql: ${TABLE}.v2_id ;;
  }

  dimension: customer_id0 {
    type: number
    sql: ${TABLE}.customer_id0 ;;
  }

  dimension_group: sent_invalid_mail {
    type: time
    sql: ${TABLE}.sent_invalid_mail ;;
  }

  dimension: payload_puc {
    type: string
    sql: ${TABLE}.payload_puc ;;
  }

  dimension: token0 {
    type: string
    sql: ${TABLE}.token0 ;;
  }

  dimension: user_id0 {
    type: number
    sql: ${TABLE}.user_id0 ;;
  }

  # set: detail {
  #   fields: [
  #     di_number,
  #     data_hora_registro_time,
  #     uf,
  #     data_registro_di,
  #     canal,
  #     importador_cnpj,
  #     importador_nome,
  #     importador_endereco,
  #     pais_procedencia_cod,
  #     pais_procedencia_nome,
  #     data_chegada_carga,
  #     urf_entrada_carga,
  #     peso_bruto,
  #     peso_liquido,
  #     recinto_aduaneiro,
  #     armazem,
  #     qtde_volume,
  #     embalagem,
  #     moeda,
  #     prepaid,
  #     collect,
  #     terr_nacional,
  #     totalmoeda,
  #     moeda_seguro,
  #     total_moeda_seguro,
  #     via_transporte,
  #     multimodal,
  #     embarcacao,
  #     transportador,
  #     doc_chegada_carga_tipo,
  #     doc_chegada_carga_identificacao,
  #     local_embarque,
  #     data_embarque_time,
  #     utilizacao,
  #     informacoes_complementares,
  #     created_at_time,
  #     awb,
  #     hwb,
  #     setor,
  #     crt,
  #     nm_pais_aquis,
  #     nm_pais_origem,
  #     cod_ncm,
  #     desc_mercadoria,
  #     qtd_med_estat,
  #     via_transp,
  #     pais_procedencia,
  #     id_pais_procedencia,
  #     urf_entrada,
  #     moeda_frete_carga,
  #     val_frete_carga_moeda,
  #     incoterm,
  #     id,
  #     customer_id,
  #     cnpj,
  #     name,
  #     comments,
  #     user_id,
  #     deleted_at_time,
  #     created_at0_time,
  #     updated_at_time,
  #     dt_sync_mercante_time,
  #     dt_sync_siscomex_time,
  #     dt_sync_history_sart_time,
  #     dt_sync_history_done_time,
  #     cert_id,
  #     consignee_type_id,
  #     country_id,
  #     token,
  #     v2_cert_id,
  #     ibroker_integration,
  #     id0,
  #     name0,
  #     cnpj0,
  #     address,
  #     phones,
  #     site,
  #     status_id,
  #     slug,
  #     customer_type_id,
  #     deleted_at0_time,
  #     created_at1_time,
  #     updated_at0_time,
  #     pay_day,
  #     custom_hex_color,
  #     custom_logo,
  #     custom_name,
  #     email_notify_immediate,
  #     email_notify_hour,
  #     email_reply_to,
  #     tracking_processed_loads,
  #     api_key,
  #     tracking_maritime_days_to_archive,
  #     tracking_aerial_days_to_archive,
  #     email_notify_disabled,
  #     executive_id,
  #     fake_customer,
  #     blocked,
  #     pld,
  #     id1,
  #     certificate_id,
  #     consignee_id,
  #     deleted_at1_time,
  #     created_at2_time,
  #     updated_at1_time,
  #     ces_processed_at_time,
  #     id2,
  #     user_profile_customer_id,
  #     file,
  #     password,
  #     valid_until,
  #     owner_name,
  #     owner_cpf,
  #     url,
  #     mercante_access,
  #     siscarga_access,
  #     siscomex_access,
  #     transit_access,
  #     error_message,
  #     profile,
  #     deleted_at2_time,
  #     created_at3_time,
  #     updated_at2_time,
  #     file_hash,
  #     v2_id,
  #     customer_id0,
  #     sent_invalid_mail_time,
  #     payload_puc,
  #     token0,
  #     user_id0
  #   ]
  # }
}
