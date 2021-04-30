connection: "db"

include: "/views/chile/db_chile.view.lkml"

include: "/views/chile/db_chile_exp.view.lkml"

explore: db_chile {}

explore: db_chile_exp {}
