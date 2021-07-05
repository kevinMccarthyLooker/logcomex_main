- dashboard: tracking__areo
  title: Tracking - Aéreo
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - title: Embarques
    name: Embarques
    model: Tracking
    explore: tracking_air
    type: single_value
    fields: [count_of_id_di]
    sorts: [count_of_id_di desc]
    limit: 500
    dynamic_fields: [{measure: count_of_id_di, based_on: tracking_air.id_di, expression: '',
        label: Count of ID Di, type: count_distinct, _kind_hint: measure, _type_hint: number}]
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
    series_colors:
      Verde: "#2fd627"
      Ag. Parametrização: "#363eb0"
      Vermelho: "#de1919"
      Amarelo: "#e3dd3e"
      Cinza: "#a5aba6"
    series_types: {}
    defaults_version: 1
    listen: {}
    row: 0
    col: 21
    width: 3
    height: 2
  - title: Aeroporto de Origem
    name: Aeroporto de Origem
    model: Tracking
    explore: tracking_air
    type: looker_column
    fields: [count_of_id_di, tracking_air.aeroporto_de_origem]
    filters:
      count_of_id_di: ">100"
    sorts: [count_of_id_di desc]
    limit: 500
    dynamic_fields: [{measure: count_of_id_di, based_on: tracking_air.id_di, expression: '',
        label: Count of ID Di, type: count_distinct, _kind_hint: measure, _type_hint: number}]
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
      Verde: "#2fd627"
      Ag. Parametrização: "#363eb0"
      Vermelho: "#de1919"
      Amarelo: "#e3dd3e"
      Cinza: "#a5aba6"
      count_of_id_di: "#5a189a"
    series_labels:
      count_of_id_di: Embarques
    value_labels: legend
    label_type: labPer
    defaults_version: 1
    listen: {}
    row: 2
    col: 0
    width: 18
    height: 5
  - title: Aeroporto de Destino
    name: Aeroporto de Destino
    model: Tracking
    explore: tracking_air
    type: looker_column
    fields: [count_of_id_di, tracking_air.aeroporto_de_destino]
    filters:
      count_of_id_di: ">25"
    sorts: [count_of_id_di desc]
    limit: 500
    dynamic_fields: [{measure: count_of_id_di, based_on: tracking_air.id_di, expression: '',
        label: Count of ID Di, type: count_distinct, _kind_hint: measure, _type_hint: number}]
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
      Verde: "#2fd627"
      Ag. Parametrização: "#363eb0"
      Vermelho: "#de1919"
      Amarelo: "#e3dd3e"
      Cinza: "#a5aba6"
      count_of_id_di: "#5a189a"
    series_labels:
      count_of_id_di: Embarques
    value_labels: legend
    label_type: labPer
    defaults_version: 1
    listen: {}
    row: 7
    col: 0
    width: 18
    height: 5
  - title: Embarque por Status
    name: Embarque por Status
    model: Tracking
    explore: tracking_air
    type: looker_pie
    fields: [embarques, tracking_air.status]
    filters:
      tracking_air.status: "-Recebida"
    sorts: [embarques desc]
    limit: 500
    dynamic_fields: [{based_on: tracking_air.id_di, _kind_hint: measure, measure: embarques,
        type: count_distinct, _type_hint: number, category: measure, expression: '',
        label: Embarques}]
    value_labels: legend
    label_type: labPer
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      custom:
        id: 91b091fb-728a-1308-99c5-6ef5b55c48bc
        label: Custom
        type: continuous
        stops:
        - color: "#e0aaff"
          offset: 0
        - color: "#9d4edd"
          offset: 50
        - color: "#5a189a"
          offset: 100
      options:
        steps: 5
        reverse: true
    series_colors:
      Recebida: "#23cc98"
      DI desembaraçada: "#00be82"
      Pendente mantra: "#692890"
      DTA desembaraçada: "#ff778d"
      Registro DI: "#ff9c00"
      Trânsito Internacional: "#72a9d2"
      Registro DTA: "#0099dd"
      Visado: "#283136"
      DI parametrizada: "#ff6501"
    series_types: {}
    defaults_version: 1
    listen: {}
    row: 20
    col: 8
    width: 8
    height: 8
  - title: Recebida
    name: Recebida
    model: Tracking
    explore: tracking_air
    type: single_value
    fields: [count_of_id_di, tracking_air.status]
    filters:
      tracking_air.status: Recebida
    sorts: [count_of_id_di desc]
    limit: 500
    dynamic_fields: [{measure: count_of_id_di, based_on: tracking_air.id_di, expression: '',
        label: Count of ID Di, type: count_distinct, _kind_hint: measure, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
      Verde: "#2fd627"
      Ag. Parametrização: "#363eb0"
      Vermelho: "#de1919"
      Amarelo: "#e3dd3e"
      Cinza: "#a5aba6"
      count_of_id_di: "#5a189a"
    value_labels: legend
    label_type: labPer
    defaults_version: 1
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    listen: {}
    row: 2
    col: 18
    width: 6
    height: 2
  - title: DTA Registrada
    name: DTA Registrada
    model: Tracking
    explore: tracking_air
    type: single_value
    fields: [count_of_id_di, tracking_air.status]
    filters:
      tracking_air.status: Registro DTA
    sorts: [count_of_id_di desc]
    limit: 500
    dynamic_fields: [{measure: count_of_id_di, based_on: tracking_air.id_di, expression: '',
        label: Count of ID Di, type: count_distinct, _kind_hint: measure, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
      Verde: "#2fd627"
      Ag. Parametrização: "#363eb0"
      Vermelho: "#de1919"
      Amarelo: "#e3dd3e"
      Cinza: "#a5aba6"
      count_of_id_di: "#5a189a"
    value_labels: legend
    label_type: labPer
    defaults_version: 1
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    listen: {}
    row: 0
    col: 6
    width: 3
    height: 2
  - title: Pendente Mantra
    name: Pendente Mantra
    model: Tracking
    explore: tracking_air
    type: single_value
    fields: [count_of_id_di, tracking_air.status]
    filters:
      tracking_air.status: Pendente mantra
    sorts: [count_of_id_di desc]
    limit: 500
    dynamic_fields: [{measure: count_of_id_di, based_on: tracking_air.id_di, expression: '',
        label: Count of ID Di, type: count_distinct, _kind_hint: measure, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
      Verde: "#2fd627"
      Ag. Parametrização: "#363eb0"
      Vermelho: "#de1919"
      Amarelo: "#e3dd3e"
      Cinza: "#a5aba6"
      count_of_id_di: "#5a189a"
    value_labels: legend
    label_type: labPer
    defaults_version: 1
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    listen: {}
    row: 0
    col: 0
    width: 3
    height: 2
  - title: DI Registrada
    name: DI Registrada
    model: Tracking
    explore: tracking_air
    type: single_value
    fields: [count_of_id_di, tracking_air.status]
    filters:
      tracking_air.status: Registro DI
    sorts: [count_of_id_di desc]
    limit: 500
    dynamic_fields: [{measure: count_of_id_di, based_on: tracking_air.id_di, expression: '',
        label: Count of ID Di, type: count_distinct, _kind_hint: measure, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
      Verde: "#2fd627"
      Ag. Parametrização: "#363eb0"
      Vermelho: "#de1919"
      Amarelo: "#e3dd3e"
      Cinza: "#a5aba6"
      count_of_id_di: "#5a189a"
    value_labels: legend
    label_type: labPer
    defaults_version: 1
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    listen: {}
    row: 0
    col: 15
    width: 3
    height: 2
  - title: DI Desembaraçada
    name: DI Desembaraçada
    model: Tracking
    explore: tracking_air
    type: single_value
    fields: [count_of_id_di, tracking_air.status]
    filters:
      tracking_air.status: DI desembaraçada
    sorts: [count_of_id_di desc]
    limit: 500
    dynamic_fields: [{measure: count_of_id_di, based_on: tracking_air.id_di, expression: '',
        label: Count of ID Di, type: count_distinct, _kind_hint: measure, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
      Verde: "#2fd627"
      Ag. Parametrização: "#363eb0"
      Vermelho: "#de1919"
      Amarelo: "#e3dd3e"
      Cinza: "#a5aba6"
      count_of_id_di: "#5a189a"
    value_labels: legend
    label_type: labPer
    defaults_version: 1
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    listen: {}
    row: 0
    col: 18
    width: 3
    height: 2
  - title: Visado
    name: Visado
    model: Tracking
    explore: tracking_air
    type: single_value
    fields: [count_of_id_di, tracking_air.status]
    filters:
      tracking_air.status: Visado
    sorts: [count_of_id_di desc]
    limit: 500
    dynamic_fields: [{measure: count_of_id_di, based_on: tracking_air.id_di, expression: '',
        label: Count of ID Di, type: count_distinct, _kind_hint: measure, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
      Verde: "#2fd627"
      Ag. Parametrização: "#363eb0"
      Vermelho: "#de1919"
      Amarelo: "#e3dd3e"
      Cinza: "#a5aba6"
      count_of_id_di: "#5a189a"
    value_labels: legend
    label_type: labPer
    defaults_version: 1
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    listen: {}
    row: 0
    col: 9
    width: 3
    height: 2
  - title: DTA Desembaraçada
    name: DTA Desembaraçada
    model: Tracking
    explore: tracking_air
    type: single_value
    fields: [count_of_id_di, tracking_air.status]
    filters:
      tracking_air.status: DTA desembaraçada
    sorts: [count_of_id_di desc]
    limit: 500
    dynamic_fields: [{measure: count_of_id_di, based_on: tracking_air.id_di, expression: '',
        label: Count of ID Di, type: count_distinct, _kind_hint: measure, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
      Verde: "#2fd627"
      Ag. Parametrização: "#363eb0"
      Vermelho: "#de1919"
      Amarelo: "#e3dd3e"
      Cinza: "#a5aba6"
      count_of_id_di: "#5a189a"
    value_labels: legend
    label_type: labPer
    defaults_version: 1
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    listen: {}
    row: 0
    col: 12
    width: 3
    height: 2
  - title: Canal
    name: Canal
    model: Tracking
    explore: tracking_air
    type: looker_pie
    fields: [embarques, tracking_air.canal]
    filters:
      tracking_air.data_hora_registro_date: NOT NULL
    sorts: [embarques desc]
    limit: 500
    dynamic_fields: [{based_on: tracking_air.id_di, _kind_hint: measure, measure: embarques,
        type: count_distinct, _type_hint: number, category: measure, expression: '',
        label: Embarques}]
    value_labels: legend
    label_type: labPer
    series_colors:
      Verde: "#2fd627"
      Ag. Parametrização: "#363eb0"
      Vermelho: "#de1919"
      Amarelo: "#e3dd3e"
      Cinza: "#a5aba6"
    series_types: {}
    defaults_version: 1
    listen: {}
    row: 20
    col: 0
    width: 8
    height: 8
  - title: Canal Amarelo
    name: Canal Amarelo
    model: Tracking
    explore: tracking_air
    type: single_value
    fields: [count_of_id_di, tracking_air.canal]
    filters:
      tracking_air.canal: Amarelo
      tracking_air.data_hora_registro_date: NOT NULL
    sorts: [count_of_id_di desc]
    limit: 500
    dynamic_fields: [{measure: count_of_id_di, based_on: tracking_air.id_di, expression: '',
        label: Count of ID Di, type: count_distinct, _kind_hint: measure, _type_hint: number}]
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
    series_colors:
      Verde: "#2fd627"
      Ag. Parametrização: "#363eb0"
      Vermelho: "#de1919"
      Amarelo: "#e3dd3e"
      Cinza: "#a5aba6"
    series_types: {}
    defaults_version: 1
    listen: {}
    row: 8
    col: 18
    width: 6
    height: 2
  - title: Canal Vermelho
    name: Canal Vermelho
    model: Tracking
    explore: tracking_air
    type: single_value
    fields: [count_of_id_di, tracking_air.canal]
    filters:
      tracking_air.canal: Vermelho
      tracking_air.data_hora_registro_date: NOT NULL
    sorts: [count_of_id_di desc]
    limit: 500
    dynamic_fields: [{measure: count_of_id_di, based_on: tracking_air.id_di, expression: '',
        label: Count of ID Di, type: count_distinct, _kind_hint: measure, _type_hint: number}]
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
    series_colors:
      Verde: "#2fd627"
      Ag. Parametrização: "#363eb0"
      Vermelho: "#de1919"
      Amarelo: "#e3dd3e"
      Cinza: "#a5aba6"
    series_types: {}
    defaults_version: 1
    listen: {}
    row: 10
    col: 18
    width: 6
    height: 2
  - title: Canal Verde
    name: Canal Verde
    model: Tracking
    explore: tracking_air
    type: single_value
    fields: [count_of_id_di, tracking_air.canal]
    filters:
      tracking_air.canal: Verde
      tracking_air.data_hora_registro_date: NOT NULL
    sorts: [count_of_id_di desc]
    limit: 500
    dynamic_fields: [{measure: count_of_id_di, based_on: tracking_air.id_di, expression: '',
        label: Count of ID Di, type: count_distinct, _kind_hint: measure, _type_hint: number}]
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
    series_colors:
      Verde: "#2fd627"
      Ag. Parametrização: "#363eb0"
      Vermelho: "#de1919"
      Amarelo: "#e3dd3e"
      Cinza: "#a5aba6"
    series_types: {}
    defaults_version: 1
    listen: {}
    row: 6
    col: 18
    width: 6
    height: 2
  - title: Trans Internacional
    name: Trans Internacional
    model: Tracking
    explore: tracking_air
    type: single_value
    fields: [count_of_id_di, tracking_air.status]
    filters:
      tracking_air.status: Trânsito Internacional
    sorts: [count_of_id_di desc]
    limit: 500
    dynamic_fields: [{measure: count_of_id_di, based_on: tracking_air.id_di, expression: '',
        label: Count of ID Di, type: count_distinct, _kind_hint: measure, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
      Verde: "#2fd627"
      Ag. Parametrização: "#363eb0"
      Vermelho: "#de1919"
      Amarelo: "#e3dd3e"
      Cinza: "#a5aba6"
      count_of_id_di: "#5a189a"
    value_labels: legend
    label_type: labPer
    defaults_version: 1
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    listen: {}
    row: 0
    col: 3
    width: 3
    height: 2
  - title: Agente de Carga
    name: Agente de Carga
    model: Tracking
    explore: tracking_air
    type: looker_grid
    fields: [count_of_id_di, tracking_air.agente_de_carga]
    sorts: [count_of_id_di desc]
    limit: 500
    total: true
    dynamic_fields: [{measure: count_of_id_di, based_on: tracking_air.id_di, expression: '',
        label: Count of ID Di, type: count_distinct, _kind_hint: measure, _type_hint: number}]
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
    series_labels:
      count_of_id_di: Embarques
    series_column_widths:
      count_of_id_di: 150
    series_cell_visualizations:
      count_of_id_di:
        is_active: true
        palette:
          palette_id: d31b1ee5-789f-fd34-453e-dbdd380c900b
          collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
          custom_colors:
          - "#e0aaff"
          - "#9d4edd"
          - "#5a189a"
    series_value_format: {}
    value_labels: legend
    label_type: labPer
    series_colors:
      Verde: "#2fd627"
      Ag. Parametrização: "#363eb0"
      Vermelho: "#de1919"
      Amarelo: "#e3dd3e"
      Cinza: "#a5aba6"
    series_types: {}
    defaults_version: 1
    listen: {}
    row: 12
    col: 14
    width: 10
    height: 8
  - title: Ag Parametrização
    name: Ag Parametrização
    model: Tracking
    explore: tracking_air
    type: single_value
    fields: [count_of_id_di, tracking_air.canal]
    filters:
      tracking_air.canal: Ag. Parametrização
      tracking_air.data_hora_registro_date: NOT NULL
    sorts: [count_of_id_di desc]
    limit: 500
    dynamic_fields: [{measure: count_of_id_di, based_on: tracking_air.id_di, expression: '',
        label: Count of ID Di, type: count_distinct, _kind_hint: measure, _type_hint: number}]
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
    series_colors:
      Verde: "#2fd627"
      Ag. Parametrização: "#363eb0"
      Vermelho: "#de1919"
      Amarelo: "#e3dd3e"
      Cinza: "#a5aba6"
    series_types: {}
    defaults_version: 1
    row: 4
    col: 18
    width: 6
    height: 2
  - title: Tipo de Frete
    name: Tipo de Frete
    model: Tracking
    explore: tracking_air
    type: looker_pie
    fields: [embarques, tracking_air.tipo_de_frete]
    sorts: [embarques desc]
    limit: 500
    dynamic_fields: [{based_on: tracking_air.id_di, _kind_hint: measure, measure: embarques,
        type: count_distinct, _type_hint: number, category: measure, expression: '',
        label: Embarques}]
    value_labels: legend
    label_type: labPer
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      custom:
        id: 91b091fb-728a-1308-99c5-6ef5b55c48bc
        label: Custom
        type: continuous
        stops:
        - color: "#e0aaff"
          offset: 0
        - color: "#9d4edd"
          offset: 50
        - color: "#5a189a"
          offset: 100
      options:
        steps: 5
        reverse: true
    series_colors:
      Recebida: "#23cc98"
      DI desembaraçada: "#00be82"
      Pendente mantra: "#692890"
      DTA desembaraçada: "#ff778d"
      Registro DI: "#ff9c00"
      Trânsito Internacional: "#72a9d2"
      Registro DTA: "#0099dd"
      Visado: "#283136"
      DI parametrizada: "#ff6501"
    series_types: {}
    defaults_version: 1
    listen: {}
    row: 20
    col: 16
    width: 8
    height: 8
  - title: Importadores
    name: Importadores
    model: Tracking
    explore: tracking_air
    type: looker_grid
    fields: [count_of_id_di, tracking_air.importador_cnpj, tracking_air.importador_nome]
    sorts: [count_of_id_di desc]
    limit: 500
    total: true
    dynamic_fields: [{measure: count_of_id_di, based_on: tracking_air.id_di, expression: '',
        label: Count of ID Di, type: count_distinct, _kind_hint: measure, _type_hint: number}]
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
    column_order: ["$$$_row_numbers_$$$", tracking_air.importador_nome, tracking_air.importador_cnpj,
      count_of_id_di]
    show_totals: true
    show_row_totals: true
    series_labels:
      count_of_id_di: Embarques
    series_column_widths:
      tracking_air.importador_cnpj: 140
      count_of_id_di: 140
    series_cell_visualizations:
      count_of_id_di:
        is_active: true
        palette:
          palette_id: d31b1ee5-789f-fd34-453e-dbdd380c900b
          collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
          custom_colors:
          - "#e0aaff"
          - "#9d4edd"
          - "#5a189a"
    series_value_format: {}
    value_labels: legend
    label_type: labPer
    series_colors:
      Verde: "#2fd627"
      Ag. Parametrização: "#363eb0"
      Vermelho: "#de1919"
      Amarelo: "#e3dd3e"
      Cinza: "#a5aba6"
    series_types: {}
    defaults_version: 1
    listen: {}
    row: 12
    col: 0
    width: 14
    height: 8
