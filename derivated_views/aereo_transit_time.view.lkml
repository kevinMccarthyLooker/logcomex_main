view: aereo_transit_time {

  derived_table: {
    sql:
    select list.awb, list.hwb, details.data_hawb as data_embarque_ets, atracacao.data_hora_chegada, ( atracacao.data_hora_chegada - details.data_hawb) as transit_time
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

}
