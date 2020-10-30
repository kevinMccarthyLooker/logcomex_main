- dashboard: external_health_score
  title: Health Score 2 - Em Construcao
  layout: newspaper
  preferred_viewer: dashboards
  elements:
  - title: Health Score
    name: Health Score
    model: external_health_score
    explore: customer
    type: looker_grid
    fields: [customer.id, customer.name, customer.executive_name, cs_novo_health_score.pontuacao_usab_big_data,
      cs_novo_health_score.pontuacao_usab_search, cs_novo_health_score.pontuacao_usab_tracking,
      cs_novo_health_score.pontuacao_acessos_usuarios, cs_novo_health_score.pontuacao_tickets,
      cs_novo_health_score.pontuacao_survey, cs_novo_health_score.pontos_crescimento_cliente,
      customer_info.hub_atualizado_em_date, nps_08_2020.media_nota, cs_novo_health_score.pontuacao_titulos_omie]
    sorts: [cs_novo_health_score.pontuacao_titulos_omie desc]
    limit: 500
    dynamic_fields: [{table_calculation: pontuacao_nps, label: Pontuacao NPS, expression: "if(${nps_08_2020.media_nota}>8,20,\n\
          \  if(${nps_08_2020.media_nota}>6,10,\n    if(${nps_08_2020.media_nota}>-1,0,\n\
          \      if(is_null(${nps_08_2020.media_nota}),7,null))))", value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number}, {
        table_calculation: total_pontuacao, label: Total Pontuação, expression: "coalesce(${pontuacao_usab_total},0)+\n\
          coalesce(${cs_novo_health_score.pontuacao_acessos_usuarios},\n  0)+ \ncoalesce(${cs_novo_health_score.pontuacao_tickets},0)+\n\
          coalesce(${cs_novo_health_score.pontuacao_survey},0)+\ncoalesce(${pontuacao_nps},0)+\n\
          coalesce(${cs_novo_health_score.pontuacao_titulos_omie},0)+\ncoalesce(${cs_novo_health_score.pontos_crescimento_cliente},0)",
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}, {table_calculation: pontuacao_usab_total, label: pontuacao_usab_total,
        expression: "(coalesce(${cs_novo_health_score.pontuacao_usab_big_data},${cs_novo_health_score.pontuacao_usab_tracking},${cs_novo_health_score.pontuacao_usab_search})\
          \ + coalesce(${cs_novo_health_score.pontuacao_usab_big_data},${cs_novo_health_score.pontuacao_usab_search},${cs_novo_health_score.pontuacao_usab_tracking})+\
          \ coalesce(${cs_novo_health_score.pontuacao_usab_tracking},${cs_novo_health_score.pontuacao_usab_big_data},${cs_novo_health_score.pontuacao_usab_search})+\
          \ coalesce(${cs_novo_health_score.pontuacao_usab_tracking},${cs_novo_health_score.pontuacao_usab_search},${cs_novo_health_score.pontuacao_usab_big_data})+\
          \ coalesce(${cs_novo_health_score.pontuacao_usab_search},${cs_novo_health_score.pontuacao_usab_big_data},${cs_novo_health_score.pontuacao_usab_tracking})+\
          \ coalesce(${cs_novo_health_score.pontuacao_usab_search},${cs_novo_health_score.pontuacao_usab_tracking},${cs_novo_health_score.pontuacao_usab_big_data}))/6",
        value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        _type_hint: number}]
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", customer.id, customer.name, customer.executive_name,
      customer_info.hub_atualizado_em_date, pontuacao_usab_total, cs_novo_health_score.pontuacao_usab_big_data,
      cs_novo_health_score.pontuacao_usab_search, cs_novo_health_score.pontuacao_usab_tracking,
      cs_novo_health_score.pontuacao_acessos_usuarios, cs_novo_health_score.pontuacao_tickets,
      cs_novo_health_score.pontuacao_survey, pontuacao_nps, cs_novo_health_score.pontuacao_titulos_omie,
      cs_novo_health_score.pontos_crescimento_cliente, total_pontuacao]
    show_totals: true
    show_row_totals: true
    series_labels:
      customer.id: ID
      customer.name: Cliente
      cs_novo_health_score.pontuacao_usab_big_search: Usab Search e Big
      cs_novo_health_score.pontuacao_usab_tracking: Usab Tracking
      cs_novo_health_score.pontuacao_acessos_usuarios: Acessos
      cs_novo_health_score.pontuacao_tickets: Tickets
      cs_novo_health_score.pontuacao_survey: Pesq. Satisfação
      pontuacao_usab_total: Usabilidade (Search, Big e Tracking)
      pontuacao_nps: NPS
      total_pontuacao: Total
      customer.executive_name: Executivo(a)
      customer_info.hub_atualizado_em_date: Últ. Contato
      cs_novo_health_score.pontuacao_usab_search: Usab Search
      cs_novo_health_score.pontuacao_usab_big_data: Usab Big Data
      cs_novo_health_score.pontuacao_titulos_omie: Inadimplência
    series_column_widths:
      cs_novo_health_score.pontuacao_usab_big_search: 90
      cs_novo_health_score.pontuacao_usab_tracking: 69
      total_pontuacao: 63
      pontuacao_nps: 61
      customer.name: 161
      customer.id: 85
      customer.executive_name: 144
      pontuacao_usab_total: 255
      cs_novo_health_score.pontuacao_usab_big_data: 132
      cs_novo_health_score.pontuacao_usab_search: 121
      cs_novo_health_score.pontos_crescimento_cliente: 76
      cs_novo_health_score.pontuacao_survey: 69
      cs_novo_health_score.pontuacao_titulos_omie: 116
    conditional_formatting: [{type: equal to, value: 20, background_color: "#72D16D",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 1e4d66b9-f066-4c33-b0b7-cc10b4810688, options: {constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [cs_novo_health_score.pontuacao_usab_tracking,
          cs_novo_health_score.pontuacao_acessos_usuarios, pontuacao_usab_total, pontuacao_nps,
          cs_novo_health_score.pontuacao_usab_big_data, cs_novo_health_score.pontuacao_usab_search]},
      {type: equal to, value: 10, background_color: "#FFD95F", font_color: !!null '',
        color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7, palette_id: 1e4d66b9-f066-4c33-b0b7-cc10b4810688,
          options: {constraints: {min: {type: minimum}, mid: {type: number, value: 0},
              max: {type: maximum}}, mirror: true, reverse: false, stepped: false}},
        bold: false, italic: false, strikethrough: false, fields: [cs_novo_health_score.pontuacao_usab_tracking,
          cs_novo_health_score.pontuacao_acessos_usuarios, pontuacao_nps, cs_novo_health_score.pontuacao_usab_big_data,
          cs_novo_health_score.pontuacao_usab_search]}, {type: equal to, value: 0,
        background_color: "#B32F37", font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 1e4d66b9-f066-4c33-b0b7-cc10b4810688, options: {constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [cs_novo_health_score.pontuacao_usab_tracking,
          cs_novo_health_score.pontuacao_acessos_usuarios, cs_novo_health_score.pontuacao_tickets,
          cs_novo_health_score.pontuacao_survey, pontuacao_nps, pontuacao_usab_total,
          cs_novo_health_score.pontos_crescimento_cliente, cs_novo_health_score.pontuacao_usab_big_data,
          cs_novo_health_score.pontuacao_usab_search, cs_novo_health_score.pontuacao_titulos_omie]},
      {type: equal to, value: 10, background_color: "#72D16D", font_color: !!null '',
        color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7, palette_id: 1e4d66b9-f066-4c33-b0b7-cc10b4810688,
          options: {constraints: {min: {type: minimum}, mid: {type: number, value: 0},
              max: {type: maximum}}, mirror: true, reverse: false, stepped: false}},
        bold: false, italic: false, strikethrough: false, fields: [cs_novo_health_score.pontos_crescimento_cliente,
          cs_novo_health_score.pontuacao_titulos_omie, cs_novo_health_score.pontuacao_tickets,
          cs_novo_health_score.pontuacao_survey]}, {type: equal to, value: 5, background_color: "#FFD95F",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 1e4d66b9-f066-4c33-b0b7-cc10b4810688, options: {constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [cs_novo_health_score.pontos_crescimento_cliente,
          cs_novo_health_score.pontuacao_survey, cs_novo_health_score.pontuacao_titulos_omie,
          cs_novo_health_score.pontuacao_tickets]}, {type: greater than, value: 69.4,
        background_color: "#72D16D", font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 1e4d66b9-f066-4c33-b0b7-cc10b4810688, options: {constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [total_pontuacao]}, {type: between, value: [
          49, 69.4], background_color: "#FFD95F", font_color: !!null '', color_application: {
          collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7, palette_id: 1e4d66b9-f066-4c33-b0b7-cc10b4810688,
          options: {constraints: {min: {type: minimum}, mid: {type: number, value: 0},
              max: {type: maximum}}, mirror: true, reverse: false, stepped: false}},
        bold: false, italic: false, strikethrough: false, fields: [total_pontuacao]},
      {type: less than, value: 50, background_color: "#B32F37", font_color: !!null '',
        color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7, palette_id: 1e4d66b9-f066-4c33-b0b7-cc10b4810688,
          options: {constraints: {min: {type: minimum}, mid: {type: number, value: 0},
              max: {type: maximum}}, mirror: true, reverse: false, stepped: false}},
        bold: false, italic: false, strikethrough: false, fields: [total_pontuacao]},
      {type: equal to, value: 15, background_color: "#FFD95F", font_color: !!null '',
        color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7, palette_id: 1e4d66b9-f066-4c33-b0b7-cc10b4810688,
          options: {constraints: {min: {type: minimum}, mid: {type: number, value: 0},
              max: {type: maximum}}, mirror: true, reverse: false, stepped: false}},
        bold: false, italic: false, strikethrough: false, fields: [pontuacao_usab_total,
          cs_novo_health_score.pontuacao_acessos_usuarios]}, {type: equal to, value: 15,
        background_color: "#72D16D", font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 1e4d66b9-f066-4c33-b0b7-cc10b4810688, options: {constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: []}, {type: equal to, value: 7, background_color: "#FFD95F",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 1e4d66b9-f066-4c33-b0b7-cc10b4810688, options: {constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [cs_novo_health_score.pontuacao_survey, pontuacao_nps]},
      {type: between, value: [1, 19], background_color: "#FFD95F", font_color: !!null '',
        color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7, palette_id: 1e4d66b9-f066-4c33-b0b7-cc10b4810688,
          options: {constraints: {min: {type: minimum}, mid: {type: number, value: 0},
              max: {type: maximum}}, mirror: true, reverse: false, stepped: false}},
        bold: false, italic: false, strikethrough: false, fields: [pontuacao_usab_total]}]
    series_types: {}
    defaults_version: 1
    hidden_fields: [nps_08_2020.media_nota]
    listen:
      Cliente: customer.name
      Executivo(a): customer.executive_name
    row: 2
    col: 0
    width: 24
    height: 10
  - title: Verde >= 70
    name: Verde >= 70
    model: external_health_score
    explore: customer
    type: single_value
    fields: [customer.id, customer.name, nps_08_2020.media_nota, cs_novo_health_score.healthScore_Total]
    sorts: [nps_08_2020.media_nota desc]
    limit: 500
    dynamic_fields: [{table_calculation: pontuacao_nps, label: Pontuacao NPS, expression: "if(${nps_08_2020.media_nota}>8,20,\n\
          \  if(${nps_08_2020.media_nota}>6,10,\n    if(${nps_08_2020.media_nota}>-1,0,\n\
          \      if(is_null(${nps_08_2020.media_nota}),7,null))))", value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number}, {
        table_calculation: total_pontuacao, label: Total Pontuação, expression: "coalesce(${cs_novo_health_score.healthScore_Total},0)+\n\
          coalesce(${pontuacao_nps},0)", value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number}, {table_calculation: pontuacao_usab_total,
        label: pontuacao_usab_total, expression: "(coalesce(${cs_novo_health_score.pontuacao_usab_big_data},${cs_novo_health_score.pontuacao_usab_tracking},${cs_novo_health_score.pontuacao_usab_search})\
          \ + coalesce(${cs_novo_health_score.pontuacao_usab_big_data},${cs_novo_health_score.pontuacao_usab_search},${cs_novo_health_score.pontuacao_usab_tracking})+\
          \ coalesce(${cs_novo_health_score.pontuacao_usab_tracking},${cs_novo_health_score.pontuacao_usab_big_data},${cs_novo_health_score.pontuacao_usab_search})+\
          \ coalesce(${cs_novo_health_score.pontuacao_usab_tracking},${cs_novo_health_score.pontuacao_usab_search},${cs_novo_health_score.pontuacao_usab_big_data})+\
          \ coalesce(${cs_novo_health_score.pontuacao_usab_search},${cs_novo_health_score.pontuacao_usab_big_data},${cs_novo_health_score.pontuacao_usab_tracking})+\
          \ coalesce(${cs_novo_health_score.pontuacao_usab_search},${cs_novo_health_score.pontuacao_usab_tracking},${cs_novo_health_score.pontuacao_usab_big_data}))/6",
        value_format: !!null '', value_format_name: !!null '', is_disabled: true,
        _kind_hint: dimension, _type_hint: number}, {table_calculation: countverde,
        label: CountVerde, expression: 'count(if(${total_pontuacao}>69,1,null))',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#72D16D"
    conditional_formatting: [{type: equal to, value: 20, background_color: "#72D16D",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 1e4d66b9-f066-4c33-b0b7-cc10b4810688, options: {constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: []}, {type: equal to, value: 10, background_color: "#FFD95F",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 1e4d66b9-f066-4c33-b0b7-cc10b4810688, options: {constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: []}, {type: equal to, value: 0, background_color: "#B32F37",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 1e4d66b9-f066-4c33-b0b7-cc10b4810688, options: {constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [pontuacao_nps]}, {type: equal to, value: 10,
        background_color: "#72D16D", font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 1e4d66b9-f066-4c33-b0b7-cc10b4810688, options: {constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [pontuacao_nps]}, {type: equal to, value: 5,
        background_color: "#FFD95F", font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 1e4d66b9-f066-4c33-b0b7-cc10b4810688, options: {constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [pontuacao_nps]}, {type: greater than, value: 79,
        background_color: "#72D16D", font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 1e4d66b9-f066-4c33-b0b7-cc10b4810688, options: {constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [total_pontuacao]}, {type: greater than, value: 49,
        background_color: "#FFD95F", font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 1e4d66b9-f066-4c33-b0b7-cc10b4810688, options: {constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [total_pontuacao]}, {type: less than, value: 50,
        background_color: "#B32F37", font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 1e4d66b9-f066-4c33-b0b7-cc10b4810688, options: {constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [total_pontuacao]}, {type: equal to, value: 15,
        background_color: "#FFD95F", font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 1e4d66b9-f066-4c33-b0b7-cc10b4810688, options: {constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: []}]
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", customer.id, customer.name, cs_novo_health_score.pontuacao_usab_big_search,
      cs_novo_health_score.pontuacao_usab_tracking, cs_novo_health_score.pontuacao_acessos_usuarios,
      cs_novo_health_score.pontuacao_tickets, cs_novo_health_score.pontuacao_survey,
      pontuacao_nps, pontuacao_usab_total, total_pontuacao]
    show_totals: true
    show_row_totals: true
    series_labels:
      customer.id: ID
      customer.name: Cliente
      cs_novo_health_score.pontuacao_usab_big_search: Search
      cs_novo_health_score.pontuacao_usab_tracking: Tracking
      cs_novo_health_score.pontuacao_acessos_usuarios: Acessos
      cs_novo_health_score.pontuacao_tickets: Tickets
      cs_novo_health_score.pontuacao_survey: Pesq. Satisfação
      pontuacao_usab_total: Usabilidade (Search e Tracking)
      pontuacao_nps: NPS
      total_pontuacao: Total
    series_column_widths:
      cs_novo_health_score.pontuacao_usab_big_search: 90
      cs_novo_health_score.pontuacao_usab_tracking: 69
      total_pontuacao: 63
      pontuacao_nps: 61
      customer.name: 161
      customer.id: 85
    series_types: {}
    defaults_version: 1
    hidden_fields: [nps_08_2020.media_nota, customer.id, customer.name, cs_novo_health_score.healthScore_Total,
      pontuacao_nps, total_pontuacao]
    listen:
      Cliente: customer.name
      Executivo(a): customer.executive_name
    row: 0
    col: 3
    width: 4
    height: 2
  - title: Vermelho <  50
    name: Vermelho <  50
    model: external_health_score
    explore: customer
    type: single_value
    fields: [customer.id, customer.name, nps_08_2020.media_nota, cs_novo_health_score.healthScore_Total]
    sorts: [nps_08_2020.media_nota desc]
    limit: 500
    dynamic_fields: [{table_calculation: pontuacao_nps, label: Pontuacao NPS, expression: "if(${nps_08_2020.media_nota}>8,20,\n\
          \  if(${nps_08_2020.media_nota}>6,10,\n    if(${nps_08_2020.media_nota}>-1,0,\n\
          \      if(is_null(${nps_08_2020.media_nota}),7,null))))", value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number}, {
        table_calculation: total_pontuacao, label: Total Pontuação, expression: "coalesce(${cs_novo_health_score.healthScore_Total},0)+\n\
          coalesce(${pontuacao_nps},0)", value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number}, {table_calculation: pontuacao_usab_total,
        label: pontuacao_usab_total, expression: "(coalesce(${cs_novo_health_score.pontuacao_usab_big_search},${cs_novo_health_score.pontuacao_usab_tracking})\
          \ + coalesce(${cs_novo_health_score.pontuacao_usab_tracking},${cs_novo_health_score.pontuacao_usab_big_search}))/2",
        value_format: !!null '', value_format_name: !!null '', is_disabled: true,
        _kind_hint: dimension, _type_hint: number}, {table_calculation: countvermelho,
        label: CountVermelho, expression: 'count(if(${total_pontuacao}<50,1,null))',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#B32F37"
    conditional_formatting: [{type: equal to, value: 20, background_color: "#72D16D",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 1e4d66b9-f066-4c33-b0b7-cc10b4810688, options: {constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: []}, {type: equal to, value: 10, background_color: "#FFD95F",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 1e4d66b9-f066-4c33-b0b7-cc10b4810688, options: {constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: []}, {type: equal to, value: 0, background_color: "#B32F37",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 1e4d66b9-f066-4c33-b0b7-cc10b4810688, options: {constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [pontuacao_nps]}, {type: equal to, value: 10,
        background_color: "#72D16D", font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 1e4d66b9-f066-4c33-b0b7-cc10b4810688, options: {constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [pontuacao_nps]}, {type: equal to, value: 5,
        background_color: "#FFD95F", font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 1e4d66b9-f066-4c33-b0b7-cc10b4810688, options: {constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [pontuacao_nps]}, {type: greater than, value: 79,
        background_color: "#72D16D", font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 1e4d66b9-f066-4c33-b0b7-cc10b4810688, options: {constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [total_pontuacao]}, {type: greater than, value: 49,
        background_color: "#FFD95F", font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 1e4d66b9-f066-4c33-b0b7-cc10b4810688, options: {constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [total_pontuacao]}, {type: less than, value: 50,
        background_color: "#B32F37", font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 1e4d66b9-f066-4c33-b0b7-cc10b4810688, options: {constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [total_pontuacao]}, {type: equal to, value: 15,
        background_color: "#FFD95F", font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 1e4d66b9-f066-4c33-b0b7-cc10b4810688, options: {constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: []}]
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", customer.id, customer.name, cs_novo_health_score.pontuacao_usab_big_search,
      cs_novo_health_score.pontuacao_usab_tracking, cs_novo_health_score.pontuacao_acessos_usuarios,
      cs_novo_health_score.pontuacao_tickets, cs_novo_health_score.pontuacao_survey,
      pontuacao_nps, pontuacao_usab_total, total_pontuacao]
    show_totals: true
    show_row_totals: true
    series_labels:
      customer.id: ID
      customer.name: Cliente
      cs_novo_health_score.pontuacao_usab_big_search: Search
      cs_novo_health_score.pontuacao_usab_tracking: Tracking
      cs_novo_health_score.pontuacao_acessos_usuarios: Acessos
      cs_novo_health_score.pontuacao_tickets: Tickets
      cs_novo_health_score.pontuacao_survey: Pesq. Satisfação
      pontuacao_usab_total: Usabilidade (Search e Tracking)
      pontuacao_nps: NPS
      total_pontuacao: Total
    series_column_widths:
      cs_novo_health_score.pontuacao_usab_big_search: 90
      cs_novo_health_score.pontuacao_usab_tracking: 69
      total_pontuacao: 63
      pontuacao_nps: 61
      customer.name: 161
      customer.id: 85
    series_types: {}
    defaults_version: 1
    hidden_fields: [nps_08_2020.media_nota, customer.id, customer.name, cs_novo_health_score.healthScore_Total,
      pontuacao_nps, total_pontuacao]
    listen:
      Cliente: customer.name
      Executivo(a): customer.executive_name
    row: 0
    col: 17
    width: 4
    height: 2
  - title: Amarelo >=50 & < 70
    name: Amarelo >=50 & < 70
    model: external_health_score
    explore: customer
    type: single_value
    fields: [customer.id, customer.name, nps_08_2020.media_nota, cs_novo_health_score.healthScore_Total]
    sorts: [nps_08_2020.media_nota desc]
    limit: 500
    dynamic_fields: [{table_calculation: pontuacao_nps, label: Pontuacao NPS, expression: "if(${nps_08_2020.media_nota}>8,20,\n\
          \  if(${nps_08_2020.media_nota}>6,10,\n    if(${nps_08_2020.media_nota}>-1,0,\n\
          \      if(is_null(${nps_08_2020.media_nota}),7,null))))", value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number}, {
        table_calculation: total_pontuacao, label: Total Pontuação, expression: "coalesce(${cs_novo_health_score.healthScore_Total},0)+\n\
          coalesce(${pontuacao_nps},0)", value_format: !!null '', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number}, {table_calculation: pontuacao_usab_total,
        label: pontuacao_usab_total, expression: "(coalesce(${cs_novo_health_score.pontuacao_usab_big_search},${cs_novo_health_score.pontuacao_usab_tracking})\
          \ + coalesce(${cs_novo_health_score.pontuacao_usab_tracking},${cs_novo_health_score.pontuacao_usab_big_search}))/2",
        value_format: !!null '', value_format_name: !!null '', is_disabled: true,
        _kind_hint: dimension, _type_hint: number}, {table_calculation: countamarelo,
        label: CountAmarelo, expression: 'count(if((${total_pontuacao}>49 AND ${total_pontuacao}<70
          ),1, null))', value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#FFD95F"
    conditional_formatting: [{type: equal to, value: 20, background_color: "#72D16D",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 1e4d66b9-f066-4c33-b0b7-cc10b4810688, options: {constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: []}, {type: equal to, value: 10, background_color: "#FFD95F",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 1e4d66b9-f066-4c33-b0b7-cc10b4810688, options: {constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: []}, {type: equal to, value: 0, background_color: "#B32F37",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 1e4d66b9-f066-4c33-b0b7-cc10b4810688, options: {constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [pontuacao_nps]}, {type: equal to, value: 10,
        background_color: "#72D16D", font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 1e4d66b9-f066-4c33-b0b7-cc10b4810688, options: {constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [pontuacao_nps]}, {type: equal to, value: 5,
        background_color: "#FFD95F", font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 1e4d66b9-f066-4c33-b0b7-cc10b4810688, options: {constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [pontuacao_nps]}, {type: greater than, value: 79,
        background_color: "#72D16D", font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 1e4d66b9-f066-4c33-b0b7-cc10b4810688, options: {constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [total_pontuacao]}, {type: greater than, value: 49,
        background_color: "#FFD95F", font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 1e4d66b9-f066-4c33-b0b7-cc10b4810688, options: {constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [total_pontuacao]}, {type: less than, value: 50,
        background_color: "#B32F37", font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 1e4d66b9-f066-4c33-b0b7-cc10b4810688, options: {constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [total_pontuacao]}, {type: equal to, value: 15,
        background_color: "#FFD95F", font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 1e4d66b9-f066-4c33-b0b7-cc10b4810688, options: {constraints: {
              min: {type: minimum}, mid: {type: number, value: 0}, max: {type: maximum}},
            mirror: true, reverse: false, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: []}]
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", customer.id, customer.name, cs_novo_health_score.pontuacao_usab_big_search,
      cs_novo_health_score.pontuacao_usab_tracking, cs_novo_health_score.pontuacao_acessos_usuarios,
      cs_novo_health_score.pontuacao_tickets, cs_novo_health_score.pontuacao_survey,
      pontuacao_nps, pontuacao_usab_total, total_pontuacao]
    show_totals: true
    show_row_totals: true
    series_labels:
      customer.id: ID
      customer.name: Cliente
      cs_novo_health_score.pontuacao_usab_big_search: Search
      cs_novo_health_score.pontuacao_usab_tracking: Tracking
      cs_novo_health_score.pontuacao_acessos_usuarios: Acessos
      cs_novo_health_score.pontuacao_tickets: Tickets
      cs_novo_health_score.pontuacao_survey: Pesq. Satisfação
      pontuacao_usab_total: Usabilidade (Search e Tracking)
      pontuacao_nps: NPS
      total_pontuacao: Total
    series_column_widths:
      cs_novo_health_score.pontuacao_usab_big_search: 90
      cs_novo_health_score.pontuacao_usab_tracking: 69
      total_pontuacao: 63
      pontuacao_nps: 61
      customer.name: 161
      customer.id: 85
    series_types: {}
    defaults_version: 1
    hidden_fields: [nps_08_2020.media_nota, customer.id, customer.name, cs_novo_health_score.healthScore_Total,
      pontuacao_nps, total_pontuacao]
    listen:
      Cliente: customer.name
      Executivo(a): customer.executive_name
    row: 0
    col: 10
    width: 4
    height: 2
  filters:
  - name: Cliente
    title: Cliente
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: external_health_score
    explore: customer
    listens_to_filters: []
    field: customer.name
  - name: Executivo(a)
    title: Executivo(a)
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: external_health_score
    explore: customer
    listens_to_filters: []
    field: customer.executive_name
