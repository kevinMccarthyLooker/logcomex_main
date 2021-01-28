view: nyk_base {
  sql_table_name: public.nyk_base ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: altura {
    type: number
    sql: ${TABLE}."altura" ;;
  }

  dimension: cd_embarque {
    type: number
    sql: ${TABLE}."cd_embarque" ;;
  }

  dimension: comprimento {
    type: number
    sql: ${TABLE}."comprimento" ;;
  }

  dimension: dest_final {
    type: string
    sql: ${TABLE}."dest_final" ;;
  }

  dimension: exportador {
    type: string
    sql: ${TABLE}."exportador" ;;
  }

  dimension: mes {
    type: number
    sql: ${TABLE}."mes" ;;
  }

  dimension: modelo {
    type: string
    sql: ${TABLE}."modelo" ;;
  }

  dimension: nm_embarque {
    type: string
    sql: ${TABLE}."nm_embarque" ;;
  }

  dimension: peso {
    type: number
    sql: ${TABLE}."peso" ;;
  }

  dimension: peso_cbm {
    type: number
    sql: ${TABLE}."peso_cbm" ;;
  }

  dimension: peso_r_t {
    type: number
    sql: ${TABLE}."peso_r_t" ;;
  }

  dimension: peso_total {
    type: number
    sql: ${TABLE}."peso_total" ;;
  }

  dimension: peso_unidade {
    type: number
    sql: ${TABLE}."peso_unidade" ;;
  }

  dimension: pod {
    type: string
    sql: ${TABLE}."pod" ;;
  }

  dimension: pol {
    type: string
    sql: ${TABLE}."pol" ;;
  }

  dimension: qntd {
    type: number
    sql: ${TABLE}."qntd" ;;
  }

  dimension: tipo {
    type: string
    sql: ${TABLE}."tipo" ;;
  }

  dimension: voy {
    type: string
    sql: ${TABLE}."voy" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
