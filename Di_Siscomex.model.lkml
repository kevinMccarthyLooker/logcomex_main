connection: "logbot"

include: "/**/logbot/di_siscomex_tax_item.view.lkml"               # include all views in the views/ folder in this project

explore: di_siscomex_tax_item {
  label: "Di Siscomex Logbot"
}
