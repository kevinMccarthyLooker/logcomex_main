view: bi_imports_mvw_gold {
  sql_table_name: big_data_impo.bi_imports_mvw_gold ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: anooperacao {
    type: number
    sql: ${TABLE}.anooperacao ;;
  }

  dimension: armazem_destino {
    type: string
    sql: ${TABLE}.armazem_destino ;;
  }

  dimension: atividade {
    type: string
    sql: ${TABLE}.atividade ;;
  }

  dimension: atv_prefix {
    type: number
    sql: ${TABLE}.atv_prefix ;;
  }

  dimension: atv_principal_code {
    type: string
    sql: ${TABLE}.atv_principal_code ;;
  }

  dimension: carga_perigosa {
    type: string
    sql: ${TABLE}.carga_perigosa ;;
  }

  dimension: cdempnavegdesconmaster {
    type: string
    sql: ${TABLE}.cdempnavegdesconmaster ;;
  }

  dimension: cdnotifypart {
    type: string
    sql: ${TABLE}.cdnotifypart ;;
  }

  dimension: cidade {
    type: string
    sql: ${TABLE}.cidade ;;
  }

  dimension: cnpj_consignatario {
    type: string
    sql: ${TABLE}.cnpj_consignatario ;;
  }

  dimension: cnpj_consignatario_int {
    type: number
    sql: ${TABLE}.cnpj_consignatario_int ;;
  }

  dimension: cnpj_consignatario_raw_text {
    type: string
    sql: ${TABLE}.cnpj_consignatario_raw_text ;;
  }

  dimension: cod_dest_port {
    type: string
    sql: ${TABLE}.cod_dest_port ;;
  }

  dimension: cod_origin_port {
    type: string
    sql: ${TABLE}.cod_origin_port ;;
  }

  dimension: cod_porto_descarga {
    type: string
    sql: ${TABLE}.cod_porto_descarga ;;
  }

  dimension: cod_shipment_port {
    type: string
    sql: ${TABLE}.cod_shipment_port ;;
  }

  dimension: consignatario_final {
    type: string
    sql: ${TABLE}.consignatario_final ;;
  }

  dimension: consignatario_final_qtd {
    type: number
    sql: ${TABLE}.consignatario_final_qtd ;;
  }

  dimension: consignatario_uf {
    type: string
    sql: ${TABLE}.consignatario_uf ;;
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

  dimension_group: data_operacao {
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
    sql: ${TABLE}.data_operacao ;;
  }

  dimension_group: data_saida {
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
    sql: ${TABLE}.data_saida ;;
  }

  dimension: desc_segmento {
    type: string
    sql: ${TABLE}.desc_segmento ;;
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

  dimension: indmodalidadefrete {
    type: string
    sql: ${TABLE}.indmodalidadefrete ;;
  }

  dimension: itemcarga_cdncms {
    type: string
    sql: ${TABLE}.itemcarga_cdncms ;;
  }

  dimension: month_year {
    type: string
    sql: ${TABLE}.month_year ;;
  }

  dimension: nmagtnavegmaster {
    type: string
    sql: ${TABLE}.nmagtnavegmaster ;;
  }

  dimension: nmconsignatario {
    type: string
    sql: ${TABLE}.nmconsignatario ;;
  }

  dimension: nmembarcacao {
    type: string
    sql: ${TABLE}.nmembarcacao ;;
  }

  dimension: nmempnavegdesconmaster {
    type: string
    sql: ${TABLE}.nmempnavegdesconmaster ;;
  }

  dimension: nmempnavegdesconmaster_code {
    type: number
    sql: ${TABLE}.nmempnavegdesconmaster_code ;;
  }

  dimension: nmempresanavegacao {
    type: string
    sql: ${TABLE}.nmempresanavegacao ;;
  }

  dimension: nmempresanavegacao_code {
    type: number
    sql: ${TABLE}.nmempresanavegacao_code ;;
  }

  dimension: nmmoedafrete {
    type: string
    sql: ${TABLE}.nmmoedafrete ;;
  }

  dimension: nmpaisprocedencia {
    type: string
    sql: ${TABLE}.nmpaisprocedencia ;;
  }

  dimension: nmpaisprocedencia_code {
    type: number
    sql: ${TABLE}.nmpaisprocedencia_code ;;
  }

  dimension: nmportodestino {
    type: string
    sql: ${TABLE}.nmportodestino ;;
  }

  dimension: nmportodestino_code {
    type: number
    sql: ${TABLE}.nmportodestino_code ;;
  }

  dimension: nmportoorigem {
    type: string
    sql: ${TABLE}.nmportoorigem ;;
  }

  dimension: nmportoorigem_code {
    type: number
    sql: ${TABLE}.nmportoorigem_code ;;
  }

  dimension: nmterminalportuario {
    type: number
    sql: ${TABLE}.nmterminalportuario ;;
  }

  dimension: notify_city {
    type: string
    sql: ${TABLE}.notify_city ;;
  }

  dimension: notify_uf {
    type: string
    sql: ${TABLE}.notify_uf ;;
  }

  dimension: numero_bl {
    type: string
    sql: ${TABLE}.numero_bl ;;
  }

  dimension: numero_ce {
    type: number
    sql: ${TABLE}.numero_ce ;;
  }

  dimension: numero_container {
    type: string
    sql: ${TABLE}.numero_container ;;
  }

  dimension: nvocc {
    type: string
    sql: ${TABLE}.nvocc ;;
  }

  dimension: oprecolhimentofrete {
    type: string
    sql: ${TABLE}.oprecolhimentofrete ;;
  }

  dimension: pagamento {
    type: string
    sql: ${TABLE}.pagamento ;;
  }

  dimension: pais_embarque {
    type: string
    sql: ${TABLE}.pais_embarque ;;
  }

  dimension: pais_origem {
    type: string
    sql: ${TABLE}.pais_origem ;;
  }

  dimension: pais_origem_code {
    type: number
    sql: ${TABLE}.pais_origem_code ;;
  }

  dimension: peso_bruto {
    type: number
    sql: ${TABLE}.peso_bruto ;;
  }

  dimension: porto_descarga {
    type: string
    sql: ${TABLE}.porto_descarga ;;
  }

  dimension: porto_embarque {
    type: string
    sql: ${TABLE}.porto_embarque ;;
  }

  dimension: qtde_fcl {
    type: number
    sql: ${TABLE}.qtde_fcl ;;
  }

  dimension: quantidade_veiculos {
    type: number
    sql: ${TABLE}.quantidade_veiculos ;;
  }

  dimension: recinto_aduaneiro_destino {
    type: string
    sql: ${TABLE}.recinto_aduaneiro_destino ;;
  }

  dimension: release_location {
    type: string
    sql: ${TABLE}.release_location ;;
  }

  dimension: telefone {
    type: string
    sql: ${TABLE}.telefone ;;
  }

  dimension: tempo_porto {
    type: number
    sql: ${TABLE}.tempo_porto ;;
  }

  dimension: terminal_descarga {
    type: string
    sql: ${TABLE}.terminal_descarga ;;
  }

  dimension: teus_parcial {
    type: number
    sql: ${TABLE}.teus_parcial ;;
  }

  dimension: tipo_carga {
    type: string
    sql: ${TABLE}.tipo_carga ;;
  }

  dimension: tipo_dta {
    type: string
    sql: ${TABLE}.tipo_dta ;;
  }

  dimension: tipo_fcl {
    type: string
    sql: ${TABLE}.tipo_fcl ;;
  }

  dimension: tipoconhecimento {
    type: string
    sql: ${TABLE}.tipoconhecimento ;;
  }

  dimension: trade_lane_origem {
    type: string
    sql: ${TABLE}.trade_lane_origem ;;
  }

  dimension: trade_origem {
    type: string
    sql: ${TABLE}.trade_origem ;;
  }

  dimension: transit_time {
    type: number
    sql: ${TABLE}.transit_time ;;
  }

  dimension: transportador_nome {
    type: string
    sql: ${TABLE}.transportador_nome ;;
  }

  dimension: txnotifypart {
    type: string
    sql: ${TABLE}.txnotifypart ;;
  }

  dimension: txshipper {
    type: string
    sql: ${TABLE}.txshipper ;;
  }

  dimension: valor_dolar {
    type: number
    sql: ${TABLE}.valor_dolar ;;
  }

  dimension: valor_reais {
    type: number
    sql: ${TABLE}.valor_reais ;;
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

  dimension: mais_de_um_tipo {
    type: yesno
    sql:  CASE WHEN (${TABLE}.c20 <> 0 and ${TABLE}.c40 <> 0) THEN true
          else false
    ;;
  }

  measure: mais_de_um_tipo_sim {
    type: sum
    filters: [mais_de_um_tipo: "yes"]
    sql: mais_de_um_tipo ;;
  }

  measure: mais_de_um_tipo_nao {
    type: sum
    filters: [mais_de_um_tipo: "no"]
    sql: mais_de_um_tipo ;;
  }

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
    sql: ${TABLE}.vlfrete /  ${TABLE}."teus" ;;
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
