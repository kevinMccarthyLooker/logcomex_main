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
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825
          collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
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
    hidden_fields: [big_data_expo_datalake.count_mar_id_com_dt, big_data_expo_datalake.mvw_teus]
    listen:
      Data Embarque: big_data_expo_datalake.mvw_data_embarque_month
      Porto Destino: big_data_expo_datalake.mvw_porto_destino
      Porto Origem: big_data_expo_datalake.mvw_porto_origem
      País Destino: big_data_expo_datalake.mvw_pais_de_destino
      Exportador (Big Data): big_data_expo_datalake.mvw_nome_exportador
      HSCODE: big_data_expo_datalake.mvw_hs_code
      Real Exportador: big_data_expo_datalake.nf_nome_emissor
    row: 0
    col: 8
    width: 8
    height: 6
  - title: Real Exportador
    name: Real Exportador
    model: Dados_Expo_Datalake
    explore: big_data_expo_datalake
    type: looker_grid
    fields: [big_data_expo_datalake.nf_nome_emissor, big_data_expo_datalake.nf_nome_emissor_nulo,
      big_data_expo_datalake.count_mar_id, big_data_expo_datalake.count_mar_id_com_dt,
      big_data_expo_datalake.mar_teus]
    filters:
      big_data_expo_datalake.nf_nome_emissor_nulo: 'No'
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
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825
          collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
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
    hidden_fields: [big_data_expo_datalake.count_mar_id_com_dt, big_data_expo_datalake.mar_teus,
      is_null, big_data_expo_datalake.nf_nome_emissor_nulo]
    hidden_points_if_no:
    listen:
      HSCODE: big_data_expo_datalake.mvw_hs_code
      Data Embarque: big_data_expo_datalake.mvw_data_embarque_month
      Porto Destino: big_data_expo_datalake.mvw_porto_destino
      Porto Origem: big_data_expo_datalake.mvw_porto_origem
      País Destino: big_data_expo_datalake.mvw_pais_de_destino
      Exportador (Big Data): big_data_expo_datalake.mvw_nome_exportador
      Real Exportador: big_data_expo_datalake.nf_nome_emissor
    row: 0
    col: 0
    width: 8
    height: 6
  - title: HSCODE (Big Data)
    name: HSCODE (Big Data)
    model: Dados_Expo_Datalake
    explore: big_data_expo_datalake
    type: looker_grid
    fields: [big_data_expo_datalake.count_mar_id, big_data_expo_datalake.mvw_teus,
      big_data_expo_datalake.mvw_hs_code, big_data_expo_datalake.mvw_desc_hscode]
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
      big_data_expo_datalake.mvw_hs_code: HS CODE
      big_data_expo_datalake.mvw_desc_hscode: HS CODE Desc
      big_data_expo_datalake.count_mar_id: Embarques
      big_data_expo_datalake.mvw_teus: TEUS
    series_cell_visualizations:
      big_data_expo_datalake.count_mar_id:
        is_active: true
        palette:
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825
          collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
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
    hidden_fields: [big_data_expo_datalake.mvw_teus]
    listen:
      Data Embarque: big_data_expo_datalake.mvw_data_embarque_month
      Porto Destino: big_data_expo_datalake.mvw_porto_destino
      Porto Origem: big_data_expo_datalake.mvw_porto_origem
      País Destino: big_data_expo_datalake.mvw_pais_de_destino
      Exportador (Big Data): big_data_expo_datalake.mvw_nome_exportador
      HSCODE: big_data_expo_datalake.mvw_hs_code
      Real Exportador: big_data_expo_datalake.nf_nome_emissor
    row: 0
    col: 16
    width: 8
    height: 6
  - title: País Destino (Big Data)
    name: País Destino (Big Data)
    model: Dados_Expo_Datalake
    explore: big_data_expo_datalake
    type: looker_grid
    fields: [big_data_expo_datalake.mvw_pais_de_destino_final, big_data_expo_datalake.count_mar_id,
      big_data_expo_datalake.mvw_teus]
    filters:
      big_data_expo_datalake.mvw_pais_de_destino_final: "-NULL"
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
      big_data_expo_datalake.mvw_pais_de_destino_final: Pais de Destino
      big_data_expo_datalake.count_mar_id: Embarques
      big_data_expo_datalake.mvw_teus: TEUS
    series_cell_visualizations:
      big_data_expo_datalake.count_mar_id:
        is_active: true
        palette:
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825
          collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
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
    hidden_fields: [big_data_expo_datalake.mvw_teus]
    listen:
      Data Embarque: big_data_expo_datalake.mvw_data_embarque_month
      Porto Destino: big_data_expo_datalake.mvw_porto_destino
      Porto Origem: big_data_expo_datalake.mvw_porto_origem
      País Destino: big_data_expo_datalake.mvw_pais_de_destino
      Exportador (Big Data): big_data_expo_datalake.mvw_nome_exportador
      HSCODE: big_data_expo_datalake.mvw_hs_code
      Real Exportador: big_data_expo_datalake.nf_nome_emissor
    row: 6
    col: 16
    width: 8
    height: 6
  - title: Porto Destino (Big Data)
    name: Porto Destino (Big Data)
    model: Dados_Expo_Datalake
    explore: big_data_expo_datalake
    type: looker_grid
    fields: [big_data_expo_datalake.count_mar_id, big_data_expo_datalake.count_mar_id_com_dt,
      big_data_expo_datalake.mar_teus, big_data_expo_datalake.mvw_teus, big_data_expo_datalake.mvw_porto_destino]
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
      big_data_expo_datalake.mvw_porto_destino: Porto de Destino
      big_data_expo_datalake.count_mar_id: Embarques
      big_data_expo_datalake.mar_teus: TEUS
    series_cell_visualizations:
      big_data_expo_datalake.count_mar_id:
        is_active: true
        palette:
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825
          collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
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
    listen:
      Data Embarque: big_data_expo_datalake.mvw_data_embarque_month
      Porto Destino: big_data_expo_datalake.mvw_porto_destino
      Porto Origem: big_data_expo_datalake.mvw_porto_origem
      País Destino: big_data_expo_datalake.mvw_pais_de_destino
      Exportador (Big Data): big_data_expo_datalake.mvw_nome_exportador
      HSCODE: big_data_expo_datalake.mvw_hs_code
      Real Exportador: big_data_expo_datalake.nf_nome_emissor
    row: 6
    col: 8
    width: 8
    height: 6
  - title: Porto Origem (Big Data)
    name: Porto Origem (Big Data)
    model: Dados_Expo_Datalake
    explore: big_data_expo_datalake
    type: looker_grid
    fields: [big_data_expo_datalake.count_mar_id, big_data_expo_datalake.count_mar_id_com_dt,
      big_data_expo_datalake.mar_teus, big_data_expo_datalake.mvw_teus, big_data_expo_datalake.mvw_porto_origem]
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
      big_data_expo_datalake.mvw_porto_origem: Porto de Origem
      big_data_expo_datalake.count_mar_id: Embarques
      big_data_expo_datalake.mar_teus: TEUS
    series_cell_visualizations:
      big_data_expo_datalake.count_mar_id:
        is_active: true
        palette:
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825
          collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
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
    listen:
      Data Embarque: big_data_expo_datalake.mvw_data_embarque_month
      Porto Destino: big_data_expo_datalake.mvw_porto_destino
      Porto Origem: big_data_expo_datalake.mvw_porto_origem
      País Destino: big_data_expo_datalake.mvw_pais_de_destino
      Exportador (Big Data): big_data_expo_datalake.mvw_nome_exportador
      HSCODE: big_data_expo_datalake.mvw_hs_code
      Real Exportador: big_data_expo_datalake.nf_nome_emissor
    row: 6
    col: 0
    width: 8
    height: 6
  filters:
  - name: Data Embarque
    title: Data Embarque
    type: field_filter
    default_value: 6 month
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
