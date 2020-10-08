view: nova_base_nvocc {
  derived_table: {
    sql:
      SELECT  embarque,
              nvocc,
              nmconsignatario as consignatario,
              nmempnavegdesconmaster as agente_de_carga,
              consignatario_final,
              consolidador,
              nmempresanavegacao,
              monyh_year as mes_ano,
              data_operacao,
              tipoconhecimento,
              cod_porto_descarga,
              porto_descarga,
              terminal_descarga,
              numero_ce,
              numero_bl
      from VIEW_CRAFT
      ;;
    }

    dimension: embarque {
      type: string
      sql: ${TABLE}.embarque ;;
    }

    dimension: nvocc {
      type: string
      sql: ${TABLE}.nvocc ;;
    }

  dimension: consignatario {
    type: string
    sql: ${TABLE}.consignatario ;;
  }

  dimension: agente_de_carga {
    type: string
    sql: ${TABLE}.agente_de_carga ;;
  }

  dimension: consignatario_final {
    type: string
    sql: ${TABLE}.consignatario_final ;;
  }

  dimension: consolidador {
    type: string
    sql: ${TABLE}.consolidador ;;
  }

  dimension: nmempresanavegacao {
    type: string
    sql: ${TABLE}.nmempresanavegacao ;;
  }

  dimension: mes_ano {
    type: string
    sql: ${TABLE}.mes_ano ;;
  }

  dimension_group: data_operacao {
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
    sql: ${TABLE}."data_operacao" ;;
  }

  dimension: tipoconhecimento {
    type: string
    sql: ${TABLE}.tipoconhecimento ;;
  }

  dimension: cod_porto_descarga {
    type: string
    sql: ${TABLE}.cod_porto_descarga ;;
  }

  dimension: porto_descarga {
    type: string
    sql: ${TABLE}.porto_descarga ;;
  }

  dimension: terminal_descarga {
    type: string
    sql: ${TABLE}.terminal_descarga ;;
  }

  dimension: numero_ce {
    type: string
    sql: ${TABLE}.numero_ce ;;
  }

  dimension: numero_bl {
    type: string
    sql: ${TABLE}.numero_bl ;;
  }

  measure: count {
    type:  count
  }

}
