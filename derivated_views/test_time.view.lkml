view: test_time {

  derived_table: {
    sql: select ((SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_aerial_id = 6729 AND follow_up.tracking_aerial_status_id = 1 limit 1)::timestamp - (SELECT follow_up.date_time FROM follow_up WHERE follow_up.tracking_aerial_id = 6729 AND follow_up.tracking_aerial_status_id = 0 limit 1)::timestamp) as tempo ;;
  }

  dimension_group: tempo {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      year
    ]
    sql: ${TABLE}.tempo ;;
  }

  }
