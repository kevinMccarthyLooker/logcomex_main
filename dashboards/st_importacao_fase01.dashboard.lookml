- dashboard: st_importacao_fase01
  title: FASE 01
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - title: Dados (EM DESENVOLVIMENTO)
    name: Dados (EM DESENVOLVIMENTO)
    model: external_st_importacoes
    explore: st_importacoes_fase01
    type: looker_grid
    fields: [st_importacoes_fase01.material, st_importacoes_fase01.genero, st_importacoes_fase01.produto]
    limit: 500
    show_view_names: false
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
    defaults_version: 1
    listen: {}
    row: 3
    col: 0
    width: 8
    height: 6
  - name: ST IMPORTAÇÕES
    type: text
    title_text: ST IMPORTAÇÕES
    subtitle_text: ''
    body_text: ''
    row: 0
    col: 0
    width: 24
    height: 3
