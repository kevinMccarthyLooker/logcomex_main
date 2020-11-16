view: expo_maritimo_cooked {
  derived_table: {
    sql: SELECT * FROM  exp_mar.maritimo_expo_cooked
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: nrmanifesto {
    type: string
    sql: ${TABLE}.nrmanifesto ;;
  }

  dimension: dtoperacao {
    type: date
    sql: ${TABLE}.dtoperacao ;;
  }

  dimension: nrcemercante {
    type: number
    sql: ${TABLE}.nrcemercante ;;
  }

  dimension: nrblconhecimento {
    type: string
    sql: ${TABLE}.nrblconhecimento ;;
  }

  dimension: lista_fcl {
    type: string
    sql: ${TABLE}.lista_fcl ;;
  }

  dimension: conteiner {
    type: string
    sql: ${TABLE}.conteiner ;;
  }

  dimension: nmportoorigem {
    type: string
    sql: ${TABLE}.nmportoorigem ;;
  }

  set: detail {
    fields: [
      id,
      nrmanifesto,
      dtoperacao,
      nrcemercante,
      nrblconhecimento,
      lista_fcl,
      conteiner,
      nmportoorigem
    ]
  }
}
