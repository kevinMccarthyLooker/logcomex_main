- dashboard: st_importacao_fase01
  title: FASE 01
  layout: newspaper
  preferred_viewer: dashboards-next
  crossfilter_enabled: true
  elements:
  - name: Visão Mercado - ST IMPORTAÇÕES
    type: text
    title_text: Visão Mercado - ST IMPORTAÇÕES
    subtitle_text: ''
    body_text: ''
    row: 0
    col: 0
    width: 24
    height: 3
  - title: Valor FOB Importado
    name: Valor FOB Importado
    model: external_st_importacoes
    explore: st_importacoes_fase01
    type: single_value
    fields: [st_importacoes_fase01.fob_sum]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_format: "$#,##0"
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#3EB0D5",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
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
    series_types: {}
    defaults_version: 1
    listen:
      Importador Nome: st_importacoes_fase01.importador_nome
      Período: st_importacoes_fase01.anomes
      NCM: st_importacoes_fase01.cdncm_compl
      Produto: st_importacoes_fase01.produto
    row: 3
    col: 0
    width: 5
    height: 3
  - title: Quantidade
    name: Quantidade
    model: external_st_importacoes
    explore: st_importacoes_fase01
    type: single_value
    fields: [st_importacoes_fase01.count]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_format: ''
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#3EB0D5",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
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
    series_types: {}
    defaults_version: 1
    listen:
      Importador Nome: st_importacoes_fase01.importador_nome
      Período: st_importacoes_fase01.anomes
      NCM: st_importacoes_fase01.cdncm_compl
      Produto: st_importacoes_fase01.produto
    row: 6
    col: 0
    width: 5
    height: 3
  - title: Tendência - FOB
    name: Tendência - FOB
    model: external_st_importacoes
    explore: st_importacoes_fase01
    type: looker_column
    fields: [st_importacoes_fase01.anomes, st_importacoes_fase01.fob_sum, st_importacoes_fase01.count]
    sorts: [st_importacoes_fase01.anomes]
    limit: 500
    dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: "${st_importacoes_fase01.fob_sum}",
        value_format: "$#,##0", value_format_name: !!null '', _kind_hint: measure,
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: st_importacoes_fase01.fob_sum,
            id: st_importacoes_fase01.fob_sum, name: Fob Sum}], showLabels: true,
        showValues: true, valueFormat: "$#,##0", unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: !!null '', orientation: right,
        series: [{axisId: st_importacoes_fase01.count, id: st_importacoes_fase01.count,
            name: Quantidade}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    label_value_format: ''
    series_types:
      st_importacoes_fase01.count: line
    series_colors:
      calculation_1: "#3EB0D5"
      st_importacoes_fase01.count: "#B1399E"
    series_labels:
      st_importacoes_fase01.count: Quantidade
      calculation_1: Fob Sum
    custom_color_enabled: true
    show_single_value_title: true
    value_format: ''
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#3EB0D5",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    defaults_version: 1
    hidden_fields: [st_importacoes_fase01.fob_sum]
    listen:
      Importador Nome: st_importacoes_fase01.importador_nome
      Período: st_importacoes_fase01.anomes
      NCM: st_importacoes_fase01.cdncm_compl
      Produto: st_importacoes_fase01.produto
    row: 3
    col: 5
    width: 19
    height: 6
  - title: Ranking de Importadores - TOP 15
    name: Ranking de Importadores - TOP 15
    model: external_st_importacoes
    explore: st_importacoes_fase01
    type: looker_column
    fields: [st_importacoes_fase01.importador_nome, st_importacoes_fase01.fob_sum,
      st_importacoes_fase01.count]
    filters: {}
    sorts: [st_importacoes_fase01.fob_sum desc]
    limit: 15
    dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: "${st_importacoes_fase01.fob_sum}",
        value_format: "$#,##0", value_format_name: !!null '', _kind_hint: measure,
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
    limit_displayed_rows: true
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
    y_axes: [{label: '', orientation: left, series: [{axisId: st_importacoes_fase01.fob_sum,
            id: st_importacoes_fase01.fob_sum, name: Fob Sum}], showLabels: true,
        showValues: true, valueFormat: "$#,##0", unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: !!null '', orientation: right,
        series: [{axisId: st_importacoes_fase01.count, id: st_importacoes_fase01.count,
            name: Quantidade}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '15'
    series_types:
      st_importacoes_fase01.count: line
    series_colors:
      st_importacoes_fase01.count: "#B1399E"
      calculation_1: "#3EB0D5"
    series_labels:
      st_importacoes_fase01.count: Quantidade
      calculation_1: Fob Sum
    defaults_version: 1
    hidden_fields: [st_importacoes_fase01.fob_sum]
    listen:
      Importador Nome: st_importacoes_fase01.importador_nome
      Período: st_importacoes_fase01.anomes
      NCM: st_importacoes_fase01.cdncm_compl
      Produto: st_importacoes_fase01.produto
    row: 35
    col: 0
    width: 24
    height: 8
  - title: NCMs Importados
    name: NCMs Importados
    model: external_st_importacoes
    explore: st_importacoes_fase01
    type: looker_grid
    fields: [st_importacoes_fase01.ncm_desc, st_importacoes_fase01.fob_sum, st_importacoes_fase01.count]
    sorts: [st_importacoes_fase01.fob_sum desc]
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
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_labels:
      st_importacoes_fase01.count: Quantidade
    series_cell_visualizations:
      st_importacoes_fase01.fob_sum:
        is_active: true
    series_value_format:
      st_importacoes_fase01.fob_sum: "$#,##0.00"
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
    listen:
      Importador Nome: st_importacoes_fase01.importador_nome
      Período: st_importacoes_fase01.anomes
      NCM: st_importacoes_fase01.cdncm_compl
      Produto: st_importacoes_fase01.produto
    row: 9
    col: 0
    width: 8
    height: 10
  - title: País Origem
    name: País Origem
    model: external_st_importacoes
    explore: st_importacoes_fase01
    type: looker_map
    fields: [st_importacoes_fase01.fob_sum, st_importacoes_fase01.store_location]
    sorts: [st_importacoes_fase01.fob_sum]
    limit: 500
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: custom
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: pixels
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: value
    show_view_names: false
    show_legend: true
    quantize_map_value_colors: true
    reverse_map_value_colors: false
    map_latitude: 4.565473550710278
    map_longitude: 2.9882812500000004
    map_zoom: 2
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
    y_axes: [{label: '', orientation: left, series: [{axisId: st_importacoes_fase01.fob_sum,
            id: st_importacoes_fase01.fob_sum, name: Fob Sum}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: st_importacoes_fase01.count,
            id: st_importacoes_fase01.count, name: Quantidade}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types: {}
    series_labels:
      st_importacoes_fase01.count: Quantidade
    defaults_version: 1
    map: auto
    map_projection: ''
    quantize_colors: false
    listen:
      Importador Nome: st_importacoes_fase01.importador_nome
      Período: st_importacoes_fase01.anomes
      NCM: st_importacoes_fase01.cdncm_compl
      Produto: st_importacoes_fase01.produto
    row: 9
    col: 8
    width: 16
    height: 10
  - title: Unidades Importadas
    name: Unidades Importadas
    model: external_st_importacoes
    explore: st_importacoes_fase01
    type: looker_grid
    fields: [st_importacoes_fase01.qtde_comerc_sum, st_importacoes_fase01.tp_unid_comerc]
    filters:
      st_importacoes_fase01.tp_unid_comerc: "-EMPTY"
    sorts: [st_importacoes_fase01.qtde_comerc_sum desc]
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
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_labels:
      st_importacoes_fase01.count: Quantidade
      st_importacoes_fase01.tp_unid_comerc: Unid. Importada
      st_importacoes_fase01.qtde_comerc_sum: Qtde Importada
    series_cell_visualizations:
      st_importacoes_fase01.qtde_comerc_sum:
        is_active: true
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: custom
    map_latitude: 4.565473550710278
    map_longitude: 2.9882812500000004
    map_zoom: 2
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: pixels
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: value
    show_legend: true
    quantize_map_value_colors: true
    reverse_map_value_colors: false
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
    y_axes: [{label: '', orientation: left, series: [{axisId: st_importacoes_fase01.fob_sum,
            id: st_importacoes_fase01.fob_sum, name: Fob Sum}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: st_importacoes_fase01.count,
            id: st_importacoes_fase01.count, name: Quantidade}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types: {}
    defaults_version: 1
    map: auto
    map_projection: ''
    quantize_colors: false
    listen:
      Importador Nome: st_importacoes_fase01.importador_nome
      Período: st_importacoes_fase01.anomes
      NCM: st_importacoes_fase01.cdncm_compl
      Produto: st_importacoes_fase01.produto
    row: 43
    col: 0
    width: 12
    height: 6
  - title: Unid Importadas - Modal
    name: Unid Importadas - Modal
    model: external_st_importacoes
    explore: st_importacoes_fase01
    type: looker_pie
    fields: [st_importacoes_fase01.via_transp, st_importacoes_fase01.fob_sum]
    limit: 500
    value_labels: legend
    label_type: labPer
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
      st_importacoes_fase01.count: Quantidade
      st_importacoes_fase01.via_transp: Transporte
      st_importacoes_fase01.qtde_comerc_sum: Qtde Comercializada
    series_cell_visualizations:
      st_importacoes_fase01.qtde_comerc_sum:
        is_active: true
      st_importacoes_fase01.fob_sum:
        is_active: false
    series_value_format:
      st_importacoes_fase01.fob_sum: "$#,##0"
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: custom
    map_latitude: 4.565473550710278
    map_longitude: 2.9882812500000004
    map_zoom: 2
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: pixels
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: value
    show_legend: true
    quantize_map_value_colors: true
    reverse_map_value_colors: false
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
    y_axes: [{label: '', orientation: left, series: [{axisId: st_importacoes_fase01.fob_sum,
            id: st_importacoes_fase01.fob_sum, name: Fob Sum}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: st_importacoes_fase01.count,
            id: st_importacoes_fase01.count, name: Quantidade}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types: {}
    defaults_version: 1
    map: auto
    map_projection: ''
    quantize_colors: false
    listen:
      Importador Nome: st_importacoes_fase01.importador_nome
      Período: st_importacoes_fase01.anomes
      NCM: st_importacoes_fase01.cdncm_compl
      Produto: st_importacoes_fase01.produto
    row: 43
    col: 12
    width: 12
    height: 6
  - title: Descrições
    name: Descrições
    model: external_st_importacoes
    explore: st_importacoes_fase01
    type: looker_grid
    fields: [st_importacoes_fase01.qtde_comerc_sum, st_importacoes_fase01.desc_prodt,
      st_importacoes_fase01.tp_unid_comerc, st_importacoes_fase01.fob_sum, st_importacoes_fase01.val_fob_un_us_num_avg]
    filters:
      st_importacoes_fase01.tp_unid_comerc: "-EMPTY"
    sorts: [st_importacoes_fase01.qtde_comerc_sum desc]
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
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", st_importacoes_fase01.desc_prodt, st_importacoes_fase01.qtde_comerc_sum,
      st_importacoes_fase01.tp_unid_comerc, st_importacoes_fase01.fob_sum, st_importacoes_fase01.val_fob_un_us_num_avg]
    show_totals: true
    show_row_totals: true
    series_labels:
      st_importacoes_fase01.count: Quantidade
      st_importacoes_fase01.desc_prodt: Produto
      st_importacoes_fase01.tp_unid_comerc: Tipo Unidade
      st_importacoes_fase01.qtde_comerc_sum: Quantidade
      st_importacoes_fase01.val_fob_un_us_num_avg: Média Valor Unidade
    series_cell_visualizations:
      st_importacoes_fase01.qtde_comerc_sum:
        is_active: false
      st_importacoes_fase01.fob_sum:
        is_active: true
    series_value_format:
      st_importacoes_fase01.fob_sum: "$#,##0"
      st_importacoes_fase01.val_fob_un_us_num_avg:
        name: usd
        format_string: "$#,##0.00"
        label: U.S. Dollars (2)
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: custom
    map_latitude: 4.565473550710278
    map_longitude: 2.9882812500000004
    map_zoom: 2
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: pixels
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: value
    show_legend: true
    quantize_map_value_colors: true
    reverse_map_value_colors: false
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
    y_axes: [{label: '', orientation: left, series: [{axisId: st_importacoes_fase01.fob_sum,
            id: st_importacoes_fase01.fob_sum, name: Fob Sum}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: st_importacoes_fase01.count,
            id: st_importacoes_fase01.count, name: Quantidade}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types: {}
    defaults_version: 1
    map: auto
    map_projection: ''
    quantize_colors: false
    listen:
      Importador Nome: st_importacoes_fase01.importador_nome
      Período: st_importacoes_fase01.anomes
      NCM: st_importacoes_fase01.cdncm_compl
      Produto: st_importacoes_fase01.produto
    row: 49
    col: 0
    width: 24
    height: 6
  - title: Gênero - FOB
    name: Gênero - FOB
    model: external_st_importacoes
    explore: st_importacoes_fase01
    type: looker_pie
    fields: [st_importacoes_fase01.genero, st_importacoes_fase01.fob_sum]
    limit: 500
    value_labels: legend
    label_type: labPer
    series_types: {}
    defaults_version: 1
    listen:
      Importador Nome: st_importacoes_fase01.importador_nome
      Período: st_importacoes_fase01.anomes
      NCM: st_importacoes_fase01.cdncm_compl
      Produto: st_importacoes_fase01.produto
    row: 27
    col: 0
    width: 5
    height: 8
  - title: Produtos - FOB
    name: Produtos - FOB
    model: external_st_importacoes
    explore: st_importacoes_fase01
    type: looker_column
    fields: [st_importacoes_fase01.fob_sum, st_importacoes_fase01.produto]
    sorts: [st_importacoes_fase01.fob_sum desc]
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    label_value_format: "$#,##0"
    series_types: {}
    value_labels: legend
    label_type: labPer
    defaults_version: 1
    listen:
      Importador Nome: st_importacoes_fase01.importador_nome
      Período: st_importacoes_fase01.anomes
      NCM: st_importacoes_fase01.cdncm_compl
      Produto: st_importacoes_fase01.produto
    row: 19
    col: 0
    width: 24
    height: 8
  - title: Material - FOB
    name: Material - FOB
    model: external_st_importacoes
    explore: st_importacoes_fase01
    type: looker_column
    fields: [st_importacoes_fase01.fob_sum, st_importacoes_fase01.material]
    sorts: [st_importacoes_fase01.fob_sum desc]
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    label_value_format: "$#,##0"
    series_types: {}
    value_labels: legend
    label_type: labPer
    defaults_version: 1
    listen:
      Importador Nome: st_importacoes_fase01.importador_nome
      Período: st_importacoes_fase01.anomes
      NCM: st_importacoes_fase01.cdncm_compl
      Produto: st_importacoes_fase01.produto
    row: 27
    col: 5
    width: 19
    height: 8
  filters:
  - name: Importador Nome
    title: Importador Nome
    type: field_filter
    default_value: ZARA BRASIL LTDA
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
      options: []
    model: external_st_importacoes
    explore: st_importacoes_fase01
    listens_to_filters: []
    field: st_importacoes_fase01.importador_nome
  - name: Período
    title: Período
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
      options: []
    model: external_st_importacoes
    explore: st_importacoes_fase01
    listens_to_filters: []
    field: st_importacoes_fase01.anomes
  - name: NCM
    title: NCM
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
      options: []
    model: external_st_importacoes
    explore: st_importacoes_fase01
    listens_to_filters: []
    field: st_importacoes_fase01.cdncm_compl
  - name: Produto
    title: Produto
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
      options: []
    model: external_st_importacoes
    explore: st_importacoes_fase01
    listens_to_filters: []
    field: st_importacoes_fase01.produto
