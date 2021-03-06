view: di_pu_pendente {
  derived_table: {
    sql: SELECT
            di_control.data_hora_registro AS data_hora_registro,
            count(1)  AS num_di_pu_pend
         FROM di_control
         LEFT JOIN di_pu ON di_pu.di_number = di_control.di_number
         WHERE di_control.data_hora_registro >= '2021/04/01'
            and (di_control.via_transporte <> 'N/A' or di_control.via_transporte is null or di_control.via_transporte <> 'DI INEXISTENTE')
            and di_pu.di_number IS NULL
         GROUP BY 1
         ORDER BY 1
         ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension_group: data_hora_registro {
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
    sql: ${TABLE}."data_hora_registro" ;;
  }

  dimension: num_di_pu_pend {
    type: number
    sql: ${TABLE}."num_di_pu_pend" ;;
  }

  set: detail {
    fields: [
      data_hora_registro_month,
      num_di_pu_pend
    ]
  }

}
