connection: "db"

include: "/views/usa/views/exp_usa.view.lkml"
include: "/views/usa/views/exp_usa_dis.view.lkml"

explore: exp_usa {}

explore: exp_usa_dis {}
