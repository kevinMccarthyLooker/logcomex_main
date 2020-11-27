view: bi_exports_mvw_gold {
  sql_table_name: big_data_expo.bi_exports_mvw_gold ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: agente_de_carga {
    type: string
    sql: ${TABLE}.agente_de_carga ;;
  }

  dimension: agente_internacional {
    type: string
    sql: ${TABLE}.agente_internacional ;;
  }

  dimension: ano_mes {
    type: string
    sql: ${TABLE}.ano_mes ;;
  }

  dimension: ano_operacao {
    type: number
    sql: ${TABLE}.ano_operacao ;;
  }

  dimension: armador {
    type: string
    sql: ${TABLE}.armador ;;
  }

  dimension: armador_id {
    type: number
    sql: ${TABLE}.armador_id ;;
  }

  dimension: atividade {
    type: string
    sql: ${TABLE}.atividade ;;
  }

  dimension: cdshipper {
    type: string
    sql: ${TABLE}.cdshipper ;;
  }

  dimension: cidade {
    type: string
    sql: ${TABLE}.cidade ;;
  }

  dimension: cnpj_exportador {
    type: string
    sql: ${TABLE}.cnpj_exportador ;;
  }

  dimension: cod_atividade {
    type: string
    sql: ${TABLE}.cod_atividade ;;
  }

  dimension: cod_porto_descarga {
    type: string
    sql: ${TABLE}.cod_porto_descarga ;;
  }

  dimension: cod_porto_destino {
    type: string
    sql: ${TABLE}.cod_porto_destino ;;
  }

  dimension: cod_porto_embarque {
    type: string
    sql: ${TABLE}.cod_porto_embarque ;;
  }

  dimension: cod_porto_origem {
    type: string
    sql: ${TABLE}.cod_porto_origem ;;
  }

  dimension: consignatario {
    type: string
    sql: ${TABLE}.consignatario ;;
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
    sql: ${TABLE}.data_embarque ;;
  }

  dimension: desc_hscode {
    type: string
    sql: ${TABLE}.desc_hscode ;;
  }

  dimension: detalhes {
    type: string
    sql: ${TABLE}.detalhes ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: embarque {
    type: string
    sql: ${TABLE}.embarque ;;
  }

  dimension: embarque_id {
    type: string
    sql: ${TABLE}.embarque_id ;;
  }

  dimension: hs_code {
    type: string
    sql: ${TABLE}.hs_code ;;
  }

  dimension: mercadoria {
    type: string
    sql: ${TABLE}.mercadoria ;;
  }

  dimension: moeda_frete {
    type: string
    sql: ${TABLE}.moeda_frete ;;
  }

  dimension: navio {
    type: string
    sql: ${TABLE}.navio ;;
  }

  dimension: nome_exportador {
    type: string
    sql: ${TABLE}.nome_exportador ;;
  }

  dimension: numero_bl {
    type: string
    sql: ${TABLE}.numero_bl ;;
  }

  dimension: numero_ce {
    type: number
    sql: ${TABLE}.numero_ce ;;
  }

  dimension: numero_do_container {
    type: string
    sql: ${TABLE}.numero_do_container ;;
  }

  dimension: pagamento {
    type: string
    sql: ${TABLE}.pagamento ;;
  }

  dimension: pais_de_destino {
    type: string
    sql: ${TABLE}.pais_de_destino ;;
  }

  dimension: pais_de_destino_final {
    type: string
    sql: ${TABLE}.pais_de_destino_final ;;
  }

  dimension: pais_de_destino_id {
    type: number
    sql: ${TABLE}.pais_de_destino_id ;;
  }

  dimension: pais_de_procedencia {
    type: string
    sql: ${TABLE}.pais_de_procedencia ;;
  }

  dimension: peso_bruto {
    type: number
    sql: ${TABLE}.peso_bruto ;;
  }

  dimension: porto_descarga {
    type: string
    sql: ${TABLE}.porto_descarga ;;
  }

  dimension: porto_descarga_id {
    type: number
    sql: ${TABLE}.porto_descarga_id ;;
  }

  dimension: porto_destino {
    type: string
    sql: ${TABLE}.porto_destino ;;
  }

  dimension: porto_destino_id {
    type: number
    sql: ${TABLE}.porto_destino_id ;;
  }

  dimension: porto_embarque {
    type: string
    sql: ${TABLE}.porto_embarque ;;
  }

  dimension: porto_origem {
    type: string
    sql: ${TABLE}.porto_origem ;;
  }

  dimension: porto_origem_id {
    type: number
    sql: ${TABLE}.porto_origem_id ;;
  }

  dimension: qtde_fcl {
    type: number
    sql: ${TABLE}.qtde_fcl ;;
  }

  dimension: quantidade_de_veiculos {
    type: number
    sql: ${TABLE}.quantidade_de_veiculos ;;
  }

  dimension: telefone {
    type: string
    sql: ${TABLE}.telefone ;;
  }

  dimension: terminal_embarque {
    type: string
    sql: ${TABLE}.terminal_embarque ;;
  }

  dimension: terminal_embarque_id {
    type: number
    sql: ${TABLE}.terminal_embarque_id ;;
  }

  dimension: tipo_carga {
    type: string
    sql: ${TABLE}.tipo_carga ;;
  }

  dimension: tipo_fcl {
    type: string
    sql: ${TABLE}.tipo_fcl ;;
  }

  dimension: tipoconhecimento {
    type: string
    sql: ${TABLE}.tipoconhecimento ;;
  }

  dimension: trade_lane {
    type: string
    sql: ${TABLE}.trade_lane ;;
  }

  dimension: uf {
    type: string
    sql: ${TABLE}.uf ;;
  }

  dimension: viagem {
    type: string
    sql: ${TABLE}.viagem ;;
  }

  dimension: volumes {
    type: number
    sql: ${TABLE}.volumes ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }

########################## ----> Itens adicionados / alterados <---- ##########################

  dimension: teus_dimension {
    type: number
    sql: ${TABLE}.teus ;;
  }

  dimension: c20_dimension {
    type: number
    sql: ${TABLE}.c20 ;;
  }

  dimension: c40_dimension {
    type: number
    sql: ${TABLE}.c40 ;;
  }

  measure: teus {
    type: sum
    sql: ${TABLE}.teus ;;
  }

  measure: c20 {
    type: sum
    sql: ${TABLE}.c20 ;;
  }

  measure: c40 {
    type: sum
    sql: ${TABLE}.c40 ;;
  }

  measure: vlfrete {
    type: sum
    value_format: "$#.00;($#.00)"
    sql: ${TABLE}."vlfrete" ;;
  }

  measure: vlfretetotal {
    type: sum
    value_format: "$#.00;($#.00)"
    sql: ${TABLE}."vlfretetotal" ;;
  }

  measure: vl_frete_por_TEU {
    type: average
    value_format: "$#.00;($#.00)"
    filters: [teus_dimension: ">0"]
    sql: ${TABLE}."vlfrete" /  ${TABLE}."teus" ;;
  }

  measure: vl_frete_por_c20 {
    type: average
    value_format: "$#.00;($#.00)"
    filters: [c20_dimension: ">0"]
    sql: ${TABLE}."vlfrete" /  ${TABLE}."c20" ;;
  }

  measure: vl_frete_por_c40 {
    type: average
    value_format: "$#.00;($#.00)"
    filters: [c40_dimension: ">0"]
    sql: ${TABLE}."vlfrete" /  ${TABLE}."c40" ;;
  }

  dimension: rota {
    type: string
    sql: ${TABLE}."nmportoorigem"  || ' >> ' ||  ${TABLE}."nmportodestino";;
  }


}
