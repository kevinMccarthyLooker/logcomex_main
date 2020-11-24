view: active_importers_match_radar {

  derived_table: {
    sql:
    select
    ROW_NUMBER() OVER() as id,
    qq1.cnpj_importador,
    qq2.cnpj_radar,
    qq1.qtd_importacoes,
    ac.normalizado as nome_importador,
    case when qq1.cnpj_importador = qq2.cnpj_radar then true else false end as match
    from(
    select replace(replace(replace(importador_cnpj,'-',''),'/',''),'.','') as cnpj_importador, count(*) as qtd_importacoes
    from aereo.di_pu dp
    where data_hora_registro  >= current_date - interval '180' day
    and importador_cnpj is not null
    and importador_cnpj not like ''
    and char_length(replace(replace(replace(importador_cnpj,'-',''),'/',''),'.','')) > 11 -- removendo cpfs
    group by 1
    ) qq1
    left join(
    select distinct c.cnpj as cnpj_radar
    from api.consignee c
    inner join api.certificate_consignee_radar ccr on
        c.id = ccr.consignee_id
        --and ccr.deleted_at is null
    inner join api.certificate c2 on
        c.cert_id = c2.id
        and c2.customer_id = c.customer_id
        and c2.valid_until > now()
        --and c2.deleted_at is null
        and char_length(c.cnpj) > 11 -- retirando cpfs
        ) qq2 on qq2.cnpj_radar = qq1.cnpj_importador
    left join aereo.aereo_consignatario ac on ac.id = (select ac2.id from aereo.aereo_consignatario ac2 where ac2.cnpj = qq1.cnpj_importador limit 1);;
  }

  dimension: id {
    type: number
    hidden:yes
    primary_key: yes
    sql: ${TABLE}.id ;;
  }

  dimension: cnpj_importador {
    type: string
    sql: ${TABLE}.cnpj_importador ;;
  }

  dimension: qtd_importacoes {
    type: number
    sql: ${TABLE}.qtd_importacoes ;;
  }

  dimension: cnpj_radar {
    type: string
    sql: ${TABLE}.cnpj_radar ;;
  }

  dimension: nome_importador {
    type: string
    sql: ${TABLE}.nome_importador ;;
  }

  dimension: match {
    type: yesno
    sql: ${TABLE}.match ;;
    html: {% if value == 'Yes' %}
            <font color="green">{{ match }}</font>
          {% else %}
            <font color="red">{{ match }}</font>
          {% endif %};;
  }

  measure: count {
    type: count
  }

  measure: count_distinct_cnpj {
    type: count_distinct
    sql: ${cnpj_importador} ;;
  }

}
