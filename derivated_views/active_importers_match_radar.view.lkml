view: active_importers_match_radar {

  derived_table: {
    sql:
select
    ROW_NUMBER() OVER() as id,
    qq1.cpf,
    qq3.cpf_radar,
 --   dp2.responsavel,
    qq1.cnpj_importador,
    qq2.cnpj_radar,
    qq1.qtd_importacoes,
    qq1.cif,
    coalesce(ac.normalizado,cg."name",'Desconhecido')as nome_importador,
    case when qq1.cnpj_importador = qq2.cnpj_radar then true else false end as match,
    case when qq1.cpf = qq3.cpf_radar then true else false end as match_cpf
    from(
    select
    replace(replace(replace(left(dp.responsavel,14),'-',''),'/',''),'.','') as cpf,
    replace(replace(replace(importador_cnpj,'-',''),'/',''),'.','') as cnpj_importador,
    count(*) as qtd_importacoes,
    sum(dp.total_dolares_loc_desc) as cif
    from aereo.di_pu dp
    where data_hora_registro  >= current_date - interval '180' day
    and importador_cnpj is not null
    and importador_cnpj not like ''
    and char_length(replace(replace(replace(importador_cnpj,'-',''),'/',''),'.','')) > 11 -- removendo cpfs
    group by 1,2--,3
    ) qq1
left join(
    select distinct c.cnpj as cnpj_radar
    from api.consignee c
    inner join api.certificate_consignee_radar ccr on c.id = ccr.consignee_id
    inner join api.certificate c2 on c2.id = ccr.certificate_id
    where char_length(c.cnpj) > 11 -- retirando cpfs
    and c2.valid_until > now()
    --and c2.deleted_at is null
    --and ccr.deleted_at is null
         ) qq2 on qq2.cnpj_radar = qq1.cnpj_importador
left join(
    select distinct c2.owner_cpf as cpf_radar,
    c2.owner_name
    from api.consignee c
    inner join api.certificate_consignee_radar ccr on c.id = ccr.consignee_id
    inner join api.certificate c2 on c2.id = ccr.certificate_id
    where char_length(c.cnpj) > 11 -- retirando cpfs
    and c2.valid_until > now()
    --and c2.deleted_at is null
    --and ccr.deleted_at is null
         ) qq3 on qq3.cpf_radar = qq1.cpf
left join aereo.aereo_consignatario ac on ac.id = (select ac2.id from aereo.aereo_consignatario ac2 where ac2.cnpj = qq1.cnpj_importador limit 1)
--left join di_pu dp2 on dp2.id = (select dp3.id from di_pu dp3 where replace(replace(replace(left(dp3.responsavel,14),'-',''),'/',''),'.','') = qq1.cpf limit 1) -- trazer nome unico do despachante
left join api.consignee cg on cg.id = (select cg2.id from api.consignee cg2 where cg2.cnpj = qq1.cnpj_importador limit 1)
  indexes: ["cnpj_importador"]
  sql_trigger_value: select current_date ;;
  }

  dimension: id {
    type: number
    hidden:yes
    primary_key: yes
    sql: ${TABLE}.id ;;
  }

  dimension: cnpj_importador {
    type: string
    sql: ${TABLE}.cnpj_importador;;
    link: {
    label: "Receita Federal"
    url: " https://servicos.receita.fazenda.gov.br/Servicos/cnpjreva/Cnpjreva_Solicitacao.asp?cnpj={{ value }}"
    icon_url: "https://receita.economia.gov.br/arquivos-e-imagens/icones/procurar.png/@@images/image.png"
    }
  }

  dimension: qtd_importacoes {
    type: number
    sql: ${TABLE}.qtd_importacoes ;;
  }

  dimension: cnpj_radar {
    type: string
    sql: ${TABLE}.cnpj_radar ;;
  }

  dimension: cpf {
    type: string
    sql: ${TABLE}.cpf ;;
  }

  dimension: cif {
    type: number
    sql: ${TABLE}.cif ;;
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

  dimension: match_cpf {
    type: yesno
    sql: ${TABLE}.match_cpf ;;
    html: {% if value == 'Yes' %}
            <font color="green">{{ match_cpf }}</font>
          {% else %}
            <font color="red">{{ match_cpf }}</font>
          {% endif %};;
  }

  measure: count {
    type: count
  }

  measure: count_distinct_cnpj {
    type: count_distinct
    sql: ${cnpj_importador} ;;
  }

  measure: count_distinct_cpf {
    type: count_distinct
    sql: ${cpf} ;;
  }

  measure: sum_cif {
    type: sum
    sql: ${cif} ;;
  }

  measure: sum_qtd_importacoes {
    type: sum
    sql: ${qtd_importacoes} ;;
  }


}
