- dashboard: tracking__martimo
  title: Tracking - Marítimo
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - title: Canal
    name: Canal
    model: Tracking
    explore: tracking_sea
    type: looker_pie
    fields: [embarques, tracking_sea.canal]
    filters:
      tracking_sea.data_registro_di_date: NOT NULL
    sorts: [embarques desc]
    limit: 500
    dynamic_fields: [{based_on: tracking_sea.numero_di, _kind_hint: measure, measure: embarques,
        type: count_distinct, _type_hint: number, category: measure, expression: '',
        label: Embarques}]
    value_labels: legend
    label_type: labPer
    series_colors:
      Verde: "#34c22c"
      Ag. Parametrização: "#3a44b0"
      Vermelho: "#de342f"
      Amarelo: "#e8e833"
      Cinza: "#a8b0a9"
    series_types: {}
    defaults_version: 1
    listen: {}
    row: 19
    col: 0
    width: 8
    height: 8
  - title: Ag Parametrização
    name: Ag Parametrização
    model: Tracking
    explore: tracking_sea
    type: single_value
    fields: [count_of_numero_di, tracking_sea.canal]
    filters:
      tracking_sea.canal: Ag. Parametrização
      tracking_sea.data_registro_di_date: NOT NULL
    sorts: [count_of_numero_di desc]
    limit: 500
    dynamic_fields: [{measure: count_of_numero_di, based_on: tracking_sea.numero_di,
        expression: '', label: Count of Numero Di, type: count_distinct, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_labels: legend
    label_type: labPer
    series_types: {}
    defaults_version: 1
    listen: {}
    row: 4
    col: 0
    width: 6
    height: 2
  - title: Embarques
    name: Embarques
    model: Tracking
    explore: tracking_sea
    type: single_value
    fields: [count_of_numero_di]
    sorts: [count_of_numero_di desc]
    limit: 500
    dynamic_fields: [{measure: count_of_numero_di, based_on: tracking_sea.numero_di,
        expression: '', label: Count of Numero Di, type: count_distinct, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_labels: legend
    label_type: labPer
    series_types: {}
    defaults_version: 1
    row: 2
    col: 0
    width: 6
    height: 2
  - title: Embarque por Status
    name: Embarque por Status
    model: Tracking
    explore: tracking_sea
    type: looker_pie
    fields: [embarques, tracking_sea.description]
    sorts: [embarques desc]
    limit: 500
    dynamic_fields: [{based_on: tracking_sea.numero_di, _kind_hint: measure, measure: embarques,
        type: count_distinct, _type_hint: number, category: measure, expression: '',
        label: Embarques}]
    value_labels: legend
    label_type: labPer
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      custom:
        id: b653a697-53d9-9a72-6b84-fd1c60fc10b1
        label: Custom
        type: continuous
        stops:
        - color: "#5a189a"
          offset: 0
        - color: "#9d4edd"
          offset: 50
        - color: "#e0aaff"
          offset: 100
      options:
        steps: 5
    series_colors:
      Em Transito Internacional: "#72a8d4"
      Manifestado: "#72a9d1"
      Registro DTA: "#ff9c00"
      Registro Presenca de carga: "#0099e0"
    series_types: {}
    defaults_version: 1
    listen: {}
    row: 19
    col: 8
    width: 8
    height: 8
  - title: Manifestado
    name: Manifestado
    model: Tracking
    explore: tracking_sea
    type: single_value
    fields: [count_of_numero_di, tracking_sea.description]
    filters:
      tracking_sea.description: Manifestado
    sorts: [count_of_numero_di desc]
    limit: 500
    dynamic_fields: [{measure: count_of_numero_di, based_on: tracking_sea.numero_di,
        expression: '', label: Count of Numero Di, type: count_distinct, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_labels: legend
    label_type: labPer
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      custom:
        id: b653a697-53d9-9a72-6b84-fd1c60fc10b1
        label: Custom
        type: continuous
        stops:
        - color: "#5a189a"
          offset: 0
        - color: "#9d4edd"
          offset: 50
        - color: "#e0aaff"
          offset: 100
      options:
        steps: 5
    series_colors: {}
    series_types: {}
    defaults_version: 1
    row: 0
    col: 3
    width: 3
    height: 2
  - title: Presença de Carga
    name: Presença de Carga
    model: Tracking
    explore: tracking_sea
    type: single_value
    fields: [count_of_numero_di, tracking_sea.description]
    filters:
      tracking_sea.description: Registro Presenca de carga
    sorts: [count_of_numero_di desc]
    limit: 500
    dynamic_fields: [{measure: count_of_numero_di, based_on: tracking_sea.numero_di,
        expression: '', label: Count of Numero Di, type: count_distinct, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_labels: legend
    label_type: labPer
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      custom:
        id: b653a697-53d9-9a72-6b84-fd1c60fc10b1
        label: Custom
        type: continuous
        stops:
        - color: "#5a189a"
          offset: 0
        - color: "#9d4edd"
          offset: 50
        - color: "#e0aaff"
          offset: 100
      options:
        steps: 5
    series_colors: {}
    series_types: {}
    defaults_version: 1
    row: 0
    col: 6
    width: 3
    height: 2
  - title: DTA Registrada
    name: DTA Registrada
    model: Tracking
    explore: tracking_sea
    type: single_value
    fields: [count_of_numero_di, tracking_sea.description]
    filters:
      tracking_sea.description: Registro DTA
    sorts: [count_of_numero_di desc]
    limit: 500
    dynamic_fields: [{measure: count_of_numero_di, based_on: tracking_sea.numero_di,
        expression: '', label: Count of Numero Di, type: count_distinct, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_labels: legend
    label_type: labPer
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      custom:
        id: b653a697-53d9-9a72-6b84-fd1c60fc10b1
        label: Custom
        type: continuous
        stops:
        - color: "#5a189a"
          offset: 0
        - color: "#9d4edd"
          offset: 50
        - color: "#e0aaff"
          offset: 100
      options:
        steps: 5
    series_colors: {}
    series_types: {}
    defaults_version: 1
    row: 0
    col: 9
    width: 3
    height: 2
  - title: DI Registrada
    name: DI Registrada
    model: Tracking
    explore: tracking_sea
    type: single_value
    fields: [count_of_numero_di, tracking_sea.description]
    filters:
      tracking_sea.description: Registro DI
    sorts: [count_of_numero_di desc]
    limit: 500
    dynamic_fields: [{measure: count_of_numero_di, based_on: tracking_sea.numero_di,
        expression: '', label: Count of Numero Di, type: count_distinct, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_labels: legend
    label_type: labPer
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      custom:
        id: b653a697-53d9-9a72-6b84-fd1c60fc10b1
        label: Custom
        type: continuous
        stops:
        - color: "#5a189a"
          offset: 0
        - color: "#9d4edd"
          offset: 50
        - color: "#e0aaff"
          offset: 100
      options:
        steps: 5
    series_colors: {}
    series_types: {}
    defaults_version: 1
    row: 0
    col: 12
    width: 3
    height: 2
  - title: DI Desembaraçada
    name: DI Desembaraçada
    model: Tracking
    explore: tracking_sea
    type: single_value
    fields: [count_of_numero_di, tracking_sea.description]
    filters:
      tracking_sea.description: DI Desembaraçada
    sorts: [count_of_numero_di desc]
    limit: 500
    dynamic_fields: [{measure: count_of_numero_di, based_on: tracking_sea.numero_di,
        expression: '', label: Count of Numero Di, type: count_distinct, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_labels: legend
    label_type: labPer
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      custom:
        id: b653a697-53d9-9a72-6b84-fd1c60fc10b1
        label: Custom
        type: continuous
        stops:
        - color: "#5a189a"
          offset: 0
        - color: "#9d4edd"
          offset: 50
        - color: "#e0aaff"
          offset: 100
      options:
        steps: 5
    series_colors: {}
    series_types: {}
    defaults_version: 1
    row: 0
    col: 15
    width: 3
    height: 2
  - title: Liberado p/ Carregamento
    name: Liberado p/ Carregamento
    model: Tracking
    explore: tracking_sea
    type: single_value
    fields: [count_of_numero_di, tracking_sea.description]
    filters:
      tracking_sea.description: Liberado p/ Carregamento
    sorts: [count_of_numero_di desc]
    limit: 500
    dynamic_fields: [{measure: count_of_numero_di, based_on: tracking_sea.numero_di,
        expression: '', label: Count of Numero Di, type: count_distinct, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_labels: legend
    label_type: labPer
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      custom:
        id: b653a697-53d9-9a72-6b84-fd1c60fc10b1
        label: Custom
        type: continuous
        stops:
        - color: "#5a189a"
          offset: 0
        - color: "#9d4edd"
          offset: 50
        - color: "#e0aaff"
          offset: 100
      options:
        steps: 5
    series_colors: {}
    series_types: {}
    defaults_version: 1
    row: 0
    col: 18
    width: 3
    height: 2
  - title: Carga Descarregada
    name: Carga Descarregada
    model: Tracking
    explore: tracking_sea
    type: single_value
    fields: [count_of_numero_di, tracking_sea.description]
    filters:
      tracking_sea.description: Carga Carregada/Descarregada
    sorts: [count_of_numero_di desc]
    limit: 500
    dynamic_fields: [{measure: count_of_numero_di, based_on: tracking_sea.numero_di,
        expression: '', label: Count of Numero Di, type: count_distinct, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_labels: legend
    label_type: labPer
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      custom:
        id: b653a697-53d9-9a72-6b84-fd1c60fc10b1
        label: Custom
        type: continuous
        stops:
        - color: "#5a189a"
          offset: 0
        - color: "#9d4edd"
          offset: 50
        - color: "#e0aaff"
          offset: 100
      options:
        steps: 5
    series_colors: {}
    series_types: {}
    defaults_version: 1
    row: 0
    col: 21
    width: 3
    height: 2
  - title: Porto de Destino
    name: Porto de Destino
    model: Tracking
    explore: tracking_sea
    type: looker_column
    fields: [count_of_numero_di, tracking_sea.nmportodestino]
    filters:
      count_of_numero_di: ">1000"
    sorts: [count_of_numero_di desc]
    limit: 500
    dynamic_fields: [{measure: count_of_numero_di, based_on: tracking_sea.numero_di,
        expression: '', label: Count of Numero Di, type: count_distinct, _kind_hint: measure,
        _type_hint: number}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
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
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    series_colors:
      Verde: "#34c22c"
      Ag. Parametrização: "#3a44b0"
      Vermelho: "#de342f"
      Amarelo: "#e8e833"
      Cinza: "#a8b0a9"
      count_of_numero_di: "#5a189a"
    value_labels: legend
    label_type: labPer
    defaults_version: 1
    listen: {}
    row: 7
    col: 6
    width: 18
    height: 5
  - title: Porto de Origem
    name: Porto de Origem
    model: Tracking
    explore: tracking_sea
    type: looker_column
    fields: [count_of_numero_di, tracking_sea.nmportoorigem]
    filters:
      count_of_numero_di: ">700"
    sorts: [count_of_numero_di desc]
    limit: 500
    dynamic_fields: [{measure: count_of_numero_di, based_on: tracking_sea.numero_di,
        expression: '', label: Count of Numero Di, type: count_distinct, _kind_hint: measure,
        _type_hint: number}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    series_colors:
      Verde: "#34c22c"
      Ag. Parametrização: "#3a44b0"
      Vermelho: "#de342f"
      Amarelo: "#e8e833"
      Cinza: "#a8b0a9"
      count_of_numero_di: "#5a189a"
    value_labels: legend
    label_type: labPer
    defaults_version: 1
    listen: {}
    row: 2
    col: 6
    width: 18
    height: 5
  - title: Armadores
    name: Armadores
    model: Tracking
    explore: tracking_sea
    type: looker_grid
    fields: [embarques, tracking_sea.armador]
    sorts: [embarques desc]
    limit: 500
    dynamic_fields: [{based_on: tracking_sea.numero_di, _kind_hint: measure, measure: embarques,
        type: count_distinct, _type_hint: number, category: measure, expression: '',
        label: Embarques}]
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
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_cell_visualizations:
      count_of_numero_di:
        is_active: true
        palette:
          palette_id: 1ffd0ea5-d453-b41f-4ad6-d7026eda27e0
          collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
          custom_colors:
          - "#e0aaff"
          - "#9d4edd"
          - "#5a189a"
      embarques:
        is_active: true
        palette:
          palette_id: 3a95176b-7f09-9796-78d1-e47ad50157a5
          collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
          custom_colors:
          - "#e0aaff"
          - "#9d4edd"
          - "#5a189a"
    value_labels: legend
    label_type: labPer
    series_colors:
      Verde: "#34c22c"
      Ag. Parametrização: "#3a44b0"
      Vermelho: "#de342f"
      Amarelo: "#e8e833"
      Cinza: "#a8b0a9"
    series_types: {}
    defaults_version: 1
    row: 12
    col: 14
    width: 10
    height: 7
  - title: Tipo de Frete
    name: Tipo de Frete
    model: Tracking
    explore: tracking_sea
    type: looker_pie
    fields: [embarques, tracking_sea.tipo_de_frete]
    filters:
      tracking_sea.tipo_de_frete: "-NULL"
    sorts: [embarques desc]
    limit: 500
    dynamic_fields: [{based_on: tracking_sea.numero_di, _kind_hint: measure, measure: embarques,
        type: count_distinct, _type_hint: number, category: measure, expression: '',
        label: Embarques}]
    value_labels: legend
    label_type: labPer
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      custom:
        id: b653a697-53d9-9a72-6b84-fd1c60fc10b1
        label: Custom
        type: continuous
        stops:
        - color: "#5a189a"
          offset: 0
        - color: "#9d4edd"
          offset: 50
        - color: "#e0aaff"
          offset: 100
      options:
        steps: 5
    series_colors: {}
    series_types: {}
    defaults_version: 1
    listen: {}
    row: 19
    col: 16
    width: 8
    height: 8
  - title: Importadores
    name: Importadores
    model: Tracking
    explore: tracking_sea
    type: looker_grid
    fields: [embarques, tracking_sea.cnpj_consignatrio, tracking_sea.consignatrio]
    sorts: [embarques desc]
    limit: 500
    dynamic_fields: [{based_on: tracking_sea.numero_di, _kind_hint: measure, measure: embarques,
        type: count_distinct, _type_hint: number, category: measure, expression: '',
        label: Embarques}]
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
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", tracking_sea.consignatrio, tracking_sea.cnpj_consignatrio,
      embarques]
    show_totals: true
    show_row_totals: true
    series_labels:
      tracking_sea.cnpj_consignatrio: CNPJ
      tracking_sea.consignatrio: Importador
    series_column_widths:
      tracking_sea.cnpj_consignatrio: 150
      embarques: 145
    series_cell_visualizations:
      count_of_numero_di:
        is_active: true
        palette:
          palette_id: 1ffd0ea5-d453-b41f-4ad6-d7026eda27e0
          collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
          custom_colors:
          - "#e0aaff"
          - "#9d4edd"
          - "#5a189a"
      embarques:
        is_active: true
        palette:
          palette_id: c3e02651-c790-1724-86a0-8f050fcf4a09
          collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
          custom_colors:
          - "#e0aaff"
          - "#9d4edd"
          - "#5a189a"
    value_labels: legend
    label_type: labPer
    series_colors:
      Verde: "#34c22c"
      Ag. Parametrização: "#3a44b0"
      Vermelho: "#de342f"
      Amarelo: "#e8e833"
      Cinza: "#a8b0a9"
    series_types: {}
    defaults_version: 1
    listen: {}
    row: 12
    col: 0
    width: 14
    height: 7
  - title: Amarelo
    name: Amarelo
    model: Tracking
    explore: tracking_sea
    type: single_value
    fields: [count_of_numero_di, tracking_sea.canal]
    filters:
      tracking_sea.canal: Amarelo
      tracking_sea.data_registro_di_date: NOT NULL
    sorts: [count_of_numero_di desc]
    limit: 500
    dynamic_fields: [{measure: count_of_numero_di, based_on: tracking_sea.numero_di,
        expression: '', label: Count of Numero Di, type: count_distinct, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_labels: legend
    label_type: labPer
    series_types: {}
    defaults_version: 1
    row: 8
    col: 0
    width: 6
    height: 2
  - title: Verde
    name: Verde
    model: Tracking
    explore: tracking_sea
    type: single_value
    fields: [count_of_numero_di, tracking_sea.canal]
    filters:
      tracking_sea.canal: Verde
      tracking_sea.data_registro_di_date: NOT NULL
    sorts: [count_of_numero_di desc]
    limit: 500
    dynamic_fields: [{measure: count_of_numero_di, based_on: tracking_sea.numero_di,
        expression: '', label: Count of Numero Di, type: count_distinct, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_labels: legend
    label_type: labPer
    series_types: {}
    defaults_version: 1
    row: 6
    col: 0
    width: 6
    height: 2
  - title: Vermelho
    name: Vermelho
    model: Tracking
    explore: tracking_sea
    type: single_value
    fields: [count_of_numero_di, tracking_sea.canal]
    filters:
      tracking_sea.canal: Vermelho
      tracking_sea.data_registro_di_date: NOT NULL
    sorts: [count_of_numero_di desc]
    limit: 500
    dynamic_fields: [{measure: count_of_numero_di, based_on: tracking_sea.numero_di,
        expression: '', label: Count of Numero Di, type: count_distinct, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_labels: legend
    label_type: labPer
    series_types: {}
    defaults_version: 1
    row: 10
    col: 0
    width: 6
    height: 2
