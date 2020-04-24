
view: antaq_atracacao {
  sql_table_name: public.antaq_atracacao ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: ano {
    type: number
    sql: ${TABLE}."ano";;
    label: "Ano"
  }

  dimension: idatracacao {
    type: number
    sql: ${TABLE}."idatracacao" ;;
  }

  dimension: mes {
    type: string
    sql: ${TABLE}."mes" ;;
    label: "Mes num"
  }

  dimension: portatraca {
    type: string
    sql: ${TABLE}."portatraca" ;;
    label: "Porto Atracação"
  }


  dimension: uf {
    type: string
    sql: ${TABLE}."uf" ;;
  }
  dimension: mes_nome {
    type:  string
    sql:  ${TABLE}."mes_nome" ;;
    label: "Mes"
  }

}
