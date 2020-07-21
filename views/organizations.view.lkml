view: organizations {
  sql_table_name: public.organizations ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: account_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."account_id" ;;
  }

  dimension: ambiente_nfe {
    type: string
    sql: ${TABLE}."ambiente_nfe" ;;
  }

  dimension: ambiente_nfse {
    type: string
    sql: ${TABLE}."ambiente_nfse" ;;
  }

  dimension: bairro {
    type: string
    sql: ${TABLE}."bairro" ;;
  }

  dimension: cep {
    type: string
    sql: ${TABLE}."cep" ;;
  }

  dimension: cidade_id {
    type: number
    sql: ${TABLE}."cidade_id" ;;
  }

  dimension: cnpj {
    type: string
    sql: ${TABLE}."cnpj" ;;
  }

  dimension: comment {
    type: string
    sql: ${TABLE}."comment" ;;
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

  dimension: emissor_nfse {
    type: string
    sql: ${TABLE}."emissor_nfse" ;;
  }

  dimension: endereco {
    type: string
    sql: ${TABLE}."endereco" ;;
  }

  dimension: ie {
    type: string
    sql: ${TABLE}."ie" ;;
  }

  dimension: im {
    type: string
    sql: ${TABLE}."im" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."name" ;;
  }

  dimension: org_id {
    type: number
    sql: ${TABLE}."org_id" ;;
  }

  dimension: regime_tributario {
    type: string
    sql: ${TABLE}."regime_tributario" ;;
  }

  dimension: token {
    type: string
    sql: ${TABLE}."token" ;;
  }

  dimension: uf {
    type: string
    sql: ${TABLE}."uf" ;;
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
    # hidden: yes
    sql: ${TABLE}."user_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, users.name, users.user_id, account.account_id]
  }
}
