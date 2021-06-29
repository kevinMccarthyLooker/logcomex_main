view: bi_imports_mvw_gold {
  sql_table_name: big_data_impo.bi_imports_mvw_gold ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  measure: count {
    type: count
  }

  dimension: tipo_carga {
    type: string
    sql: ${TABLE}.tipo_carga ;;
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
  dimension: embarque {
    type: string
    sql: ${TABLE}.embarque ;;
  }

  dimension: tipoconhecimento {
    type: string
    sql: ${TABLE}.tipoconhecimento ;;
  }

  dimension: pais_origem {
    type: string
    sql: ${TABLE}.pais_origem ;;
  }

  dimension: nmportoorigem {
    type: string
    sql: ${TABLE}.nmportoorigem ;;
  }

  dimension: pais_embarque {
    type: string
    sql: ${TABLE}.pais_embarque ;;
  }

  dimension: porto_embarque {
    type: string
    sql: ${TABLE}.porto_embarque ;;
  }

  dimension: porto_descarga {
    type: string
    sql: ${TABLE}.porto_descarga ;;
  }

  dimension: nmportodestino {
    type: string
    sql: ${TABLE}.nmportodestino ;;
  }

  dimension: nmempresanavegacao {
    type: string
    sql: ${TABLE}.nmempresanavegacao ;;
  }

  dimension: nmempnavegdesconmaster {
    type: string
    sql: ${TABLE}.nmempnavegdesconmaster ;;
  }

  dimension: nvocc {
    type: string
    sql: ${TABLE}.nvocc ;;
  }

  dimension: nmagtnavegmaster {
    type: string
    sql: ${TABLE}.nmagtnavegmaster ;;
  }

  dimension: pagamento {
    type: string
    sql: ${TABLE}.pagamento ;;
  }

  dimension: tipo_fcl {
    type: string
    sql: ${TABLE}.tipo_fcl ;;
  }

  dimension: itemcarga_cdncms {
    type: string
    sql: ${TABLE}.itemcarga_cdncms ;;
  }

  dimension: mercadoria {
    type: string
    sql: ${TABLE}.mercadoria ;;
  }

  dimension: d.teus {
    type: number
    sql: ${TABLE}.teus ;;
  }

  dimension: detalhes {
    type: string
    sql: ${TABLE}.detalhes ;;
  }

  dimension: qtde_fcl {
    type: number
    sql: ${TABLE}.qtde_fcl ;;
  }

  dimension: volumes {
    type: number
    sql: ${TABLE}.volumes ;;
  }

  dimension: peso_bruto {
    type: number
    sql: ${TABLE}.peso_bruto ;;
  }

  dimension: nmmoedafrete {
    type: string
    sql: ${TABLE}.nmmoedafrete ;;
  }

  dimension: tipo_dta {
    type: string
    sql: ${TABLE}.tipo_dta ;;
  }

  dimension: valor_dolar {
    type: number
    sql: ${TABLE}.valor_dolar ;;
  }

  dimension: valor_reais {
    type: number
    sql: ${TABLE}.valor_reais ;;
  }

  dimension: d.vlfretetotal {
    type: number
    sql: ${TABLE}.vlfretetotal ;;
  }

  dimension: d.vlfrete {
    type: number
    sql: ${TABLE}.vlfrete ;;
  }


########################## ----> Itens adicionados / alterados <---- ##########################

  dimension: mais_de_um_tipo {
    type: string
    sql:  CASE WHEN (${TABLE}.c20 <> 0 and ${TABLE}.c40 <> 0) THEN "A"
          else "B" end
    ;;
  }


  dimension: nrcemercante {
    type: number
    sql: ${TABLE}.nrcemercante ;;
  }

  dimension: nrcemaster {
    type: string
    sql: ${TABLE}.nrcemaster ;;
  }

  dimension: nrmanifesto {
    type: string
    sql: ${TABLE}.nrmanifesto ;;
  }

  dimension: cdmoedafretetotalbld {
    type: string
    sql: ${TABLE}.cdmoedafretetotalbld ;;
  }

  dimension: vlfretetotalbld {
    type: string
    sql: ${TABLE}.vlfretetotalbld ;;
  }

  dimension: nrblconhecimento {
    type: string
    sql: ${TABLE}.nrblconhecimento ;;
  }

  measure: mais_de_um_tipo_sim {
    type: count
    filters: [mais_de_um_tipo: "=A"]
  }

  measure: mais_de_um_tipo_nao {
    type: count
    filters: [mais_de_um_tipo: "=B"]
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

  dimension: d_c20 {
    type: number
    sql: ${TABLE}.c20 ;;
  }

  dimension: c20_parcial {
    type: number
    sql: ${TABLE}.c20_parcial ;;
  }

  dimension: d_c40 {
    type: number
    sql: ${TABLE}.c40 ;;
  }

  dimension: c40_parcial {
    type: number
    sql: ${TABLE}.c40_parcial ;;
  }

  dimension: teus_parcial {
    type: number
    sql: ${TABLE}.teus_parcial ;;
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

  measure: total_teus {
    type: sum
    value_format: "#;(#)"
    sql: ${TABLE}.teus_parcial  ;;
  }

  measure: total_c20 {
    type: sum
    sql: ${TABLE}.c20_parcial  ;;
  }

  measure: total_c40 {
    type: sum
    sql: ${TABLE}.c40_parcial  ;;
  }

  dimension: rota {
    type: string
    sql: ${TABLE}."nmportoorigem"  || ' >> ' ||  ${TABLE}."nmportodestino";;
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

  measure: media_frete_TEU {
    type: average
    value_format: "$#.00;($#.00)"
    filters: [teus_dimension: ">0"]
    sql: ${TABLE}."vlfretetotal" /  ${TABLE}."teus" ;;
  }

  measure: media_frete_c20 {
    type: average
    value_format: "$#.00;($#.00)"
    filters: [c20_dimension: ">0"]
    sql: ((${TABLE}."vlfretetotal" /  ${TABLE}."teus") * ${TABLE}."c20") / ${TABLE}."c20";;
  }

  measure: media_frete_c40 {
    type: average
    value_format: "$#.00;($#.00)"
    filters: [c40_dimension: ">0"]
    sql: (((${TABLE}."vlfretetotal" /  ${TABLE}."teus") * 2) * ${TABLE}."c40") / ${TABLE}."c40";;
  }

    measure: media_frete_TEU_real {
    type: average
    value_format: "$#.00;($#.00)"
    filters: [teus_parcial: ">0"]
    sql: ${TABLE}."vlfretetotal" /  ${TABLE}."teus_parcial" ;;
  }

  measure: media_frete_c20_real {
    type: average
    value_format: "$#.00;($#.00)"
    filters: [c20_parcial: ">0"]
    sql: ${TABLE}."vlfretetotal" /  ${TABLE}."c20_parcial";;
  }

  measure: media_frete_c40_real {
    type: average
    value_format: "$#.00;($#.00)"
    filters: [c40_parcial: ">0"]
    sql: ${TABLE}."vlfretetotal" /  ${TABLE}."c40_parcial";;
  }

  measure: minfrete {
    type: number
    sql: MIN ${vlfretetotal} ;;
    value_format: "$#.00;($#.00)"
  }

  measure: maxfrete {
    type: number
    sql: MAX ${vlfretetotal} ;;
    value_format: "$#.00;($#.00)"
  }
}
