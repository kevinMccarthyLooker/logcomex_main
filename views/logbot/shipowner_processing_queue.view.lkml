view: shipowner_processing_queue {
  sql_table_name: public.shipowner_processing_queue ;;
  drill_fields: [id]

  dimension: id {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: shipowner_id {
    type: number
    sql: ${TABLE}."shipowner_id";;
  }

  dimension: shipowner_name {
    type: string
    sql:
    case
    when ${shipowner_id} = 1  then 'HamburgSud'
    when ${shipowner_id} = 2  then 'MSC'
    when ${shipowner_id} = 3  then 'HapagLloyd'
    when ${shipowner_id} = 4  then 'CMA-CGM'
    when ${shipowner_id} = 5  then 'Cosco'
    when ${shipowner_id} = 6  then 'One'
    when ${shipowner_id} = 7  then 'Evergreen'
    when ${shipowner_id} = 8  then 'Maersk'
    when ${shipowner_id} = 9  then 'Yang Ming'
    when ${shipowner_id} = 10 then 'PIL'
    else ${shipowner_id}
    end ;;
  }

  dimension: bl {
    type: string
    sql: ${TABLE}."bl" ;;
  }

  dimension: tracking_bl_order_id {
    type: number
    sql: ${TABLE}."tracking_bl_order_id";;
  }

  dimension: status {
    type: string
    sql: ${TABLE}."status" ;;
  }

  dimension: last_pid {
    type: number
    sql: ${TABLE}."last_pid";;
  }

  dimension: tries {
    type: number
    sql: ${TABLE}."tries";;
  }

  dimension_group: shipowner_processing_queue {
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
    sql: ${TABLE}."shipowner_processing_queue" ;;
  }

  dimension_group: processed {
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
    sql: ${TABLE}."processed_at" ;;
  }


  dimension: failed_description {
    type: string
    sql: ${TABLE}."failed_description" ;;
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

  dimension_group: updated_at {
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
    drill_fields: [id]
  }
}
