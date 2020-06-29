view: processos {
  sql_table_name: public.processos ;;
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

  dimension: canal {
    type: string
    sql: ${TABLE}."canal" ;;
  }

  dimension: carga_perigosa {
    type: yesno
    sql: ${TABLE}."carga_perigosa" ;;
  }

  dimension: cliente_id {
    type: number
    sql: ${TABLE}."cliente_id" ;;
  }

  dimension: cond_pagamento {
    type: string
    sql: ${TABLE}."cond_pagamento" ;;
  }

  dimension: conhecimento_master {
    type: string
    sql: ${TABLE}."conhecimento_master" ;;
  }

  dimension: conhecimento_transp {
    type: string
    sql: ${TABLE}."conhecimento_transp" ;;
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

  dimension_group: data_chegada {
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
    sql: ${TABLE}."data_chegada" ;;
  }

  dimension_group: data_deadline {
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
    sql: ${TABLE}."data_deadline" ;;
  }

  dimension_group: data_embarque {
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
    sql: ${TABLE}."data_embarque" ;;
  }

  dimension_group: data_entrada_aduana {
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
    sql: ${TABLE}."data_entrada_aduana" ;;
  }

  dimension_group: data_faturamento {
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
    sql: ${TABLE}."data_faturamento" ;;
  }

  dimension_group: data_invoice {
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
    sql: ${TABLE}."data_invoice" ;;
  }

  dimension_group: data_liberacao_aduana {
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
    sql: ${TABLE}."data_liberacao_aduana" ;;
  }

  dimension_group: data_pagamento_invoice {
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
    sql: ${TABLE}."data_pagamento_invoice" ;;
  }

  dimension_group: data_recebimento {
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
    sql: ${TABLE}."data_recebimento" ;;
  }

  dimension_group: data_remocao {
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
    sql: ${TABLE}."data_remocao" ;;
  }

  dimension_group: data_vistoria {
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
    sql: ${TABLE}."data_vistoria" ;;
  }

  dimension_group: deadline_draft {
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
    sql: ${TABLE}."deadline_draft" ;;
  }

  dimension_group: deadline_vgm {
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
    sql: ${TABLE}."deadline_vgm" ;;
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

  dimension: envio_doc_original_via {
    type: string
    sql: ${TABLE}."envio_doc_original_via" ;;
  }

  dimension: exportador_id {
    type: number
    sql: ${TABLE}."exportador_id" ;;
  }

  dimension: free {
    type: yesno
    sql: ${TABLE}."free" ;;
  }

  dimension: hs_code {
    type: string
    sql: ${TABLE}."hs_code" ;;
  }

  dimension: importador_id {
    type: number
    sql: ${TABLE}."importador_id" ;;
  }

  dimension: incoterms {
    type: string
    sql: ${TABLE}."incoterms" ;;
  }

  dimension: invoice {
    type: string
    sql: ${TABLE}."invoice" ;;
  }

  dimension: lista_fcl {
    type: string
    sql: ${TABLE}."lista_fcl" ;;
  }

  dimension: local_destino {
    type: string
    sql: ${TABLE}."local_destino" ;;
  }

  dimension: local_origem {
    type: string
    sql: ${TABLE}."local_origem" ;;
  }

  dimension: mercadoria {
    type: string
    sql: ${TABLE}."mercadoria" ;;
  }

  dimension: navio_voo {
    type: string
    sql: ${TABLE}."navio_voo" ;;
  }

  dimension: num_awb {
    type: string
    sql: ${TABLE}."num_awb" ;;
  }

  dimension: num_ce {
    type: string
    sql: ${TABLE}."num_ce" ;;
  }

  dimension: num_ce_master {
    type: string
    sql: ${TABLE}."num_ce_master" ;;
  }

  dimension: num_crt {
    type: string
    sql: ${TABLE}."num_crt" ;;
  }

  dimension: num_declaracao_aduana {
    type: string
    sql: ${TABLE}."num_declaracao_aduana" ;;
  }

  dimension: num_di {
    type: string
    sql: ${TABLE}."num_di" ;;
  }

  dimension: num_dta {
    type: string
    sql: ${TABLE}."num_dta" ;;
  }

  dimension: num_hawb {
    type: string
    sql: ${TABLE}."num_hawb" ;;
  }

  dimension: num_manifest {
    type: string
    sql: ${TABLE}."num_manifest" ;;
  }

  dimension: num_manifesto {
    type: string
    sql: ${TABLE}."num_manifesto" ;;
  }

  dimension: numero_ce {
    type: string
    sql: ${TABLE}."numero_ce" ;;
  }

  dimension: numero_ce_master {
    type: string
    sql: ${TABLE}."numero_ce_master" ;;
  }

  dimension: numero_contrato {
    type: string
    sql: ${TABLE}."numero_contrato" ;;
  }

  dimension: numero_po {
    type: string
    sql: ${TABLE}."numero_po" ;;
  }

  dimension: numero_reserva {
    type: string
    sql: ${TABLE}."numero_reserva" ;;
  }

  dimension: observacao {
    type: string
    sql: ${TABLE}."observacao" ;;
  }

  dimension: org_id {
    type: number
    sql: ${TABLE}."org_id" ;;
  }

  dimension: pais_destino_id {
    type: number
    sql: ${TABLE}."pais_destino_id" ;;
  }

  dimension: pais_origem_id {
    type: number
    sql: ${TABLE}."pais_origem_id" ;;
  }

  dimension: peso_bruto {
    type: number
    sql: ${TABLE}."peso_bruto" ;;
  }

  dimension: peso_liquido {
    type: number
    sql: ${TABLE}."peso_liquido" ;;
  }

  dimension_group: prazo_data {
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
    sql: ${TABLE}."prazo_data" ;;
  }

  dimension: qtde_fcl {
    type: number
    sql: ${TABLE}."qtde_fcl" ;;
  }

  dimension: quantidade_volumes {
    type: number
    sql: ${TABLE}."quantidade_volumes" ;;
  }

  dimension: referencia {
    type: string
    sql: ${TABLE}."referencia" ;;
  }

  dimension: responsavel_id {
    type: number
    sql: ${TABLE}."responsavel_id" ;;
  }

  dimension: sequencial {
    type: string
    sql: ${TABLE}."sequencial" ;;
  }

  dimension: step_id {
    type: number
    sql: ${TABLE}."step_id" ;;
  }

  dimension_group: tempo_fase {
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
    sql: ${TABLE}."tempo_fase" ;;
  }

  dimension: tipo_id {
    type: number
    sql: ${TABLE}."tipo_id" ;;
  }

  dimension: token {
    type: string
    sql: ${TABLE}."token" ;;
  }

  dimension: transacao {
    type: string
    sql: ${TABLE}."transacao" ;;
  }

  dimension: transportador_id {
    type: number
    sql: ${TABLE}."transportador_id" ;;
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

  dimension: valor_total {
    type: number
    sql: ${TABLE}."valor_total" ;;
  }

  dimension: via_transporte {
    type: string
    sql: ${TABLE}."via_transporte" ;;
  }

  dimension: viagem {
    type: string
    sql: ${TABLE}."viagem" ;;
  }

  dimension: workflow_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."workflow_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      account.account_id,
      users.name,
      users.user_id,
      workflow.name,
      workflow.id
    ]
  }
}
