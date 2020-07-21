view: processos_por_account {
    derived_table: {
      sql:
          SELECT
            account.id as "id",
            empresa_pessoa."cnpj"  AS "empresa_pessoa.cnpj",
            empresa_pessoa."nome"  AS "empresa_pessoa.nome",
            count(processos.id) as qtde_processos
          FROM public.account  AS account
          LEFT JOIN public.empresa_pessoa  AS empresa_pessoa ON (empresa_pessoa."account_id")=(account."id")
          LEFT JOIN public.processos as processos on (processos."cliente_id")=(empresa_pessoa."id")
          WHERE ((empresa_pessoa."deleted_at") is null) AND (empresa_pessoa."cliente")
          group by 1,2,3
          ORDER BY 1
          LIMIT 500
          ;;

    #     persist_for: "24 hour"
    #     sql_trigger_value: select count(*) from public.customer_plan ;;
        datagroup_trigger: my_datagroup
        indexes: ["filters_report_log_id"]
      }

      dimension: id {
        hidden: yes
        type: number
        sql: ${TABLE}.id ;;
      }

      dimension: filters_campos_agrupado {
        type: string
        sql: ${TABLE}.filters_campos_agrupado ;;
      }

      measure: total_pendente {
        type: number
        label: "total_pendente"
        sql: ${TABLE}."total_pendente" ;;
      }

    }
