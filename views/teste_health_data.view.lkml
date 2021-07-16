view: teste_health_data {
  derived_table: {
    persist_for: "24 hours"
    indexes: ["data_operacao"]
    sql: select
       --CASE t.tipoconhecimento WHEN '10' THEN 'DIRETO' WHEN '11' THEN 'MASTER' WHEN '12' THEN 'HOUSE' WHEN '15' THEN 'SUB' ELSE '' END,
       t.tipoconhecimento,
       t.data_operacao,
       d.col,
       count(*) filter (where value is null) as null_count,
       count(*) filter (where value is not null) as not_null_count,
       count(*) filter (where value = '') as empty
from (
     select
      id,
      release_location,
      month_year,
      anooperacao,
      tipo_carga AS "TIPO CARGA",
      indmodalidadefrete,
      data_embarque AS "EMBARQUE",
      data_operacao,
      transit_time,
      data_saida,
      tempo_porto,
      embarque,
      tipoconhecimento,
      nmembarcacao AS "NAVIO",
      viagem AS "VIAGEM",
      nmpaisprocedencia AS "PAIS DE PROCEDÊNCIA",
      nmpaisprocedencia_code,
      trade_origem,
      trade_lane_origem,
      pais_origem AS "PAIS DE ORIGEM",
      pais_origem_code,
      cod_origin_port,
      nmportoorigem AS "PORTO ORIGEM",
      nmportoorigem_code,
      pais_embarque,
      cod_shipment_port,
      porto_embarque AS "PORTO EMBARQUE",
      cod_porto_descarga,
      porto_descarga AS "PORTO DESCARGA",
      terminal_descarga AS "TERMINAL DESCARGA",
      nmterminalportuario,
      cod_dest_port,
      nmportodestino AS "PORTO DESTINO",
      nmportodestino_code,
      consignatario_uf,
      cnpj_consignatario AS "CNPJ CONSIGNATARIO",
      cnpj_consignatario_raw_text,
      cnpj_consignatario_int,
      nmconsignatario AS "CONSIGNATARIO",
      desc_segmento,
      consignatario_final,
      consignatario_final_qtd,
      atv_principal_code,
      atv_prefix,
      atividade AS "ATIVIDADE",
      cidade AS "CIDADE",
      logradouro,
      numero,
      complemento,
      bairro,
      cep,
      email AS "EMAIL",
      telefone AS "TELEFONE",
      cdnotifypart,
      txnotifypart,
      notify_uf,
      notify_city,
      txshipper AS "NOME EXPORTADOR",
      nmempresanavegacao AS "ARMADOR",
      nmempresanavegacao_code,
      cdempnavegdesconmaster,
      nmempnavegdesconmaster AS "AGENTE DE CARGA" ,
      nmempnavegdesconmaster_code,
      nvocc,
      nmagtnavegmaster AS "AGENTE INTERNACIONAL",
      pagamento AS "PAGAMENTO",
      oprecolhimentofrete AS "RECOLHIMENTO FRETE",
      carga_perigosa,
      tipo_fcl AS "TIPO FCL",
      itemcarga_cdncms AS "HS CODE",
      mercadoria AS "MERCADORIA",
      teus AS "TEUS",
      detalhes,
      c20 AS "C20",
      c40 AS "C40",
      quantidade_veiculos,
      qtde_fcl AS "QTDE FCL",
      usoparcial,
      teus_parcial,
      c20_parcial,
      c40_parcial,
      feus_parcial,
      fcl_parcial,
      volumes AS "VOLUMES",
      peso_bruto AS "PESO BRUTO",
      numero_ce,
      numero_bl,
      numero_container,
      nmmoedafrete AS "NOME MOEDA FRETE",
      armazem_destino,
      transportador_nome,
      tipo_dta,
      valor_dolar,
      valor_reais,
      recinto_aduaneiro_destino
FROM bi_imports_mvw
WHERE data_operacao >= DATE(current_date - interval '90 days')
) as t
  cross join jsonb_each_text(to_jsonb(t)) as d(col, value)
group by d.col,t.data_operacao,t.tipoconhecimento
 ;;
    #sql_trigger_value: SELECT FLOOR(EXTRACT(epoch from NOW())/(168*60*60)) ;;
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
      sql: ${TABLE}."data_operacao" ;;
      label: "Data"
    }

    set: detail {
      fields: [col, null_count, not_null_count, empty]
    }
  }
