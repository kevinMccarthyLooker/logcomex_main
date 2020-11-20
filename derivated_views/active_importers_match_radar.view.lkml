view: active_importers_match_radar {

  derived_table: {
    sql:
    select qq3.encontrado, count(*) -- extamente cnpj 25586, considerando filiais  -- 0,0776
    from(
    select qq1.cnpj_importador,
    qq2.cnpj_radar,
    case when qq1.cnpj_importador = qq2.cnpj_radar then true else false end as encontrado
    from(
    select distinct replace(replace(replace(importador_cnpj,'-',''),'/',''),'.','') as cnpj_importador
    from di_pu dp
    where data_hora_registro  >= current_date - interval '180' day
    and importador_cnpj is not null
    and importador_cnpj not like ''
    and char_length(replace(replace(replace(importador_cnpj,'-',''),'/',''),'.','')) > 11 -- removendo cpfs
    ) qq1
    left join(
    select  distinct c.cnpj as cnpj_radar
    from api.consignee c
    inner join api.certificate_consignee_radar ccr on
        c.id = ccr.consignee_id
        and ccr.deleted_at is null
    inner join api.certificate c2 on
        c.cert_id = c2.id
        and c2.customer_id = c.customer_id
        and c2.valid_until > now()
        and c2.deleted_at is null
        and char_length(c.cnpj) > 11 -- retirando cpfs
        ) qq2 on qq2.cnpj_radar = qq1.cnpj_importador
    ) qq3
    group by 1;;
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
