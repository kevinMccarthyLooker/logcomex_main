view: customer {
  sql_table_name: public.customer ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: address {
    type: string
    sql: ${TABLE}."address" ;;
  }

  dimension: blocked {
    type: yesno
    sql: ${TABLE}."blocked" ;;
  }

  dimension: api_key {
    type: string
    sql: ${TABLE}."api_key" ;;
  }

  dimension: cnpj {
    type: string
    sql: ${TABLE}."cnpj" ;;
  }

  dimension_group: created {
    label: "created_customer"
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

  dimension: custom_hex_color {
    type: string
    sql: ${TABLE}."custom_hex_color" ;;
  }

  dimension: custom_logo {
    type: string
    sql: ${TABLE}."custom_logo" ;;
  }

  dimension: custom_name {
    type: string
    sql: ${TABLE}."custom_name" ;;
  }

  dimension: customer_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."customer_type_id" ;;
  }

  dimension_group: deleted {
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
    sql: ${TABLE}."deleted_at" ;;
  }

  dimension: email_notify_disabled {
    type: yesno
    sql: ${TABLE}."email_notify_disabled" ;;
  }

  dimension: email_notify_hour {
    type: number
    sql: ${TABLE}."email_notify_hour" ;;
  }

  dimension: email_notify_immediate {
    type: yesno
    sql: ${TABLE}."email_notify_immediate" ;;
  }

  dimension: email_reply_to {
    type: string
    sql: ${TABLE}."email_reply_to" ;;
  }

  dimension: executive_id {
    type: number
    sql: ${TABLE}."executive_id" ;;
  }

  dimension: executive_name {
    type: string
    sql:  CASE WHEN (customer.executive_id = 39) THEN 'Renan Goncalves'
              WHEN (customer.executive_id = 44) THEN 'Irene Lima'
              WHEN (customer.executive_id = 23) THEN 'Jonas Martins'
              WHEN (customer.executive_id = 30) THEN 'Felipe Bezerra'
              WHEN (customer.executive_id = 17) THEN 'Elaine Ribeiro'
              WHEN (customer.executive_id = 16) THEN 'Nickelson'
              WHEN (customer.executive_id = 37) THEN 'Jessica Moreira'
              WHEN (customer.executive_id = 52) THEN 'Mirele Benato'
              WHEN (customer.executive_id = 56) THEN 'Milena Biffi'
              WHEN (customer.executive_id = 48) THEN 'Ianaomy Nascimento'
              WHEN (customer.executive_id = 49) THEN 'Jheniffer Cruz'
              WHEN (customer.executive_id = 59) THEN 'Valeria Antunes'
              WHEN (customer.executive_id = 50) THEN 'Jessica Steinheusen'
              WHEN (customer.executive_id = 10) THEN 'Andreza Sandim'
              WHEN (customer.executive_id = 4) THEN 'Helmuth'
              WHEN (customer.executive_id = 55) THEN 'Danilo'
              WHEN (customer.executive_id = 36) THEN 'Gabriela'
              WHEN (customer.executive_id = 72) THEN 'Sthephanny Andrade'
              WHEN (customer.executive_id = 63) THEN 'Carolyne Rocha'
              WHEN (customer.executive_id = 64) THEN 'Diego Sandeski'
              WHEN (customer.executive_id = 71) THEN 'Rafael Gehrke'
              WHEN (customer.executive_id = 19) THEN 'Kamilla Scheidt'
              WHEN (customer.executive_id = 75) THEN 'Maxi Mendes'
              WHEN (customer.executive_id = 76) THEN 'Leandro Oliveira'
              WHEN (customer.executive_id = 78) THEN 'Luana Nascimento'
              WHEN (customer.executive_id = 11) THEN 'Laryssa Andrade'
              WHEN (customer.executive_id = 12) THEN 'Daniela Vasconcelos'
              WHEN (customer.executive_id = 41) THEN 'Caroline Bilibio'
              WHEN (customer.executive_id = 43) THEN 'Gilson Almeida'
              WHEN (customer.executive_id = 77) THEN 'Bruna Soares'
              WHEN (customer.executive_id = 57) THEN 'Kathia Festa'
              WHEN (customer.executive_id = 80) THEN 'Bruno Dias'
              WHEN (customer.executive_id = 81) THEN 'Edgar Oliveira'
              WHEN (customer.executive_id = 84) THEN 'Lucas Mansur'
              WHEN (customer.executive_id = 89) THEN 'Natalia Mariano'
              WHEN (customer.executive_id = 91) THEN 'Clarisse Souza'
              WHEN (customer.executive_id = 92) THEN 'Thais Costa'
              WHEN (customer.executive_id = 93) THEN 'Roberta Miglioli'
              WHEN (customer.executive_id = 94) THEN 'Marina Kaminski'
              WHEN (customer.executive_id = 95) THEN 'Giovanna Welter'
              WHEN (customer.executive_id = 101) THEN 'Jocimara Siedlecki'
              WHEN (customer.executive_id = 102) THEN 'Tatiane Rupel'
              WHEN (customer.executive_id = 105) THEN 'Marcos Filipe'
              WHEN (customer.executive_id = 106) THEN 'Vinicius Iglesias'
              WHEN (customer.executive_id = 108) THEN 'Luana Paes'
              WHEN (customer.executive_id = 109) THEN 'Beatriz Camilo'
              WHEN (customer.executive_id = 110) THEN 'Allan Schmitt'
              WHEN (customer.executive_id = 111) THEN 'Leonel Lima'
              when (customer.executive_id is null) then CAST ( customer.executive_id AS TEXT )
          else CAST ( customer.executive_id AS TEXT ) end
    ;;
  }

  dimension: executive_area {
    type: string
    sql:  CASE WHEN (customer.executive_id in (36,37,39,17, 52, 77,56, 57, 81, 89, 91, 92, 93, 94, 95, 59, 50, 72, 75, 76,102,105,106,108,109,111)) THEN 'CS'
               WHEN (customer.executive_id in (10,11,12,23,30,41,43,44,48,49,63,64,71,78,80,84,101,110 )) THEN 'Comercial'
               WHEN (customer.executive_id is null) THEN 'Sem Executivo'
          else 'Outro' end
    ;;
  }

  dimension: fake_customer {
    type: yesno
    sql: ${TABLE}."fake_customer" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."name" ;;
  }

  dimension: pay_day {
    type: number
    sql: ${TABLE}."pay_day" ;;
  }

  dimension: phones {
    type: string
    sql: ${TABLE}."phones" ;;
  }

  dimension: site {
    type: string
    sql: ${TABLE}."site" ;;
  }

  dimension: slug {
    type: string
    sql: ${TABLE}."slug" ;;
  }

  dimension: status_id {
    type: number
    sql: ${TABLE}."status_id" ;;
  }

  dimension: tracking_aerial_days_to_archive {
    type: number
    sql: ${TABLE}."tracking_aerial_days_to_archive" ;;
  }

  dimension: tracking_maritime_days_to_archive {
    type: number
    sql: ${TABLE}."tracking_maritime_days_to_archive" ;;
  }

  dimension: tracking_processed_loads {
    type: yesno
    sql: ${TABLE}."tracking_processed_loads" ;;
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

  measure: count_distinc {
    type: count_distinct
    sql: ${customer.id} ;;
    drill_fields: [detail_light*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      name,
      executive_name,
      executive_area,
      customer_plan.start,
      customer_plan.expiration
    ]
  }

  set: detail_light{
    fields: [
      id,
      name
    ]
  }
}
