view: teste_health_data_exp {
  derived_table: {
    persist_for: "24 hours"
    indexes: ["data_embarque"]
    sql: select
      t.tipoconhecimento,
      t.data_embarque,
      d.col,
       count(*) filter (where value is null) as null_count,
       count(*) filter (where value is not null) as not_null_count,
       count(*) filter (where value = '') as empty
from (
      select
      id  ,
      ano_mes ,
      tipo_carga AS "TIPO CARGA" ,
      data_embarque AS "dtoperacao",
      embarque  ,
      embarque_id AS "EMBARQUE",
      navio AS "NAVIO",
      viagem AS "VIAGEM" ,
      pais_de_procedencia ,
      porto_origem_id ,
      cod_porto_origem  ,
      porto_origem AS "PORTO ORIGEM" ,
      cod_porto_embarque  ,
      porto_embarque AS "PORTO EMBARQUE" ,
      terminal_embarque_id  ,
      terminal_embarque AS "TERMINAL EMBARQUE",
      porto_descarga_id ,
      cod_porto_descarga  ,
      porto_descarga  AS "PORTO DESCARGA",
      porto_destino_id  ,
      cod_porto_destino ,
      porto_destino AS "PORTO DESTINO",
      pais_de_destino_id  ,
      pais_de_destino AS "PAIS DE DESTINO",
      trade_lane  ,
      cnpj_exportador AS "CNPJ EXPORTADOR",
      nome_exportador AS "EXPORTADOR" ,
      embarcador_comp_cnpj AS "CNPJ EMBARCADOR COMP" ,
      embarcador_comp_nome AS "NOME EMBARCADOR COMP" ,
      atv_prefix  ,
      atividade AS "ATIVIDADE",
      cod_atividade ,
      desc_segmento ,
      logradouro  ,
      numero  ,
      complemento ,
      bairro  ,
      cep ,
      cidade AS "CIDADE" ,
      uf AS "UF ORIGEM" ,
      email AS "EMAIL",
      telefone AS "TELEFONE" ,
      consignatario AS "CONSIGNATARIO",
      armador_id  ,
      armador AS "ARMADOR",
      moeda_frete ,
      pais_de_destino_final ,
      pagamento AS "PAGAMENTO",
      tipo_fcl AS "TIPO FCL" ,
      chk_possivel_lcl  ,
      hs_code AS "HS CODE",
      desc_hscode ,
      mercadoria  AS "MERCADORIA",
      teus  AS "TEUS",
      c20 AS "C20",
      c40 AS "C40",
      qtde_fcl  AS "QTDE FCL",
      usoparcial  ,
      teus_parcial  ,
      c20_parcial ,
      c40_parcial ,
      feus_parcial  ,
      fcl_parcial ,
      quantidade_de_veiculos  ,
      volumes AS "VOLUMES",
      peso_bruto AS "PESO BRUTO" ,
      detalhes  ,
      numero_ce ,
      numero_bl ,
      numero_do_container ,
      agente_de_carga ,
      agente_internacional  ,
      ano_operacao  ,
      tipoconhecimento  ,
      cdshipper
      FROM bi_exports_mvw
    ) as t
  cross join jsonb_each_text(to_jsonb(t)) as d(col, value)
group by d.col,t.data_embarque,t.tipoconhecimento
 ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: col {
    type: string
    sql: ${TABLE}."col" ;;
    label: "Campo"
  }

  measure: null_count {
    type: sum
    sql: ${TABLE}."null_count" ;;
    label: "Nulo"
  }

  measure: not_null_count {
    type: sum
    sql: ${TABLE}."not_null_count" ;;
    label: "Preenchido"
  }

  measure: empty {
    type: sum
    sql: ${TABLE}."empty" ;;
    label: "Vazio"
  }
  dimension: tipoconhecimento {
    type: string
    sql: ${TABLE}."tipoconhecimento" ;;
    label: "Embarque"
  }
  dimension: dtoperacao {
    type: date
    sql: ${TABLE}."data_embarque" ;;
    label: "Data"
  }

  set: detail {
    fields: [ col, null_count, not_null_count, empty,tipoconhecimento]
  }
}
