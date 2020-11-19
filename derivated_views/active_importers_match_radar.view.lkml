view: active_importers_match_radar {

  derived_table: {
    sql:
    select row_number() over() as id,
    qq1.cnpj_importador,
    qq2.cnpj_radar,
    case when qq1.cnpj_importador = qq2.cnpj_radar then true else false end as encontrado
    from(
    select distinct replace(replace(replace(importador_cnpj,'-',''),'/',''),'.','') as cnpj_importador
    from di_pu dp
    where data_hora_registro  >= current_date - interval '90' day
    and importador_cnpj is not null
    and importador_cnpj not like '') qq1
    left join(
    select distinct c.cnpj as cnpj_radar
    from api.consignee c
    inner join api.certificate_consignee_radar ccr on
    c.id = ccr.consignee_id
    and ccr.deleted_at is null
    inner join api.certificate c2 on
    c.cert_id = c2.id
    and c2.customer_id = c.customer_id
    and c2.valid_until > now()
    and c2.deleted_at is null) qq2 on qq2.cnpj_radar = qq1.cnpj_importador ;;
  }

  dimension: id {
    type: number
    primary_key: yes
    sql: ${TABLE}.id ;;
  }

  dimension: cnpj_importador {
    type: string
    sql: ${TABLE}.cnpj_importador ;;
  }

  dimension: cnpj_radar {
    type: string
    sql: ${TABLE}.cnpj_radar ;;
  }

  dimension: match {
    type: yesno
    sql: ${TABLE}.match ;;
  }

  measure: count {
    type: count
  }

}
