view: count_by_year_demo {
  derived_table: {
    sql: SELECT
        EXTRACT(YEAR FROM customer."created_at" )::integer AS "customer.created_year",
        COUNT(*) AS "customer.count"
      FROM public.customer  AS customer

      WHERE (customer."fake_customer")=false
      GROUP BY 1
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: customer_created_year {
    type: number
    sql: ${TABLE}."customer.created_year" ;;
  }

  dimension: customer_count {
    type: number
    sql: ${TABLE}."customer.count" ;;
  }

  measure: total_customer_count {
    type: sum
    sql: ${customer_count} ;;
  }

  set: detail {
    fields: [customer_created_year, customer_count]
  }
}
