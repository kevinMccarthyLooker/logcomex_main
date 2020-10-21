connection: "db"

include: "/**/customer.view.lkml"
include: "/**/nps_08_2020.view.lkml"
include: "/**/user_profile_customer.view.lkml"
include: "/**/users.view.lkml"
include: "/**/cs_novo_health_score.view.lkml"
include: "*.dashboard.lookml"  # incluindos os dash do tipo lkml para serem visualizado

datagroup: my_datagroup {
  sql_trigger: select count(*) from public.customer ;;
}

explore: customer{

  sql_always_where: ${customer.fake_customer}=false and ${customer.deleted_raw} is null;;

  join: cs_novo_health_score {
    sql_on: ${customer.id} = ${cs_novo_health_score.customer_id} ;;
    relationship: one_to_one
    type: inner
  }

  join: user_profile_customer {
    sql_on: ${user_profile_customer.customer_id}=${customer.id} ;;
    relationship: many_to_one
    type: left_outer
  }

  join: users {
    sql_on: ${user_profile_customer.user_id}=${users.id} ;;
    relationship: many_to_one
    type: left_outer
  }

  join: nps_08_2020 {
    sql_on: ${users.email}=${nps_08_2020.email} ;;
    relationship: one_to_many
    type: left_outer
  }


}
