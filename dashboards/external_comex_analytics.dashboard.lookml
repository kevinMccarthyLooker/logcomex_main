- dashboard: comex_analytics
  title: Comex Analytics
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - title: Untitled
    name: Untitled
    model: Dados_Impo_Datalake
    explore: comex_analytics_datalake
    type: looker_grid
    fields: [comex_analytics_datalake.carga_peso_bruto, comex_analytics_datalake.importador_nome]
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
    defaults_version: 1
    listen: {}
    row: 0
    col: 0
    width: 8
    height: 6
