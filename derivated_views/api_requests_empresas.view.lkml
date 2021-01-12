view: api_requests_empresas {

  derived_table: {
    sql:select
        arm.id,
        e.razao_social_e as razao_social,
        e.e_mails_e as email,
        e.responsavel_e as responsavel,
        e.status_e as status,
        e.cnpj as cnpj,
        arm.ide,
        arm.idu,
        arm.data_registro,
        arm.api_key,
        arm.api_method,
        arm.api_query_string,
        arm.api_origem,
        arm.api_ip,
        arm.api_forma,
        arm.api_time,
        arm.api_agent,
        arm.api_sucess,
        arm.api_response,
        arm.versao,
        arm.time_request
        from api_request_mvw_2020 arm
        inner join empresas e on e.ide = arm.ide
        where arm.data_registro >='2020-06-01' ;;
  }

  dimension: id {
    type: number
    primary_key: yes
    sql: ${TABLE}.id ;;
  }

  dimension: razao_social {
    type: string
    sql: ${TABLE}.razao_social ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: responsavel {
    type: string
    sql: ${TABLE}.responsavel ;;
  }

  dimension: status {
    type: number
    sql: ${TABLE}.status ;;
  }

  dimension: cnpj {
    type: string
    sql: ${TABLE}.cnpj ;;
  }

  dimension: ide {
    type: number
    sql: ${TABLE}.ide ;;
  }

  dimension: idu {
    type: number
    sql: ${TABLE}.idu ;;
  }

  dimension_group: data_registro {
    type: time
    timeframes: [
      raw,
      week,
      date,
      month,
      year
    ]
    sql: ${TABLE}.data_registro ;;
  }

  dimension: api_key {
    type: string
    sql: ${TABLE}.api_key ;;
  }

  dimension: api_method {
    type: string
    sql: ${TABLE}.api_method ;;
  }

  dimension: api_query_string {
    type: string
    sql: ${TABLE}.api_query_string ;;
  }

  dimension: api_origem {
    type: string
    sql: ${TABLE}.api_origem ;;
  }

  dimension: api_ip {
    type: string
    sql: ${TABLE}.api_ip ;;
  }

  dimension: api_forma {
    type: string
    sql: ${TABLE}.api_forma ;;
  }

  dimension: api_time {
    type: string
    sql: ${TABLE}.api_time ;;
  }

  dimension: api_agent {
    type: string
    sql: ${TABLE}.api_agent ;;
  }

  dimension: api_sucess {
    type: string
    sql: ${TABLE}.api_sucess ;;
  }

  dimension: api_response {
    type: string
    sql: ${TABLE}.api_response ;;
  }

  dimension: versao {
    type: string
    sql: ${TABLE}.versao ;;
  }

  dimension: time_request {
    type: number
    sql: ${TABLE}.time_request ;;
  }

  measure: count {
    type: count
  }



}
