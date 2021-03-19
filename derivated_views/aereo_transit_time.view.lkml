view: aereo_transit_time {

  derived_table: {
    sql:
    select list.awb, list.hwb, details.data_hawb as data_embarque_ets, atracacao.data_hora_chegada
    from aereo_awb_list list
    inner join aereo_awb_details details on details.id_awb_list = list.id
    inner join aereo_etapas_atracao atracacao on atracacao.id_awb_details = details.id
    where atracacao.doc_saida = 'DI/DAS'
    and details.data_hawb is not null
    and atracacao.data_hora_chegada is not null
    and (atracacao.data_hora_chegada - details.data_hawb) < interval '1000 days'
    and list.awb is not null
    and list.hwb is not null ;;
  }

  dimension: awb {
    type:  string
    sql: ${TABLE}.awb;;
  }

  dimension: hwb {
    type:  string
    sql: ${TABLE}.hwb;;
  }

  dimension_group: data_embarque_ets {
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
    sql: ${TABLE}."data_embarque_ets" ;;
  }

  dimension_group: data_hora_chegada {
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
    sql: ${TABLE}."data_hora_chegada" ;;
  }

  dimension_group: transit_time {
    type: duration
    intervals: [day, hour]
    sql_start: ${TABLE}."data_embarque_ets" ;;
    sql_end: ${TABLE}."data_hora_chegada";;
  }

  measure: count {
    type: count
  }

  measure: avg_days_transit_time {
    type: average
    sql: ${days_transit_time} ;;
  }

  measure: avg_hours_transit_time {
    type: average
    sql: ${hours_transit_time};;
  }


}
