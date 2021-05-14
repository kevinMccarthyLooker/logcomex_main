view: service {
  sql_table_name: public.service ;;
#   drill_fields: [id]

  dimension: id {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension_group: created {
    hidden: yes
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

  dimension_group: deleted {
    hidden: yes
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
    sql: ${TABLE}."deleted_at" ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}."description" ;;
  }

  dimension: name {
    label: "Service Name"
    type: string
    sql: ${TABLE}."name" ;;
  }

  dimension: product {
    case: {
      when: {label: "SearchX" sql: ${name} in ('Commodities') ;;}
      when: {label: "Leads" sql: ${name} in ('Leads') ;;}
      when: {label: "Search" sql: ${name} in ('Search') ;;}
      when: {label: "Tracking" sql: ${name} in ('Tracking') ;;}
      when: {label: "Siscomex Restituição" sql: ${name} in ('Siscomex Restituição') ;;}
      when: {label: "[NOVO] Big Data Expo" sql: ${name} in ('Novo Exportação') ;;}
      when: {label: "Big Data Expo" sql: ${name} in ('Exportação') ;;}
      when: {label: "Big Data Impo Maritimo" sql: ${name} in ('Importação') ;;}
      when: {label: "Big Data Impo Aereo" sql: ${name} in ('Aereo') ;;}
      when: {label: "Comex Analytics" sql: ${name} in ('Comex Analytics') ;;}
      when: {label: "[NOVO] Big Data Impo" sql: ${name} in ('Novo Importação') ;;}
      when: {label: "Tracking V2" sql: ${name} in ('Tracking V2') ;;}
      when: {label: "Log Manager" sql: ${name} in ('Log Manager') ;;}
      when: {label: "LogComex V1" sql: ${name} in ('LogComex V1') ;;}
      when: {label: "Captação V2" sql: ${name} in ('Captação V2') ;;}
      when: {label: "Automação" sql: ${name} in ('Automação') ;;}
      else: "Outros BIs"
    }
  }

  dimension: slug {
    hidden: yes
    type: string
    sql: ${TABLE}."slug" ;;
  }

  dimension_group: updated {
    hidden: yes
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

  measure: count {
    label: "Service Count"
    type: count
    drill_fields: [id, name]
  }
}
