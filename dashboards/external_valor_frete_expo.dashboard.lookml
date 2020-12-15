- dashboard: mdia_valor_frete_por_rota__exportao
  title: Média valor frete por rota - Exportação
  layout: newspaper
  preferred_viewer: dashboards-next
  crossfilter_enabled: true
  elements:
  - title: Média por País Destino
    name: Média por País Destino
    model: Dados_Expo_Datalake
    explore: bi_exports_mvw_gold
    type: looker_grid
    fields: [bi_exports_mvw_gold.mvw_pais_de_destino, bi_exports_mvw_gold.mar_vl_frete_por_TEU,
      bi_exports_mvw_gold.mar_vl_frete_por_c20, bi_exports_mvw_gold.mar_vl_frete_por_c40]
    filters:
      bi_exports_mvw_gold.mvw_moeda_frete: DOLAR DOS EUA
      bi_exports_mvw_gold.mvw_tipo_fcl: DRY,REEFER
    limit: 500
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
    column_order: ["$$$_row_numbers_$$$", bi_exports_mvw_gold.mvw_pais_de_destino,
      bi_exports_mvw_gold.mar_vl_frete_por_c20, bi_exports_mvw_gold.mar_vl_frete_por_c40,
      bi_exports_mvw_gold.mar_vl_frete_por_TEU, bi_exports_mvw_gold.mar_teus]
    show_totals: true
    show_row_totals: true
    series_labels:
      bi_exports_mvw_gold.mvw_pais_de_destino: País Destino
      bi_exports_mvw_gold.mar_vl_frete_por_TEU: TEU
      bi_exports_mvw_gold.mar_vl_frete_por_c20: 20'
      bi_exports_mvw_gold.mar_vl_frete_por_c40: 40'
      bi_exports_mvw_gold.mar_teus: TEUs
    series_column_widths: {}
    series_cell_visualizations:
      bi_exports_mvw_gold.mar_vl_frete_por_TEU:
        is_active: false
      bi_exports_mvw_gold.mar_teus:
        is_active: true
        palette:
          palette_id: 471a8295-662d-46fc-bd2d-2d0acd370c1e
          collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
    series_text_format:
      bi_exports_mvw_gold.mvw_pais_de_destino:
        align: left
      bi_exports_mvw_gold.mar_vl_frete_por_TEU:
        align: left
      bi_exports_mvw_gold.mar_vl_frete_por_c20:
        align: left
      bi_exports_mvw_gold.mar_vl_frete_por_c40:
        align: left
    header_background_color: ''
    truncate_column_names: true
    defaults_version: 1
    series_types: {}
    hidden_fields: []
    row: 0
    col: 12
    width: 12
    height: 5
  - title: Média por Rota
    name: Média por Rota
    model: Dados_Expo_Datalake
    explore: bi_exports_mvw_gold
    type: looker_grid
    fields: [bi_exports_mvw_gold.mvw_porto_origem, bi_exports_mvw_gold.mvw_porto_destino,
      bi_exports_mvw_gold.mar_vl_frete_por_TEU, bi_exports_mvw_gold.mar_vl_frete_por_c20,
      bi_exports_mvw_gold.mar_vl_frete_por_c40, bi_exports_mvw_gold.mar_teus]
    filters:
      bi_exports_mvw_gold.mvw_moeda_frete: DOLAR DOS EUA
      bi_exports_mvw_gold.mvw_tipo_fcl: DRY,REEFER
    sorts: [bi_exports_mvw_gold.mar_teus desc]
    limit: 500
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
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", bi_exports_mvw_gold.mvw_porto_origem, bi_exports_mvw_gold.mvw_porto_destino,
      bi_exports_mvw_gold.mar_vl_frete_por_c20, bi_exports_mvw_gold.mar_vl_frete_por_c40,
      bi_exports_mvw_gold.mar_vl_frete_por_TEU]
    show_totals: true
    show_row_totals: true
    series_labels:
      bi_exports_mvw_gold.mvw_porto_origem: Porto Origem
      bi_exports_mvw_gold.mvw_porto_destino: Porto Destino
      bi_exports_mvw_gold.mar_vl_frete_por_TEU: TEU
      bi_exports_mvw_gold.mar_vl_frete_por_c20: 20'
      bi_exports_mvw_gold.mar_vl_frete_por_c40: 40'
      bi_exports_mvw_gold.mar_teus: TEUs
    series_column_widths:
      bi_exports_mvw_gold.mar_teus: 100
    series_cell_visualizations:
      bi_exports_mvw_gold.mar_vl_frete_por_TEU:
        is_active: false
      bi_exports_mvw_gold.mar_teus:
        is_active: true
    series_text_format:
      bi_exports_mvw_gold.mar_vl_frete_por_c40:
        align: left
      bi_exports_mvw_gold.mar_vl_frete_por_c20:
        align: left
      bi_exports_mvw_gold.mar_vl_frete_por_TEU:
        align: left
      bi_exports_mvw_gold.mvw_porto_origem:
        align: left
      bi_exports_mvw_gold.mvw_porto_destino:
        align: left
    header_background_color: ''
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: !!null '',
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 1e4d66b9-f066-4c33-b0b7-cc10b4810688}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    truncate_column_names: false
    defaults_version: 1
    series_types: {}
    hidden_fields: [bi_exports_mvw_gold.mar_teus]
    row: 0
    col: 0
    width: 12
    height: 5
  - title: Frete Médio no Tempo
    name: Frete Médio no Tempo
    model: Dados_Expo_Datalake
    explore: bi_exports_mvw_gold
    type: looker_line
    fields: [bi_exports_mvw_gold.mvw_data_embarque_month, bi_exports_mvw_gold.mar_vl_frete_por_TEU,
      bi_exports_mvw_gold.mar_vl_frete_por_c20, bi_exports_mvw_gold.mar_vl_frete_por_c40,
      bi_exports_mvw_gold.mar_teus]
    fill_fields: [bi_exports_mvw_gold.mvw_data_embarque_month]
    filters:
      bi_exports_mvw_gold.mvw_moeda_frete: DOLAR DOS EUA
      bi_exports_mvw_gold.mvw_tipo_fcl: DRY,REEFER
    sorts: [bi_exports_mvw_gold.mvw_data_embarque_month desc]
    limit: 500
    query_timezone: America/Sao_Paulo
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
    y_axes: [{label: '', orientation: left, series: [{axisId: bi_exports_mvw_gold.mar_vl_frete_por_TEU,
            id: bi_exports_mvw_gold.mar_vl_frete_por_TEU, name: Mar Vl Frete Por Teu},
          {axisId: bi_exports_mvw_gold.mar_vl_frete_por_c20, id: bi_exports_mvw_gold.mar_vl_frete_por_c20,
            name: Mar Vl Frete Por C20}, {axisId: bi_exports_mvw_gold.mar_vl_frete_por_c40,
            id: bi_exports_mvw_gold.mar_vl_frete_por_c40, name: Mar Vl Frete Por C40}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: !!null '', orientation: right,
        series: [{axisId: bi_exports_mvw_gold.mar_teus, id: bi_exports_mvw_gold.mar_teus,
            name: Mar Teus}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: Mês de Embarque
    series_types:
      bi_exports_mvw_gold.mar_teus: column
    series_colors:
      bi_exports_mvw_gold.mar_teus: "#a0ccff"
      bi_exports_mvw_gold.mar_vl_frete_por_c40: "#4975de"
      bi_exports_mvw_gold.mar_vl_frete_por_c20: "#3185b0"
      bi_exports_mvw_gold.mar_vl_frete_por_TEU: "#1309d6"
    series_labels:
      bi_exports_mvw_gold.mar_teus: TEU's
      bi_exports_mvw_gold.mar_vl_frete_por_c40: 40'
      bi_exports_mvw_gold.mar_vl_frete_por_c20: 20'
      bi_exports_mvw_gold.mar_vl_frete_por_TEU: TEU
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    row: 5
    col: 0
    width: 24
    height: 7
  filters:
  - name: Período de Embarque
    title: Período de Embarque
    type: field_filter
    default_value: 12 month
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: Dados_Expo_Datalake
    explore: bi_exports_mvw_gold
    listens_to_filters: []
    field: bi_exports_mvw_gold.mvw_data_embarque_month
  - name: Porto de Origem
    title: Porto de Origem
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: Dados_Expo_Datalake
    explore: bi_exports_mvw_gold
    listens_to_filters: []
    field: bi_exports_mvw_gold.mar_nmportoorigem
  - name: Porto de Destino
    title: Porto de Destino
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: Dados_Expo_Datalake
    explore: bi_exports_mvw_gold
    listens_to_filters: []
    field: bi_exports_mvw_gold.mar_nmportodestino
  - name: País de Destino
    title: País de Destino
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: Dados_Expo_Datalake
    explore: bi_exports_mvw_gold
    listens_to_filters: []
    field: bi_exports_mvw_gold.mar_nmpaisdestfinal
