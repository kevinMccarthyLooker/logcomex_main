view: searchx_importadores_agrupado {

  derived_table: {
    sql:select
        concat(importador_nome,cod_cnae_import,cod_cnae_import,cdncm_compl,nome_ncm_pt,desc_cnae_import) as id,
        importador_nome,
        cod_cnae_import,
        cdncm_compl,
        nome_ncm_pt,
        desc_cnae_import,
        sum(cast(val_vmle_us_subitem as float)) as valor
        from searchx.searchx_gold_v2
        GROUP BY 1,2,3,4,5,6 ;;
  }

  dimension: id {
    type: string
    primary_key: yes
    sql: ${TABLE}.id ;;
  }

  dimension: importador_nome {
    type: string
    sql: ${TABLE}.importador_nome ;;
  }

  dimension: cod_cnae_import {
    type: string
    sql: ${TABLE}.cod_cnae_import ;;
  }

  dimension: cdncm_compl {
    type: string
    sql: ${TABLE}.cdncm_compl ;;
  }

  dimension: nome_ncm_pt {
    type: string
    sql: ${TABLE}.nome_ncm_pt ;;
  }

  dimension: desc_cnae_import {
    type: string
    sql: ${TABLE}.desc_cnae_import ;;
  }

  dimension: valor {
    type: number
    sql: ${TABLE}.valor ;;
  }


}
