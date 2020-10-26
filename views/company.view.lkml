view: company {
  sql_table_name: public.company ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: cabotage {
    type: yesno
    sql: ${TABLE}."cabotage" ;;
  }

  dimension: code {
    type: string
    sql: ${TABLE}."code" ;;
  }

  dimension: country_id {
    type: number
    sql: ${TABLE}."country_id" ;;
  }

  dimension_group: created {
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
    sql: ${TABLE}."created_at" ;;
  }

  dimension: exporter {
    type: yesno
    sql: ${TABLE}."exporter" ;;
  }

  dimension: fly_importer {
    type: yesno
    sql: ${TABLE}."fly_importer" ;;
  }

  dimension: forwarding_agent {
    type: yesno
    sql: ${TABLE}."forwarding_agent" ;;
  }

  dimension: importer {
    type: yesno
    sql: ${TABLE}."importer" ;;
  }

  dimension: international_agent {
    type: yesno
    sql: ${TABLE}."international_agent" ;;
  }

  dimension: loading_agent {
    type: yesno
    sql: ${TABLE}."loading_agent" ;;
  }

  dimension: marine_agency {
    type: yesno
    sql: ${TABLE}."marine_agency" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."name" ;;
  }

  dimension: name_compl {
    type: string
    sql: ${TABLE}."name_compl" ;;
  }

  dimension: name_key {
    type: string
    sql: ${TABLE}."name_key" ;;
  }

  dimension: name_phonet1 {
    type: string
    sql: ${TABLE}."name_phonet1" ;;
  }

  dimension: name_phonet2 {
    type: string
    sql: ${TABLE}."name_phonet2" ;;
  }

  dimension: port_terminal {
    type: yesno
    sql: ${TABLE}."port_terminal" ;;
  }

  dimension: shipowner {
    type: yesno
    sql: ${TABLE}."shipowner" ;;
  }

  dimension: shipper {
    type: yesno
    sql: ${TABLE}."shipper" ;;
  }

  dimension: slug {
    type: string
    sql: ${TABLE}."slug" ;;
  }

  dimension: tk_atrib {
    type: string
    sql: ${TABLE}."tk_atrib" ;;
  }

  dimension: tk_name {
    type: string
    sql: ${TABLE}."tk_name" ;;
  }

  dimension_group: updated {
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
    sql: ${TABLE}."updated_at" ;;
  }

  dimension: warehouse {
    type: yesno
    sql: ${TABLE}."warehouse" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, tk_name]
  }
}
