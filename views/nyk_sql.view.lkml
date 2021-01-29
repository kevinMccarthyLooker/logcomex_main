view: nyk_sql {
  derived_table: {
    sql: select periodo, nm_embarque, count(id) as id_nyk,mes,ano, (select count(m.id)
                                            from db_maritimo m
                                            where extract(month from dtoperacao) = n.mes
                                            and extract(year from dtoperacao) = n.ano
                                            and m.nmembarcacao = n.nm_embarque) as id_maritimo
from nyk_base n
group by periodo, nm_embarque,mes,ano
 ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: periodo {
    type: string
    sql: ${TABLE}."periodo" ;;
  }

  dimension: nm_embarque {
    type: string
    sql: ${TABLE}."nm_embarque" ;;
  }

  dimension: id_nyk {
    type: number
    sql: ${TABLE}."id_nyk" ;;
  }

  dimension: mes {
    type: number
    sql: ${TABLE}."mes" ;;
  }

  dimension: ano {
    type: number
    sql: ${TABLE}."ano" ;;
  }

  dimension: id_maritimo {
    type: number
    sql: ${TABLE}."id_maritimo" ;;
  }

  set: detail {
    fields: [
      periodo,
      nm_embarque,
      id_nyk,
      mes,
      ano,
      id_maritimo
    ]
  }
}
