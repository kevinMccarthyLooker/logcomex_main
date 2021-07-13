- dashboard: st_importacoes_estrutura_merc
  title: Estrutura Mercadológica - ST Importações
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - title: Departamentos
    name: Departamentos
    model: external_st_importacoes
    explore: st_estrutura_mercadologica
    type: single_value
    fields: [st_estrutura_mercadologica.count_dsc_departamento]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    conditional_formatting: [{type: greater than, value: -1, background_color: "#aaf52d",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    series_types: {}
    defaults_version: 1
    listen:
      Departamento: st_estrutura_mercadologica.departamento
      Linha: st_estrutura_mercadologica.linha
      Família: st_estrutura_mercadologica.familia
      Subfamília: st_estrutura_mercadologica.subfamilia
    row: 0
    col: 8
    width: 4
    height: 4
  - title: Linha
    name: Linha
    model: external_st_importacoes
    explore: st_estrutura_mercadologica
    type: single_value
    fields: [st_estrutura_mercadologica.count_dsc_linha]
    filters:
      st_estrutura_mercadologica.ind_desab_linha: '0'
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    conditional_formatting: [{type: greater than, value: -1, background_color: "#aaf52d",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    series_types: {}
    defaults_version: 1
    listen:
      Departamento: st_estrutura_mercadologica.departamento
      Linha: st_estrutura_mercadologica.linha
      Família: st_estrutura_mercadologica.familia
      Subfamília: st_estrutura_mercadologica.subfamilia
    row: 0
    col: 12
    width: 4
    height: 4
  - title: Família
    name: Família
    model: external_st_importacoes
    explore: st_estrutura_mercadologica
    type: single_value
    fields: [st_estrutura_mercadologica.count_dsc_familia]
    filters:
      st_estrutura_mercadologica.ind_desab_familia: '0'
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    conditional_formatting: [{type: greater than, value: -1, background_color: "#aaf52d",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    series_types: {}
    defaults_version: 1
    listen:
      Departamento: st_estrutura_mercadologica.departamento
      Linha: st_estrutura_mercadologica.linha
      Família: st_estrutura_mercadologica.familia
      Subfamília: st_estrutura_mercadologica.subfamilia
    row: 0
    col: 16
    width: 4
    height: 4
  - title: SubFamília
    name: SubFamília
    model: external_st_importacoes
    explore: st_estrutura_mercadologica
    type: single_value
    fields: [st_estrutura_mercadologica.count_dsc_subfamilia]
    filters:
      st_estrutura_mercadologica.ind_desab_subfamilia: '0'
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    conditional_formatting: [{type: greater than, value: -1, background_color: "#aaf52d",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    series_types: {}
    defaults_version: 1
    listen:
      Departamento: st_estrutura_mercadologica.departamento
      Linha: st_estrutura_mercadologica.linha
      Família: st_estrutura_mercadologica.familia
      Subfamília: st_estrutura_mercadologica.subfamilia
    row: 0
    col: 20
    width: 4
    height: 4
  - title: Tabela Dinâmica
    name: Tabela Dinâmica
    model: external_st_importacoes
    explore: st_estrutura_mercadologica
    type: subtotal
    fields: [st_estrutura_mercadologica.departamento, st_estrutura_mercadologica.linha,
      st_estrutura_mercadologica.familia, st_estrutura_mercadologica.subfamilia, st_estrutura_mercadologica.Quantidade]
    filters:
      st_estrutura_mercadologica.ind_desab_linha: '0'
      st_estrutura_mercadologica.ind_desab_familia: '0'
      st_estrutura_mercadologica.ind_desab_subfamilia: '0'
    sorts: [st_estrutura_mercadologica.Quantidade desc]
    limit: 500
    dynamic_fields: [{_kind_hint: measure, table_calculation: quantidade, _type_hint: number,
        category: table_calculation, expression: "${st_estrutura_mercadologica.count}",
        label: Quantidade, value_format: !!null '', value_format_name: decimal_0,
        is_disabled: true}]
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    theme: classic
    show_full_field_name: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 0
    series_column_widths:
      st_estrutura_mercadologica.dsc_linha: 185
      st_estrutura_mercadologica.item_desc: 276
    listen:
      Departamento: st_estrutura_mercadologica.departamento
      Linha: st_estrutura_mercadologica.linha
      Família: st_estrutura_mercadologica.familia
      Subfamília: st_estrutura_mercadologica.subfamilia
    row: 4
    col: 0
    width: 24
    height: 10
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: <img src="https://drive.google.com/uc?export=view&id=1NpOJPe-eAjUY7w5qHgn4ndPyEu0baTDI"/>
    row: 0
    col: 0
    width: 8
    height: 4
  filters:
  - name: Departamento
    title: Departamento
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
      options: []
    model: external_st_importacoes
    explore: st_estrutura_mercadologica
    listens_to_filters: []
    field: st_estrutura_mercadologica.departamento
  - name: Linha
    title: Linha
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
      options: []
    model: external_st_importacoes
    explore: st_estrutura_mercadologica
    listens_to_filters: [Departamento]
    field: st_estrutura_mercadologica.linha
  - name: Família
    title: Família
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
      options: []
    model: external_st_importacoes
    explore: st_estrutura_mercadologica
    listens_to_filters: [Departamento, Linha]
    field: st_estrutura_mercadologica.familia
  - name: Subfamília
    title: Subfamília
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
      options: []
    model: external_st_importacoes
    explore: st_estrutura_mercadologica
    listens_to_filters: [Departamento, Linha, Família]
    field: st_estrutura_mercadologica.subfamilia
