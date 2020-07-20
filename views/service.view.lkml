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
      else: "BI"
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
