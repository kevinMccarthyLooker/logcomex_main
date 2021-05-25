- dashboard: real_exportador
  title: Real Exportador
  layout: newspaper
  preferred_viewer: dashboards-next
  crossfilter_enabled: true
  elements:
  - title: Real Exportador
    name: Real Exportador
    model: Dados_Expo_Datalake
    explore: big_data_expo_real_exportador
    type: looker_grid
    fields: [big_data_expo_real_exportador.count_mar_id, big_data_expo_real_exportador.nf_nome_emissor_2]
    filters:
      big_data_expo_real_exportador.nf_nome_emissor_2: NOT NULL
    sorts: [big_data_expo_real_exportador.count_mar_id desc]
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
    show_totals: true
    show_row_totals: true
    series_labels:
      big_data_expo_real_exportador.nf_nome_emissor: Real Exportador
      big_data_expo_real_exportador.count_mar_id: Embarques
      big_data_expo_real_exportador.nf_nome_emissor_2: Real Exportador
    series_cell_visualizations:
      big_data_expo_real_exportador.count_mar_id:
        is_active: true
        palette:
          palette_id: 3548f388-d316-c608-29b6-a3415a28d90e
          collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
          custom_colors:
          - "#e0aaff"
          - "#9d4edd"
          - "#5a189a"
        value_display: true
    series_text_format:
      big_data_expo_real_exportador.nf_nome_emissor:
        align: left
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    series_value_format:
      big_data_expo_real_exportador.count_mar_id:
        name: decimal_0
        format_string: "#,##0"
        label: Decimals (0)
    defaults_version: 1
    note_state: expanded
    note_display: above
    note_text: 'Dados com o processamento completos: de Agosto a Dezembro/2020, para
      cargas FCL (Full Container Load). Acuracidade das informações: até 70%.'
    listen:
      Data Embarque: big_data_expo_real_exportador.data_embarque_month
      Exportador (Big Data): big_data_expo_real_exportador.nome_exportador_filtro
      HSCODE: big_data_expo_real_exportador.hs_code
      Porto Origem: big_data_expo_real_exportador.porto_origem
      Porto Destino: big_data_expo_real_exportador.porto_destino
      Pais Destino: big_data_expo_real_exportador.pais_de_destino_final
      Tipo Embarque: big_data_expo_real_exportador.embarque
      Real Exportador: big_data_expo_real_exportador.nf_nome_emissor
    row: 0
    col: 0
    width: 16
    height: 9
  - title: Exportador (Big Data)
    name: Exportador (Big Data)
    model: Dados_Expo_Datalake
    explore: big_data_expo_real_exportador
    type: looker_grid
    fields: [big_data_expo_real_exportador.count_mar_id, big_data_expo_real_exportador.nome_exportador]
    filters:
      big_data_expo_real_exportador.nome_exportador: "-NULL"
    sorts: [big_data_expo_real_exportador.count_mar_id desc]
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
    show_totals: true
    show_row_totals: true
    series_labels:
      big_data_expo_real_exportador.nf_nome_emissor: Real Exportador
      big_data_expo_real_exportador.count_mar_id: Embarques
    series_cell_visualizations:
      big_data_expo_real_exportador.count_mar_id:
        is_active: true
        palette:
          palette_id: a26e2b9c-08f2-998b-a738-181ba285401a
          collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
          custom_colors:
          - "#e0aaff"
          - "#9d4edd"
          - "#5a189a"
    series_text_format:
      big_data_expo_real_exportador.nf_nome_emissor:
        align: left
    defaults_version: 1
    note_state: expanded
    note_display: above
    note_text: |-
      Embarques referentes à plataforma LogComex
      .
    listen:
      Data Embarque: big_data_expo_real_exportador.data_embarque_month
      Exportador (Big Data): big_data_expo_real_exportador.nome_exportador_filtro
      HSCODE: big_data_expo_real_exportador.hs_code
      Porto Origem: big_data_expo_real_exportador.porto_origem
      Porto Destino: big_data_expo_real_exportador.porto_destino
      Pais Destino: big_data_expo_real_exportador.pais_de_destino_final
      Tipo Embarque: big_data_expo_real_exportador.embarque
      Real Exportador: big_data_expo_real_exportador.nf_nome_emissor
    row: 0
    col: 16
    width: 8
    height: 9
  filters:
  - name: Data Embarque
    title: Data Embarque
    type: field_filter
    default_value: 2020-08
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: Dados_Expo_Datalake
    explore: big_data_expo_real_exportador
    listens_to_filters: []
    field: big_data_expo_real_exportador.data_embarque_month
  - name: Real Exportador
    title: Real Exportador
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
      options: []
    model: Dados_Expo_Datalake
    explore: big_data_expo_real_exportador
    listens_to_filters: []
    field: big_data_expo_real_exportador.nf_nome_emissor
  - name: Exportador (Big Data)
    title: Exportador (Big Data)
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
      options: []
    model: Dados_Expo_Datalake
    explore: big_data_expo_real_exportador
    listens_to_filters: []
    field: big_data_expo_real_exportador.nome_exportador_filtro
  - name: HSCODE
    title: HSCODE
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
      options: []
    model: Dados_Expo_Datalake
    explore: big_data_expo_real_exportador
    listens_to_filters: []
    field: big_data_expo_real_exportador.hs_code
  - name: Porto Origem
    title: Porto Origem
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
      options: []
    model: Dados_Expo_Datalake
    explore: big_data_expo_real_exportador
    listens_to_filters: []
    field: big_data_expo_real_exportador.porto_origem
  - name: Porto Destino
    title: Porto Destino
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
      options: []
    model: Dados_Expo_Datalake
    explore: big_data_expo_real_exportador
    listens_to_filters: []
    field: big_data_expo_real_exportador.porto_destino
  - name: Pais Destino
    title: Pais Destino
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
      options: []
    model: Dados_Expo_Datalake
    explore: big_data_expo_real_exportador
    listens_to_filters: []
    field: big_data_expo_real_exportador.pais_de_destino_final
  - name: Tipo Embarque
    title: Tipo Embarque
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_group
      display: inline
      options: []
    model: Dados_Expo_Datalake
    explore: big_data_expo_real_exportador
    listens_to_filters: []
    field: big_data_expo_real_exportador.embarque
