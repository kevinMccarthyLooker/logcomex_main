view: view_AntaqMaritimo {
  sql_table_name: public.view_AntaqMaritimo ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: cdportodescarregamento {
    type:  string
    sql: ${TABLE}."cdportodescarregamento" ;;
    label: "Cod Porto Descarregamento"
  }

  dimension:  cdportocarregamento{
    type:  string
    sql: ${TABLE}."cdportocarregamento" ;;
    label: "Cod Porto Carregamento"
  }

  dimension:  nmportodescarregamento{
    type:  string
    sql: ${TABLE}."nmportodescarregamento" ;;
    label: "Nm Porto Descarregamento"
  }

  dimension:  nmportocarregamento{
    type:  string
    sql: ${TABLE}."nmportocarregamento" ;;
    label: "Nm Porto Carregamento"
  }
  dimension_group: dtoperacao {
    type: time
    timeframes: [
      date,
      month_num,
      year
    ]
    sql: ${TABLE}."dtoperacao" ;;
  }
  measure:  teus{
    type:  sum
    sql: ${TABLE}."teus" ;;
    label: "Teus Log"
  }
  dimension:  categoriacarga{
    type:  string
    sql: ${TABLE}."categoriacarga" ;;
  }
}
