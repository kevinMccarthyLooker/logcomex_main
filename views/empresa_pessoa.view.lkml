view: empresa_pessoa {
  sql_table_name: public.empresa_pessoa ;;
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

  dimension: agencia_maritima {
    type: yesno
    sql: ${TABLE}."agencia_maritima" ;;
  }

  dimension: agente {
    type: yesno
    sql: ${TABLE}."agente" ;;
  }

  dimension: anexo_contrato {
    type: string
    sql: ${TABLE}."anexo_contrato" ;;
  }

  dimension: anexo_contrato_social {
    type: string
    sql: ${TABLE}."anexo_contrato_social" ;;
  }

  dimension: anexo_docs_pessoais {
    type: string
    sql: ${TABLE}."anexo_docs_pessoais" ;;
  }

  dimension: anexo_outros {
    type: string
    sql: ${TABLE}."anexo_outros" ;;
  }

  dimension: anexo_procuracao {
    type: string
    sql: ${TABLE}."anexo_procuracao" ;;
  }

  dimension: anexo_radar {
    type: string
    sql: ${TABLE}."anexo_radar" ;;
  }

  dimension: armador {
    type: yesno
    sql: ${TABLE}."armador" ;;
  }

  dimension: armazenador {
    type: yesno
    sql: ${TABLE}."armazenador" ;;
  }

  dimension: cep {
    type: string
    sql: ${TABLE}."cep" ;;
  }

  dimension: cidade {
    type: string
    sql: ${TABLE}."cidade" ;;
  }

  dimension: cidade_id {
    type: number
    sql: ${TABLE}."cidade_id" ;;
  }

  dimension: cliente {
    type: yesno
    sql: ${TABLE}."cliente" ;;
  }

  dimension: cnpj {
    type: string
    sql: ${TABLE}."cnpj" ;;
  }

  dimension: cod_barras {
    type: string
    sql: ${TABLE}."cod_barras" ;;
  }

  dimension: corretor {
    type: yesno
    sql: ${TABLE}."corretor" ;;
  }

  dimension: cpf {
    type: string
    sql: ${TABLE}."cpf" ;;
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

  dimension: despachante {
    type: yesno
    sql: ${TABLE}."despachante" ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}."email" ;;
  }

  dimension: endereco {
    type: string
    sql: ${TABLE}."endereco" ;;
  }

  dimension: endereco_comp {
    type: string
    sql: ${TABLE}."endereco_comp" ;;
  }

  dimension: exportador {
    type: yesno
    sql: ${TABLE}."exportador" ;;
  }

  dimension: fornecedor {
    type: yesno
    sql: ${TABLE}."fornecedor" ;;
  }

  dimension: fumigadora {
    type: yesno
    sql: ${TABLE}."fumigadora" ;;
  }

  dimension: ie {
    type: string
    sql: ${TABLE}."ie" ;;
  }

  dimension: im {
    type: string
    sql: ${TABLE}."im" ;;
  }

  dimension: importador {
    type: yesno
    sql: ${TABLE}."importador" ;;
  }

  dimension: logo {
    type: string
    sql: ${TABLE}."logo" ;;
  }

  dimension: monitorar {
    type: yesno
    sql: ${TABLE}."monitorar" ;;
  }

  dimension: nome {
    type: string
    sql: ${TABLE}."nome" ;;
  }

  dimension: nome_ab {
    type: string
    sql: ${TABLE}."nome_ab" ;;
  }

  dimension: notificado {
    type: yesno
    sql: ${TABLE}."notificado" ;;
  }

  dimension: obs {
    type: string
    sql: ${TABLE}."obs" ;;
  }

  dimension: operador_portuario {
    type: yesno
    sql: ${TABLE}."operador_portuario" ;;
  }

  dimension: org_id {
    type: number
    sql: ${TABLE}."org_id" ;;
  }

  dimension: pais_id {
    type: number
    sql: ${TABLE}."pais_id" ;;
  }

  dimension: produtor {
    type: yesno
    sql: ${TABLE}."produtor" ;;
  }

  dimension: referencia {
    type: string
    sql: ${TABLE}."referencia" ;;
  }

  dimension: telefone {
    type: string
    sql: ${TABLE}."telefone" ;;
  }

  dimension: tipo {
    type: string
    sql: ${TABLE}."tipo" ;;
  }

  dimension: token {
    type: string
    sql: ${TABLE}."token" ;;
  }

  dimension: trading {
    type: yesno
    sql: ${TABLE}."trading" ;;
  }

  dimension: transportador {
    type: yesno
    sql: ${TABLE}."transportador" ;;
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

  dimension_group: vencimento_contrato {
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
    sql: ${TABLE}."vencimento_contrato" ;;
  }

  dimension_group: vencimento_procuracao {
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
    sql: ${TABLE}."vencimento_procuracao" ;;
  }

  dimension_group: vencimento_radar {
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
    sql: ${TABLE}."vencimento_radar" ;;
  }

  dimension_group: vencimento_radar_anvisa {
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
    sql: ${TABLE}."vencimento_radar_anvisa" ;;
  }

  dimension_group: vencimento_radar_mapa {
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
    sql: ${TABLE}."vencimento_radar_mapa" ;;
  }

  dimension_group: vencimento_radar_mercanta {
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
    sql: ${TABLE}."vencimento_radar_mercanta" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, account.account_id, users.name, users.user_id]
  }
}
