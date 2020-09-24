view: crescimento_consignatario {

  derived_table: {
    sql:
select
cdconsignatario,
qtde_ultimos_30_dias,
qtde_365_dias,
case
when (case when qtde_365_dias = 0 then 0 else round((qtde_ultimos_30_dias::numeric / (qtde_365_dias::numeric / 12))::numeric,2) end) > 1 then 20
when (case when qtde_365_dias = 0 then 0 else round((qtde_ultimos_30_dias::numeric / (qtde_365_dias::numeric / 12))::numeric,2) end) between 0.9 and 1 then 10
when (case when qtde_365_dias = 0 then 0 else round((qtde_ultimos_30_dias::numeric / (qtde_365_dias::numeric / 12))::numeric,2) end) < 0.9 then 0
else 999 end
as pontos_crescimento
from(
select
cdconsignatario,
count(*),
count(case when (dtemissao >= current_date - interval '30 days') then 1 end) as qtde_ultimos_30_dias,
count(case when (dtemissao < current_date - interval '30 days') then 1 end) as qtde_365_dias
from
(select id,
cdconsignatario,
dtemissao
from db_maritimo dm
where dm.tipoconhecimento in ('10','12','15') -- direto, house, sub
and dm.cdconsignatario is not null -- retirando consignatarios nulos
and dtemissao >= current_date - interval '395' day -- ultimo mes e 365 dias antes
) as q1
group by cdconsignatario
) as q2;;
  }

  dimension: cnpj {
    type: string
    sql: ${TABLE}.cdconsignatario ;;

  }
  dimension: qtde_ultimos_30_dias {
    type: number
    sql: ${TABLE}.qtde_ultimos_30_dias ;;

  }
  dimension: qtde_365_dias {
    type: number
    sql: ${TABLE}.qtde_365_dias ;;

  }
  dimension: pontos_crescimento {
    type: number
    sql: ${TABLE}.pontos_crescimento ;;

  }

  measure: count  {
    type: count
  }


}
