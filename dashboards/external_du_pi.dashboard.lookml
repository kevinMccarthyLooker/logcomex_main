- dashboard: external_du_pi
  title: Teste Dashboard di_pu
  layout: newspaper
  elements:
  - title: Untitled
    name: Untitled
    model: test_embed_di
    explore: di_pu
    type: looker_grid
    fields: [di_pu.id, di_pu.data_chegada_carga_date, di_pu.data_desembaraco_date,
      di_pu.di_number, di_pu.digit, di_pu.importador_cnpj, di_pu.importador_endereco,
      di_pu.importador_nome]
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
    row: 0
    col: 0
    width: 24
    height: 6
