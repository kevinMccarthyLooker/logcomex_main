view: bi_importacao_filtros {
  derived_table: {
    sql:
        select  customer.id as customer_id,
                users.id as user_id,
                TO_CHAR(report_log.created_at, 'DD/MM/YYYY HH24:MI') as data_filtro,
                concat( case when (report_log.json_filter ->> 'start_date') is null then '' else 'start_date / ' end,
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
                      ) as campos_usados,
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
                      ) as valores_usados
        from report_log
        inner join report_type on report_type.id = report_log.report_type_id
        inner join users on users.id = report_log.user_id
        inner join customer_plan on customer_plan.id = report_log.customer_plan_id
        inner join customer on customer.id = customer_plan.customer_id
        where customer.fake_customer is false
          and (report_log.json_filter ->> 'serviceId' = '1' and report_log.json_filter ->> 'page' is null)
           ;;
    #     persist_for: "24 hour"
    #     sql_trigger_value: select count(*) from public.customer_plan ;;
      datagroup_trigger: my_datagroup
      indexes: ["customer_id"]
    }

    dimension: customer_id {
      hidden: yes
      type: string
      sql: ${TABLE}.customer_id ;;
    }

    dimension_group: dt_filtro {
      type: time
      timeframes: [
        raw,
        time,
        hour,
        date,
        week,
        month,
        quarter,
        year
      ]
      sql: ${TABLE}.data_filtro ;;
    }

    dimension: user_id {
      hidden: yes
      type: string
      sql: ${TABLE}.customer_id ;;
    }

    dimension: campos_usados {
      type: string
      sql: ${TABLE}.campos_usados ;;
    }

    dimension: valores_usados {
      type: string
      sql: ${TABLE}.campos_usados ;;
    }

}
