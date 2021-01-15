- dashboard: siscori_expo
  title: Siscori Expo
  layout: newspaper
  preferred_viewer: dashboards-next
  crossfilter_enabled: true
  elements:
  - title: Valor Total Exportado (U$)
    name: Valor Total Exportado (U$)
    model: Dados_Expo
    explore: db_commodities_export
    type: single_value
    fields: [db_commodities_export.val_fob_us]
    limit: 500
    query_timezone: America/Sao_Paulo
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
    value_format: ''
    show_view_names: false
    series_types: {}
    defaults_version: 1
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    series_column_widths:
      db_commodities_export.anomes: 161
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    bar_range_max: 200000000000
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
    show_value_labels: true
    font_size: 12
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
    groupBars: true
    labelSize: 10pt
    showLegend: true
    up_color: "#3EB0D5"
    down_color: "#B1399E"
    total_color: "#C2DD67"
    x_axis_scale: auto
    listen:
      URF Desembaraço: db_siscori_unid_fiscal.nome_unid_fiscal
      Mês: db_commodities_export.anomes_Mes
    row: 0
    col: 0
    width: 7
    height: 3
  - title: Peso Total Exportado (Kg)
    name: Peso Total Exportado (Kg)
    model: Dados_Expo
    explore: db_commodities_export
    type: single_value
    fields: [db_commodities_export.val_peso_liq]
    limit: 500
    query_timezone: America/Sao_Paulo
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_format: ''
    series_types: {}
    defaults_version: 1
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    series_column_widths:
      db_commodities_export.anomes: 161
    listen:
      URF Desembaraço: db_siscori_unid_fiscal.nome_unid_fiscal
      Mês: db_commodities_export.anomes_Mes
    row: 3
    col: 0
    width: 7
    height: 3
  - title: Valor e Peso - Mês à Mês
    name: Valor e Peso - Mês à Mês
    model: Dados_Expo
    explore: db_commodities_export
    type: looker_column
    fields: [db_commodities_export.val_peso_liq, db_commodities_export.anomes, db_commodities_export.val_fob_us,
      db_commodities_export.anomes_Mes]
    sorts: [db_commodities_export.anomes]
    limit: 500
    query_timezone: America/Sao_Paulo
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
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825
      options:
        steps: 5
        reverse: false
    y_axes: [{label: '', orientation: left, series: [{axisId: db_commodities_export.val_peso_liq,
            id: db_commodities_export.val_peso_liq, name: Peso Líquido}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: db_commodities_export.val_fob_us,
            id: db_commodities_export.val_fob_us, name: FOB USD}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_label: Mês
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hide_legend: false
    series_types: {}
    series_colors:
      db_commodities_export.val_peso_liq: "#64bdff"
    series_labels:
      db_commodities_export.val_peso_liq: Peso Líquido
      db_commodities_export.val_fob_us: FOB USD
    show_dropoff: false
    custom_color_enabled: true
    show_single_value_title: true
    value_format: ''
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    series_column_widths:
      db_commodities_export.anomes: 161
    hidden_fields: [db_commodities_export.anomes]
    listen:
      URF Desembaraço: db_siscori_unid_fiscal.nome_unid_fiscal
      Mês: db_commodities_export.anomes_Mes
    row: 0
    col: 7
    width: 17
    height: 6
  - title: Valor Total por NCM
    name: Valor Total por NCM
    model: Dados_Expo
    explore: db_commodities_export
    type: looker_grid
    fields: [db_commodities_export.val_fob_us, db_siscori_cod_ncm.cdncm_compl, db_siscori_cod_ncm.ncm_desc]
    sorts: [db_commodities_export.val_fob_us desc]
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
    show_totals: true
    show_row_totals: true
    series_labels:
      db_siscori_cod_ncm.cdncm_compl: NCM
      db_siscori_cod_ncm.ncm_desc: Mercadoria
      db_commodities_export.val_fob_us: FOB USD
    series_column_widths:
      db_commodities_export.anomes: 161
      db_commodities_export.id_cdncm: 244
    series_cell_visualizations:
      db_commodities_export.val_fob_us:
        is_active: true
        palette:
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825
          collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
    series_value_format:
      db_siscori_cod_ncm.cdncm_compl: '00000000'
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axes: [{label: '', orientation: left, series: [{axisId: db_commodities_export.val_peso_liq,
            id: db_commodities_export.val_peso_liq, name: Val Peso Liq}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: db_commodities_export.val_fob_us,
            id: db_commodities_export.val_fob_us, name: Val Fob Us}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
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
    series_types: {}
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    custom_color_enabled: true
    show_single_value_title: true
    value_format: ''
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    defaults_version: 1
    listen:
      URF Desembaraço: db_siscori_unid_fiscal.nome_unid_fiscal
      Mês: db_commodities_export.anomes_Mes
    row: 6
    col: 12
    width: 12
    height: 7
  - title: Valor Total por Estado
    name: Valor Total por Estado
    model: Dados_Expo
    explore: db_commodities_export
    type: looker_pie
    fields: [db_commodities_export.val_fob_us, db_siscori_unid_fiscal.uf]
    filters:
      db_siscori_unid_fiscal.uf: "-NULL"
    sorts: [db_commodities_export.val_fob_us desc]
    limit: 500
    query_timezone: America/Sao_Paulo
    value_labels: legend
    label_type: labPer
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825
      options:
        steps: 5
        reverse: true
    series_colors: {}
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
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axes: [{label: '', orientation: left, series: [{axisId: db_commodities_export.val_peso_liq,
            id: db_commodities_export.val_peso_liq, name: Val Peso Liq}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: db_commodities_export.val_fob_us,
            id: db_commodities_export.val_fob_us, name: Val Fob Us}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
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
    series_types: {}
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    custom_color_enabled: true
    show_single_value_title: true
    value_format: ''
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    defaults_version: 1
    series_column_widths:
      db_commodities_export.anomes: 161
      db_commodities_export.id_cdncm: 244
      db_siscori_unid_fiscal.desc_unid_fiscal: 412
      db_siscori_unid_fiscal.nome_unid_fiscal: 362
      db_siscori_unid_fiscal.uf: 187
    listen:
      URF Desembaraço: db_siscori_unid_fiscal.nome_unid_fiscal
      Mês: db_commodities_export.anomes_Mes
    row: 6
    col: 0
    width: 12
    height: 7
  - title: Valor Total - País Destino
    name: Valor Total - País Destino
    model: Dados_Expo
    explore: db_commodities_export
    type: looker_grid
    fields: [db_commodities_export.val_fob_us, db_commodities_export.cdpaisdestino,
      db_commodities_export.val_peso_liq]
    sorts: [db_commodities_export.val_fob_us desc]
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
    show_totals: true
    show_row_totals: true
    series_labels:
      db_siscori_unid_fiscal.nome_unid_fiscal: Unidade Fiscal
      db_commodities_export.val_fob_us: FOB USD
      db_commodities_export.val_peso_liq: Peso Líquido
      db_commodities_export.cdpaisdestino: País Destino
    series_column_widths:
      db_commodities_export.anomes: 161
      db_commodities_export.id_cdncm: 244
      db_siscori_unid_fiscal.desc_unid_fiscal: 412
      db_siscori_unid_fiscal.nome_unid_fiscal: 362
    series_cell_visualizations:
      db_commodities_export.val_fob_us:
        is_active: true
        palette:
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825
          collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axes: [{label: '', orientation: left, series: [{axisId: db_commodities_export.val_peso_liq,
            id: db_commodities_export.val_peso_liq, name: Val Peso Liq}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: db_commodities_export.val_fob_us,
            id: db_commodities_export.val_fob_us, name: Val Fob Us}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
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
    series_types: {}
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    custom_color_enabled: true
    show_single_value_title: true
    value_format: ''
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    defaults_version: 1
    listen:
      URF Desembaraço: db_siscori_unid_fiscal.nome_unid_fiscal
      Mês: db_commodities_export.anomes_Mes
    row: 13
    col: 0
    width: 12
    height: 8
  - title: Valor Total por Incoterm
    name: Valor Total por Incoterm
    model: Dados_Expo
    explore: db_commodities_export
    type: looker_bar
    fields: [db_commodities_export.val_fob_us, db_siscori_incoterm.incoterm]
    filters:
      db_siscori_incoterm.incoterm: "-NULL"
    sorts: [db_commodities_export.val_fob_us desc]
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825
      options:
        steps: 5
        reverse: true
    y_axes: [{label: !!null '', orientation: bottom, series: [{axisId: db_commodities_export.val_fob_us,
            id: db_commodities_export.val_fob_us, name: Val Fob Us}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types: {}
    series_colors:
      C+I: "#dfffff"
      OCV: "#d2f1f7"
    series_labels: {}
    value_labels: legend
    label_type: labPer
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color_enabled: true
    show_single_value_title: true
    value_format: ''
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    defaults_version: 1
    series_column_widths:
      db_commodities_export.anomes: 161
      db_commodities_export.id_cdncm: 244
      db_siscori_unid_fiscal.desc_unid_fiscal: 412
      db_siscori_unid_fiscal.nome_unid_fiscal: 362
      db_siscori_unid_fiscal.uf: 187
    show_null_points: true
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    hidden_fields: []
    hidden_points_if_no: []
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
    bar_range_max: 100000000000
    listen:
      URF Desembaraço: db_siscori_unid_fiscal.nome_unid_fiscal
      Mês: db_commodities_export.anomes_Mes
    row: 13
    col: 12
    width: 12
    height: 8
  filters:
  - name: Mês
    title: Mês
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: Dados_Expo
    explore: db_commodities_export
    listens_to_filters: []
    field: db_commodities_export.anomes_Mes
  - name: URF Desembaraço
    title: URF Desembaraço
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: Dados_Expo
    explore: db_commodities_export
    listens_to_filters: []
    field: db_siscori_unid_fiscal.nome_unid_fiscal
