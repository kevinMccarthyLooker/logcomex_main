view: pct_sem_adicao {
  derived_table: {
    sql: SELECT CAST(SUBSTR(dp.data_registro_despacho :: text, 1, 4) || SUBSTR(dp.data_registro_despacho :: text, 6, 2) AS
          INTEGER)   AS anomes,
       count(*)
FROM di_pu dp
WHERE NOT EXISTS (SELECT da.di_number FROM di_pu_addition da WHERE da.di_number = dp.di_number)
      AND dp.data_registro_despacho >= '2018/08/01'
GROUP BY 1
ORDER BY 1
 ;;
  }

  dimension: anomes {
    type: number
    value_format: "0"
    label: "Ano Mês"
    sql: ${TABLE}."anomes" ;;
  }

  dimension: count {
    type: number
    label: "Qtd S/ Adição"
    sql: ${TABLE}."count" ;;
  }

  set: detail {
    fields: [anomes, count]
  }
}
