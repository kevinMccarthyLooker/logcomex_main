
include: "/**/excel_controller.view.lkml"

view: consumo_plano_clientes {
  # Or, you could make this view a derived table, like this:
  derived_table: {
    sql: select concat(qq1.year,qq1.month,qq1.customer_id) as id, qq1.year as ano, qq1.month as mes, qq1.customer_id as customer_id, qq1.name as nome, qq1.qtd_pesquisas as qtd_pesquisas,
qq2.quantity_possible_importer as qtd_importer, qq2.quantity_possible_exporter as qtd_export
from(
select fh."year", fh."month" , fh.customer_id, c2."name" , count(*) as qtd_pesquisas
from filter_history fh
inner join customer c2 on c2.id = fh.customer_id
inner join customer_plan cp on cp.customer_id = c2.id
where fh.debited = true -- flag que contabiliza
and fh.service_id = 19 -- produto search
and c2.deleted_at is null -- verifica se foi deletado
and c2.fake_customer is false -- verifica se é cliente teste
and cp.deleted_at is null -- verifica se o plano foi deletado
and current_date between (cp."start") and (cp."expiration") -- empresas com planos ativos
group by fh."year", fh."month" ,fh.customer_id, c2."name"
order by fh."year", fh."month" desc) as qq1
left join (
select "year", "month" , "customer_id", sum(case when filters @> '[{"name": "possibleImporter"}]' then 1 else 0 end) as quantity_possible_importer,
sum(case when filters @> '[{"name": "possibleExporter"}]' then 1 else 0 end) as quantity_possible_exporter
from "filter_history"
where "debited" = True and "service_id" = 19
and "filters" is not null
and (filters @> '[{"name": "possibleImporter"}]' or filters @> '[{"name": "possibleExporter"}]')
group by "year" ,"month" ,"customer_id") qq2 on qq1.year = qq2.year and qq1.month = qq2.month and qq1.customer_id = qq2.customer_id
;;
  }

  dimension: id {
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: customer_id {
    type: number
    sql: ${TABLE}.customer_id ;;
  }

  dimension: ano {
    type: string
    sql: ${TABLE}.ano ;;
  }

  dimension: mes {
    type: string
    sql: ${TABLE}.mes ;;

  }

  dimension: nome {
    type: string
    sql: ${TABLE}.nome ;;

  }


  dimension: qtd_pesquisas {
    type: number
    sql: ${TABLE}.qtd_pesquisas ;;

  }

  dimension: qtd_importer {
    type: number
    sql: ${TABLE}.qtd_importer ;;

  }

  dimension: qtd_export {
    type: number
    sql: ${TABLE}.qtd_export ;;

  }



}
