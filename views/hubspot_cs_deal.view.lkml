view: hubspot_cs_deal {
  sql_table_name: public.hubspot_cs_deal ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension_group: churn_signal_dates {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."churn_signal_dates" ;;
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

  dimension: customer_api_relations_id {
    type: number
    sql: ${TABLE}."customer_api_relations_id" ;;
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

  dimension: divergence_of_data {
    type: string
    sql: ${TABLE}."divergence_of_data" ;;
  }

  dimension: duration_of_implementation {
    type: number
    sql: ${TABLE}."duration_of_implementation" ;;
  }

  dimension: expansion {
    type: yesno
    sql: ${TABLE}."expansion" ;;
  }

  dimension: first_days_access {
    type: yesno
    sql: ${TABLE}."first_days_access" ;;
  }

  dimension_group: follow_up_07 {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."follow_up_07" ;;
  }

  dimension_group: follow_up_14 {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."follow_up_14" ;;
  }

  dimension_group: follow_up_21 {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."follow_up_21" ;;
  }

  dimension_group: follow_up_30 {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."follow_up_30" ;;
  }

  dimension_group: follow_up_45 {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."follow_up_45" ;;
  }

  dimension_group: follow_up_60 {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."follow_up_60" ;;
  }

  dimension: hubspot_customer_id {
    type: number
    sql: ${TABLE}."hubspot_customer_id" ;;
  }

  dimension: hubspot_deal_id {
    type: number
    sql: ${TABLE}."hubspot_deal_id" ;;
  }

  dimension: implementer {
    type: string
    sql: ${TABLE}."implementer" ;;
  }

  dimension: markdowns {
    type: number
    sql: ${TABLE}."markdowns" ;;
  }

  dimension_group: payment {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."payment_date" ;;
  }

  dimension: pipeline {
    type: string
    sql: ${TABLE}."pipeline" ;;
  }

  dimension: customer_classification {
    type: string
    sql: ${TABLE}."customer_classification" ;;
  }

  dimension: question_company_challenges {
    type: string
    sql: ${TABLE}."question_company_challenges" ;;
  }

  dimension: question_objectives_of_the_hiring {
    type: string
    sql: ${TABLE}."question_objectives_of_the_hiring" ;;
  }

  dimension: released_without_payment {
    type: yesno
    sql: ${TABLE}."released_without_payment" ;;
  }

  dimension: signaled_churn {
    type: yesno
    sql: ${TABLE}."signaled_churn" ;;
  }

  dimension: squad_cs {
    type: string
    sql: ${TABLE}."squad_cs" ;;
  }

  dimension: stage {
    type: string
    sql: ${TABLE}."stage" ;;
  }

  dimension: stage_sorted {
    type: string
    sql: case
          when ${stage} = 'Novos' then '1 - Novos'
          when ${stage} = 'Treinamento' then '2 - Treinamento'
          when ${stage} = 'FUP 7' then '3 - FUP 7'
          when ${stage} = 'FUP 14' then '4 - FUP 14'
          when ${stage} = 'FUP 21' then '5 - FUP 21'
          when ${stage} = 'FUP 30' then '6 - FUP 30'
          when ${stage} = 'FUP 45' then '7 - FUP 45'
          when ${stage} = 'FUP 60' then '8 - FUP 60'
          when ${stage} = 'Churn' then '9 - Churn'
          when ${stage} = 'Concluido' then '10 - Concluido'
          else ${stage}
        end ;;
  }

  dimension_group: start_of_implementation {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."start_of_implementation" ;;
  }

  dimension: status_onboarding {
    type: string
    sql: ${TABLE}."status_onboarding" ;;
  }

  dimension_group: training_date_one {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."training_date_one" ;;
  }

  dimension_group: training_date_three {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."training_date_three" ;;
  }

  dimension_group: training_date_two {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."training_date_two" ;;
  }

  dimension: training_duration_one {
    type: string
    sql: ${TABLE}."training_duration_one" ;;
  }

  dimension: training_duration_one_minutes {
    type: number
    sql:
    case when char_length(training_duration_one) = 4 or  char_length(training_duration_one) = 5 then left(lpad(replace(training_duration_one,':',''),4,'0'),2)::int * 60 + right(lpad(replace(training_duration_one,':',''),4,'0'),2)::int
    else null
    end;;
  }

  dimension: training_duration_two {
    type: string
    sql: ${TABLE}."training_duration_two" ;;
  }

  dimension: training_duration_two_minutes {
    type: number
    sql:
    case when char_length(training_duration_two) = 4 or  char_length(training_duration_two) = 5 then left(lpad(replace(training_duration_two,':',''),4,'0'),2)::int * 60 + right(lpad(replace(training_duration_two,':',''),4,'0'),2)::int
    else null
    end;;
  }

  dimension: training_duration_three {
    type: string
    sql: ${TABLE}."training_duration_three" ;;
  }

  dimension: training_duration_three_minutes {
    type: number
    sql:
    case when char_length(training_duration_three) = 4 or  char_length(training_duration_three) = 5 then left(lpad(replace(training_duration_three,':',''),4,'0'),2)::int * 60 + right(lpad(replace(training_duration_three,':',''),4,'0'),2)::int
    else null
    end;;
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

  dimension: usability_frequency {
    type: string
    sql: ${TABLE}."usability_frequency" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }

  measure: training_one_minutes_sum {
    type: sum
    sql: ${training_duration_one_minutes};;
  }

  measure: training_two_minutes_sum {
    type: sum
    sql: ${training_duration_two_minutes};;
  }

  measure: training_three_minutes_sum {
    type: sum
    sql: ${training_duration_three_minutes};;
  }
}
