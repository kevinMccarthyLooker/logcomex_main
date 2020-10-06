view: db_commodities_export {
  sql_table_name: public.db_commodities_export ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: anomes {
    type: number
    sql: ${TABLE}."anomes" ;;
  }

  dimension: anomes_embq {
    type: number
    sql: ${TABLE}."anomes_embq" ;;
  }

  dimension: cdpaisdestino {
    type: string
    sql: ${TABLE}."cdpaisdestino" ;;
  }

  dimension: desc_prodt {
    type: string
    sql: ${TABLE}."desc_prodt" ;;
  }

  dimension: id_anomes {
    type: number
    sql: ${TABLE}."id_anomes" ;;
  }

  dimension: id_anomes_embq {
    type: number
    sql: ${TABLE}."id_anomes_embq" ;;
  }

  dimension: id_cdncm {
    type: number
    sql: ${TABLE}."id_cdncm" ;;
  }

  dimension: id_incoterm {
    type: number
    sql: ${TABLE}."id_incoterm" ;;
  }

  dimension: id_nat_inf {
    type: number
    sql: ${TABLE}."id_nat_inf" ;;
  }

  dimension: id_pais_destino {
    type: number
    sql: ${TABLE}."id_pais_destino" ;;
  }

  dimension: id_sit_desp {
    type: number
    sql: ${TABLE}."id_sit_desp" ;;
  }

  dimension: id_unid_comerc {
    type: number
    sql: ${TABLE}."id_unid_comerc" ;;
  }

  dimension: id_unid_desembaraco {
    type: number
    sql: ${TABLE}."id_unid_desembaraco" ;;
  }

  dimension: id_unid_embq {
    type: number
    sql: ${TABLE}."id_unid_embq" ;;
  }

  dimension: id_unid_estat {
    type: number
    sql: ${TABLE}."id_unid_estat" ;;
  }

  dimension: num_item {
    type: number
    sql: ${TABLE}."num_item" ;;
  }

  dimension: num_ord {
    type: number
    sql: ${TABLE}."num_ord" ;;
  }

  dimension: num_ord_cmpl {
    type: number
    sql: ${TABLE}."num_ord_cmpl" ;;
  }

  dimension: num_subitem {
    type: number
    sql: ${TABLE}."num_subitem" ;;
  }

  dimension: qtd_comerc {
    type: number
    sql: ${TABLE}."qtd_comerc" ;;
  }

  dimension: qtd_estat {
    type: number
    sql: ${TABLE}."qtd_estat" ;;
  }

  dimension: val_fob_us {
    type: number
    sql: ${TABLE}."val_fob_us" ;;
  }

  dimension: val_peso_liq {
    type: number
    sql: ${TABLE}."val_peso_liq" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
