- dashboard: frete_martimo__exportao
  title: Frete Marítimo - Exportação
  layout: newspaper
  preferred_viewer: dashboards-next
  crossfilter_enabled: true
  elements:
  - title: Rota
    name: Rota
    model: Dados_Expo_Datalake
    explore: bi_exports_mvw_gold
    type: looker_grid
    fields: [bi_exports_mvw_gold.mvw_porto_origem, bi_exports_mvw_gold.mvw_porto_destino,
      bi_exports_mvw_gold.mar_teus, bi_exports_mvw_gold.media_vl_frete_por_c20, bi_exports_mvw_gold.media_vl_frete_por_c40,
      bi_exports_mvw_gold.mar_c20, bi_exports_mvw_gold.mar_c40, bi_exports_mvw_gold.mar_vlfrete]
    filters:
      bi_exports_mvw_gold.mvw_moeda_frete: DOLAR DOS EUA
      bi_exports_mvw_gold.mvw_tipo_fcl: DRY,REEFER
    sorts: [bi_exports_mvw_gold.mar_teus desc]
    limit: 500
    dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: 'mean(pivot_row(${bi_exports_mvw_gold.mar_vlfrete}))',
        value_format: !!null '', value_format_name: !!null '', is_disabled: true,
        _kind_hint: supermeasure, _type_hint: number}, {table_calculation: calculation_2,
        label: Calculation 2, expression: 'median(${bi_exports_mvw_gold.mar_vlfrete})/median(${bi_exports_mvw_gold.mar_teus})',
        value_format: !!null '', value_format_name: !!null '', is_disabled: true,
        _kind_hint: measure, _type_hint: number}, {table_calculation: mediana_20,
        label: Mediana 20', expression: "(((${bi_exports_mvw_gold.mar_vlfrete}/${bi_exports_mvw_gold.mar_teus})*${bi_exports_mvw_gold.mar_c20})/${bi_exports_mvw_gold.mar_c20})",
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}, {table_calculation: mediana_40, label: Mediana 40', expression: "(((${bi_exports_mvw_gold.mar_vlfrete}/${bi_exports_mvw_gold.mar_teus})*(2*${bi_exports_mvw_gold.mar_c40}))/${bi_exports_mvw_gold.mar_c40})",
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}]
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
    column_order: ["$$$_row_numbers_$$$", bi_exports_mvw_gold.mvw_porto_origem, bi_exports_mvw_gold.mvw_porto_destino,
      bi_exports_mvw_gold.mar_vl_frete_por_c20, bi_exports_mvw_gold.mar_vl_frete_por_c40,
      bi_exports_mvw_gold.media_vl_frete_por_c20, bi_exports_mvw_gold.media_vl_frete_por_c40,
      bi_exports_mvw_gold.mar_teus, bi_exports_mvw_gold.mar_c20, bi_exports_mvw_gold.mar_c40,
      bi_exports_mvw_gold.mar_vlfrete]
    show_totals: true
    show_row_totals: true
    series_labels:
      bi_exports_mvw_gold.mvw_porto_origem: Origem
      bi_exports_mvw_gold.mvw_porto_destino: Destino
      bi_exports_mvw_gold.mar_vl_frete_por_c20: 20'
      bi_exports_mvw_gold.mar_teus: TEU
      bi_exports_mvw_gold.mar_vl_frete_por_c40: 40'
      bi_exports_mvw_gold.mar_vl_frete_por_TEU: TEU
      bi_exports_mvw_gold.media_vl_frete_por_c20: Média 20'
      bi_exports_mvw_gold.media_vl_frete_por_c40: Média 40'
    series_column_widths: {}
    series_cell_visualizations:
      bi_exports_mvw_gold.mar_vl_frete_por_c20:
        is_active: false
    series_text_format:
      bi_exports_mvw_gold.mvw_porto_origem:
        align: left
      bi_exports_mvw_gold.mvw_porto_destino:
        align: left
      bi_exports_mvw_gold.mar_vl_frete_por_c20:
        align: left
      bi_exports_mvw_gold.mar_teus:
        align: left
      bi_exports_mvw_gold.mar_vl_frete_por_TEU:
        align: left
      bi_exports_mvw_gold.mar_vl_frete_por_c40:
        align: left
      bi_exports_mvw_gold.media_vl_frete_por_c40:
        align: left
      bi_exports_mvw_gold.media_vl_frete_por_c20:
        align: left
      mediana_20:
        align: left
      mediana_40:
        align: left
    series_value_format:
      bi_exports_mvw_gold.mar_vl_frete_por_c40:
        name: usd
        format_string: "$#,##0.00"
        label: U.S. Dollars (2)
      bi_exports_mvw_gold.mar_vl_frete_por_c20:
        name: usd
        format_string: "$#,##0.00"
        label: U.S. Dollars (2)
      bi_exports_mvw_gold.mar_vl_frete_por_TEU:
        name: usd
        format_string: "$#,##0.00"
        label: U.S. Dollars (2)
      mediana_20:
        name: usd
        format_string: "$#,##0.00"
        label: U.S. Dollars (2)
      mediana_40:
        name: usd
        format_string: "$#,##0.00"
        label: U.S. Dollars (2)
      bi_exports_mvw_gold.media_vl_frete_por_c20:
        name: usd
        format_string: "$#,##0.00"
        label: U.S. Dollars (2)
      bi_exports_mvw_gold.media_vl_frete_por_c40:
        name: usd
        format_string: "$#,##0.00"
        label: U.S. Dollars (2)
    hidden_fields: [bi_exports_mvw_gold.mar_teus, bi_exports_mvw_gold.mar_c20, bi_exports_mvw_gold.mar_c40,
      bi_exports_mvw_gold.mar_vlfrete]
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
    note_state: collapsed
    note_display: hover
    note_text: 'Valores expressados em USD / Apenas containers tipo DRY e REEFER

      '
    listen:
      País De Destino: bi_exports_mvw_gold.mvw_pais_de_destino
      Data Embarque: bi_exports_mvw_gold.mvw_data_embarque_month
      Porto Origem: bi_exports_mvw_gold.mvw_porto_origem
      Porto Destino: bi_exports_mvw_gold.mvw_porto_destino
    row: 0
    col: 0
    width: 13
    height: 6
  - title: País de Destino
    name: País de Destino
    model: Dados_Expo_Datalake
    explore: bi_exports_mvw_gold
    type: looker_grid
    fields: [bi_exports_mvw_gold.mar_vl_frete_por_c20, bi_exports_mvw_gold.mar_vl_frete_por_c40,
      bi_exports_mvw_gold.mar_teus, bi_exports_mvw_gold.mvw_pais_de_destino, bi_exports_mvw_gold.mar_c20,
      bi_exports_mvw_gold.mar_c40, bi_exports_mvw_gold.mar_vlfrete]
    filters:
      bi_exports_mvw_gold.mvw_moeda_frete: DOLAR DOS EUA
      bi_exports_mvw_gold.mvw_tipo_fcl: DRY,REEFER
    sorts: [bi_exports_mvw_gold.mar_teus desc]
    limit: 500
    dynamic_fields: [{table_calculation: mediana_20, label: Mediana 20', expression: "(((${bi_exports_mvw_gold.mar_vlfrete}/${bi_exports_mvw_gold.mar_teus})*${bi_exports_mvw_gold.mar_c20})/${bi_exports_mvw_gold.mar_c20})",
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}, {table_calculation: mediana_40, label: Mediana 40', expression: "(((${bi_exports_mvw_gold.mar_vlfrete}/${bi_exports_mvw_gold.mar_teus})*(2*${bi_exports_mvw_gold.mar_c40}))/${bi_exports_mvw_gold.mar_c40})",
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}]
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
    column_order: ["$$$_row_numbers_$$$", bi_exports_mvw_gold.mvw_pais_de_destino,
      bi_exports_mvw_gold.mar_vl_frete_por_c20, bi_exports_mvw_gold.mar_vl_frete_por_c40,
      bi_exports_mvw_gold.mar_vl_frete_por_TEU]
    show_totals: true
    show_row_totals: true
    series_labels:
      bi_exports_mvw_gold.mvw_porto_origem: Porto Origem
      bi_exports_mvw_gold.mvw_porto_destino: Porto Destino
      bi_exports_mvw_gold.mar_vl_frete_por_c20: Média 20'
      bi_exports_mvw_gold.mar_teus: TEU
      bi_exports_mvw_gold.mar_vl_frete_por_c40: Média 40'
      bi_exports_mvw_gold.mar_vl_frete_por_TEU: TEU
      bi_exports_mvw_gold.mvw_pais_de_destino: País
    series_column_widths: {}
    series_cell_visualizations:
      bi_exports_mvw_gold.mar_vl_frete_por_c20:
        is_active: false
    series_text_format:
      bi_exports_mvw_gold.mvw_porto_origem:
        align: left
      bi_exports_mvw_gold.mvw_porto_destino:
        align: left
      bi_exports_mvw_gold.mar_vl_frete_por_c20:
        align: left
      bi_exports_mvw_gold.mar_teus:
        align: left
      bi_exports_mvw_gold.mar_vl_frete_por_TEU:
        align: left
      bi_exports_mvw_gold.mar_vl_frete_por_c40:
        align: left
      mediana_40:
        align: left
      mediana_20:
        align: left
    series_value_format:
      bi_exports_mvw_gold.mar_vl_frete_por_c40:
        name: usd
        format_string: "$#,##0.00"
        label: U.S. Dollars (2)
      bi_exports_mvw_gold.mar_vl_frete_por_c20:
        name: usd
        format_string: "$#,##0.00"
        label: U.S. Dollars (2)
      bi_exports_mvw_gold.mar_vl_frete_por_TEU:
        name: usd
        format_string: "$#,##0.00"
        label: U.S. Dollars (2)
      mediana_40:
        name: usd
        format_string: "$#,##0.00"
        label: U.S. Dollars (2)
      mediana_20:
        name: usd
        format_string: "$#,##0.00"
        label: U.S. Dollars (2)
    hidden_fields: [bi_exports_mvw_gold.mar_teus, bi_exports_mvw_gold.mar_c20, bi_exports_mvw_gold.mar_c40,
      bi_exports_mvw_gold.mar_vlfrete]
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
    note_state: collapsed
    note_display: hover
    note_text: 'Valores expressados em USD / Apenas containers tipo DRY e REEFER

      '
    listen:
      País De Destino: bi_exports_mvw_gold.mvw_pais_de_destino
      Data Embarque: bi_exports_mvw_gold.mvw_data_embarque_month
      Porto Origem: bi_exports_mvw_gold.mvw_porto_origem
      Porto Destino: bi_exports_mvw_gold.mvw_porto_destino
    row: 0
    col: 13
    width: 11
    height: 6
  - title: Valor Frete Médio
    name: Valor Frete Médio
    model: Dados_Expo_Datalake
    explore: bi_exports_mvw_gold
    type: looker_line
    fields: [bi_exports_mvw_gold.mar_teus, bi_exports_mvw_gold.mvw_data_embarque_month,
      bi_exports_mvw_gold.media_vl_frete_por_c20, bi_exports_mvw_gold.media_vl_frete_por_c40]
    fill_fields: [bi_exports_mvw_gold.mvw_data_embarque_month]
    filters:
      bi_exports_mvw_gold.mvw_moeda_frete: DOLAR DOS EUA
      bi_exports_mvw_gold.mvw_tipo_fcl: DRY,REEFER
    sorts: [bi_exports_mvw_gold.mvw_data_embarque_month desc]
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
        reverse: true
    y_axes: [{label: '', orientation: left, series: [{axisId: bi_exports_mvw_gold.mar_vl_frete_por_c20,
            id: bi_exports_mvw_gold.mar_vl_frete_por_c20, name: 20&#39;}, {axisId: bi_exports_mvw_gold.mar_vl_frete_por_c40,
            id: bi_exports_mvw_gold.mar_vl_frete_por_c40, name: 40&#39;}, {axisId: bi_exports_mvw_gold.mar_vl_frete_por_TEU,
            id: bi_exports_mvw_gold.mar_vl_frete_por_TEU, name: TEU}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: bi_exports_mvw_gold.mar_teus,
            id: bi_exports_mvw_gold.mar_teus, name: TEU&#39;s}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_label: Data de Embarque
    series_types:
      bi_exports_mvw_gold.mar_teus: column
    series_colors:
      bi_exports_mvw_gold.media_vl_frete_por_c40: "#91beff"
    series_labels:
      bi_exports_mvw_gold.mvw_porto_origem: Porto Origem
      bi_exports_mvw_gold.mvw_porto_destino: Porto Destino
      bi_exports_mvw_gold.mar_vl_frete_por_c20: 20'
      bi_exports_mvw_gold.mar_teus: TEU's
      bi_exports_mvw_gold.mar_vl_frete_por_c40: 40'
      bi_exports_mvw_gold.mar_vl_frete_por_TEU: TEU
      bi_exports_mvw_gold.mvw_pais_de_destino: País de Destino
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
    column_order: ["$$$_row_numbers_$$$", bi_exports_mvw_gold.mvw_pais_de_destino,
      bi_exports_mvw_gold.mar_vl_frete_por_c20, bi_exports_mvw_gold.mar_vl_frete_por_c40,
      bi_exports_mvw_gold.mar_vl_frete_por_TEU]
    show_totals: true
    show_row_totals: true
    series_column_widths: {}
    series_cell_visualizations:
      bi_exports_mvw_gold.mar_vl_frete_por_c20:
        is_active: false
    series_text_format:
      bi_exports_mvw_gold.mvw_porto_origem:
        align: left
      bi_exports_mvw_gold.mvw_porto_destino:
        align: left
      bi_exports_mvw_gold.mar_vl_frete_por_c20:
        align: left
      bi_exports_mvw_gold.mar_teus_total:
        align: left
      bi_exports_mvw_gold.mar_vl_frete_por_TEU:
        align: left
      bi_exports_mvw_gold.mar_vl_frete_por_c40:
        align: left
    series_value_format:
      bi_exports_mvw_gold.mar_vl_frete_por_c40:
        name: usd
        format_string: "$#,##0.00"
        label: U.S. Dollars (2)
      bi_exports_mvw_gold.mar_vl_frete_por_c20:
        name: usd
        format_string: "$#,##0.00"
        label: U.S. Dollars (2)
      bi_exports_mvw_gold.mar_vl_frete_por_TEU:
        name: usd
        format_string: "$#,##0.00"
        label: U.S. Dollars (2)
    hidden_fields:
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    note_state: collapsed
    note_display: hover
    note_text: 'Valores expressados em USD / Apenas containers tipo DRY e REEFER

      '
    listen:
      País De Destino: bi_exports_mvw_gold.mvw_pais_de_destino
      Data Embarque: bi_exports_mvw_gold.mvw_data_embarque_month
      Porto Origem: bi_exports_mvw_gold.mvw_porto_origem
      Porto Destino: bi_exports_mvw_gold.mvw_porto_destino
    row: 6
    col: 0
    width: 24
    height: 8
  filters:
  - name: Data Embarque
    title: Data Embarque
    type: field_filter
    default_value: 3 month
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
    explore: bi_exports_mvw_gold
    listens_to_filters: []
    field: bi_exports_mvw_gold.mvw_porto_origem
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
    explore: bi_exports_mvw_gold
    listens_to_filters: []
    field: bi_exports_mvw_gold.mvw_porto_destino
  - name: País De Destino
    title: País De Destino
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
    field: bi_exports_mvw_gold.mvw_pais_de_destino
