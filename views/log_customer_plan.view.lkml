view: log_customer_plan {
  sql_table_name: public.log_customer_plan ;;
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

  dimension: customer_origin_id {
    type: number
    sql: ${TABLE}."customer_origin_id" ;;
  }

  dimension_group: customer_plan_creation {
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
    sql: ${TABLE}."customer_plan_creation_date" ;;
  }

  dimension_group: customer_plan_deleted {
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
    sql: ${TABLE}."customer_plan_deleted" ;;
  }

  dimension: customer_plan_id {
    type: number
    sql: ${TABLE}."customer_plan_id" ;;
  }

  dimension_group: customer_plan_update {
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
    sql: ${TABLE}."customer_plan_update_date" ;;
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

  dimension_group: expiration {
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
    sql: ${TABLE}."expiration" ;;
  }

  dimension: plan_complete_id {
    type: number
    sql: ${TABLE}."plan_complete_id" ;;
  }

  dimension: plan_info_id {
    type: number
    sql: ${TABLE}."plan_info_id" ;;
  }

  dimension: plan_submodule_id {
    type: number
    sql: ${TABLE}."plan_submodule_id" ;;
  }

  dimension: platform_user_id {
    type: number
    sql: ${TABLE}."platform_user_id" ;;
  }

  dimension: restrict_period {
    type: yesno
    sql: ${TABLE}."restrict_period" ;;
  }

  dimension_group: restriction_end {
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
    sql: ${TABLE}."restriction_end" ;;
  }

  dimension_group: restriction_start {
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
    sql: ${TABLE}."restriction_start" ;;
  }

  dimension_group: start {
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
    sql: ${TABLE}."start" ;;
  }

  dimension: tracking_plan_info_id {
    type: number
    sql: ${TABLE}."tracking_plan_info_id" ;;
  }

  dimension_group: trial_end {
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
    sql: ${TABLE}."trial_end" ;;
  }

  dimension_group: trial_start {
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
    sql: ${TABLE}."trial_start" ;;
  }

  dimension: type_of_contract_id {
    type: number
    sql: ${TABLE}."type_of_contract_id" ;;
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

  dimension: user_name {
    type: string
    sql:  CASE WHEN (${user_id} = 39) THEN 'Renan Goncalves'
              WHEN (${user_id} = 44) THEN 'Irene Lima'
              WHEN (${user_id} = 23) THEN 'Jonas Martins'
              WHEN (${user_id} = 30) THEN 'Felipe Bezerra'
              WHEN (${user_id} = 17) THEN 'Elaine Ribeiro'
              WHEN (${user_id} = 16) THEN 'Nickelson'
              WHEN (${user_id} = 37) THEN 'Jessica Moreira'
              WHEN (${user_id} = 52) THEN 'Mirele Benato'
              WHEN (${user_id} = 56) THEN 'Milena Biffi'
              WHEN (${user_id} = 48) THEN 'Ianaomy Nascimento'
              WHEN (${user_id} = 49) THEN 'Jheniffer Cruz'
              WHEN (${user_id} = 59) THEN 'Valeria Antunes'
              WHEN (${user_id} = 50) THEN 'Jessica Steinheusen'
              WHEN (${user_id} = 10) THEN 'Andreza Sandim'
              WHEN (${user_id} = 4) THEN 'Helmuth'
              WHEN (${user_id} = 55) THEN 'Danilo'
              WHEN (${user_id} = 54) THEN 'Esdras Castro'
              WHEN (${user_id} = 36) THEN 'Gabriela'
              WHEN (${user_id} = 72) THEN 'Sthephanny Andrade'
              WHEN (${user_id} = 63) THEN 'Carolyne Rocha'
              WHEN (${user_id} = 64) THEN 'Diego Sandeski'
              WHEN (${user_id} = 71) THEN 'Rafael Gehrke'
              WHEN (${user_id} = 19) THEN 'Kamilla Scheidt'
              WHEN (${user_id} = 75) THEN 'Maxi Mendes'
              WHEN (${user_id} = 76) THEN 'Leandro Oliveira'
              WHEN (${user_id} = 78) THEN 'Luana Nascimento'
              WHEN (${user_id} = 11) THEN 'Laryssa Andrade'
              WHEN (${user_id} = 12) THEN 'Daniela Vasconcelos'
              WHEN (${user_id} = 41) THEN 'Caroline Bilibio'
              WHEN (${user_id} = 43) THEN 'Gilson Almeida'
              WHEN (${user_id} = 77) THEN 'Bruna Soares'
              WHEN (${user_id} = 57) THEN 'Kathia Festa'
              WHEN (${user_id} = 80) THEN 'Bruno Dias'
              WHEN (${user_id} = 81) THEN 'Edgar Oliveira'
              WHEN (${user_id} = 84) THEN 'Lucas Mansur'
              WHEN (${user_id} = 89) THEN 'Natalia Mariano'
              WHEN (${user_id} = 91) THEN 'Clarisse Souza'
              WHEN (${user_id} = 92) THEN 'Thais Costa'
              WHEN (${user_id} = 93) THEN 'Roberta Miglioli'
              WHEN (${user_id} = 94) THEN 'Marina Kaminski'
              WHEN (${user_id} = 95) THEN 'Giovanna Welter'
              WHEN (${user_id} = 101) THEN 'Jocimara Siedlecki'
              WHEN (${user_id} = 102) THEN 'Tatiane Rupel'
              WHEN (${user_id} = 105) THEN 'Marcos Filipe'
              WHEN (${user_id} = 106) THEN 'Vinicius Iglesias'
              WHEN (${user_id} = 108) THEN 'Luana Paes'
              WHEN (${user_id} = 109) THEN 'Beatriz Camilo'
              WHEN (${user_id} = 110) THEN 'Allan Schmitt'
              WHEN (${user_id} = 111) THEN 'Leonel Lima'
              when (${user_id} is null) then CAST ( ${user_id} AS TEXT )
          else CAST ( ${user_id} AS TEXT ) end
    ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
