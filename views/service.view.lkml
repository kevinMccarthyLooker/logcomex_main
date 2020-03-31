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
      when: {label: "SearchX" sql: ${name} in ('Commodities','Leads') ;;}
      when: {label: "Search" sql: ${name} in ('Search') ;;}
      when: {label: "Tracking" sql: ${name} in ('Tracking') ;;}
      else: "BI"
    }
  }

  dimension: slug {
    type: string
    sql: ${TABLE}."slug" ;;
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

  measure: count {
    type: count
    drill_fields: [id, name, plan_complete.count]
  }
}
