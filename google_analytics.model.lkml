connection: "googleanalytics"

include: "/**/**/events_20210518.view"

explore: events_20210518 {
  #hidden: no

  join: events_20210518__items {
    view_label: "Events 20210518: Items"
    sql: LEFT JOIN UNNEST(${events_20210518.items}) as events_20210518__items ;;
    relationship: one_to_many
  }

  join: events_20210518__event_params {
    view_label: "Events 20210518: Event Params"
    sql: LEFT JOIN UNNEST(${events_20210518.event_params}) as events_20210518__event_params ;;
    relationship: one_to_many
  }

  join: events_20210518__user_properties {
    view_label: "Events 20210518: User Properties"
    sql: LEFT JOIN UNNEST(${events_20210518.user_properties}) as events_20210518__user_properties ;;
    relationship: one_to_many
  }
}
