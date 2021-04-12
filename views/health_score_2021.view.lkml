view: health_score_2021 {
  sql_table_name: public.health_score_2021 ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: acessos_usuarios {
    type: number
    sql: ${TABLE}."acessos_usuarios" ;;
  }

  dimension: acessos_usuarios_qtde_120_30_dias {
    type: number
    sql: ${TABLE}."acessos_usuarios_qtde_120_30_dias" ;;
  }

  dimension: acessos_usuarios_qtde_ultimos_30_dias {
    type: number
    sql: ${TABLE}."acessos_usuarios_qtde_ultimos_30_dias" ;;
  }

  dimension: big_data_qtde_120_30_dias {
    type: number
    sql: ${TABLE}."big_data_qtde_120_30_dias" ;;
  }

  dimension: big_data_qtde_ultimos_30_dias {
    type: number
    sql: ${TABLE}."big_data_qtde_ultimos_30_dias" ;;
  }

  dimension: crescimento_cliente_qtde_30_dias {
    type: number
    sql: ${TABLE}."crescimento_cliente_qtde_30_dias" ;;
  }

  dimension: crescimento_cliente_qtde_365_dias {
    type: number
    sql: ${TABLE}."crescimento_cliente_qtde_365_dias" ;;
  }

  dimension: customer_id {
    type: number
    sql: ${TABLE}."customer_id" ;;
  }

  dimension_group: data_consulta {
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
    sql: ${TABLE}."data_consulta" ;;
  }

  dimension: pontos_crescimento_cliente {
    type: number
    sql: ${TABLE}."pontos_crescimento_cliente" ;;
  }

  dimension: pontos_qtd_tickets {
    type: number
    sql: ${TABLE}."pontos_qtd_tickets" ;;
  }

  dimension: pontos_titulos_omie {
    type: number
    sql: ${TABLE}."pontos_titulos_omie" ;;
  }

  dimension: pontuacao_nps_02_2021 {
    type: number
    sql: ${TABLE}."pontuacao_nps_02_2021" ;;
  }

  dimension: satisfaction {
    type: number
    sql: ${TABLE}."satisfaction" ;;
  }

  dimension: search_qtde_120_30_dias {
    type: number
    sql: ${TABLE}."search_qtde_120_30_dias" ;;
  }

  dimension: search_qtde_ultimos_30_dias {
    type: number
    sql: ${TABLE}."search_qtde_ultimos_30_dias" ;;
  }

  dimension: tracking_qtde_120_30_dias {
    type: number
    sql: ${TABLE}."tracking_qtde_120_30_dias" ;;
  }

  dimension: tracking_qtde_ultimos_30_dias {
    type: number
    sql: ${TABLE}."tracking_qtde_ultimos_30_dias" ;;
  }

  dimension: usab_big_data {
    type: number
    sql: ${TABLE}."usab_big_data" ;;
  }

  dimension: usab_search {
    type: number
    sql: ${TABLE}."usab_search" ;;
  }

  dimension: usab_tracking {
    type: number
    sql: ${TABLE}."usab_tracking" ;;
  }

  dimension: usab_geral {
    type: number
    sql:
    (coalesce(${usab_big_data},${usab_tracking},${usab_search})
    + coalesce(${usab_big_data},${usab_search},${usab_tracking})
    + coalesce(${usab_tracking},${usab_big_data},${usab_search})
    + coalesce(${usab_tracking},${usab_search},${usab_big_data})
    + coalesce(${usab_search},${usab_big_data},${usab_tracking})
    + coalesce(${usab_search},${usab_tracking},${usab_big_data}))::float/6;;
  }

  dimension: pontuacao_total {
    type: number
    sql: coalesce(${acessos_usuarios},0)
         + coalesce(${pontos_qtd_tickets},0)
         + coalesce(${satisfaction},0)
         + coalesce(${pontuacao_nps_02_2021},0)
         + coalesce(${pontos_titulos_omie},0)
         + coalesce(${pontos_crescimento_cliente},0);;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
