view: view_infografico {
  derived_table: {
    persist_for: "3 hours"
    indexes: ["id"]
    sql: select id, Ano, Mes, anomes, id_cdncm, val_vlme_us_subitem, id_incoterm, tot_val_peso ,val_frete_us_subitem,val_seg_us_subitem,
        pais_origem, pais_aquis,val_fob_un_us,qtd_comerc
        from view_Infografico
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: id {
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: ano {
    type: string
    sql: ${TABLE}."ano" ;;
  }

  dimension: mes {
    type: string
    sql: ${TABLE}."mes" ;;
  }

  dimension: anomes {
    type: string
    sql: ${TABLE}."anomes" ;;
  }

  dimension: id_cdncm {
    type: number
    value_format: "0"
    sql: ${TABLE}."id_cdncm" ;;
  }

  measure: val_vlme_us_subitem {
    type: sum
    value_format: "$#,##0.00"
    sql: ${TABLE}."val_vlme_us_subitem" ;;
    label: "Valor Total importação"
  }

  dimension: id_incoterm {
    type: number
    value_format: "0"
    sql: ${TABLE}."id_incoterm" ;;
  }

  measure: tot_val_peso {
    type: sum
    value_format: "#,##0.00"
    sql: ${TABLE}."tot_val_peso" ;;
    label: "Total Peso (Toneladas)"
  }

  measure: val_frete_us_subitem {
    type: sum
    value_format: "$#,##0.00"
    sql: ${TABLE}."val_frete_us_subitem" ;;
    label: "Total Frete"
  }
  dimension: val_fob_un_us {
    type: number
    value_format: "$#,##0.00"
    sql: ${TABLE}."val_fob_un_us" ;;
    label: "Valor Fob"
  }
  dimension: qtd_comerc {
    type: number
    value_format: "0"
    sql: ${TABLE}."qtd_comerc" ;;
    label: "Quant Comercializada"
  }

  measure: val_seg_us_subitem {
    type: sum
    value_format: "$#,##0.00"
    sql: ${TABLE}."val_seg_us_subitem" ;;
    label: "Total Seguro"
  }

  dimension: pais_origem {
    type: string
    sql: ${TABLE}."pais_origem" ;;
    label: "País de origem"
  }

  dimension: pais_aquis {
    type: string
    sql: ${TABLE}."pais_aquis" ;;
    label: "País de aquisição"
  }

  set: detail {
    fields: [
      id,
      ano,
      mes,
      anomes,
      id_cdncm,
      val_vlme_us_subitem,
      id_incoterm,
      tot_val_peso,
      val_frete_us_subitem,
      val_seg_us_subitem,
      pais_origem,
      pais_aquis,
      val_fob_un_us,
      qtd_comerc
    ]
  }
}
