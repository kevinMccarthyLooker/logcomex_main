view: db_siscori_unid_fiscal {
  sql_table_name: public.db_siscori_unid_fiscal ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: cidade {
    type: string
    sql: ${TABLE}."cidade" ;;
  }

  dimension: cod_aero {
    type: string
    sql: ${TABLE}."cod_aero" ;;
  }

  dimension: cod_alfandega {
    type: number
    sql: ${TABLE}."cod_alfandega" ;;
  }

  dimension: cod_porto {
    type: string
    sql: ${TABLE}."cod_porto" ;;
  }

  dimension_group: date_from {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."date_from" ;;
  }

  dimension_group: date_to {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."date_to" ;;
  }

  dimension: desc_unid_fiscal {
    type: string
    sql: ${TABLE}."desc_unid_fiscal" ;;
  }

  dimension: nome_unid_fiscal {
    type: string
    sql: ${TABLE}."nome_unid_fiscal" ;;
  }

  dimension: uf {
    type: string
    sql: ${TABLE}."uf" ;;
  }

  dimension: version {
    type: number
    sql: ${TABLE}."version" ;;
  }

  dimension: via_princ {
    type: number
    sql: ${TABLE}."via_princ" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
