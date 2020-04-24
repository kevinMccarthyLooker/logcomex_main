view: aereo_dados_no_tempo {
  derived_table: {
    sql: select
       date_trunc('month', data_hawb)::date,
       sum(CASE WHEN ((aereo_awb_details.created_at - data_hawb) > '0 days')
         THEN 1
           ELSE 0 END) AS TOTAL,
       sum(CASE WHEN ((aereo_awb_details.created_at - data_hawb) <= '7 days')
         THEN 1
           ELSE 0 END) AS ATE_7_DIAS,
       sum(CASE WHEN (((aereo_awb_details.created_at - data_hawb) > '7 days') and  ((aereo_awb_details.created_at - data_hawb) <= '14 days'))
         THEN 1
           ELSE 0 END) AS ENTRE_7_E_14_DIAS,
       sum(CASE WHEN (((aereo_awb_details.created_at - data_hawb) > '14 days') and  ((aereo_awb_details.created_at - data_hawb) <= '21 days'))
         THEN 1
           ELSE 0 END) AS ENTRE_14_E_21_DIAS,
       sum(CASE WHEN (((aereo_awb_details.created_at - data_hawb) > '21 days') and  ((aereo_awb_details.created_at - data_hawb) <= '28 days'))
         THEN 1
           ELSE 0 END) AS ENTRE_21_E_28_DIAS,
       sum(CASE WHEN ((aereo_awb_details.created_at - data_hawb) > '28 days')
         THEN 1
           ELSE 0 END) AS MAIS_28_DIAS
      from aereo_awb_list
      left join aereo_awb_details
      on aereo_awb_list.id = aereo_awb_details.id_awb_list
      where embarque in ('MASTER', 'DIRETO')
      and data_hawb >= '2020-01-01'
      group by 1
      order by 1 desc
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: date_trunc {
    type: date
    sql: ${TABLE}."date_trunc" ;;
    label: "Período"
  }

  dimension: total {
    type: number
    sql: ${TABLE}."total" ;;
  }

  dimension: ate_7_dias {
    type: number
    sql: ${TABLE}."ate_7_dias" ;;
  }

  dimension: entre_7_e_14_dias {
    type: number
    sql: ${TABLE}."entre_7_e_14_dias" ;;
  }

  dimension: entre_14_e_21_dias {
    type: number
    sql: ${TABLE}."entre_14_e_21_dias" ;;
  }

  dimension: entre_21_e_28_dias {
    type: number
    sql: ${TABLE}."entre_21_e_28_dias" ;;
  }

  dimension: mais_28_dias {
    type: number
    sql: ${TABLE}."mais_28_dias" ;;
  }

  set: detail {
    fields: [
      date_trunc,
      total,
      ate_7_dias,
      entre_7_e_14_dias,
      entre_14_e_21_dias,
      entre_21_e_28_dias,
      mais_28_dias
    ]
  }
}
