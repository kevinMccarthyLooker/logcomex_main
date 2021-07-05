connection: "logbot"

include: "/**/logbot/di_siscomex_tax_item.view.lkml"               # include all views in the views/ folder in this project
include: "/**/logbot/di_captation_ctrl.view.lkml"
include: "/**/logbot/di_captation_list_ctrl.view.lkml"
include: "/**/logbot/di_captation_item_ctrl.view.lkml"
include: "/**/logbot/di_xml_usage_control.view.lkml"

explore: di_siscomex_tax_item {
  label: "Di Siscomex Logbot"
}

explore: di_xml_usage_control {}

explore: di_captation_list_ctrl {
  join: di_captation_ctrl {
    sql_on:  ${di_captation_list_ctrl.di_captation_ctrl_id}=${di_captation_ctrl.id} ;;
    relationship: many_to_one
    type: inner
  }

  join: di_captation_item_ctrl {
    sql_on:  ${di_captation_list_ctrl.id}=${di_captation_item_ctrl.di_captation_list_ctrl_id} ;;
    relationship: one_to_many
    type: inner
  }
}
