view: di_pendente_robos {

    derived_table: {

      sql: select (
                  select count(1)
                  from "di_control"
                  where di_control.di_number >= 192025338
                    and NOT EXISTS(SELECT 1 FROM di_control_pu b WHERE b.di_number = di_control.di_number)
                    and ("via_transporte" <> 'N/A' or via_transporte is null or via_transporte <> 'DI INEXISTENTE')
) as total_pendente ;;
    }

    measure: total_pendente {
      type: number
      label: "total_pendente"
      sql: ${TABLE}."total_pendente" ;;
    }
}
