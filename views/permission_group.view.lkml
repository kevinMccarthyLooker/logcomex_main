view: permission_group {
  sql_table_name: public.permission_group ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: group_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."group_id" ;;
  }

  dimension: permission_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."permission_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, permission.id, permission.name, group.id, group.name]
  }
}
