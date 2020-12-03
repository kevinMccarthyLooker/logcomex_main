- dashboard: comex_analytics
  title: Comex Analytics - Test
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - title: Customer
    name: Customer
    model: aereo_consignee
    explore: comex_analytics
    type: single_value
    fields: [comex_analytics.customer_name]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    listen: {}
    row: 0
    col: 0
    width: 7
    height: 3
  - title: Customer ID
    name: Customer ID
    model: aereo_consignee
    explore: comex_analytics
    type: single_value
    fields: [comex_analytics.customer_id]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    listen: {}
    row: 0
    col: 7
    width: 3
    height: 3
  - title: Dados
    name: Dados
    model: aereo_consignee
    explore: comex_analytics
    type: looker_grid
    fields: [comex_analytics.customer_id, comex_analytics.customer_name, comex_analytics.consignee_name,
      comex_analytics.consignee_cnpj, comex_analytics.cert_id, comex_analytics.cert_owner,
      comex_analytics.cert_valid, comex_analytics.cnpj_importador, comex_analytics.data_hora_registro,
      comex_analytics.armazem, comex_analytics.tipo_recolhimento]
    sorts: [comex_analytics.cert_valid desc]
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
    row: 3
    col: 0
    width: 24
    height: 7
