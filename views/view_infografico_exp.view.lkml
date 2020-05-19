view: view_infografico_exp {
  derived_table: {
    indexes: ["id"]
    sql: SELECT id, Ano, Mes, anomes, id_cdncm, val_fob_us, id_incoterm, tot_val_peso, pais_destino
        from view_Infografico_exp
       ;;
    sql_trigger_value: SELECT FLOOR(EXTRACT(epoch from NOW())/(720*60*60)) ;;
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

  measure: val_fob_us {
    type: sum
    value_format: "$#,##0.00"
    sql: ${TABLE}."val_fob_us" ;;
    label: "Total Exportação (FOB)"
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
    label: "Total Peso (Tonelada)"
  }

  dimension: pais_destino {
    type: string
    sql: ${TABLE}."pais_destino" ;;
  }

  set: detail {
    fields: [
      id,
      ano,
      mes,
      anomes,
      id_cdncm,
      val_fob_us,
      id_incoterm,
      tot_val_peso,
      pais_destino
    ]
  }
}
