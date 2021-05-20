view: db_chile_exp {
  sql_table_name: public.db_chile_exp ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: aduana {
    type: string
    sql: ${TABLE}."aduana" ;;
  }

  dimension: aduanaregsusp {
    type: number
    sql: ${TABLE}."aduanaregsusp" ;;
  }

  dimension: atributo1 {
    type: string
    sql: ${TABLE}."atributo1" ;;
  }

  dimension: atributo2 {
    type: string
    sql: ${TABLE}."atributo2" ;;
  }

  dimension: atributo3 {
    type: string
    sql: ${TABLE}."atributo3" ;;
  }

  dimension: atributo4 {
    type: string
    sql: ${TABLE}."atributo4" ;;
  }

  dimension: atributo5 {
    type: string
    sql: ${TABLE}."atributo5" ;;
  }

  dimension: atributo6 {
    type: string
    sql: ${TABLE}."atributo6" ;;
  }

  dimension: cantidadmercancia {
    type: number
    sql: ${TABLE}."cantidadmercancia" ;;
  }

  dimension: clausulaventa {
    type: number
    sql: ${TABLE}."clausulaventa" ;;
  }

  dimension: codigoarancel {
    type: number
    sql: ${TABLE}."codigoarancel" ;;
  }

  dimension: codigoflete {
    type: number
    sql: ${TABLE}."codigoflete" ;;
  }

  dimension: codigoobservacion1 {
    type: number
    sql: ${TABLE}."codigoobservacion1" ;;
  }

  dimension: codigoobservacion2 {
    type: number
    sql: ${TABLE}."codigoobservacion2" ;;
  }

  dimension: codigoobservacion3 {
    type: number
    sql: ${TABLE}."codigoobservacion3" ;;
  }

  dimension: codigorutexportadorppal {
    type: number
    sql: ${TABLE}."codigorutexportadorppal" ;;
  }

  dimension: codigorutexpsec {
    type: number
    sql: ${TABLE}."codigorutexpsec" ;;
  }

  dimension: codigoseg {
    type: number
    sql: ${TABLE}."codigoseg" ;;
  }

  dimension: codigotipoautoriza {
    type: number
    sql: ${TABLE}."codigotipoautoriza" ;;
  }

  dimension: comisionesexterior {
    type: string
    sql: ${TABLE}."comisionesexterior" ;;
  }

  dimension: comunaexportadorppal {
    type: string
    sql: ${TABLE}."comunaexportadorppal" ;;
  }

  dimension: comunaexpsecundario {
    type: number
    sql: ${TABLE}."comunaexpsecundario" ;;
  }

  dimension: dvnumeroinformeexp {
    type: string
    sql: ${TABLE}."dvnumeroinformeexp" ;;
  }

  dimension: dvrutciatransp {
    type: string
    sql: ${TABLE}."dvrutciatransp" ;;
  }

  dimension: dvrutemisor {
    type: string
    sql: ${TABLE}."dvrutemisor" ;;
  }

  dimension_group: fechaacept {
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
    sql: ${TABLE}."fechaacept" ;;
  }

  dimension_group: fechadoctocancela {
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
    sql: ${TABLE}."fechadoctocancela" ;;
  }

  dimension_group: fechainformeexp {
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
    sql: ${TABLE}."fechainformeexp" ;;
  }

  dimension: fobunitario {
    type: number
    sql: ${TABLE}."fobunitario" ;;
  }

  dimension: fobus {
    type: number
    sql: ${TABLE}."fobus" ;;
  }

  dimension: formapago {
    type: number
    sql: ${TABLE}."formapago" ;;
  }

  dimension: glosaobservacion1 {
    type: string
    sql: ${TABLE}."glosaobservacion1" ;;
  }

  dimension: glosaobservacion2 {
    type: string
    sql: ${TABLE}."glosaobservacion2" ;;
  }

  dimension: glosaobservacion3 {
    type: string
    sql: ${TABLE}."glosaobservacion3" ;;
  }

  dimension: glosapaisdestino {
    type: string
    sql: ${TABLE}."glosapaisdestino" ;;
  }

  dimension: glosapuertodesemb {
    type: string
    sql: ${TABLE}."glosapuertodesemb" ;;
  }

  dimension: glosapuertoemb {
    type: string
    sql: ${TABLE}."glosapuertoemb" ;;
  }

  dimension: modalidadventa {
    type: number
    sql: ${TABLE}."modalidadventa" ;;
  }

  dimension: moneda {
    type: string
    sql: ${TABLE}."moneda" ;;
  }

  dimension: nombre {
    type: string
    sql: ${TABLE}."nombre" ;;
  }

  dimension: nombreciatransp {
    type: string
    sql: ${TABLE}."nombreciatransp" ;;
  }

  dimension: nombreemisordoctransp {
    type: string
    sql: ${TABLE}."nombreemisordoctransp" ;;
  }

  dimension: nro_exportador {
    type: number
    sql: ${TABLE}."nro_exportador" ;;
  }

  dimension: nro_exportador_sec {
    type: string
    sql: ${TABLE}."nro_exportador_sec" ;;
  }

  dimension: numerodoctocancela {
    type: string
    sql: ${TABLE}."numerodoctocancela" ;;
  }

  dimension: numeroident {
    type: number
    sql: ${TABLE}."numeroident" ;;
  }

  dimension: numeroinformeexpo {
    type: number
    sql: ${TABLE}."numeroinformeexpo" ;;
  }

  dimension: numeroitem {
    type: string
    sql: ${TABLE}."numeroitem" ;;
  }

  dimension: numeroparcialidad {
    type: number
    sql: ${TABLE}."numeroparcialidad" ;;
  }

  dimension: numeroregsusp {
    type: number
    sql: ${TABLE}."numeroregsusp" ;;
  }

  dimension: observacion {
    type: string
    sql: ${TABLE}."observacion" ;;
  }

  dimension: otrosgastos {
    type: number
    sql: ${TABLE}."otrosgastos" ;;
  }

  dimension: paisciatransp {
    type: number
    sql: ${TABLE}."paisciatransp" ;;
  }

  dimension: paisdestino {
    type: number
    sql: ${TABLE}."paisdestino" ;;
  }

  dimension: parcial {
    type: string
    sql: ${TABLE}."parcial" ;;
  }

  dimension: pesobrutocancela {
    type: number
    sql: ${TABLE}."pesobrutocancela" ;;
  }

  dimension: pesobrutoitem {
    type: number
    sql: ${TABLE}."pesobrutoitem" ;;
  }

  dimension: pesobrutototal {
    type: string
    sql: ${TABLE}."pesobrutototal" ;;
  }

  dimension: plazovigenciaregsusp {
    type: number
    sql: ${TABLE}."plazovigenciaregsusp" ;;
  }

  dimension: porcentajeexpppal {
    type: string
    sql: ${TABLE}."porcentajeexpppal" ;;
  }

  dimension: porcentajeexpsecundario {
    type: string
    sql: ${TABLE}."porcentajeexpsecundario" ;;
  }

  dimension: puertodesemb {
    type: string
    sql: ${TABLE}."puertodesemb" ;;
  }

  dimension: puertoemb {
    type: string
    sql: ${TABLE}."puertoemb" ;;
  }

  dimension: regionorigen {
    type: string
    sql: ${TABLE}."regionorigen" ;;
  }

  dimension: rutciatransp {
    type: string
    sql: ${TABLE}."rutciatransp" ;;
  }

  dimension: rutemisor {
    type: string
    sql: ${TABLE}."rutemisor" ;;
  }

  dimension: tipocarga {
    type: string
    sql: ${TABLE}."tipocarga" ;;
  }

  dimension: tipodoctocancela {
    type: string
    sql: ${TABLE}."tipodoctocancela" ;;
  }

  dimension: tipooperacion {
    type: string
    sql: ${TABLE}."tipooperacion" ;;
  }

  dimension: totalbultos {
    type: string
    sql: ${TABLE}."totalbultos" ;;
  }

  dimension: totalbultoscancela {
    type: string
    sql: ${TABLE}."totalbultoscancela" ;;
  }

  dimension: totalitem {
    type: string
    sql: ${TABLE}."totalitem" ;;
  }

  dimension: totalparciales {
    type: string
    sql: ${TABLE}."totalparciales" ;;
  }

  dimension: totalvalorfob {
    type: string
    sql: ${TABLE}."totalvalorfob" ;;
  }

  dimension: unidadmedida {
    type: string
    sql: ${TABLE}."unidadmedida" ;;
  }

  dimension: valorcif {
    type: string
    sql: ${TABLE}."valorcif" ;;
  }

  dimension: valorclausulaventa {
    type: string
    sql: ${TABLE}."valorclausulaventa" ;;
  }

  dimension: valorflete {
    type: string
    sql: ${TABLE}."valorflete" ;;
  }

  dimension: valorliquidoretorno {
    type: string
    sql: ${TABLE}."valorliquidoretorno" ;;
  }

  dimension: valorobservacion1 {
    type: string
    sql: ${TABLE}."valorobservacion1" ;;
  }

  dimension: valorobservacion2 {
    type: string
    sql: ${TABLE}."valorobservacion2" ;;
  }

  dimension: valorobservacion3 {
    type: string
    sql: ${TABLE}."valorobservacion3" ;;
  }

  dimension: valorseguro {
    type: string
    sql: ${TABLE}."valorseguro" ;;
  }

  dimension: viatransporte {
    type: string
    sql: ${TABLE}."viatransporte" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
