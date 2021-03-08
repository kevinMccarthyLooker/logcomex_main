view: comex_analytics_certificate {
  derived_table: {
    sql:
    select
    ROW_NUMBER () OVER () as id,
    c.id as customer_id,
    c."name" as customer_name,
    cg.cnpj as consignee_cnpj,
    cg."name" as consignee_name,
    ct.id as cert_id,
    ct.owner_name as cert_owner,
    ct.valid_until as cert_valid,
    replace(replace(replace(di.importador_cnpj,'-',''),'/',''),'.','') as cnpj_importador,
    di.data_hora_registro,
    di.armazem,
    di.tipo_recolhimento
    from api.customer c
    inner join api.consignee cg on cg.customer_id = c.id
    --inner join api.certificate_consignee_radar ccr on ccr.consignee_id = cg.id and ccr.deleted_at is null descomentar caso nao incluir os deletados
    inner join api.certificate ct on ct.id = cg.cert_id and ct.customer_id = cg.customer_id
    inner join aereo.di_pu di on replace(replace(replace(di.importador_cnpj,'-',''),'/',''),'.','') = cg.cnpj
    where ct.valid_until >= current_date -- certificados válidos
    and di.data_hora_registro  >= current_date - interval '5' day -- diminuindo o periodo para teste
    --and c.id = 1536
    --and ct.deleted_at is null descomentar caso não incluir os deletados
    --and c.id = 512
    ;;
    indexes: ["cnpj_importador"]
    sql_trigger_value: select current_date;;
  }
}
