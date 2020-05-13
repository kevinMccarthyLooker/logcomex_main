view: di_pendente_robos {

    derived_table: {

      sql: select (
                  select count(1)
                  from "di_control"
                  where "via_transporte" is not null
                  and di_control.di_number >= 192025338
                  and NOT EXISTS(SELECT 1 FROM di_control_pu b WHERE b.di_number = di_control.di_number)
                  and "via_transporte" <> 'N/A')
                  +
                  (select count(1)
                  from "di_control_pu"
                  inner join "di_control" on "di_control"."di_number" = "di_control_pu"."di_number"
                  where "di_control"."via_transporte" <> 'N/A'
                  and di_control.di_number >= 192025338
                  and "di_control_pu"."status" in ('2', '0')
                  ) as total_pendente ;;
    }

    measure: total_pendente {
      type: number
      label: "total_pendente"
      sql: ${TABLE}."total_pendente" ;;
    }
}
