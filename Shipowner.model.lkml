connection: "logbot"

include: "/**/logbot/shipowner.view.lkml"
include: "/**/logbot/shipowner_processing_queue.view.lkml"

explore: shipowner {
  label: "Armadores logbot"
}

explore: shipowner_processing_queue {
  label: "Fila de processamento Armadores"
}
