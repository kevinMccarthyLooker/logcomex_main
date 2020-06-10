view: bi_filtros {
  derived_table: {
    sql:
        select
        report_log.id as repot_log_id
    ,case
      when (service.name = 'Commodities' and report_log.json_filter -> 'year_month' is not null)
      then
        concat(case when (report_log.json_filter ->> 'year_month') = '[]' then '' else 'year_month / ' end,
          case when (report_log.json_filter ->> 'incoterms') = '[]' then '' else 'incoterms / ' end,
              case when (report_log.json_filter ->> 'statistical_measure_unit') = '[]' then '' else 'statistical_measure_unit / ' end,
              case when (report_log.json_filter ->> 'clearance_units') = '[]' then '' else 'clearance_units / ' end,
              case when (report_log.json_filter ->> 'ncm_code') = '[]' then '' else 'ncm_code / ' end,
              case when (report_log.json_filter ->> 'product_description') is null then '' else 'product_description / ' end,
              case when (report_log.json_filter ->> 'origin_countries') = '[]' then '' else 'origin_countries / ' end,
              case when (report_log.json_filter ->> 'acquisition_countries') = '[]' then '' else 'acquisition_countries / ' end,
              case when (report_log.json_filter ->> 'provider') is null then '' else 'provider / ' end,
              case when (report_log.json_filter ->> 'importer') is null then '' else 'importer' end
        )
      when (service.name = 'Leads' and report_log.json_filter ->> 'page' is null)
      then
        concat(case when (report_log.json_filter ->> 'start_date') is null then '' else 'start_date / ' end,
          case when (report_log.json_filter ->> 'end_date') is null then '' else 'end_date / ' end,
              case when (report_log.json_filter -> 'nmportoorigem' ->> 'value' ) is null then '' else 'nmportoorigem / ' end,
              case when (report_log.json_filter -> 'nmportodestino' ->> 'value' ) is null then '' else 'nmportodestino / ' end,
              case when (report_log.json_filter -> 'nmconsignatario' ->> 'value' ) is null then '' else 'nmconsignatario / ' end,
              case when (report_log.json_filter -> 'txshipper' ->> 'value' ) is null then '' else 'txshipper / ' end,
              case when (report_log.json_filter -> 'nmpaisprocedencia' ->> 'value' ) is null then '' else 'nmpaisprocedencia / ' end,
              case when (report_log.json_filter -> 'tipo_carga' ->> 'value' ) is null then '' else 'tipo_carga / ' end,
              case when (report_log.json_filter -> 'consignatario_uf' ->> 'value' ) is null then '' else 'consignatario_uf / ' end,
              case when (report_log.json_filter -> 'consignatario_cidade' ->> 'value' ) is null then '' else 'consignatario_cidade / ' end,
              case when (report_log.json_filter -> 'itemcarga_cdncms' ->> 'value' ) is null then '' else 'HSCODE / ' end
        )
      when (service.name = 'Importação' and report_log.json_filter ->> 'page' is null)
      then
        concat(case when (report_log.json_filter ->> 'start_date') is null then '' else 'start_date / ' end,
          case when (report_log.json_filter ->> 'end_date') is null then '' else 'end_date / ' end,
              case when (report_log.json_filter -> 'nmportoorigem' ->> 'value' ) is null then '' else 'nmportoorigem / ' end,
              case when (report_log.json_filter -> 'nmportodestino' ->> 'value' ) is null then '' else 'nmportodestino / ' end,
              case when (report_log.json_filter -> 'nmconsignatario' ->> 'value' ) is null then '' else 'nmconsignatario / ' end,
              case when (report_log.json_filter -> 'txshipper' ->> 'value' ) is null then '' else 'txshipper / ' end,
              case when (report_log.json_filter -> 'cnpjconsignatario' ->> 'value' ) is null then '' else 'cnpjconsignatario / ' end,
              case when (report_log.json_filter -> 'nmagtnavegmaster' ->> 'value' ) is null then '' else 'nmagtnavegmaster / ' end,
              case when (report_log.json_filter -> 'paisorigem' ->> 'value' ) is null then '' else 'paisorigem / ' end,
              case when (report_log.json_filter -> 'consignatariouf' ->> 'value' ) is null then '' else 'consignatariouf / ' end,
              case when (report_log.json_filter -> 'nmempnavegdesconmaster' ->> 'value' ) is null then '' else 'nmempnavegdesconmaster / ' end,
              case when (report_log.json_filter -> 'txnotifypart' ->> 'value' ) is null then '' else 'txnotifypart / ' end,
              case when (report_log.json_filter -> 'nmembarcacao' ->> 'value' ) is null then '' else 'nmembarcacao / ' end,
              case when (report_log.json_filter -> 'nmempresanavegacao' ->> 'value' ) is null then '' else 'nmempresanavegacao / ' end,
              case when (report_log.json_filter -> 'embarque' ->> 'value' ) is null then '' else 'embarque / ' end,
              case when (report_log.json_filter -> 'tipocarga' ->> 'value' ) is null then '' else 'tipocarga / ' end,
              case when (report_log.json_filter -> 'cidade' ->> 'value' ) is null then '' else 'cidade / ' end,
              case when (report_log.json_filter -> 'tradeorigem' ->> 'value' ) is null then '' else 'tradeorigem / ' end,
              case when (report_log.json_filter -> 'pagamento' ->> 'value' ) is null then '' else 'pagamento / ' end,
              case when (report_log.json_filter -> 'terminaldescarga' ->> 'value' ) is null then '' else 'terminaldescarga / ' end,
              case when (report_log.json_filter -> 'armazemdestino' ->> 'value' ) is null then '' else 'armazemdestino / ' end,
              case when (report_log.json_filter -> 'mercadoria' ->> 'value' ) is null then '' else 'mercadoria / ' end,
              case when (report_log.json_filter -> 'itemcargacdncms' ->> 'value' ) is null then '' else 'itemcargacdncms / ' end
            )
            else
      'n/a' end as campos_filtro_bi
    ,case when (service.name = 'Commodities' and report_log.json_filter -> 'year_month' is not null)
      then
        concat(case when (report_log.json_filter ->> 'year_month') = '[]' then '' else concat((report_log.json_filter ->> 'year_month'), ' / ') end,
              case when (report_log.json_filter ->> 'incoterms') = '[]' then '' else concat((report_log.json_filter ->> 'incoterms'), ' / ') end,
              case when (report_log.json_filter ->> 'statistical_measure_unit') = '[]' then '' else concat((report_log.json_filter ->> 'statistical_measure_unit'), ' / ') end,
              case when (report_log.json_filter ->> 'clearance_units') = '[]' then '' else concat((report_log.json_filter ->> 'clearance_units'), ' / ') end,
              case when (report_log.json_filter ->> 'ncm_code') = '[]' then '' else concat((report_log.json_filter ->> 'ncm_code'), ' / ') end,
              case when (report_log.json_filter ->> 'product_description') is null then '' else concat((report_log.json_filter ->> 'product_description'), ' / ') end,
              case when (report_log.json_filter ->> 'origin_countries') = '[]' then '' else concat((report_log.json_filter ->> 'origin_countries'), ' / ') end,
              case when (report_log.json_filter ->> 'acquisition_countries') = '[]' then '' else concat((report_log.json_filter ->> 'acquisition_countries'), ' / ') end,
              case when (report_log.json_filter ->> 'provider') is null then '' else concat((report_log.json_filter ->> 'provider'), ' / ') end,
              case when (report_log.json_filter ->> 'importer') is null then '' else (report_log.json_filter ->> 'importer') end
        )
      when (service.name = 'Leads' and report_log.json_filter ->> 'page' is null)
      then
        concat(case when (report_log.json_filter ->> 'start_date') is null then '' else concat((report_log.json_filter ->> 'start_date'), ' / ') end,
          case when (report_log.json_filter ->> 'end_date') is null then '' else concat((report_log.json_filter ->> 'end_date'), ' / ') end,
              case when (report_log.json_filter -> 'nmportoorigem' ->> 'value' ) is null then '' else concat((report_log.json_filter -> 'nmportoorigem' ->> 'value'), ' / ') end,
              case when (report_log.json_filter -> 'nmportodestino' ->> 'value' ) is null then '' else concat((report_log.json_filter -> 'nmportodestino' ->> 'value'), ' / ') end,
              case when (report_log.json_filter -> 'nmconsignatario' ->> 'value' ) is null then '' else concat((report_log.json_filter -> 'nmconsignatario' ->> 'value'), ' / ') end,
              case when (report_log.json_filter -> 'txshipper' ->> 'value' ) is null then '' else concat((report_log.json_filter -> 'txshipper' ->> 'value'), ' / ') end,
              case when (report_log.json_filter -> 'nmpaisprocedencia' ->> 'value' ) is null then '' else concat((report_log.json_filter -> 'nmpaisprocedencia' ->> 'value'), ' / ') end,
              case when (report_log.json_filter -> 'tipo_carga' ->> 'value' ) is null then '' else concat((report_log.json_filter -> 'tipo_carga' ->> 'value'), ' / ') end,
              case when (report_log.json_filter -> 'consignatario_uf' ->> 'value' ) is null then '' else concat((report_log.json_filter -> 'consignatario_uf' ->> 'value'), ' / ') end,
              case when (report_log.json_filter -> 'consignatario_cidade' ->> 'value' ) is null then '' else concat((report_log.json_filter -> 'consignatario_cidade' ->> 'value'), ' / ') end,
              case when (report_log.json_filter -> 'itemcarga_cdncms' ->> 'value' ) is null then '' else concat((report_log.json_filter -> 'itemcarga_cdncms' ->> 'value'), ' / ') end
        )
      when (service.name = 'Importação' and report_log.json_filter ->> 'page' is null)
      then
        concat(case when (report_log.json_filter ->> 'start_date') is null then '' else concat((report_log.json_filter ->> 'start_date'), ' / ') end,
          case when (report_log.json_filter ->> 'end_date') is null then '' else concat((report_log.json_filter ->> 'end_date'), ' / ') end,
              case when (report_log.json_filter -> 'nmportoorigem' ->> 'value' ) is null then '' else concat((report_log.json_filter -> 'nmportoorigem' ->> 'value'), ' / ') end,
              case when (report_log.json_filter -> 'nmportodestino' ->> 'value' ) is null then '' else concat((report_log.json_filter -> 'nmportodestino' ->> 'value'), ' / ') end,
              case when (report_log.json_filter -> 'nmconsignatario' ->> 'value' ) is null then '' else concat((report_log.json_filter -> 'nmconsignatario' ->> 'value'), ' / ') end,
              case when (report_log.json_filter -> 'txshipper' ->> 'value' ) is null then '' else concat((report_log.json_filter -> 'txshipper' ->> 'value'), ' / ') end,
              case when (report_log.json_filter -> 'cnpjconsignatario' ->> 'value' ) is null then '' else concat((report_log.json_filter -> 'cnpjconsignatario' ->> 'value'), ' / ') end,
              case when (report_log.json_filter -> 'nmagtnavegmaster' ->> 'value' ) is null then '' else concat((report_log.json_filter -> 'nmagtnavegmaster' ->> 'value'), ' / ') end,
              case when (report_log.json_filter -> 'paisorigem' ->> 'value' ) is null then '' else concat((report_log.json_filter -> 'paisorigem' ->> 'value'), ' / ') end,
              case when (report_log.json_filter -> 'consignatariouf' ->> 'value' ) is null then '' else concat((report_log.json_filter -> 'consignatariouf' ->> 'value'), ' / ') end,
              case when (report_log.json_filter -> 'nmempnavegdesconmaster' ->> 'value' ) is null then '' else concat((report_log.json_filter -> 'nmempnavegdesconmaster' ->> 'value'), ' / ') end,
              case when (report_log.json_filter -> 'txnotifypart' ->> 'value' ) is null then '' else concat((report_log.json_filter -> 'txnotifypart' ->> 'value'), ' / ') end,
              case when (report_log.json_filter -> 'nmembarcacao' ->> 'value' ) is null then '' else concat((report_log.json_filter -> 'nmembarcacao' ->> 'value'), ' / ') end,
              case when (report_log.json_filter -> 'nmempresanavegacao' ->> 'value' ) is null then '' else concat((report_log.json_filter -> 'nmempresanavegacao' ->> 'value'), ' / ') end,
              case when (report_log.json_filter -> 'embarque' ->> 'value' ) is null then '' else concat((report_log.json_filter -> 'embarque' ->> 'value'), ' / ') end,
              case when (report_log.json_filter -> 'tipocarga' ->> 'value' ) is null then '' else concat((report_log.json_filter -> 'tipocarga' ->> 'value'), ' / ') end,
              case when (report_log.json_filter -> 'cidade' ->> 'value' ) is null then '' else concat((report_log.json_filter -> 'cidade' ->> 'value'), ' / ') end,
              case when (report_log.json_filter -> 'tradeorigem' ->> 'value' ) is null then '' else concat((report_log.json_filter -> 'tradeorigem' ->> 'value'), ' / ') end,
              case when (report_log.json_filter -> 'pagamento' ->> 'value' ) is null then '' else concat((report_log.json_filter -> 'pagamento' ->> 'value'), ' / ') end,
              case when (report_log.json_filter -> 'terminaldescarga' ->> 'value' ) is null then '' else concat((report_log.json_filter -> 'terminaldescarga' ->> 'value'), ' / ') end,
              case when (report_log.json_filter -> 'armazemdestino' ->> 'value' ) is null then '' else concat((report_log.json_filter -> 'armazemdestino' ->> 'value'), ' / ') end,
              case when (report_log.json_filter -> 'mercadoria' ->> 'value' ) is null then '' else concat((report_log.json_filter -> 'mercadoria' ->> 'value'), ' / ') end,
              case when (report_log.json_filter -> 'itemcargacdncms' ->> 'value' ) is null then '' else concat((report_log.json_filter -> 'itemcargacdncms' ->> 'value'), ' / ') end
            )
      else
      'n/a' end as valores_filtro_bi
      from report_log
  inner join report_type on report_type.id = report_log.report_type_id
  inner join users on users.id = report_log.user_id
  inner join customer_plan on customer_plan.id = report_log.customer_plan_id
  inner join customer on customer.id = customer_plan.customer_id
  inner join service on service.id = (report_log.json_filter ->> 'serviceId')::INT
where report_log.created_at between '2019-12-31' and '2020-12-31'
    and customer.fake_customer is false
    and customer.id not in (736)
  and ((service.name = 'Commodities' and report_log.json_filter -> 'year_month' is not null)
       or (service.name = 'Leads' and report_log.json_filter ->> 'page' is null)
       or (service.name = 'Importação' and report_log.json_filter ->> 'page' is null)
      ) ;;
    #     persist_for: "24 hour"
    #     sql_trigger_value: select count(*) from public.customer_plan ;;
      datagroup_trigger: my_datagroup
      indexes: ["repot_log_id"]
    }

    dimension: report_log_id {
      hidden: yes
      type: number
      sql: ${TABLE}.report_log_id ;;
    }

    dimension: campos_filtro_bi {
      type: string
      sql: ${TABLE}.campos_usados ;;
    }

    dimension: valores_filtro_bi {
      type: string
      sql: ${TABLE}.campos_usados ;;
    }

}
