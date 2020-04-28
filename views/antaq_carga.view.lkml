view: antaq_carga {
  sql_table_name: public.antaq_carga ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }


  dimension: conteineest {
    type: string
    sql: ${TABLE}."conteineest" ;;
  }

  dimension: destino {
    type: string
    sql: ${TABLE}."destino" ;;
    group_label: "Destino"
  }

  dimension: idatracacao {
    type: number
    sql: ${TABLE}."idatracacao" ;;
  }

  dimension: idcarga {
    type: number
    sql: ${TABLE}."idcarga" ;;
  }

  dimension: natucarga {
    type: string
    sql: ${TABLE}."natucarga" ;;
  }

  dimension: origem {
    type: string
    sql: ${TABLE}."origem" ;;
  }


  dimension: sentido {
    type: string
    sql: ${TABLE}."sentido" ;;
  }

  measure: teu {
    type: sum
    sql: ${TABLE}."teu" ;;
    label: "Teus Antaq"
  }

  dimension: tponave {
    type: string
    sql: ${TABLE}."tponave" ;;
  }


  measure: count {
    type: count
    drill_fields: [id]
  }
}
