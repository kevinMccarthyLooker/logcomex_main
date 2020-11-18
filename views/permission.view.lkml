view: permission {
  sql_table_name: public.permission ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: active {
    type: yesno
    sql: ${TABLE}."active" ;;
  }

  dimension: excel_permission {
    type: yesno
    sql: case
         when ${slug} like '%-excel' or ${slug} = 'administrador' then true
         else false
         end ;;
  }

  dimension: basic_column {
    type: yesno
    sql: ${TABLE}."basic_column" ;;
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

  dimension: dependency {
    type: string
    sql: ${TABLE}."dependency" ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}."description" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."name" ;;
  }

  dimension: service_id {
    type: number
    sql: ${TABLE}."service_id" ;;
  }

  dimension: service_name {
    type: string
    sql: case
         when ${service_id} = 1 then 'Importação'
         when ${service_id} = 2  then   'Exportação'
         when ${service_id} = 3  then   'Cabotagem'
         when ${service_id} = 4  then   'LATAM Importação'
         when ${service_id} = 5  then   'Tracking'
         when ${service_id} = 6  then   'Aereo'
         when ${service_id} = 7  then   'LATAM Exportação'
         when ${service_id} = 8  then   'Leads'
         when ${service_id} = 9  then   'Captação'
         when ${service_id} = 11 then 'Commodities'
         when ${service_id} = 12 then 'Argentina Importação'
         when ${service_id} = 13 then 'Argentina Exportação'
         when ${service_id} = 14 then 'Paraguai Importacão'
         when ${service_id} = 15 then 'Paraguai Exportação'
         when ${service_id} = 16 then 'Uruguai Importação'
         when ${service_id} = 17 then 'Uruguai Exportação'
         when ${service_id} = 18 then 'EUA Importação'
         when ${service_id} = 19 then 'Search'
         when ${service_id} = 20 then 'Siscomex Restituição'
         when ${service_id} = 21 then 'Novo Exportação'
         when ${service_id} is null then 'Admin'
         else 'Erro'
         end  ;;
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
    drill_fields: [id, name, permission_group.count]
  }
}
