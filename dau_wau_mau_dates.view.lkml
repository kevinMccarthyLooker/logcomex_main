view: dau_wau_mau_dates {
  derived_table: {
    sql:
select 0 as days_to_add,true as daily,true as weekly union all
select 1 as days_to_add,false as daily,true as weekly union all
select 2 as days_to_add,false as daily,true as weekly union all
select 3 as days_to_add,false as daily,true as weekly union all
select 4 as days_to_add,false as daily,true as weekly union all
select 5 as days_to_add,false as daily,true as weekly union all
select 6 as days_to_add,false as daily,true as weekly union all
select 7 as days_to_add,false as daily,true as weekly union all
select 8 as days_to_add,false as daily,false as weekly union all
select 9 as days_to_add,false as daily,false as weekly union all

select 10 as days_to_add,false as daily,false as weekly union all
select 11 as days_to_add,false as daily,false as weekly union all
select 12 as days_to_add,false as daily,false as weekly union all
select 13 as days_to_add,false as daily,false as weekly union all
select 14 as days_to_add,false as daily,false as weekly union all
select 15 as days_to_add,false as daily,false as weekly union all
select 16 as days_to_add,false as daily,false as weekly union all
select 17 as days_to_add,false as daily,false as weekly union all
select 18 as days_to_add,false as daily,false as weekly union all
select 19 as days_to_add,false as daily,false as weekly union all

select 20 as days_to_add,false as daily,false as weekly union all
select 21 as days_to_add,false as daily,false as weekly union all
select 22 as days_to_add,false as daily,false as weekly union all
select 23 as days_to_add,false as daily,false as weekly union all
select 24 as days_to_add,false as daily,false as weekly union all
select 25 as days_to_add,false as daily,false as weekly union all
select 26 as days_to_add,false as daily,false as weekly union all
select 27 as days_to_add,false as daily,false as weekly union all
select 28 as days_to_add,false as daily,false as weekly union all
select 29 as days_to_add,false as daily,false as weekly union all
select 30 as days_to_add,false as daily,false as weekly
;;
  }
#   case when weekly then user_id else null end as user_id_weekly,
#         case when daily then user_id else null end as user_id_daily
  dimension: days_to_add {hidden:yes}#for distinctness in period logic
  dimension: daily {
    label:"Filter Yes to Include only DAU data"
    type:yesno
  }#whether this fanned out record should count for daily

  dimension: weekly {
    label:"Within Week Leading Up to Period End?"
    type:yesno
  }
  #monthly inferred, because we put 1 month's worth of days in (30 days)
  dimension: period_end_date {#the updated date after fanning out the data to plant activity records
    type: date
    sql: ${report_log.created_date} + ${days_to_add} ;;
  }
  measure: monthly_active_users {
    type: count_distinct
    sql: ${report_log.user_id} ;;
    drill_fields: [reports_by_hour*]
  }

  measure: weekly_active_users {
    type: count_distinct
    #sql: case when ${TABLE}.weekly then ${report_log.user_id} else null end;;
    #use filters instead for better out of the box drilldowns
    filters: [weekly: "Yes"]
    sql: ${report_log.user_id} ;;
    drill_fields: [reports_by_hour*]
  }
  measure: daily_active_users {
    type: count_distinct
    filters: [daily: "Yes"]
    sql: ${report_log.user_id} ;;
    drill_fields: [drill_to_report_log_details*]
  }

  set: reports_by_hour {fields:[report_log.created_hour,report_log.count]}
  set: drill_to_report_log_details {fields:[report_log.id,report_log.created_time,report_log.report_type_id,report_log.user_id,user.name]}


##### Custom Tooltip Field Example
  measure: weekly_active_users_list {#using this to support a tooltip
    hidden: yes
    type: string
    sql: string_agg(distinct case when ${TABLE}.weekly then concat('(',${report_log.user_id}::varchar,')',${users.name}) else null end,';') ;;
  }
  measure: weekly_active_users_detail_drill {
    type: number
    sql: ${weekly_active_users} ;;
    drill_fields: [drill_to_report_log_details*]
  }
  measure: weekly_active_users_with_list_tooltip {
    type: number
    sql: ${weekly_active_users} ;;
    link: {#add one or more custom drill paths.  Here i borrowed the basic drill path that daily active users gives us
      url: "{{weekly_active_users._link}}"
      label: "Reports by Hour"
    }
    link: {#add one or more custom drill paths.  Here i borrowed the basic drill path that daily active users gives us
      url: "{{weekly_active_users_detail_drill._link}}"
      label: "Report Log Details"
    }
    #using liquid to make a nicely formatted html rendering for a table or tooltip
    html: {{weekly_active_users._linked_value}}<br>
      {{weekly_active_users_list._value | replace: ';','<br>'}} ;;
  }

  measure: daily_active_users_list {#using this to support a tooltip
    hidden: yes
    type: string
    sql: string_agg(distinct case when ${TABLE}.daily then concat('(',${report_log.user_id}::varchar,')',${users.name}) else null end,';') ;;
  }
  measure: daily_active_users_with_list_tooltip {
    type: number
    sql: ${daily_active_users} ;;
    link: {#add one or more custom drill paths.  Here i borrowed the basic drill path that daily active users gives us
      url: "{{daily_active_users._link}}"
      label: "Reports by Hour"
    }
    #using liquid to make a nicely formatted html rendering for a table or tooltip
    html: {{daily_active_users._linked_value}}<br>
      {{daily_active_users_list._value | replace: ';','<br>'}} ;;
  }
}
