view: account {
  sql_table_name: public.account ;;
  drill_fields: [account_id]

  dimension: account_id {
    primary_key: yes
    type: number
    sql: ${TABLE}."account_id" ;;
  }

  dimension: account_type {
    type: string
    sql: ${TABLE}."account_type" ;;
  }

  dimension_group: billing {
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
    sql: ${TABLE}."billing_date" ;;
  }

  dimension: cnpj {
    type: string
    sql: ${TABLE}."cnpj" ;;
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

  dimension_group: data_assinatura {
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
    sql: ${TABLE}."data_assinatura" ;;
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

  dimension: empresa {
    type: number
    sql: ${TABLE}."empresa" ;;
  }

  dimension_group: end_trial {
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
    sql: ${TABLE}."end_trial" ;;
  }

  dimension: endereco {
    type: string
    sql: ${TABLE}."endereco" ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: iugu_id {
    type: string
    sql: ${TABLE}."iugu_id" ;;
  }

  dimension: logo {
    type: string
    sql: ${TABLE}."logo" ;;
  }

  dimension: nome {
    type: string
    sql: ${TABLE}."nome" ;;
  }

  dimension: nome_ab {
    type: string
    sql: ${TABLE}."nome_ab" ;;
  }

  dimension: org_id {
    type: number
    sql: ${TABLE}."org_id" ;;
  }

  dimension: plan_code {
    type: string
    sql: ${TABLE}."plan_code" ;;
  }

  dimension: plan_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."plan_id" ;;
  }

  dimension: plano_fundo {
    type: string
    sql: ${TABLE}."plano_fundo" ;;
  }

  dimension: process_mes {
    type: number
    sql: ${TABLE}."process_mes" ;;
  }

  dimension: referencial {
    type: string
    sql: ${TABLE}."referencial" ;;
  }

  dimension: responsavel {
    type: string
    sql: ${TABLE}."responsavel" ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}."status" ;;
  }

  dimension: storage {
    type: number
    sql: ${TABLE}."storage" ;;
  }

  dimension: telefone {
    type: string
    sql: ${TABLE}."telefone" ;;
  }

  dimension: token {
    type: string
    sql: ${TABLE}."token" ;;
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

  dimension: valor_mes {
    type: number
    sql: ${TABLE}."valor_mes" ;;
  }

  dimension: valor_mes_liquido {
    type: number
    sql: ${TABLE}."valor_mes_liquido" ;;
  }

  dimension: verified {
    type: yesno
    sql: ${TABLE}."verified" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      account_id,
      plans.id,
      plans.plan_name,
      empresa_pessoa.count,
      organizations.count,
      paises.count,
      plans.count,
      processos.count,
      users.count,
      workflow.count,
      workflow_step.count
    ]
  }
}
