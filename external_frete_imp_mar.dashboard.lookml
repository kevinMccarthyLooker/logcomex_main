- dashboard: frete_martimo__importao
  title: Frete Marítimo - Importação
  layout: newspaper
  preferred_viewer: dashboards-next
  crossfilter_enabled: true
  elements:
  - title: Rota
    name: Rota
    model: Dados_Impo_Datalake
    explore: bi_imports_mvw_gold
    type: looker_grid
    fields: [bi_imports_mvw_gold.nmportoorigem, bi_imports_mvw_gold.nmportodestino,
      bi_imports_mvw_gold.teus, bi_imports_mvw_gold.c20, bi_imports_mvw_gold.c40,
      bi_imports_mvw_gold.vlfrete, bi_imports_mvw_gold.media_frete_c20, bi_imports_mvw_gold.media_frete_c40]
    filters:
      bi_imports_mvw_gold.nmmoedafrete: DOLAR DOS EUA
    sorts: [bi_imports_mvw_gold.teus desc]
    limit: 500
    dynamic_fields: [{table_calculation: mediana_20, label: Mediana 20', expression: "(((${bi_imports_mvw_gold.vlfrete}/${bi_imports_mvw_gold.teus})*${bi_imports_mvw_gold.c20})/${bi_imports_mvw_gold.c20})",
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}, {table_calculation: mediana_40, label: Mediana 40', expression: "(((${bi_imports_mvw_gold.vlfrete}/${bi_imports_mvw_gold.teus})*(2*\
          \ ${bi_imports_mvw_gold.c40})/${bi_imports_mvw_gold.c40}))", value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number}]
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
    header_text_alignment: ''
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    pinned_columns: {}
    column_order: ["$$$_row_numbers_$$$", bi_imports_mvw_gold.nmportoorigem, bi_imports_mvw_gold.nmportodestino,
      bi_imports_mvw_gold.media_frete_TEU, bi_imports_mvw_gold.media_frete_c20,
      bi_imports_mvw_gold.media_frete_c40, bi_imports_mvw_gold.teus]
    show_totals: true
    show_row_totals: true
    series_labels:
      bi_imports_mvw_gold.teus: TEUs
      bi_imports_mvw_gold.media_frete_TEU: TEU
      bi_imports_mvw_gold.media_frete_c20: 20'
      bi_imports_mvw_gold.media_frete_c40: 40'
      bi_imports_mvw_gold.nmportoorigem: Origem
      bi_imports_mvw_gold.nmportodestino: Destino
      bi_imports_mvw_gold.media_frete_c20: Média 20'
      bi_imports_mvw_gold.media_frete_c40: Média 40'
    series_column_widths:
      bi_imports_mvw_gold.rota: 214
      bi_imports_mvw_gold.teus: 120
    series_cell_visualizations:
      bi_imports_mvw_gold.teus:
        is_active: true
        palette:
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825
          collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      bi_imports_mvw_gold.media_frete_TEU:
        is_active: false
    series_text_format:
      bi_imports_mvw_gold.media_frete_TEU:
        align: left
      bi_imports_mvw_gold.media_frete_c20:
        align: left
      bi_imports_mvw_gold.media_frete_c40:
        align: left
      bi_imports_mvw_gold.nmportoorigem: {}
      bi_imports_mvw_gold.nmportodestino:
        align: left
      mediana_20:
        align: left
      mediana_40:
        align: left
      bi_imports_mvw_gold.media_frete_c40:
        align: left
      bi_imports_mvw_gold.media_frete_c20:
        align: left
    series_value_format:
      mediana_20:
        name: usd
        format_string: "$#,##0.00"
        label: U.S. Dollars (2)
      mediana_40:
        name: usd
        format_string: "$#,##0.00"
        label: U.S. Dollars (2)
      bi_imports_mvw_gold.media_frete_c20:
        name: usd
        format_string: "$#,##0.00"
        label: U.S. Dollars (2)
      bi_imports_mvw_gold.media_frete_c40:
        name: usd
        format_string: "$#,##0.00"
        label: U.S. Dollars (2)
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    hidden_fields: [bi_imports_mvw_gold.teus, bi_imports_mvw_gold.c20, bi_imports_mvw_gold.c40,
      bi_imports_mvw_gold.vlfrete]
    note_state: collapsed
    note_display: hover
    note_text: 'Valores expressados em USD / Apenas containers tipo DRY e REEFER

      '
    listen:
      País Embarque: bi_imports_mvw_gold.pais_embarque
      País Origem: bi_imports_mvw_gold.pais_origem
      Porto Origem: bi_imports_mvw_gold.nmportoorigem
      Porto Destino: bi_imports_mvw_gold.nmportodestino
      Data de Operação: bi_imports_mvw_gold.data_operacao_month
      Tipo Container: bi_imports_mvw_gold.tipo_fcl
    row: 0
    col: 0
    width: 15
    height: 6
  - title: País Origem
    name: País Origem
    model: Dados_Impo_Datalake
    explore: bi_imports_mvw_gold
    type: looker_grid
    fields: [bi_imports_mvw_gold.pais_origem, bi_imports_mvw_gold.media_frete_c20,
      bi_imports_mvw_gold.media_frete_c40, bi_imports_mvw_gold.teus]
    filters:
      bi_imports_mvw_gold.nmmoedafrete: DOLAR DOS EUA
    sorts: [bi_imports_mvw_gold.teus desc]
    limit: 500
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
    pinned_columns: {}
    column_order: ["$$$_row_numbers_$$$", bi_imports_mvw_gold.pais_origem, bi_imports_mvw_gold.media_frete_TEU,
      bi_imports_mvw_gold.media_frete_c20, bi_imports_mvw_gold.media_frete_c40,
      bi_imports_mvw_gold.teus]
    show_totals: true
    show_row_totals: true
    series_labels:
      bi_imports_mvw_gold.pais_origem: País
      bi_imports_mvw_gold.teus: TEUs
      bi_imports_mvw_gold.media_frete_TEU: TEU
      bi_imports_mvw_gold.media_frete_c20: 20'
      bi_imports_mvw_gold.media_frete_c40: 40'
      bi_imports_mvw_gold.media_frete_c20: Média 20'
      bi_imports_mvw_gold.media_frete_c40: Média 40'
    series_column_widths:
      bi_imports_mvw_gold.rota: 228
      bi_imports_mvw_gold.teus: 146
    series_cell_visualizations:
      bi_imports_mvw_gold.teus:
        is_active: true
        palette:
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825
          collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      bi_imports_mvw_gold.media_frete_TEU:
        is_active: false
    series_text_format:
      bi_imports_mvw_gold.pais_origem:
        align: left
      bi_imports_mvw_gold.media_frete_TEU:
        align: left
      bi_imports_mvw_gold.media_frete_c20:
        align: left
      bi_imports_mvw_gold.media_frete_c40:
        align: left
      bi_imports_mvw_gold.media_frete_c20:
        align: left
      bi_imports_mvw_gold.media_frete_c40:
        align: left
    series_value_format:
      bi_imports_mvw_gold.media_frete_c20:
        name: usd
        format_string: "$#,##0.00"
        label: U.S. Dollars (2)
      bi_imports_mvw_gold.media_frete_c40:
        name: usd
        format_string: "$#,##0.00"
        label: U.S. Dollars (2)
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    hidden_fields: [bi_imports_mvw_gold.teus]
    note_state: collapsed
    note_display: hover
    note_text: 'Valores expressados em USD / Apenas containers tipo DRY e REEFER

      '
    listen:
      País Embarque: bi_imports_mvw_gold.pais_embarque
      País Origem: bi_imports_mvw_gold.pais_origem
      Porto Origem: bi_imports_mvw_gold.nmportoorigem
      Porto Destino: bi_imports_mvw_gold.nmportodestino
      Data de Operação: bi_imports_mvw_gold.data_operacao_month
      Tipo Container: bi_imports_mvw_gold.tipo_fcl
    row: 0
    col: 15
    width: 9
    height: 6
  - title: Valor Frete Médio
    name: Valor Frete Médio
    model: Dados_Impo_Datalake
    explore: bi_imports_mvw_gold
    type: looker_line
    fields: [bi_imports_mvw_gold.media_frete_c20, bi_imports_mvw_gold.media_frete_c40,
      bi_imports_mvw_gold.teus, bi_imports_mvw_gold.data_operacao_month]
    fill_fields: [bi_imports_mvw_gold.data_operacao_month]
    filters:
      bi_imports_mvw_gold.nmmoedafrete: DOLAR DOS EUA
    limit: 500
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825
      options:
        steps: 5
        reverse: false
    y_axes: [{label: '', orientation: left, series: [{axisId: bi_imports_mvw_gold.media_frete_c20,
            id: bi_imports_mvw_gold.media_frete_c20, name: 20&#39;}, {axisId: bi_imports_mvw_gold.media_frete_c40,
            id: bi_imports_mvw_gold.media_frete_c40, name: 40&#39;}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: left, series: [{axisId: bi_imports_mvw_gold.teus,
            id: bi_imports_mvw_gold.teus, name: TEUs}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types:
      bi_imports_mvw_gold.teus: column
    series_colors:
      bi_imports_mvw_gold.media_frete_c20: "#bbd0ff"
    series_labels:
      bi_imports_mvw_gold.media_frete_TEU: TEU
      bi_imports_mvw_gold.media_frete_c20: 20'
      bi_imports_mvw_gold.media_frete_c40: 40'
      bi_imports_mvw_gold.teus: TEUs
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", bi_imports_mvw_gold.rota, bi_imports_mvw_gold.media_frete_TEU,
      bi_imports_mvw_gold.teus]
    show_totals: true
    show_row_totals: true
    series_column_widths:
      bi_imports_mvw_gold.rota: 228
    series_cell_visualizations:
      bi_imports_mvw_gold.teus:
        is_active: true
        palette:
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825
          collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      bi_imports_mvw_gold.media_frete_TEU:
        is_active: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields:
    note_state: collapsed
    note_display: hover
    note_text: 'Valores expressados em USD / Apenas containers tipo DRY e REEFER

      '
    listen:
      País Origem: bi_imports_mvw_gold.pais_origem
      Porto Origem: bi_imports_mvw_gold.nmportoorigem
      Porto Destino: bi_imports_mvw_gold.nmportodestino
      Data de Operação: bi_imports_mvw_gold.data_operacao_month
      Tipo Container: bi_imports_mvw_gold.tipo_fcl
    row: 6
    col: 0
    width: 24
    height: 7
  filters:
  - name: Data de Operação
    title: Data de Operação
    type: field_filter
    default_value: 6 month
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: Dados_Impo_Datalake
    explore: bi_imports_mvw_gold
    listens_to_filters: []
    field: bi_imports_mvw_gold.data_operacao_month
  - name: Porto Origem
    title: Porto Origem
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: Dados_Impo_Datalake
    explore: bi_imports_mvw_gold
    listens_to_filters: []
    field: bi_imports_mvw_gold.nmportoorigem
  - name: País Origem
    title: País Origem
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: Dados_Impo_Datalake
    explore: bi_imports_mvw_gold
    listens_to_filters: []
    field: bi_imports_mvw_gold.pais_origem
  - name: País Embarque
    title: País Embarque
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: Dados_Impo_Datalake
    explore: bi_imports_mvw_gold
    listens_to_filters: []
    field: bi_imports_mvw_gold.pais_embarque
  - name: Porto Destino
    title: Porto Destino
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: Dados_Impo_Datalake
    explore: bi_imports_mvw_gold
    listens_to_filters: []
    field: bi_imports_mvw_gold.nmportodestino
  - name: Tipo Container
    title: Tipo Container
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_group
      display: popover
      options:
      - DRY
      - REEFER
    model: Dados_Impo_Datalake
    explore: bi_imports_mvw_gold
    listens_to_filters: []
    field: bi_imports_mvw_gold.tipo_fcl
