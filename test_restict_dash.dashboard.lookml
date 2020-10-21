- dashboard: test_restict_dash
  title: New Dashboard
  layout: newspaper
  elements:
  - title: Usage
    name: Usage
    model: internal_only
    explore: usage
    type: looker_grid
    fields: [customer.id, customer.pay_day]
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
    width: 12
    height: 8
  - title: Test Embed
    name: Test Embed
    model: test_embed
    explore: nps_08_2020
    type: looker_grid
    fields: [nps_08_2020.date, nps_08_2020.id]
    sorts: [nps_08_2020.date desc]
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
    col: 12
    width: 12
    height: 8
