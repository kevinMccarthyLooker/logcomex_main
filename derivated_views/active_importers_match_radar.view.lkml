view: active_importers_match_radar {

  derived_table: {
    sql:
select
    ROW_NUMBER() OVER() as id,
    qq1.cpf,
    qq3.cpf_radar,
    qq1.responsavel,
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
    case
    when dp.responsavel = '003.702.169-97 - INDIANARA APARECIDA SILVEIRA SISTE' then '003.702.169-97 - INDIANARA APARECIDA SILVEIRA'
    when dp.responsavel = '034.092.119-69 - EVELIZE FERNANDES' then '034.092.119-69 - EVELIZE FERNANDES VICENTE'
    when dp.responsavel = '106.609.637-60 - PEDRO HENRIQUE DA SILVA MORAIS BRANDAO' then '106.609.637-60 - PEDRO HENRIQUE DA SILVA BRANDAO'
    when dp.responsavel = '346.712.878-54 - DENISE RODRIGUES DE MOURA' then '346.712.878-54 - DENISE RODRIGUES DE MOURA MOREIRA'
    else dp.responsavel
    end as responsavel,
    replace(replace(replace(importador_cnpj,'-',''),'/',''),'.','') as cnpj_importador,
    count(*) as qtd_importacoes,
    sum(dp.total_dolares_loc_desc) as cif
    from di_pu dp
    where data_hora_registro  >= current_date - interval '180' day
    and importador_cnpj is not null
    and importador_cnpj not like ''
    and responsavel is not null
    and char_length(replace(replace(replace(importador_cnpj,'-',''),'/',''),'.','')) > 11 -- removendo cpfs
    group by 1,2,3
    ) qq1
left join(
    select distinct c.cnpj as cnpj_radar
    from api.consignee c
    inner join api.certificate_consignee_radar ccr on c.id = ccr.consignee_id
    inner join api.certificate c2 on c2.id = ccr.certificate_id
    where char_length(c.cnpj) > 11 -- retirando cpfs
    and c2.valid_until > now()
    and c2.deleted_at is null -- tirando certificados deletados
    and ccr.deleted_at is null -- tirando deletados do radar
    and c.deleted_at is null  -- tirando consignees deletados
         ) qq2 on qq2.cnpj_radar = qq1.cnpj_importador
left join(
    select distinct c2.owner_cpf as cpf_radar,
    c2.owner_name
    from api.consignee c
    inner join api.certificate_consignee_radar ccr on c.id = ccr.consignee_id
    inner join api.certificate c2 on c2.id = ccr.certificate_id
    where char_length(c.cnpj) > 11 -- retirando cpfs
    and c2.valid_until > current_date
    and c2.deleted_at is null -- tirando certificados deletados
    and ccr.deleted_at is null -- tirando deletados do radar
    and c.deleted_at is null  -- tirando consignees deletados
         ) qq3 on qq3.cpf_radar = qq1.cpf
left join aereo_consignatario ac on ac.id = (select ac2.id from aereo_consignatario ac2 where ac2.cnpj = qq1.cnpj_importador limit 1)
left join api.consignee cg on cg.id = (select cg2.id from api.consignee cg2 where cg2.cnpj = qq1.cnpj_importador limit 1);;
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

  dimension: responsavel {
    type: string
    sql: ${TABLE}.responsavel ;;
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
    drill_fields: [responsavel, cnpj_importador, nome_importador]
  }

  measure: count_distinct_cpf {
    type: count_distinct
    sql: ${cpf} ;;
  }

  measure: count_distinct_responsavel {
    type: count_distinct
    sql: ${responsavel} ;;
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
