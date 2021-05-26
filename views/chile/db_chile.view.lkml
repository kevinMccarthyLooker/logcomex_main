view: db_chile {
  sql_table_name: public.db_chile ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: adu {
    type: number
    sql: ${TABLE}."adu" ;;
  }

  dimension: adu_di {
    type: number
    sql: ${TABLE}."adu_di" ;;
  }

  dimension: adua_rs {
    type: number
    sql: ${TABLE}."adua_rs" ;;
  }

  dimension: aductrol {
    type: number
    sql: ${TABLE}."aductrol" ;;
  }

  dimension: adval {
    type: number
    sql: ${TABLE}."adval" ;;
  }

  dimension: adval_ala {
    type: number
    sql: ${TABLE}."adval_ala" ;;
  }

  dimension: aju_item {
    type: number
    sql: ${TABLE}."aju_item" ;;
  }

  dimension: almacen {
    type: string
    sql: ${TABLE}."almacen" ;;
  }

  dimension: ano_reg {
    type: number
    sql: ${TABLE}."ano_reg" ;;
  }

  dimension: aranc_ala {
    type: string
    sql: ${TABLE}."aranc_ala" ;;
  }

  dimension: aranc_nac {
    type: string
    sql: ${TABLE}."aranc_nac" ;;
  }

  dimension: atr_5 {
    type: string
    sql: ${TABLE}."atr_5" ;;
  }

  dimension: atr_6 {
    type: string
    sql: ${TABLE}."atr_6" ;;
  }

  dimension: bco_com {
    type: number
    sql: ${TABLE}."bco_com" ;;
  }

  dimension: cant_bul1 {
    type: number
    sql: ${TABLE}."cant_bul1" ;;
  }

  dimension: cant_bul2 {
    type: number
    sql: ${TABLE}."cant_bul2" ;;
  }

  dimension: cant_bul3 {
    type: number
    sql: ${TABLE}."cant_bul3" ;;
  }

  dimension: cant_bul4 {
    type: number
    sql: ${TABLE}."cant_bul4" ;;
  }

  dimension: cant_bul5 {
    type: number
    sql: ${TABLE}."cant_bul5" ;;
  }

  dimension: cant_bul6 {
    type: number
    sql: ${TABLE}."cant_bul6" ;;
  }

  dimension: cant_bul7 {
    type: number
    sql: ${TABLE}."cant_bul7" ;;
  }

  dimension: cant_bul8 {
    type: number
    sql: ${TABLE}."cant_bul8" ;;
  }

  dimension: cant_merc {
    type: number
    sql: ${TABLE}."cant_merc" ;;
  }

  dimension: cif {
    type: number
    sql: ${TABLE}."cif" ;;
  }

  dimension: cif_item {
    type: number
    sql: ${TABLE}."cif_item" ;;
  }

  dimension: cl_compra {
    type: number
    sql: ${TABLE}."cl_compra" ;;
  }

  dimension: cod_fle {
    type: number
    sql: ${TABLE}."cod_fle" ;;
  }

  dimension: cod_seg {
    type: number
    sql: ${TABLE}."cod_seg" ;;
  }

  dimension: codalma {
    type: number
    sql: ${TABLE}."codalma" ;;
  }

  dimension: codcomrs {
    type: number
    sql: ${TABLE}."codcomrs" ;;
  }

  dimension: codcomun {
    type: number
    sql: ${TABLE}."codcomun" ;;
  }

  dimension: codobs1 {
    type: string
    sql: ${TABLE}."codobs1" ;;
  }

  dimension: codobs2 {
    type: string
    sql: ${TABLE}."codobs2" ;;
  }

  dimension: codobs3 {
    type: string
    sql: ${TABLE}."codobs3" ;;
  }

  dimension: codobs4 {
    type: string
    sql: ${TABLE}."codobs4" ;;
  }

  dimension: codordiv {
    type: number
    sql: ${TABLE}."codordiv" ;;
  }

  dimension: codpaiscia {
    type: number
    sql: ${TABLE}."codpaiscia" ;;
  }

  dimension: codpaiscon {
    type: number
    sql: ${TABLE}."codpaiscon" ;;
  }

  dimension: codultvb {
    type: number
    sql: ${TABLE}."codultvb" ;;
  }

  dimension: codvisbuen {
    type: number
    sql: ${TABLE}."codvisbuen" ;;
  }

  dimension: cta1 {
    type: number
    sql: ${TABLE}."cta1" ;;
  }

  dimension: cta2 {
    type: number
    sql: ${TABLE}."cta2" ;;
  }

  dimension: cta3 {
    type: number
    sql: ${TABLE}."cta3" ;;
  }

  dimension: cta4 {
    type: number
    sql: ${TABLE}."cta4" ;;
  }

  dimension: cta_otr1 {
    type: number
    sql: ${TABLE}."cta_otr1" ;;
  }

  dimension: cta_otr2 {
    type: number
    sql: ${TABLE}."cta_otr2" ;;
  }

  dimension: cta_otr3 {
    type: number
    sql: ${TABLE}."cta_otr3" ;;
  }

  dimension: cta_otr4 {
    type: number
    sql: ${TABLE}."cta_otr4" ;;
  }

  dimension: cta_otr5 {
    type: number
    sql: ${TABLE}."cta_otr5" ;;
  }

  dimension: cta_otr6 {
    type: number
    sql: ${TABLE}."cta_otr6" ;;
  }

  dimension: cta_otr7 {
    type: string
    sql: ${TABLE}."cta_otr7" ;;
  }

  dimension: cta_otro {
    type: number
    sql: ${TABLE}."cta_otro" ;;
  }

  dimension_group: data_dt_501 {
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
    sql: ${TABLE}."data_dt_501" ;;
  }

  dimension_group: data_dt_502 {
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
    sql: ${TABLE}."data_dt_502" ;;
  }

  dimension_group: data_dt_503 {
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
    sql: ${TABLE}."data_dt_503" ;;
  }

  dimension_group: data_dt_504 {
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
    sql: ${TABLE}."data_dt_504" ;;
  }

  dimension_group: data_dt_505 {
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
    sql: ${TABLE}."data_dt_505" ;;
  }

  dimension_group: data_dt_506 {
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
    sql: ${TABLE}."data_dt_506" ;;
  }

  dimension_group: data_dt_507 {
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
    sql: ${TABLE}."data_dt_507" ;;
  }

  dimension_group: data_dt_alm {
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
    sql: ${TABLE}."data_dt_alm" ;;
  }

  dimension_group: data_dt_aut {
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
    sql: ${TABLE}."data_dt_aut" ;;
  }

  dimension_group: data_dt_con {
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
    sql: ${TABLE}."data_dt_con" ;;
  }

  dimension_group: data_dt_feca {
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
    sql: ${TABLE}."data_dt_feca" ;;
  }

  dimension_group: data_dt_fecdi {
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
    sql: ${TABLE}."data_dt_fecdi" ;;
  }

  dimension_group: data_dt_fecre {
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
    sql: ${TABLE}."data_dt_fecre" ;;
  }

  dimension_group: data_dt_fecrt {
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
    sql: ${TABLE}."data_dt_fecrt" ;;
  }

  dimension_group: data_dt_fecv {
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
    sql: ${TABLE}."data_dt_fecv" ;;
  }

  dimension_group: data_dt_mani {
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
    sql: ${TABLE}."data_dt_mani" ;;
  }

  dimension_group: data_dt_rs {
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
    sql: ${TABLE}."data_dt_rs" ;;
  }

  dimension: desdiralm {
    type: string
    sql: ${TABLE}."desdiralm" ;;
  }

  dimension: desobs1 {
    type: string
    sql: ${TABLE}."desobs1" ;;
  }

  dimension: desobs2 {
    type: string
    sql: ${TABLE}."desobs2" ;;
  }

  dimension: desobs3 {
    type: string
    sql: ${TABLE}."desobs3" ;;
  }

  dimension: desobs4 {
    type: string
    sql: ${TABLE}."desobs4" ;;
  }

  dimension: digvercia {
    type: string
    sql: ${TABLE}."digvercia" ;;
  }

  dimension: digveremi {
    type: string
    sql: ${TABLE}."digveremi" ;;
  }

  dimension: dmarca {
    type: string
    sql: ${TABLE}."dmarca" ;;
  }

  dimension: dnombre {
    type: string
    sql: ${TABLE}."dnombre" ;;
  }

  dimension: dotro1 {
    type: string
    sql: ${TABLE}."dotro1" ;;
  }

  dimension: dotro2 {
    type: string
    sql: ${TABLE}."dotro2" ;;
  }

  dimension: dvariedad {
    type: string
    sql: ${TABLE}."dvariedad" ;;
  }

  dimension: flete {
    type: number
    sql: ${TABLE}."flete" ;;
  }

  dimension: fob {
    type: number
    sql: ${TABLE}."fob" ;;
  }

  dimension: form {
    type: number
    sql: ${TABLE}."form" ;;
  }

  dimension: form_pago {
    type: number
    sql: ${TABLE}."form_pago" ;;
  }

  dimension: gbcocen {
    type: string
    sql: ${TABLE}."gbcocen" ;;
  }

  dimension: gnom_cia_t {
    type: string
    sql: ${TABLE}."gnom_cia_t" ;;
  }

  dimension: greg_imp {
    type: string
    sql: ${TABLE}."greg_imp" ;;
  }

  dimension: id_bultos {
    type: string
    sql: ${TABLE}."id_bultos" ;;
  }

  dimension: indparcial {
    type: number
    sql: ${TABLE}."indparcial" ;;
  }

  dimension: medida {
    type: number
    sql: ${TABLE}."medida" ;;
  }

  dimension: mermas {
    type: number
    sql: ${TABLE}."mermas" ;;
  }

  dimension: mon_178 {
    type: number
    sql: ${TABLE}."mon_178" ;;
  }

  dimension: mon_191 {
    type: number
    sql: ${TABLE}."mon_191" ;;
  }

  dimension: mon_199 {
    type: number
    sql: ${TABLE}."mon_199" ;;
  }

  dimension: mon_699 {
    type: number
    sql: ${TABLE}."mon_699" ;;
  }

  dimension: mon_otr1 {
    type: number
    sql: ${TABLE}."mon_otr1" ;;
  }

  dimension: mon_otr2 {
    type: number
    sql: ${TABLE}."mon_otr2" ;;
  }

  dimension: mon_otr3 {
    type: number
    sql: ${TABLE}."mon_otr3" ;;
  }

  dimension: mon_otr4 {
    type: number
    sql: ${TABLE}."mon_otr4" ;;
  }

  dimension: mon_otr5 {
    type: number
    sql: ${TABLE}."mon_otr5" ;;
  }

  dimension: mon_otr6 {
    type: number
    sql: ${TABLE}."mon_otr6" ;;
  }

  dimension: mon_otr7 {
    type: number
    sql: ${TABLE}."mon_otr7" ;;
  }

  dimension: mon_otro {
    type: number
    sql: ${TABLE}."mon_otro" ;;
  }

  dimension: moneda {
    type: number
    sql: ${TABLE}."moneda" ;;
  }

  dimension: mongasfob {
    type: number
    sql: ${TABLE}."mongasfob" ;;
  }

  dimension: ncuotas {
    type: number
    sql: ${TABLE}."ncuotas" ;;
  }

  dimension: nomemisor {
    type: string
    sql: ${TABLE}."nomemisor" ;;
  }

  dimension: nu_regr {
    type: number
    sql: ${TABLE}."nu_regr" ;;
  }

  dimension: num_aut {
    type: number
    sql: ${TABLE}."num_aut" ;;
  }

  dimension: num_conoc {
    type: string
    sql: ${TABLE}."num_conoc" ;;
  }

  dimension: num_di {
    type: string
    sql: ${TABLE}."num_di" ;;
  }

  dimension: num_manif {
    type: string
    sql: ${TABLE}."num_manif" ;;
  }

  dimension: num_manif1 {
    type: string
    sql: ${TABLE}."num_manif1" ;;
  }

  dimension: num_manif2 {
    type: string
    sql: ${TABLE}."num_manif2" ;;
  }

  dimension: num_rs {
    type: string
    sql: ${TABLE}."num_rs" ;;
  }

  dimension: num_sec {
    type: number
    sql: ${TABLE}."num_sec" ;;
  }

  dimension: num_unico_importador {
    type: number
    sql: ${TABLE}."num_unico_importador" ;;
  }

  dimension: numacu {
    type: number
    sql: ${TABLE}."numacu" ;;
  }

  dimension: numanores {
    type: number
    sql: ${TABLE}."numanores" ;;
  }

  dimension: numcor {
    type: number
    sql: ${TABLE}."numcor" ;;
  }

  dimension: numdias {
    type: number
    sql: ${TABLE}."numdias" ;;
  }

  dimension: numencriptado {
    type: number
    sql: ${TABLE}."numencriptado" ;;
  }

  dimension: numhojane {
    type: number
    sql: ${TABLE}."numhojane" ;;
  }

  dimension: numhojins {
    type: number
    sql: ${TABLE}."numhojins" ;;
  }

  dimension: numitem {
    type: number
    sql: ${TABLE}."numitem" ;;
  }

  dimension: numplazo {
    type: number
    sql: ${TABLE}."numplazo" ;;
  }

  dimension: numregla {
    type: number
    sql: ${TABLE}."numregla" ;;
  }

  dimension: numrutcia {
    type: number
    sql: ${TABLE}."numrutcia" ;;
  }

  dimension: numrutemi {
    type: number
    sql: ${TABLE}."numrutemi" ;;
  }

  dimension: otro1 {
    type: number
    sql: ${TABLE}."otro1" ;;
  }

  dimension: otro2 {
    type: number
    sql: ${TABLE}."otro2" ;;
  }

  dimension: otro3 {
    type: number
    sql: ${TABLE}."otro3" ;;
  }

  dimension: otro4 {
    type: number
    sql: ${TABLE}."otro4" ;;
  }

  dimension: pa_adq {
    type: number
    sql: ${TABLE}."pa_adq" ;;
  }

  dimension: pa_orig {
    type: number
    sql: ${TABLE}."pa_orig" ;;
  }

  dimension: pago_grav {
    type: number
    sql: ${TABLE}."pago_grav" ;;
  }

  dimension: pre_unit {
    type: number
    sql: ${TABLE}."pre_unit" ;;
  }

  dimension: pto_desem {
    type: number
    sql: ${TABLE}."pto_desem" ;;
  }

  dimension: pto_emb {
    type: number
    sql: ${TABLE}."pto_emb" ;;
  }

  dimension: reg_imp {
    type: number
    sql: ${TABLE}."reg_imp" ;;
  }

  dimension: saju_item {
    type: string
    sql: ${TABLE}."saju_item" ;;
  }

  dimension: seguro {
    type: number
    sql: ${TABLE}."seguro" ;;
  }

  dimension: sigval1 {
    type: string
    sql: ${TABLE}."sigval1" ;;
  }

  dimension: sigval2 {
    type: string
    sql: ${TABLE}."sigval2" ;;
  }

  dimension: sigval3 {
    type: string
    sql: ${TABLE}."sigval3" ;;
  }

  dimension: sigval4 {
    type: string
    sql: ${TABLE}."sigval4" ;;
  }

  dimension: tasa {
    type: number
    sql: ${TABLE}."tasa" ;;
  }

  dimension: tot_bultos {
    type: number
    sql: ${TABLE}."tot_bultos" ;;
  }

  dimension: tot_hojas {
    type: number
    sql: ${TABLE}."tot_hojas" ;;
  }

  dimension: tot_items {
    type: number
    sql: ${TABLE}."tot_items" ;;
  }

  dimension: tot_peso {
    type: number
    sql: ${TABLE}."tot_peso" ;;
  }

  dimension: totinsum {
    type: number
    sql: ${TABLE}."totinsum" ;;
  }

  dimension: tpo_bul1 {
    type: number
    sql: ${TABLE}."tpo_bul1" ;;
  }

  dimension: tpo_bul2 {
    type: number
    sql: ${TABLE}."tpo_bul2" ;;
  }

  dimension: tpo_bul3 {
    type: number
    sql: ${TABLE}."tpo_bul3" ;;
  }

  dimension: tpo_bul4 {
    type: number
    sql: ${TABLE}."tpo_bul4" ;;
  }

  dimension: tpo_bul5 {
    type: number
    sql: ${TABLE}."tpo_bul5" ;;
  }

  dimension: tpo_bul6 {
    type: number
    sql: ${TABLE}."tpo_bul6" ;;
  }

  dimension: tpo_bul7 {
    type: number
    sql: ${TABLE}."tpo_bul7" ;;
  }

  dimension: tpo_bul8 {
    type: number
    sql: ${TABLE}."tpo_bul8" ;;
  }

  dimension: tpo_carga {
    type: string
    sql: ${TABLE}."tpo_carga" ;;
  }

  dimension: tpo_docto {
    type: number
    sql: ${TABLE}."tpo_docto" ;;
  }

  dimension: transb {
    type: string
    sql: ${TABLE}."transb" ;;
  }

  dimension: val1 {
    type: number
    sql: ${TABLE}."val1" ;;
  }

  dimension: val2 {
    type: number
    sql: ${TABLE}."val2" ;;
  }

  dimension: val3 {
    type: number
    sql: ${TABLE}."val3" ;;
  }

  dimension: val4 {
    type: number
    sql: ${TABLE}."val4" ;;
  }

  dimension: val_601 {
    type: number
    sql: ${TABLE}."val_601" ;;
  }

  dimension: val_602 {
    type: number
    sql: ${TABLE}."val_602" ;;
  }

  dimension: val_603 {
    type: number
    sql: ${TABLE}."val_603" ;;
  }

  dimension: val_604 {
    type: number
    sql: ${TABLE}."val_604" ;;
  }

  dimension: val_605 {
    type: number
    sql: ${TABLE}."val_605" ;;
  }

  dimension: val_606 {
    type: number
    sql: ${TABLE}."val_606" ;;
  }

  dimension: val_607 {
    type: number
    sql: ${TABLE}."val_607" ;;
  }

  dimension: valad {
    type: number
    sql: ${TABLE}."valad" ;;
  }

  dimension: valexfab {
    type: number
    sql: ${TABLE}."valexfab" ;;
  }

  dimension: via_tran {
    type: number
    sql: ${TABLE}."via_tran" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
