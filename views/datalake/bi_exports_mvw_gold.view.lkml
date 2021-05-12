view: bi_exports_mvw_gold {
  derived_table: {
    sql: SELECT * FROM big_data_expo_v4.big_data_expo_v5_gold LIMIT 10
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: ano_mes {
    type: string
    sql: ${TABLE}.ano_mes ;;
  }

  dimension: tipo_carga {
    type: string
    sql: ${TABLE}.tipo_carga ;;
  }

  dimension: data_embarque {
    type: date
    sql: ${TABLE}.data_embarque ;;
  }

  dimension: embarque {
    type: string
    sql: ${TABLE}.embarque ;;
  }

  dimension: embarque_id {
    type: string
    sql: ${TABLE}.embarque_id ;;
  }

  dimension: navio {
    type: string
    sql: ${TABLE}.navio ;;
  }

  dimension: viagem {
    type: string
    sql: ${TABLE}.viagem ;;
  }

  dimension: pais_de_procedencia {
    type: string
    sql: ${TABLE}.pais_de_procedencia ;;
  }

  dimension: porto_origem_id {
    type: number
    sql: ${TABLE}.porto_origem_id ;;
  }

  dimension: cod_porto_origem {
    type: string
    sql: ${TABLE}.cod_porto_origem ;;
  }

  dimension: porto_origem {
    type: string
    sql: ${TABLE}.porto_origem ;;
  }

  dimension: cod_porto_embarque {
    type: string
    sql: ${TABLE}.cod_porto_embarque ;;
  }

  dimension: porto_embarque {
    type: string
    sql: ${TABLE}.porto_embarque ;;
  }

  dimension: terminal_embarque_id {
    type: number
    sql: ${TABLE}.terminal_embarque_id ;;
  }

  dimension: terminal_embarque {
    type: string
    sql: ${TABLE}.terminal_embarque ;;
  }

  dimension: porto_descarga_id {
    type: number
    sql: ${TABLE}.porto_descarga_id ;;
  }

  dimension: cod_porto_descarga {
    type: string
    sql: ${TABLE}.cod_porto_descarga ;;
  }

  dimension: porto_descarga {
    type: string
    sql: ${TABLE}.porto_descarga ;;
  }

  dimension: porto_destino_id {
    type: number
    sql: ${TABLE}.porto_destino_id ;;
  }

  dimension: cod_porto_destino {
    type: string
    sql: ${TABLE}.cod_porto_destino ;;
  }

  dimension: porto_destino {
    type: string
    sql: ${TABLE}.porto_destino ;;
  }

  dimension: pais_de_destino_id {
    type: number
    sql: ${TABLE}.pais_de_destino_id ;;
  }

  dimension: pais_de_destino {
    type: string
    sql: ${TABLE}.pais_de_destino ;;
  }

  dimension: trade_lane {
    type: string
    sql: ${TABLE}.trade_lane ;;
  }

  dimension: cnpj_exportador {
    type: string
    sql: ${TABLE}.cnpj_exportador ;;
  }

  dimension: nome_exportador {
    type: string
    sql: ${TABLE}.nome_exportador ;;
  }

  dimension: atv_prefix {
    type: number
    sql: ${TABLE}.atv_prefix ;;
  }

  dimension: atividade {
    type: string
    sql: ${TABLE}.atividade ;;
  }

  dimension: cod_atividade {
    type: string
    sql: ${TABLE}.cod_atividade ;;
  }

  dimension: desc_segmento {
    type: string
    sql: ${TABLE}.desc_segmento ;;
  }

  dimension: cidade {
    type: string
    sql: ${TABLE}.cidade ;;
  }

  dimension: uf {
    type: string
    sql: ${TABLE}.uf ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: telefone {
    type: string
    sql: ${TABLE}.telefone ;;
  }

  dimension: consignatario {
    type: string
    sql: ${TABLE}.consignatario ;;
  }

  dimension: armador_id {
    type: number
    sql: ${TABLE}.armador_id ;;
  }

  dimension: armador {
    type: string
    sql: ${TABLE}.armador ;;
  }

  dimension: moeda_frete {
    type: string
    sql: ${TABLE}.moeda_frete ;;
  }

  dimension: pais_de_destino_final {
    type: string
    sql: ${TABLE}.pais_de_destino_final ;;
  }

  dimension: pagamento {
    type: string
    sql: ${TABLE}.pagamento ;;
  }

  dimension: tipo_fcl {
    type: string
    sql: ${TABLE}.tipo_fcl ;;
  }

  dimension: chk_possivel_lcl {
    type: string
    sql: ${TABLE}.chk_possivel_lcl ;;
  }

  dimension: hs_code {
    type: string
    sql: ${TABLE}.hs_code ;;
  }

  dimension: desc_hscode {
    type: string
    sql: ${TABLE}.desc_hscode ;;
  }

  dimension: mercadoria {
    type: string
    sql: ${TABLE}.mercadoria ;;
  }

  dimension: teus {
    type: number
    sql: ${TABLE}.teus ;;
  }

  dimension: c20 {
    type: number
    sql: ${TABLE}.c20 ;;
  }

  dimension: c40 {
    type: number
    sql: ${TABLE}.c40 ;;
  }

  dimension: qtde_fcl {
    type: number
    sql: ${TABLE}.qtde_fcl ;;
  }

  dimension: usoparcial {
    type: string
    sql: ${TABLE}.usoparcial ;;
  }

  dimension: teus_parcial {
    type: number
    sql: ${TABLE}.teus_parcial ;;
  }

  dimension: c20_parcial {
    type: number
    sql: ${TABLE}.c20_parcial ;;
  }

  dimension: c40_parcial {
    type: number
    sql: ${TABLE}.c40_parcial ;;
  }

  dimension: feus_parcial {
    type: number
    sql: ${TABLE}.feus_parcial ;;
  }

  dimension: fcl_parcial {
    type: number
    sql: ${TABLE}.fcl_parcial ;;
  }

  dimension: quantidade_de_veiculos {
    type: number
    sql: ${TABLE}.quantidade_de_veiculos ;;
  }

  dimension: volumes {
    type: number
    sql: ${TABLE}.volumes ;;
  }

  dimension: peso_bruto {
    type: number
    sql: ${TABLE}.peso_bruto ;;
  }

  dimension: detalhes {
    type: string
    sql: ${TABLE}.detalhes ;;
  }

  dimension: numero_ce {
    type: number
    sql: ${TABLE}.numero_ce ;;
  }

  dimension: numero_bl {
    type: string
    sql: ${TABLE}.numero_bl ;;
  }

  dimension: numero_do_container {
    type: string
    sql: ${TABLE}.numero_do_container ;;
  }

  dimension: agente_de_carga {
    type: string
    sql: ${TABLE}.agente_de_carga ;;
  }

  dimension: agente_internacional {
    type: string
    sql: ${TABLE}.agente_internacional ;;
  }

  dimension: ano_operacao {
    type: number
    sql: ${TABLE}.ano_operacao ;;
  }

  dimension: tipoconhecimento {
    type: string
    sql: ${TABLE}.tipoconhecimento ;;
  }

  dimension: cdshipper {
    type: string
    sql: ${TABLE}.cdshipper ;;
  }

  dimension_group: data_atlz {
    type: time
    sql: ${TABLE}.data_atlz ;;
  }

  dimension: vlfretetotal {
    type: number
    sql: ${TABLE}.vlfretetotal ;;
  }

  dimension: mvw_id {
    type: number
    sql: ${TABLE}.mvw_id ;;
  }

  dimension: dt_id {
    type: number
    sql: ${TABLE}.dt_id ;;
  }

  dimension: dt_filter_date {
    type: date
    sql: ${TABLE}.dt_filter_date ;;
  }

  dimension: nf_cpf_cnpj_emissor {
    type: string
    sql: ${TABLE}.nf_cpf_cnpj_emissor ;;
  }

  dimension: nf_nome_emissor {
    type: string
    sql: ${TABLE}.nf_nome_emissor ;;
  }

  dimension: fcl_conteiner {
    type: string
    sql: ${TABLE}.fcl_conteiner ;;
  }

  set: detail {
    fields: [
      id,
      ano_mes,
      tipo_carga,
      data_embarque,
      embarque,
      embarque_id,
      navio,
      viagem,
      pais_de_procedencia,
      porto_origem_id,
      cod_porto_origem,
      porto_origem,
      cod_porto_embarque,
      porto_embarque,
      terminal_embarque_id,
      terminal_embarque,
      porto_descarga_id,
      cod_porto_descarga,
      porto_descarga,
      porto_destino_id,
      cod_porto_destino,
      porto_destino,
      pais_de_destino_id,
      pais_de_destino,
      trade_lane,
      cnpj_exportador,
      nome_exportador,
      atv_prefix,
      atividade,
      cod_atividade,
      desc_segmento,
      cidade,
      uf,
      email,
      telefone,
      consignatario,
      armador_id,
      armador,
      moeda_frete,
      pais_de_destino_final,
      pagamento,
      tipo_fcl,
      chk_possivel_lcl,
      hs_code,
      desc_hscode,
      mercadoria,
      teus,
      c20,
      c40,
      qtde_fcl,
      usoparcial,
      teus_parcial,
      c20_parcial,
      c40_parcial,
      feus_parcial,
      fcl_parcial,
      quantidade_de_veiculos,
      volumes,
      peso_bruto,
      detalhes,
      numero_ce,
      numero_bl,
      numero_do_container,
      agente_de_carga,
      agente_internacional,
      ano_operacao,
      tipoconhecimento,
      cdshipper,
      data_atlz_time,
      vlfretetotal,
      mvw_id,
      dt_id,
      dt_filter_date,
      nf_cpf_cnpj_emissor,
      nf_nome_emissor,
      fcl_conteiner
    ]
  }

########################## ----> Itens adicionados / alterados <---- ##########################

  dimension: mar_teus_dimension {
    type: number
    sql: ${TABLE}.mar_teus ;;
  }

  dimension: mar_c20_dimension {
    type: number
    sql: ${TABLE}.mar_c20 ;;
  }

  dimension: mar_c40_dimension {
    type: number
    sql: ${TABLE}.mar_c40 ;;
  }

  dimension: mar_rota {
    type: string
    sql: ${TABLE}."mar_nmportoorigem"  || ' >> ' ||  ${TABLE}."mar_nmportodestino";;
  }

  dimension: mar_vlfrete_num {
    type: number
    sql: ${TABLE}."mar_vlfrete" ;;
  }

  measure: mar_teus {
    type: sum
    sql: ${TABLE}.teus_parcial ;;
  }

  measure: mar_c20 {
    type: sum
    sql: ${TABLE}.c20_parcial ;;
  }

  measure: mar_c40 {
    type: sum
    sql: ${TABLE}.c40_parcial ;;
  }

  measure: count_mar_id {
    type: count_distinct
    sql: ${TABLE}.mar_id ;;
  }

  measure: mar_vlfrete {
    type: sum
    value_format: "$#.00;($#.00)"
    sql: ${TABLE}."mar_vlfrete" ;;
  }

  measure: mar_vlfretetotal {
    type: sum
    value_format: "$#.00;($#.00)"
    sql: ${TABLE}."mar_vlfretetotal" ;;
  }

  measure: mar_vl_frete_por_TEU {
    type: average
    value_format: "$#.00;($#.00)"
    filters: [mar_teus_dimension: ">0"]
    sql: ${TABLE}."mar_vlfrete" /  ${TABLE}."mar_teus" ;;
  }

  measure: mar_vl_frete_por_c20 {
    type: average
    value_format: "$#.00;($#.00)"
    filters: [mar_c20_dimension: ">0"]
    sql: ${TABLE}."mar_vlfrete" /  ${TABLE}."mar_c20" ;;
  }

  measure: mar_vl_frete_por_c40 {
    type: average
    value_format: "$#.00;($#.00)"
    filters: [mar_c40_dimension: ">0"]
    sql: ${TABLE}."mar_vlfrete" /  ${TABLE}."mar_c40" ;;
  }

  measure: media_vl_frete_por_c20 {
    type: average
    value_format: "$#.00;($#.00)"
    filters: [mar_c20_dimension: ">0"]
    sql: ((${TABLE}."mar_vlfrete" /  ${TABLE}."mar_teus") * ${TABLE}."mar_c20") / ${TABLE}."mar_c20";;
  }

  measure: media_vl_frete_por_c40 {
    type: average
    value_format: "$#.00;($#.00)"
    filters: [mar_c40_dimension: ">0"]
    sql: (((${TABLE}."mar_vlfrete" /  ${TABLE}."mar_teus") * 2) * ${TABLE}."mar_c40") / ${TABLE}."mar_c40";;
  }

  measure: count_dist_mvw_nome_exportador {
    type: count_distinct
    sql: ${nome_exportador} ;;
    drill_fields: [nome_exportador,cnpj_exportador]
  }

}
