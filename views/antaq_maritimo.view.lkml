view: antaq_maritimo {
  sql_table_name: public.db_maritimo ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension_group: dtoperacao {
    type: time
    timeframes: [
      date,
      month_num,
      year
    ]
    sql: ${TABLE}."dtoperacao" ;;
  }

  dimension:  cdportodescarregamento{
    type:  string
    sql: ${TABLE}."cdportodescarregamento" ;;
    label: "Cod Porto Descarregamento"
  }

  dimension:  cdportocarregamento{
    type:  string
    sql: ${TABLE}."cdportocarregamento" ;;
    label: "Cod Porto Carregamento"
  }

  dimension:  nmportodescarregamento{
    type:  string
    sql: ${TABLE}."nmportodescarregamento" ;;
    label: "Nm Porto Descarregamento"
  }

  dimension:  nmportocarregamento{
    type:  string
    sql: ${TABLE}."nmportocarregamento" ;;
    label: "Nm Porto Carregamento"
  }
  dimension:  vlpesobruto{
    type:  number
    sql: ${TABLE}."vlpesobruto" ;;
  }

  measure:  teus{
    type:  sum
    sql: ${TABLE}."teus" ;;
    label: "Teus Log"
  }
  dimension:  tipoconhecimento{
    type:  string
    sql: ${TABLE}."tipoconhecimento" ;;
  }
  dimension:  tipo_carga{
    type:  string
    sql: ${TABLE}."tipo_carga" ;;
  }
  dimension:  deleted_at{
    type:  string
    sql: ${TABLE}."deleted_at" ;;
  }
  dimension:  categoriacarga{
    type:  string
    sql: ${TABLE}."categoriacarga" ;;
  }




  # # You can specify the table name if it's different from the view name:
  # sql_table_name: my_schema_name.tester ;;
  #
  # # Define your dimensions and measures here, like this:
  # dimension: user_id {
  #   description: "Unique ID for each user that has ordered"
  #   type: number
  #   sql: ${TABLE}.user_id ;;
  # }
  #
  # dimension: lifetime_orders {
  #   description: "The total number of orders for each user"
  #   type: number
  #   sql: ${TABLE}.lifetime_orders ;;
  # }
  #
  # dimension_group: most_recent_purchase {
  #   description: "The date when each user last ordered"
  #   type: time
  #   timeframes: [date, week, month, year]
  #   sql: ${TABLE}.most_recent_purchase_at ;;
  # }
  #
  # measure: total_lifetime_orders {
  #   description: "Use this for counting lifetime orders across many users"
  #   type: sum
  #   sql: ${lifetime_orders} ;;
  # }
}

# view: antaq_maritimo {
#   # Or, you could make this view a derived table, like this:
#   derived_table: {
#     sql: SELECT
#         user_id as user_id
#         , COUNT(*) as lifetime_orders
#         , MAX(orders.created_at) as most_recent_purchase_at
#       FROM orders
#       GROUP BY user_id
#       ;;
#   }
#
#   # Define your dimensions and measures here, like this:
#   dimension: user_id {
#     description: "Unique ID for each user that has ordered"
#     type: number
#     sql: ${TABLE}.user_id ;;
#   }
#
#   dimension: lifetime_orders {
#     description: "The total number of orders for each user"
#     type: number
#     sql: ${TABLE}.lifetime_orders ;;
#   }
#
#   dimension_group: most_recent_purchase {
#     description: "The date when each user last ordered"
#     type: time
#     timeframes: [date, week, month, year]
#     sql: ${TABLE}.most_recent_purchase_at ;;
#   }
#
#   measure: total_lifetime_orders {
#     description: "Use this for counting lifetime orders across many users"
#     type: sum
#     sql: ${lifetime_orders} ;;
#   }
# }
