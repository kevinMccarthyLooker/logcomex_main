view: due_teste {
  derived_table: {
    sql: SELECT * FROM DUE.due_silver
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: due_number {
    type: string
    sql: ${TABLE}.due_number ;;
  }

  dimension: digit {
    type: string
    sql: ${TABLE}.digit ;;
  }

  dimension: ruc_number {
    type: string
    sql: ${TABLE}.ruc_number ;;
  }

  dimension: due_situation {
    type: string
    sql: ${TABLE}.due_situation ;;
  }

  dimension: id0 {
    type: number
    sql: ${TABLE}.id0 ;;
  }

  dimension: identification {
    type: string
    sql: ${TABLE}.identification ;;
  }

  dimension: tare {
    type: string
    sql: ${TABLE}.tare ;;
  }

  dimension: seal {
    type: string
    sql: ${TABLE}.seal ;;
  }

  dimension: pu_due_id {
    type: number
    sql: ${TABLE}.pu_due_id ;;
  }

  dimension: id1 {
    type: number
    sql: ${TABLE}.id1 ;;
  }

  dimension: dat {
    type: string
    sql: ${TABLE}.dat ;;
  }

  dimension: via_internacional_transportation {
    type: string
    sql: ${TABLE}.via_internacional_transportation ;;
  }

  dimension: internacional_bill_of_landing {
    type: string
    sql: ${TABLE}.internacional_bill_of_landing ;;
  }

  dimension: pu_due_id0 {
    type: number
    sql: ${TABLE}.pu_due_id0 ;;
  }

  dimension: id2 {
    type: number
    sql: ${TABLE}.id2 ;;
  }

  dimension_group: event_datetime {
    type: time
    sql: ${TABLE}.event_datetime ;;
  }

  dimension: event {
    type: string
    sql: ${TABLE}.event ;;
  }

  dimension: responsible {
    type: string
    sql: ${TABLE}.responsible ;;
  }

  dimension: pu_due_id1 {
    type: number
    sql: ${TABLE}.pu_due_id1 ;;
  }

  set: detail {
    fields: [
      id,
      due_number,
      digit,
      ruc_number,
      due_situation,
      id0,
      identification,
      tare,
      seal,
      pu_due_id,
      id1,
      dat,
      via_internacional_transportation,
      internacional_bill_of_landing,
      pu_due_id0,
      id2,
      event_datetime_time,
      event,
      responsible,
      pu_due_id1
    ]
  }
}
