connection: "aereo"

include: "/derivated_views/pct_match_search.view.lkml"
include: "/derivated_views/pct_sem_adicao.view.lkml"
include: "/derivated_views/pct_di_pu.view.lkml"
include: "/derivated_views/pct_siscori.view.lkml"

explore: pct_match_search {

}

explore: pct_sem_adicao {

}

explore: pct_di_pu {
  join: pct_match_search {
    relationship: one_to_one
    sql_on:  ${pct_match_search.anomes} = ${pct_di_pu.ano_mes} ;;
  }
}

explore: pct_siscori {
  join: pct_di_pu {
    relationship: one_to_one
    sql_on:  ${pct_siscori.anomes} = ${pct_di_pu.ano_mes} ;;
  }
  join: pct_match_search{
    relationship: one_to_one
    sql_on:  ${pct_siscori.anomes} = ${pct_match_search.anomes} ;;
  }
  join: pct_sem_adicao{
    relationship: one_to_one
    sql_on:  ${pct_siscori.anomes} = ${pct_sem_adicao.anomes} ;;
  }
}
