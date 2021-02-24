- dashboard: real_exportador
  title: Real Exportador
  layout: newspaper
  preferred_viewer: dashboards-next
  crossfilter_enabled: true
  elements:
  - title: Exportador (Big Data)
    name: Exportador (Big Data)
    model: Dados_Expo_Datalake
    explore: big_data_expo_datalake
    type: looker_grid
    fields: [big_data_expo_datalake.count_mar_id, big_data_expo_datalake.count_mar_id_com_dt,
      big_data_expo_datalake.mar_teus, big_data_expo_datalake.mvw_teus, big_data_expo_datalake.mvw_nome_exportador]
    sorts: [big_data_expo_datalake.count_mar_id desc]
    limit: 500
    total: true
    query_timezone: America/Sao_Paulo
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_labels:
      big_data_expo_datalake.mvw_nome_exportador: Exportador
      big_data_expo_datalake.count_mar_id: Embarques
      big_data_expo_datalake.mvw_teus: TEUs
    series_cell_visualizations:
      big_data_expo_datalake.count_mar_id:
        is_active: true
        palette:
          palette_id: f9e340fb-33ac-5be3-bdac-38efd1a8c4bf
          collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
          custom_colors:
          - "#ffffff"
          - "#a75ad6"
          - "#7b08bf"
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    series_types: {}
    hidden_fields: [big_data_expo_datalake.count_mar_id_com_dt, big_data_expo_datalake.mvw_teus,
      big_data_expo_datalake.mar_teus]
    note_state: expanded
    note_display: above
    note_text: |
      Embarques referentes à plataforma LogComex
      .
    listen:
      Data Embarque: big_data_expo_datalake.mvw_data_embarque_month
      Porto Destino: big_data_expo_datalake.mvw_porto_destino
      Porto Origem: big_data_expo_datalake.mvw_porto_origem
      País Destino: big_data_expo_datalake.mvw_pais_de_destino
      Exportador (Big Data): big_data_expo_datalake.mvw_nome_exportador
      HSCODE: big_data_expo_datalake.mvw_hs_code
      Real Exportador: big_data_expo_datalake.nf_nome_emissor
      Tipo Embarque: big_data_expo_datalake.mar_tipoconhecimento_nome
    row: 0
    col: 16
    width: 8
    height: 11
  - title: Real Exportador
    name: Real Exportador
    model: Dados_Expo_Datalake
    explore: big_data_expo_datalake
    type: looker_grid
    fields: [big_data_expo_datalake.count_mar_id, big_data_expo_datalake.nf_nome_emissor]
    filters: {}
    sorts: [big_data_expo_datalake.count_mar_id desc]
    limit: 500
    total: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", big_data_expo_datalake.nf_nome_emissor,
      big_data_expo_datalake.count_mar_id, big_data_expo_datalake.count_mar_id_com_dt,
      big_data_expo_datalake.mar_teus]
    show_totals: true
    show_row_totals: true
    series_labels:
      big_data_expo_datalake.nf_nome_emissor: Real Shipper
      big_data_expo_datalake.count_mar_id: Embarques
      big_data_expo_datalake.mar_teus: TEUS
    series_column_widths:
      big_data_expo_datalake.count_mar_id_com_dt: 174
    series_cell_visualizations:
      big_data_expo_datalake.count_mar_id:
        is_active: true
        palette:
          palette_id: 42c238e5-9387-06da-f0d3-f643a8732d96
          collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
          custom_colors:
          - "#ffffff"
          - "#a75ad6"
          - "#7b08bf"
    series_text_format:
      big_data_expo_datalake.nf_nome_emissor:
        align: left
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    series_types: {}
    hidden_fields: [is_null, big_data_expo_datalake.nf_nome_emissor_nulo]
    hidden_points_if_no:
    note_state: expanded
    note_display: above
    note_text: Os dados são referentes aos meses de Agosto/20, Setembro/20, Outubro/20
      e Novembro/20 e apenas a embarques de cargas FCL (Full Container Load). Apresentam
      aproximadamente 70% dos reais exportadores para os embarques especificamente
      pesquisados.
    listen:
      HSCODE: big_data_expo_datalake.mvw_hs_code
      Data Embarque: big_data_expo_datalake.mvw_data_embarque_month
      Porto Destino: big_data_expo_datalake.mvw_porto_destino
      Porto Origem: big_data_expo_datalake.mvw_porto_origem
      País Destino: big_data_expo_datalake.mvw_pais_de_destino
      Exportador (Big Data): big_data_expo_datalake.mvw_nome_exportador
      Real Exportador: big_data_expo_datalake.nf_nome_emissor
      Tipo Embarque: big_data_expo_datalake.mar_tipoconhecimento_nome
    row: 0
    col: 0
    width: 16
    height: 11
  filters:
  - name: Data Embarque
    title: Data Embarque
    type: field_filter
    default_value: 2020-08,2020-09,2020-10,2020-11,2020-12
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: Dados_Expo_Datalake
    explore: big_data_expo_datalake
    listens_to_filters: []
    field: big_data_expo_datalake.mvw_data_embarque_month
  - name: HSCODE
    title: HSCODE
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: Dados_Expo_Datalake
    explore: big_data_expo_datalake
    listens_to_filters: []
    field: big_data_expo_datalake.mvw_hs_code
  - name: Real Exportador
    title: Real Exportador
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: Dados_Expo_Datalake
    explore: big_data_expo_datalake
    listens_to_filters: []
    field: big_data_expo_datalake.nf_nome_emissor
  - name: Exportador (Big Data)
    title: Exportador (Big Data)
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: Dados_Expo_Datalake
    explore: big_data_expo_datalake
    listens_to_filters: []
    field: big_data_expo_datalake.mvw_nome_exportador
  - name: Porto Origem
    title: Porto Origem
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: Dados_Expo_Datalake
    explore: big_data_expo_datalake
    listens_to_filters: []
    field: big_data_expo_datalake.mvw_porto_origem
  - name: Porto Destino
    title: Porto Destino
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: Dados_Expo_Datalake
    explore: big_data_expo_datalake
    listens_to_filters: []
    field: big_data_expo_datalake.mvw_porto_destino
  - name: País Destino
    title: País Destino
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: Dados_Expo_Datalake
    explore: big_data_expo_datalake
    listens_to_filters: []
    field: big_data_expo_datalake.mvw_pais_de_destino
  - name: Tipo Embarque
    title: Tipo Embarque
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_group
      display: inline
    model: Dados_Expo_Datalake
    explore: big_data_expo_datalake
    listens_to_filters: []
    field: big_data_expo_datalake.mar_tipoconhecimento_nome
