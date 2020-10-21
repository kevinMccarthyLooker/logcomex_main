connection: "db"

include: "/**/nps_08_2020.view.lkml"                # include all views in the views/ folder in this project
include: "*.dashboard.lookml"  # incluindos os dash do tipo lkml para serem visualizado

explore: nps_08_2020{}
