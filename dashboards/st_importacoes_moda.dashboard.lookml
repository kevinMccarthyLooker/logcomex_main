- dashboard: st_importacoes_moda
  title: Visão de Mercado - Moda
  layout: newspaper
  preferred_viewer: dashboards-next
  crossfilter_enabled: true
  elements:
  - title: Valor FOB Total (US$) de Itens Importados
    name: Valor FOB Total (US$) de Itens Importados
    model: external_st_importacoes_postgres
    explore: st_importacoes_moda
    type: single_value
    fields: [st_importacoes_moda.fob_sum]
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
      NCM: st_importacoes_moda.cdncm_compl
      Produto: st_importacoes_moda.produto
      Material: st_importacoes_moda.material
      Gênero: st_importacoes_moda.genero
      Modal: st_importacoes_moda.via_transp_norm
      País de Origem: st_importacoes_moda.nm_pais_origem
      Período: st_importacoes_moda.anomes_norm
      Modelo: st_importacoes_moda.modelo
      Importador Nome: st_importacoes_moda.importador_nome
    row: 6
    col: 2
    width: 9
    height: 4
  - title: Quantidade Total de Itens Importados
    name: Quantidade Total de Itens Importados
    model: external_st_importacoes_postgres
    explore: st_importacoes_moda
    type: single_value
    fields: [st_importacoes_moda.count]
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
    note_state: collapsed
    note_display: hover
    note_text: A Quantidade de registros da base de dados.
    listen:
      NCM: st_importacoes_moda.cdncm_compl
      Produto: st_importacoes_moda.produto
      Material: st_importacoes_moda.material
      Gênero: st_importacoes_moda.genero
      Modal: st_importacoes_moda.via_transp_norm
      País de Origem: st_importacoes_moda.nm_pais_origem
      Período: st_importacoes_moda.anomes_norm
      Modelo: st_importacoes_moda.modelo
      Importador Nome: st_importacoes_moda.importador_nome
    row: 6
    col: 13
    width: 9
    height: 4
  - title: Valor FOB Total (US$) - Tendência Mensal
    name: Valor FOB Total (US$) - Tendência Mensal
    model: external_st_importacoes_postgres
    explore: st_importacoes_moda
    type: looker_column
    fields: [st_importacoes_moda.fob_sum, st_importacoes_moda.count, st_importacoes_moda.anomes_norm,
      st_importacoes_moda.anomes]
    sorts: [st_importacoes_moda.anomes]
    limit: 500
    dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: "${st_importacoes_moda.fob_sum}",
        value_format: "$#,##0", value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}]
    x_axis_gridlines: false
    y_axis_gridlines: false
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
      palette_id: afd46b40-e939-4ace-bffd-69d1bb16ee05
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: st_importacoes_moda.fob_sum,
            id: st_importacoes_moda.fob_sum, name: Fob Sum}], showLabels: true, showValues: true,
        valueFormat: "$#,##0", unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: st_importacoes_moda.count,
            id: st_importacoes_moda.count, name: Quantidade}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: Mês / Ano
    label_value_format: ''
    series_types:
      st_importacoes_moda.count: line
    series_colors:
      calculation_1: "#9BDA32"
      st_importacoes_moda.count: "#97d921"
    series_labels:
      st_importacoes_moda.count: Quantidade
      calculation_1: Valor Fob Total
    label_color: ["#7a7a7a"]
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
    hidden_fields: [st_importacoes_moda.fob_sum, st_importacoes_moda.count, st_importacoes_moda.anomes]
    listen:
      NCM: st_importacoes_moda.cdncm_compl
      Produto: st_importacoes_moda.produto
      Material: st_importacoes_moda.material
      Gênero: st_importacoes_moda.genero
      Modal: st_importacoes_moda.via_transp_norm
      País de Origem: st_importacoes_moda.nm_pais_origem
      Período: st_importacoes_moda.anomes_norm
      Modelo: st_importacoes_moda.modelo
      Importador Nome: st_importacoes_moda.importador_nome
    row: 10
    col: 0
    width: 24
    height: 7
  - title: Valor FOB Total (US$) - Ranking Importadores
    name: Valor FOB Total (US$) - Ranking Importadores
    model: external_st_importacoes_postgres
    explore: st_importacoes_moda
    type: looker_column
    fields: [st_importacoes_moda.importador_nome, st_importacoes_moda.fob_sum, st_importacoes_moda.count,
      st_importacoes_moda.importador_colorido]
    filters:
      st_importacoes_moda.importador_check: 'Yes'
      st_importacoes_moda.importador_colorido: "-ST IMPORTACOES LTDA"
    sorts: [st_importacoes_moda.fob_sum desc]
    limit: 15
    dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: "${st_importacoes_moda.fob_sum}",
        value_format: "$#,##0", value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}]
    x_axis_gridlines: false
    y_axis_gridlines: false
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
    y_axes: [{label: '', orientation: left, series: [{axisId: st_importacoes_moda.fob_sum,
            id: st_importacoes_moda.fob_sum, name: Fob Sum}], showLabels: true, showValues: true,
        valueFormat: "$#,##0", unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: st_importacoes_moda.count,
            id: st_importacoes_moda.count, name: Quantidade}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: Importador Nome
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    hide_legend: false
    series_types:
      st_importacoes_moda.count: line
    series_colors:
      st_importacoes_moda.count: "#98d91e"
      calculation_1: "#7a7a7a"
    series_labels:
      st_importacoes_moda.count: Quantidade
      calculation_1: Valor Fob Total
    defaults_version: 1
    hidden_fields: [st_importacoes_moda.fob_sum, st_importacoes_moda.count, st_importacoes_moda.importador_colorido]
    listen:
      NCM: st_importacoes_moda.cdncm_compl
      Produto: st_importacoes_moda.produto
      Material: st_importacoes_moda.material
      Gênero: st_importacoes_moda.genero
      Modal: st_importacoes_moda.via_transp_norm
      País de Origem: st_importacoes_moda.nm_pais_origem
      Período: st_importacoes_moda.anomes_norm
      Modelo: st_importacoes_moda.modelo
      Importador Nome: st_importacoes_moda.importador_nome
    row: 27
    col: 7
    width: 17
    height: 7
  - title: NCMs Importados
    name: NCMs Importados
    model: external_st_importacoes_postgres
    explore: st_importacoes_moda
    type: looker_grid
    fields: [st_importacoes_moda.ncm_desc, st_importacoes_moda.fob_sum, st_importacoes_moda.count]
    sorts: [st_importacoes_moda.fob_sum desc]
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
      st_importacoes_moda.count: Quantidade
      st_importacoes_moda.fob_sum: Valor FOB Total
    series_cell_visualizations:
      st_importacoes_moda.fob_sum:
        is_active: true
        palette:
          palette_id: 1d226da9-6ef2-4271-18c3-68d6209ca6ad
          collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
          custom_colors:
          - "#c2c2c2"
          - "#363636"
    series_value_format:
      st_importacoes_moda.fob_sum: "$#,##0.00"
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
      NCM: st_importacoes_moda.cdncm_compl
      Produto: st_importacoes_moda.produto
      Material: st_importacoes_moda.material
      Gênero: st_importacoes_moda.genero
      Modal: st_importacoes_moda.via_transp_norm
      País de Origem: st_importacoes_moda.nm_pais_origem
      Período: st_importacoes_moda.anomes_norm
      Modelo: st_importacoes_moda.modelo
      Importador Nome: st_importacoes_moda.importador_nome
    row: 54
    col: 0
    width: 24
    height: 9
  - title: País de Origem
    name: País de Origem
    model: external_st_importacoes_postgres
    explore: st_importacoes_moda
    type: looker_map
    fields: [st_importacoes_moda.fob_sum, st_importacoes_moda.store_location]
    sorts: [st_importacoes_moda.fob_sum]
    limit: 500
    dynamic_fields: [{table_calculation: valor_fob_total, label: Valor Fob Total,
        expression: "${st_importacoes_moda.fob_sum}", value_format: "$#,##0", value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number}]
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
    y_axes: [{label: '', orientation: left, series: [{axisId: st_importacoes_moda.fob_sum,
            id: st_importacoes_moda.fob_sum, name: Fob Sum}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear},
      {label: !!null '', orientation: right, series: [{axisId: st_importacoes_moda.count,
            id: st_importacoes_moda.count, name: Quantidade}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_labels:
      st_importacoes_moda.count: Quantidade
    defaults_version: 1
    map: auto
    map_projection: ''
    quantize_colors: false
    hidden_fields: [st_importacoes_moda.fob_sum]
    listen:
      NCM: st_importacoes_moda.cdncm_compl
      Produto: st_importacoes_moda.produto
      Material: st_importacoes_moda.material
      Gênero: st_importacoes_moda.genero
      Modal: st_importacoes_moda.via_transp_norm
      País de Origem: st_importacoes_moda.nm_pais_origem
      Período: st_importacoes_moda.anomes_norm
      Modelo: st_importacoes_moda.modelo
      Importador Nome: st_importacoes_moda.importador_nome
    row: 17
    col: 0
    width: 24
    height: 10
  - title: Valor FOB Total (US$) - Modal
    name: Valor FOB Total (US$) - Modal
    model: external_st_importacoes_postgres
    explore: st_importacoes_moda
    type: looker_pie
    fields: [st_importacoes_moda.fob_sum, st_importacoes_moda.via_transp_norm]
    filters:
      st_importacoes_moda.via_transp_norm_check: 'Yes'
    sorts: [st_importacoes_moda.fob_sum desc]
    limit: 500
    dynamic_fields: [{table_calculation: valor_fob_total, label: Valor FOB Total,
        expression: "${st_importacoes_moda.fob_sum}", value_format: "$#,##0", value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number}]
    value_labels: legend
    label_type: labPer
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      custom:
        id: 201824b8-1b91-4101-2cee-fc2ebb3dcf18
        label: Custom
        type: continuous
        stops:
        - color: "#AAF52D"
          offset: 0
        - color: "#464646"
          offset: 25
        - color: "#6B6B6B"
          offset: 50
        - color: "#909090"
          offset: 75
        - color: "#B4B4B4"
          offset: 100
      options:
        steps: 5
        reverse: false
    series_colors: {}
    series_labels:
      st_importacoes_moda.count: Quantidade
      st_importacoes_moda.via_transp: Transporte
      st_importacoes_moda.qtde_comerc_sum: Qtde Comercializada
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
      st_importacoes_moda.qtde_comerc_sum:
        is_active: true
      st_importacoes_moda.fob_sum:
        is_active: false
    series_value_format:
      st_importacoes_moda.fob_sum: "$#,##0"
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
    y_axes: [{label: '', orientation: left, series: [{axisId: st_importacoes_moda.fob_sum,
            id: st_importacoes_moda.fob_sum, name: Fob Sum}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear},
      {label: !!null '', orientation: right, series: [{axisId: st_importacoes_moda.count,
            id: st_importacoes_moda.count, name: Quantidade}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    defaults_version: 1
    map: auto
    map_projection: ''
    quantize_colors: false
    hidden_fields: [st_importacoes_moda.fob_sum]
    listen:
      NCM: st_importacoes_moda.cdncm_compl
      Produto: st_importacoes_moda.produto
      Material: st_importacoes_moda.material
      Gênero: st_importacoes_moda.genero
      Modal: st_importacoes_moda.via_transp_norm
      País de Origem: st_importacoes_moda.nm_pais_origem
      Período: st_importacoes_moda.anomes_norm
      Modelo: st_importacoes_moda.modelo
      Importador Nome: st_importacoes_moda.importador_nome
    row: 97
    col: 0
    width: 8
    height: 7
  - title: Registros
    name: Registros
    model: external_st_importacoes_postgres
    explore: st_importacoes_moda
    type: looker_grid
    fields: [st_importacoes_moda.produto, st_importacoes_moda.tp_unid_comerc, st_importacoes_moda.qtde_comerc_sum,
      st_importacoes_moda.fob_sum, st_importacoes_moda.val_fob_un_us_num_avg]
    filters:
      st_importacoes_moda.tp_unid_comerc: "-EMPTY"
    sorts: [st_importacoes_moda.qtde_comerc_sum desc]
    limit: 500
    dynamic_fields: [{table_calculation: media_simples, label: Média Simples, expression: "${st_importacoes_moda.fob_sum}\
          \ / ${st_importacoes_moda.qtde_comerc_sum}", value_format: !!null '', value_format_name: decimal_2,
        _kind_hint: measure, _type_hint: number}]
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
    column_order: ["$$$_row_numbers_$$$", st_importacoes_moda.produto, st_importacoes_moda.qtde_comerc_sum,
      st_importacoes_moda.tp_unid_comerc, st_importacoes_moda.fob_sum, st_importacoes_moda.val_fob_un_us_num_avg]
    show_totals: true
    show_row_totals: true
    series_labels:
      st_importacoes_moda.count: Quantidade
      st_importacoes_moda.desc_prodt: Produto
      st_importacoes_moda.tp_unid_comerc: Tipo Unidade
      st_importacoes_moda.qtde_comerc_sum: Quantidade
      st_importacoes_moda.val_fob_un_us_num_avg: Média Ponderada
      st_importacoes_moda.fob_sum: Valor FOB Total
    series_cell_visualizations:
      st_importacoes_moda.qtde_comerc_sum:
        is_active: false
      st_importacoes_moda.fob_sum:
        is_active: true
        palette:
          palette_id: 39dda765-0763-514e-e2ac-8db862369f0f
          collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
          custom_colors:
          - "#c2c2c2"
          - "#363636"
    series_text_format:
      st_importacoes_moda.produto:
        align: left
      st_importacoes_moda.tp_unid_comerc:
        align: left
      st_importacoes_moda.qtde_comerc_sum:
        align: left
      st_importacoes_moda.val_fob_un_us_num_avg:
        align: left
      media_simples:
        align: left
    series_value_format:
      st_importacoes_moda.fob_sum: "$#,##0"
      st_importacoes_moda.val_fob_un_us_num_avg:
        name: usd
        format_string: "$#,##0.00"
        label: U.S. Dollars (2)
      st_importacoes_moda.qtde_comerc_sum:
        name: decimal_0
        format_string: "#,##0"
        label: Decimals (0)
      media_simples:
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
    y_axes: [{label: '', orientation: left, series: [{axisId: st_importacoes_moda.fob_sum,
            id: st_importacoes_moda.fob_sum, name: Fob Sum}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear},
      {label: !!null '', orientation: right, series: [{axisId: st_importacoes_moda.count,
            id: st_importacoes_moda.count, name: Quantidade}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    defaults_version: 1
    map: auto
    map_projection: ''
    quantize_colors: false
    hidden_fields:
    note_state: collapsed
    note_display: hover
    note_text: "A Média Ponderada é calculada com o valor unitário de cada registro.\n\
      A média simples é a somatória do valor FOB dividido pela quantidade  comercializada\
      \ para todos os registros. "
    listen:
      NCM: st_importacoes_moda.cdncm_compl
      Produto: st_importacoes_moda.produto
      Material: st_importacoes_moda.material
      Gênero: st_importacoes_moda.genero
      Modal: st_importacoes_moda.via_transp_norm
      País de Origem: st_importacoes_moda.nm_pais_origem
      Período: st_importacoes_moda.anomes_norm
      Modelo: st_importacoes_moda.modelo
      Importador Nome: st_importacoes_moda.importador_nome
    row: 97
    col: 8
    width: 16
    height: 7
  - title: Valor FOB Total (US$) - Gênero
    name: Valor FOB Total (US$) - Gênero
    model: external_st_importacoes_postgres
    explore: st_importacoes_moda
    type: looker_pie
    fields: [st_importacoes_moda.genero, st_importacoes_moda.fob_sum]
    filters:
      st_importacoes_moda.genero_check: 'Yes'
    sorts: [st_importacoes_moda.fob_sum desc]
    limit: 500
    dynamic_fields: [{table_calculation: valor_fob_total, label: Valor FOB Total,
        expression: "${st_importacoes_moda.fob_sum}", value_format: "$#,##0", value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number}]
    value_labels: legend
    label_type: labPer
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      custom:
        id: 75ef86db-16cf-46b6-8767-efc8c8a542b2
        label: Custom
        type: continuous
        stops:
        - color: "#AAF52D"
          offset: 0
        - color: "#464646"
          offset: 25
        - color: "#6B6B6B"
          offset: 50
        - color: "#909090"
          offset: 75
        - color: "#B4B4B4"
          offset: 100
      options:
        steps: 5
        reverse: false
    series_colors: {}
    series_types: {}
    defaults_version: 1
    hidden_fields: [st_importacoes_moda.fob_sum]
    listen:
      NCM: st_importacoes_moda.cdncm_compl
      Produto: st_importacoes_moda.produto
      Material: st_importacoes_moda.material
      Gênero: st_importacoes_moda.genero
      Modal: st_importacoes_moda.via_transp_norm
      País de Origem: st_importacoes_moda.nm_pais_origem
      Período: st_importacoes_moda.anomes_norm
      Modelo: st_importacoes_moda.modelo
      Importador Nome: st_importacoes_moda.importador_nome
    row: 90
    col: 0
    width: 8
    height: 7
  - title: Valor FOB Total (US$) - Ranking Produtos
    name: Valor FOB Total (US$) - Ranking Produtos
    model: external_st_importacoes_postgres
    explore: st_importacoes_moda
    type: looker_column
    fields: [st_importacoes_moda.fob_sum, st_importacoes_moda.produto]
    filters:
      st_importacoes_moda.produto_check: 'Yes'
    sorts: [st_importacoes_moda.fob_sum desc]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: false
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
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '15'
    label_value_format: "$#,##0"
    series_types: {}
    series_colors:
      st_importacoes_moda.fob_sum: "#7a7a7a"
    series_labels:
      st_importacoes_moda.fob_sum: Valor Fob Total
    value_labels: legend
    label_type: labPer
    defaults_version: 1
    note_state: collapsed
    note_display: below
    listen:
      NCM: st_importacoes_moda.cdncm_compl
      Produto: st_importacoes_moda.produto
      Material: st_importacoes_moda.material
      Gênero: st_importacoes_moda.genero
      Modal: st_importacoes_moda.via_transp_norm
      País de Origem: st_importacoes_moda.nm_pais_origem
      Período: st_importacoes_moda.anomes_norm
      Modelo: st_importacoes_moda.modelo
      Importador Nome: st_importacoes_moda.importador_nome
    row: 63
    col: 0
    width: 24
    height: 7
  - title: Valor FOB Total (US$) - Ranking Materiais
    name: Valor FOB Total (US$) - Ranking Materiais
    model: external_st_importacoes_postgres
    explore: st_importacoes_moda
    type: looker_column
    fields: [st_importacoes_moda.fob_sum, st_importacoes_moda.material]
    filters:
      st_importacoes_moda.material_check: 'Yes'
    sorts: [st_importacoes_moda.fob_sum desc]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: false
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
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '5'
    label_value_format: "$#,##0"
    series_types: {}
    series_colors:
      st_importacoes_moda.fob_sum: "#7a7a7a"
    series_labels:
      st_importacoes_moda.fob_sum: Valor Fob Total
    value_labels: legend
    label_type: labPer
    defaults_version: 1
    note_state: collapsed
    note_display: below
    listen:
      NCM: st_importacoes_moda.cdncm_compl
      Produto: st_importacoes_moda.produto
      Material: st_importacoes_moda.material
      Gênero: st_importacoes_moda.genero
      Modal: st_importacoes_moda.via_transp_norm
      País de Origem: st_importacoes_moda.nm_pais_origem
      Período: st_importacoes_moda.anomes_norm
      Modelo: st_importacoes_moda.modelo
      Importador Nome: st_importacoes_moda.importador_nome
    row: 90
    col: 8
    width: 16
    height: 7
  - title: Média Simples Valor FOB (US$) - Ranking Produtos
    name: Média Simples Valor FOB (US$) - Ranking Produtos
    model: external_st_importacoes_postgres
    explore: st_importacoes_moda
    type: looker_column
    fields: [st_importacoes_moda.fob_sum, st_importacoes_moda.produto, st_importacoes_moda.qtde_comerc_sum]
    filters:
      st_importacoes_moda.tp_unid_comerc: UNIDADE
      st_importacoes_moda.produto_check: 'Yes'
    sorts: [media_simples desc]
    limit: 500
    dynamic_fields: [{table_calculation: media_simples, label: Média Simples, expression: "${st_importacoes_moda.fob_sum}\
          \ / ${st_importacoes_moda.qtde_comerc_sum}", value_format: !!null '', value_format_name: usd,
        _kind_hint: measure, _type_hint: number}]
    x_axis_gridlines: false
    y_axis_gridlines: false
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
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '15'
    label_value_format: ''
    series_types: {}
    series_colors:
      st_importacoes_moda.fob_sum: "#7a7a7a"
      media_simples: "#9BDA32"
    series_labels:
      st_importacoes_moda.fob_sum: Valor Fob Total
    label_color: ["#7a7a7a"]
    value_labels: legend
    label_type: labPer
    defaults_version: 1
    hidden_fields: [st_importacoes_moda.qtde_comerc_sum, st_importacoes_moda.fob_sum]
    note_state: collapsed
    note_display: below
    note_text: Considera apenas o tipo UNIDADE.
    listen:
      NCM: st_importacoes_moda.cdncm_compl
      Produto: st_importacoes_moda.produto
      Material: st_importacoes_moda.material
      Gênero: st_importacoes_moda.genero
      Modal: st_importacoes_moda.via_transp_norm
      País de Origem: st_importacoes_moda.nm_pais_origem
      Período: st_importacoes_moda.anomes_norm
      Modelo: st_importacoes_moda.modelo
      Importador Nome: st_importacoes_moda.importador_nome
    row: 83
    col: 0
    width: 24
    height: 7
  - title: Valor FOB Total (US$) - Ranking Exportadores
    name: Valor FOB Total (US$) - Ranking Exportadores
    model: external_st_importacoes_postgres
    explore: st_importacoes_moda
    type: looker_column
    fields: [st_importacoes_moda.fob_sum, st_importacoes_moda.count, st_importacoes_moda.exportador_nome]
    filters:
      st_importacoes_moda.exportador_check: 'Yes'
    sorts: [st_importacoes_moda.fob_sum desc]
    limit: 15
    dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: "${st_importacoes_moda.fob_sum}",
        value_format: "$#,##0", value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}]
    x_axis_gridlines: false
    y_axis_gridlines: false
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
    y_axes: [{label: '', orientation: left, series: [{axisId: st_importacoes_moda.fob_sum,
            id: st_importacoes_moda.fob_sum, name: Fob Sum}], showLabels: true, showValues: true,
        valueFormat: "$#,##0", unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: st_importacoes_moda.count,
            id: st_importacoes_moda.count, name: Quantidade}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    series_types:
      st_importacoes_moda.count: line
    series_colors:
      st_importacoes_moda.count: "#98d91e"
      calculation_1: "#9BDA32"
    series_labels:
      st_importacoes_moda.count: Quantidade
      calculation_1: Valor Fob Total
    label_color: ["#7a7a7a"]
    defaults_version: 1
    hidden_fields: [st_importacoes_moda.fob_sum, st_importacoes_moda.count]
    listen:
      NCM: st_importacoes_moda.cdncm_compl
      Produto: st_importacoes_moda.produto
      Material: st_importacoes_moda.material
      Gênero: st_importacoes_moda.genero
      Modal: st_importacoes_moda.via_transp_norm
      País de Origem: st_importacoes_moda.nm_pais_origem
      Período: st_importacoes_moda.anomes_norm
      Modelo: st_importacoes_moda.modelo
      Importador Nome: st_importacoes_moda.importador_nome
    row: 47
    col: 0
    width: 24
    height: 7
  - name: ''
    type: text
    title_text: ''
    subtitle_text: Regras dos Materiais
    body_text: |-
      1. Na condição de 2 materiais sendo um algodão: de 1% à 60,9% algodão, considerar o outro material; de 61% à 99% algodão, considerar predominantemente Algodão.

      2. Na condição de 2 materiais e nenhum deles for algodão: considerar fibras diversas

      3. Na condição de ter 3 ou mais materiais (independente se 1 deles for algodão): considerar fibras diversas.

      4. Na condição de apenas Algodão (sem o percentual): considerar 100% Algodão.
    row: 111
    col: 0
    width: 11
    height: 5
  - title: Variação do Valor FOB Unitário (US$) por Produto
    name: Variação do Valor FOB Unitário (US$) por Produto
    model: external_st_importacoes_postgres
    explore: st_importacoes_moda
    type: looker_boxplot
    fields: [st_importacoes_moda.produto, st_importacoes_moda.val_fob_un_us_num_min,
      st_importacoes_moda.val_fob_un_us_num_p25, st_importacoes_moda.val_fob_un_us_num_med,
      st_importacoes_moda.val_fob_un_us_num_p75, st_importacoes_moda.val_fob_un_us_num_max]
    filters:
      st_importacoes_moda.tp_unid_comerc: UNIDADE
      st_importacoes_moda.produto_check: 'Yes'
    sorts: [st_importacoes_moda.val_fob_un_us_num_max desc]
    limit: 10
    dynamic_fields: [{_kind_hint: measure, table_calculation: valores, _type_hint: number,
        category: table_calculation, expression: "${st_importacoes_moda.val_fob_un_us_num_min}",
        label: 'Valores:', value_format: !!null '', value_format_name: usd}, {_kind_hint: measure,
        table_calculation: p25_cal, _type_hint: number, category: table_calculation,
        expression: "${st_importacoes_moda.val_fob_un_us_num_p25}", label: p25_cal,
        value_format: !!null '', value_format_name: usd}, {_kind_hint: measure, table_calculation: med_calc,
        _type_hint: number, category: table_calculation, expression: "${st_importacoes_moda.val_fob_un_us_num_med}",
        label: med_calc, value_format: !!null '', value_format_name: usd}, {_kind_hint: measure,
        table_calculation: p75, _type_hint: number, category: table_calculation, expression: "${st_importacoes_moda.val_fob_un_us_num_p75}",
        label: p75, value_format: !!null '', value_format_name: usd}, {table_calculation: max_calc,
        label: max_calc, expression: "${st_importacoes_moda.val_fob_un_us_num_max}",
        value_format: !!null '', value_format_name: usd, _kind_hint: measure, _type_hint: number}]
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: true
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
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      custom:
        id: e078e232-21d8-e195-aa52-e4d706bea71a
        label: Custom
        type: discrete
        colors:
        - "#000000"
        - "#B1399E"
        - "#C2DD67"
        - "#592EC2"
        - "#4276BE"
        - "#72D16D"
        - "#FFD95F"
        - "#B32F37"
        - "#9174F0"
        - "#E57947"
        - "#75E2E2"
        - "#FBB555"
      options:
        steps: 5
    y_axis_labels: [Valor]
    y_axis_value_format: "#,##0.00"
    x_axis_label: Produto
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
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '15'
    label_value_format: ''
    series_types: {}
    series_colors:
      st_importacoes_moda.fob_sum: "#7a7a7a"
      media_simples: "#7a7a7a"
    series_labels:
      st_importacoes_moda.fob_sum: Valor Fob Total
    value_labels: legend
    label_type: labPer
    defaults_version: 1
    hidden_fields: [avg_calc, st_importacoes_moda.val_fob_un_us_num_min, st_importacoes_moda.val_fob_un_us_num_p25,
      st_importacoes_moda.val_fob_un_us_num_med, st_importacoes_moda.val_fob_un_us_num_p75,
      st_importacoes_moda.val_fob_un_us_num_max]
    note_state: collapsed
    note_display: below
    note_text: Considera apenas o tipo UNIDADE.
    listen:
      NCM: st_importacoes_moda.cdncm_compl
      Produto: st_importacoes_moda.produto
      Material: st_importacoes_moda.material
      Gênero: st_importacoes_moda.genero
      Modal: st_importacoes_moda.via_transp_norm
      País de Origem: st_importacoes_moda.nm_pais_origem
      Período: st_importacoes_moda.anomes_norm
      Modelo: st_importacoes_moda.modelo
      Importador Nome: st_importacoes_moda.importador_nome
    row: 70
    col: 7
    width: 17
    height: 7
  - title: Valor FOB Total (US$) - ST Importações
    name: Valor FOB Total (US$) - ST Importações
    model: external_st_importacoes_postgres
    explore: st_importacoes_moda
    type: single_value
    fields: [st_importacoes_moda.fob_sum, st_importacoes_moda.count, st_importacoes_moda.importador_colorido]
    filters:
      st_importacoes_moda.importador_check: 'Yes'
      st_importacoes_moda.importador_colorido: ST IMPORTACOES LTDA
    sorts: [st_importacoes_moda.fob_sum desc]
    limit: 15
    dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: "${st_importacoes_moda.fob_sum}",
        value_format: "$#,##0", value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#d9281b"
    single_value_title: ''
    value_format: ''
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#000000",
        font_color: "#AAF52D", color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
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
    y_axes: [{label: '', orientation: left, series: [{axisId: st_importacoes_moda.fob_sum,
            id: st_importacoes_moda.fob_sum, name: Fob Sum}], showLabels: true, showValues: true,
        valueFormat: "$#,##0", unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: st_importacoes_moda.count,
            id: st_importacoes_moda.count, name: Quantidade}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    series_types: {}
    series_colors:
      st_importacoes_moda.count: "#98d91e"
      calculation_1: "#7a7a7a"
    series_labels:
      st_importacoes_moda.count: Quantidade
      calculation_1: Valor Fob Total
    defaults_version: 1
    hidden_fields: [st_importacoes_moda.fob_sum, st_importacoes_moda.count]
    note_state: expanded
    note_display: above
    listen:
      NCM: st_importacoes_moda.cdncm_compl
      Produto: st_importacoes_moda.produto
      Material: st_importacoes_moda.material
      Gênero: st_importacoes_moda.genero
      Modal: st_importacoes_moda.via_transp_norm
      País de Origem: st_importacoes_moda.nm_pais_origem
      Período: st_importacoes_moda.anomes_norm
      Modelo: st_importacoes_moda.modelo
    row: 27
    col: 0
    width: 7
    height: 7
  - title: Registros - Analítico
    name: Registros - Analítico
    model: external_st_importacoes_postgres
    explore: st_importacoes_moda
    type: looker_grid
    fields: [st_importacoes_moda.id_import, st_importacoes_moda.importador_nome, st_importacoes_moda.exportador_nome,
      st_importacoes_moda.anomes_norm, st_importacoes_moda.via_transp_norm, st_importacoes_moda.tp_unid_comerc,
      st_importacoes_moda.genero, st_importacoes_moda.material, st_importacoes_moda.modelo,
      st_importacoes_moda.nm_pais_origem, st_importacoes_moda.ncm_desc, st_importacoes_moda.desc_prodt,
      st_importacoes_moda.produto, st_importacoes_moda.qtd_comerc_num, st_importacoes_moda.val_fob_un_us_num,
      st_importacoes_moda.val_vmle_us_subitem_num, st_importacoes_moda.cdncm_compl]
    sorts: [st_importacoes_moda.produto]
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
    column_order: ["$$$_row_numbers_$$$", st_importacoes_moda.via_transp_norm, st_importacoes_moda.id_import,
      st_importacoes_moda.qtd_comerc_num, st_importacoes_moda.val_fob_un_us_num, st_importacoes_moda.exportador_nome,
      st_importacoes_moda.cdncm_compl, st_importacoes_moda.tp_unid_comerc, st_importacoes_moda.desc_prodt,
      st_importacoes_moda.nm_pais_origem, st_importacoes_moda.val_vmle_us_subitem_num,
      st_importacoes_moda.importador_nome, st_importacoes_moda.anomes_norm, st_importacoes_moda.genero,
      st_importacoes_moda.material, st_importacoes_moda.modelo, st_importacoes_moda.ncm_desc,
      st_importacoes_moda.produto]
    show_totals: true
    show_row_totals: true
    series_labels:
      st_importacoes_moda.count: Quantidade
      st_importacoes_moda.desc_prodt: Desc Produto
      st_importacoes_moda.tp_unid_comerc: Tipo Unidade
      st_importacoes_moda.qtde_comerc_sum: Quantidade
      st_importacoes_moda.val_fob_un_us_num_avg: Média Ponderada
      st_importacoes_moda.fob_sum: Valor FOB Total
      st_importacoes_moda.id_import: ID
      st_importacoes_moda.anomes_norm: Periodo
      st_importacoes_moda.via_transp_norm: Modal
      st_importacoes_moda.nm_pais_origem: Pais de Origem
      st_importacoes_moda.ncm_desc: NCM Desc
      st_importacoes_moda.qtd_comerc_num: Quantidade
      st_importacoes_moda.val_fob_un_us_num: Valor FOB Unidade
      st_importacoes_moda.val_vmle_us_subitem_num: Valor FOB
      st_importacoes_moda.produto: Produto
      st_importacoes_moda.cdncm_compl: NCM
    series_column_widths:
      st_importacoes_moda.exportador_nome: 132
      st_importacoes_moda.qtd_comerc_num: 109
      st_importacoes_moda.val_fob_un_us_num: 168
      st_importacoes_moda.importador_nome: 141
      st_importacoes_moda.tp_unid_comerc: 117
      st_importacoes_moda.desc_prodt: 125
      st_importacoes_moda.nm_pais_origem: 131
      st_importacoes_moda.val_vmle_us_subitem_num: 129
      st_importacoes_moda.anomes_norm: 94
      st_importacoes_moda.genero: 121
    series_cell_visualizations:
      st_importacoes_moda.qtde_comerc_sum:
        is_active: false
      st_importacoes_moda.fob_sum:
        is_active: true
        palette:
          palette_id: 39dda765-0763-514e-e2ac-8db862369f0f
          collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
          custom_colors:
          - "#c2c2c2"
          - "#363636"
    series_text_format:
      st_importacoes_moda.produto:
        align: left
      st_importacoes_moda.tp_unid_comerc:
        align: left
      st_importacoes_moda.qtde_comerc_sum:
        align: left
      st_importacoes_moda.val_fob_un_us_num_avg:
        align: left
      media_simples:
        align: left
    series_value_format:
      st_importacoes_moda.fob_sum: "$#,##0"
      st_importacoes_moda.val_fob_un_us_num_avg:
        name: usd
        format_string: "$#,##0.00"
        label: U.S. Dollars (2)
      st_importacoes_moda.qtde_comerc_sum:
        name: decimal_0
        format_string: "#,##0"
        label: Decimals (0)
      media_simples:
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
    y_axes: [{label: '', orientation: left, series: [{axisId: st_importacoes_moda.fob_sum,
            id: st_importacoes_moda.fob_sum, name: Fob Sum}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear},
      {label: !!null '', orientation: right, series: [{axisId: st_importacoes_moda.count,
            id: st_importacoes_moda.count, name: Quantidade}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    defaults_version: 1
    map: auto
    map_projection: ''
    quantize_colors: false
    hidden_fields:
    note_state: expanded
    note_display: above
    listen:
      NCM: st_importacoes_moda.cdncm_compl
      Produto: st_importacoes_moda.produto
      Material: st_importacoes_moda.material
      Gênero: st_importacoes_moda.genero
      Modal: st_importacoes_moda.via_transp_norm
      País de Origem: st_importacoes_moda.nm_pais_origem
      Período: st_importacoes_moda.anomes_norm
      Modelo: st_importacoes_moda.modelo
      Importador Nome: st_importacoes_moda.importador_nome
    row: 104
    col: 0
    width: 24
    height: 7
  - name: " (2)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: <img src="https://drive.google.com/uc?export=view&id=1NpOJPe-eAjUY7w5qHgn4ndPyEu0baTDI"/>
    row: 0
    col: 6
    width: 13
    height: 6
  - name: " (3)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: <img src="https://drive.google.com/uc?export=view&id=1ow5lQtG8wqhV69P8xn5FrU54LvA8BFoQ"/>
    row: 70
    col: 0
    width: 7
    height: 7
  - title: Variação do Valor FOB Unitário (US$) por Produto - Valores
    name: Variação do Valor FOB Unitário (US$) por Produto - Valores
    model: external_st_importacoes_postgres
    explore: st_importacoes_moda
    type: looker_grid
    fields: [st_importacoes_moda.produto, st_importacoes_moda.val_fob_un_us_num_min,
      st_importacoes_moda.val_fob_un_us_num_p25, st_importacoes_moda.val_fob_un_us_num_med,
      st_importacoes_moda.val_fob_un_us_num_p75, st_importacoes_moda.val_fob_un_us_num_max]
    filters:
      st_importacoes_moda.tp_unid_comerc: UNIDADE
      st_importacoes_moda.produto_check: 'Yes'
    sorts: [st_importacoes_moda.val_fob_un_us_num_max desc]
    limit: 10
    dynamic_fields: [{_kind_hint: measure, table_calculation: valores, _type_hint: number,
        category: table_calculation, expression: "${st_importacoes_moda.val_fob_un_us_num_min}",
        label: 'Valores:', value_format: !!null '', value_format_name: usd}, {_kind_hint: measure,
        table_calculation: p25_cal, _type_hint: number, category: table_calculation,
        expression: "${st_importacoes_moda.val_fob_un_us_num_p25}", label: p25_cal,
        value_format: !!null '', value_format_name: usd}, {_kind_hint: measure, table_calculation: med_calc,
        _type_hint: number, category: table_calculation, expression: "${st_importacoes_moda.val_fob_un_us_num_med}",
        label: med_calc, value_format: !!null '', value_format_name: usd}, {_kind_hint: measure,
        table_calculation: p75, _type_hint: number, category: table_calculation, expression: "${st_importacoes_moda.val_fob_un_us_num_p75}",
        label: p75, value_format: !!null '', value_format_name: usd}, {table_calculation: max_calc,
        label: max_calc, expression: "${st_importacoes_moda.val_fob_un_us_num_max}",
        value_format: !!null '', value_format_name: usd, _kind_hint: measure, _type_hint: number}]
    show_view_names: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: true
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      custom:
        id: 2356e3f8-e429-ff4a-5d46-913479ad6381
        label: Custom
        type: discrete
        colors:
        - "#7a7a7a"
        - "#B1399E"
        - "#C2DD67"
        - "#592EC2"
        - "#4276BE"
        - "#72D16D"
        - "#FFD95F"
        - "#B32F37"
        - "#9174F0"
        - "#E57947"
        - "#75E2E2"
        - "#FBB555"
      options:
        steps: 5
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_labels:
      st_importacoes_moda.fob_sum: Valor Fob Total
      st_importacoes_moda.produto: Produto
      valores: Valor Mínimo
      p25_cal: 25% dos Valores
      med_calc: 50% dos Valores
      p75: 75% dos Valores
      max_calc: Valor Máximo
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '15'
    x_axis_gridlines: false
    y_axis_gridlines: false
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
    y_axis_labels: [Valor]
    y_axis_value_format: "#,##0.00"
    x_axis_label: Produto
    trellis: ''
    stacking: ''
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
    label_value_format: ''
    series_types: {}
    series_colors:
      st_importacoes_moda.fob_sum: "#7a7a7a"
      media_simples: "#7a7a7a"
    value_labels: legend
    label_type: labPer
    defaults_version: 1
    hidden_fields: [avg_calc, st_importacoes_moda.val_fob_un_us_num_min, st_importacoes_moda.val_fob_un_us_num_p25,
      st_importacoes_moda.val_fob_un_us_num_med, st_importacoes_moda.val_fob_un_us_num_p75,
      st_importacoes_moda.val_fob_un_us_num_max]
    note_state: collapsed
    note_display: below
    note_text: Considera apenas o tipo UNIDADE.
    listen:
      NCM: st_importacoes_moda.cdncm_compl
      Produto: st_importacoes_moda.produto
      Material: st_importacoes_moda.material
      Gênero: st_importacoes_moda.genero
      Modal: st_importacoes_moda.via_transp_norm
      País de Origem: st_importacoes_moda.nm_pais_origem
      Período: st_importacoes_moda.anomes_norm
      Modelo: st_importacoes_moda.modelo
      Importador Nome: st_importacoes_moda.importador_nome
    row: 77
    col: 7
    width: 17
    height: 6
  - title: Variação do Valor FOB Unitário (US$) por Importador
    name: Variação do Valor FOB Unitário (US$) por Importador
    model: external_st_importacoes_postgres
    explore: st_importacoes_moda
    type: looker_boxplot
    fields: [st_importacoes_moda.val_fob_un_us_num_min, st_importacoes_moda.val_fob_un_us_num_p25,
      st_importacoes_moda.val_fob_un_us_num_med, st_importacoes_moda.val_fob_un_us_num_p75,
      st_importacoes_moda.val_fob_un_us_num_max, st_importacoes_moda.importador_nome,
      st_importacoes_moda.fob_sum]
    filters:
      st_importacoes_moda.importador_colorido: "-ST IMPORTACOES LTDA"
      st_importacoes_moda.importador_check: 'Yes'
      st_importacoes_moda.tp_unid_comerc: UNIDADE
    sorts: [st_importacoes_moda.fob_sum desc]
    limit: 10
    dynamic_fields: [{_kind_hint: measure, table_calculation: valores, _type_hint: number,
        category: table_calculation, expression: "${st_importacoes_moda.val_fob_un_us_num_min}",
        label: 'Valores:', value_format: !!null '', value_format_name: usd}, {_kind_hint: measure,
        table_calculation: p25_cal, _type_hint: number, category: table_calculation,
        expression: "${st_importacoes_moda.val_fob_un_us_num_p25}", label: p25_cal,
        value_format: !!null '', value_format_name: usd}, {_kind_hint: measure, table_calculation: med_calc,
        _type_hint: number, category: table_calculation, expression: "${st_importacoes_moda.val_fob_un_us_num_med}",
        label: med_calc, value_format: !!null '', value_format_name: usd}, {_kind_hint: measure,
        table_calculation: p75, _type_hint: number, category: table_calculation, expression: "${st_importacoes_moda.val_fob_un_us_num_p75}",
        label: p75, value_format: !!null '', value_format_name: usd}, {table_calculation: max_calc,
        label: max_calc, expression: "${st_importacoes_moda.val_fob_un_us_num_max}",
        value_format: !!null '', value_format_name: usd, _kind_hint: measure, _type_hint: number}]
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: true
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
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      custom:
        id: 72f5ee02-ce6b-7c6c-09e5-516add08a835
        label: Custom
        type: discrete
        colors:
        - "#000000"
        - "#B1399E"
        - "#C2DD67"
        - "#592EC2"
        - "#4276BE"
        - "#72D16D"
        - "#FFD95F"
        - "#B32F37"
        - "#9174F0"
        - "#E57947"
        - "#75E2E2"
        - "#FBB555"
      options:
        steps: 5
    y_axis_labels: [Valor]
    y_axis_value_format: "#,##0.00"
    x_axis_label: Importador Nome
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
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '15'
    label_value_format: ''
    series_types: {}
    series_colors:
      st_importacoes_moda.fob_sum: "#7a7a7a"
      media_simples: "#7a7a7a"
    series_labels:
      st_importacoes_moda.fob_sum: Valor Fob Total
    value_labels: legend
    label_type: labPer
    defaults_version: 1
    hidden_fields: [avg_calc, st_importacoes_moda.val_fob_un_us_num_min, st_importacoes_moda.val_fob_un_us_num_p25,
      st_importacoes_moda.val_fob_un_us_num_med, st_importacoes_moda.val_fob_un_us_num_p75,
      st_importacoes_moda.val_fob_un_us_num_max, st_importacoes_moda.fob_sum]
    note_state: collapsed
    note_display: below
    note_text: Considera apenas o tipo UNIDADE.
    listen:
      NCM: st_importacoes_moda.cdncm_compl
      Produto: st_importacoes_moda.produto
      Material: st_importacoes_moda.material
      Gênero: st_importacoes_moda.genero
      Modal: st_importacoes_moda.via_transp_norm
      País de Origem: st_importacoes_moda.nm_pais_origem
      Período: st_importacoes_moda.anomes_norm
      Modelo: st_importacoes_moda.modelo
      Importador Nome: st_importacoes_moda.importador_nome
    row: 34
    col: 7
    width: 17
    height: 7
  - name: BoxPlot
    type: text
    title_text: BoxPlot
    subtitle_text: ''
    body_text: |-
      Máximo: o maior valor.

      75%: três quartos dos valores são menores ou iguais ao valor informado.

      50%(Mediana): metade dos valores são menores ou iguais ao valor informado.

      25%: um quarto dos valores são menores ou iguais ao valor informado.

      Mínimo: o menor valor.
    row: 77
    col: 0
    width: 7
    height: 6
  - name: BoxPlot (2)
    type: text
    title_text: BoxPlot
    subtitle_text: ''
    body_text: |-
      Máximo: o maior valor.

      75%: três quartos dos valores são menores ou iguais ao valor informado.

      50%(Mediana): metade dos valores são menores ou iguais ao valor informado.

      25%: um quarto dos valores são menores ou iguais ao valor informado.

      Mínimo: o menor valor.
    row: 41
    col: 0
    width: 7
    height: 6
  - name: " (4)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: <img src="https://drive.google.com/uc?export=view&id=1ow5lQtG8wqhV69P8xn5FrU54LvA8BFoQ"/>
    row: 34
    col: 0
    width: 7
    height: 7
  - title: Variação do Valor FOB Unitário (US$) por Importador - Valores
    name: Variação do Valor FOB Unitário (US$) por Importador - Valores
    model: external_st_importacoes_postgres
    explore: st_importacoes_moda
    type: looker_grid
    fields: [st_importacoes_moda.val_fob_un_us_num_min, st_importacoes_moda.val_fob_un_us_num_p25,
      st_importacoes_moda.val_fob_un_us_num_med, st_importacoes_moda.val_fob_un_us_num_p75,
      st_importacoes_moda.val_fob_un_us_num_max, st_importacoes_moda.importador_nome,
      st_importacoes_moda.fob_sum]
    filters:
      st_importacoes_moda.importador_colorido: "-ST IMPORTACOES LTDA"
      st_importacoes_moda.importador_check: 'Yes'
      st_importacoes_moda.tp_unid_comerc: UNIDADE
    sorts: [st_importacoes_moda.fob_sum desc]
    limit: 10
    dynamic_fields: [{_kind_hint: measure, table_calculation: valores, _type_hint: number,
        category: table_calculation, expression: "${st_importacoes_moda.val_fob_un_us_num_min}",
        label: 'Valores:', value_format: !!null '', value_format_name: usd}, {_kind_hint: measure,
        table_calculation: p25_cal, _type_hint: number, category: table_calculation,
        expression: "${st_importacoes_moda.val_fob_un_us_num_p25}", label: p25_cal,
        value_format: !!null '', value_format_name: usd}, {_kind_hint: measure, table_calculation: med_calc,
        _type_hint: number, category: table_calculation, expression: "${st_importacoes_moda.val_fob_un_us_num_med}",
        label: med_calc, value_format: !!null '', value_format_name: usd}, {_kind_hint: measure,
        table_calculation: p75, _type_hint: number, category: table_calculation, expression: "${st_importacoes_moda.val_fob_un_us_num_p75}",
        label: p75, value_format: !!null '', value_format_name: usd}, {table_calculation: max_calc,
        label: max_calc, expression: "${st_importacoes_moda.val_fob_un_us_num_max}",
        value_format: !!null '', value_format_name: usd, _kind_hint: measure, _type_hint: number}]
    show_view_names: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: true
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      custom:
        id: 2356e3f8-e429-ff4a-5d46-913479ad6381
        label: Custom
        type: discrete
        colors:
        - "#7a7a7a"
        - "#B1399E"
        - "#C2DD67"
        - "#592EC2"
        - "#4276BE"
        - "#72D16D"
        - "#FFD95F"
        - "#B32F37"
        - "#9174F0"
        - "#E57947"
        - "#75E2E2"
        - "#FBB555"
      options:
        steps: 5
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_labels:
      st_importacoes_moda.fob_sum: Valor Fob Total
      valores: Valor Mínimo
      p25_cal: 25% dos Valores
      med_calc: 50% dos Valores
      p75: 75% dos Valores
      max_calc: Valor Máximo
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '15'
    x_axis_gridlines: false
    y_axis_gridlines: false
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
    y_axis_labels: [Valor]
    y_axis_value_format: "#,##0.00"
    x_axis_label: Produto
    trellis: ''
    stacking: ''
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
    label_value_format: ''
    series_types: {}
    series_colors:
      st_importacoes_moda.fob_sum: "#7a7a7a"
      media_simples: "#7a7a7a"
    value_labels: legend
    label_type: labPer
    defaults_version: 1
    hidden_fields: [avg_calc, st_importacoes_moda.val_fob_un_us_num_min, st_importacoes_moda.val_fob_un_us_num_p25,
      st_importacoes_moda.val_fob_un_us_num_med, st_importacoes_moda.val_fob_un_us_num_p75,
      st_importacoes_moda.val_fob_un_us_num_max, st_importacoes_moda.fob_sum]
    note_state: collapsed
    note_display: below
    note_text: Considera apenas o tipo UNIDADE.
    listen:
      NCM: st_importacoes_moda.cdncm_compl
      Produto: st_importacoes_moda.produto
      Material: st_importacoes_moda.material
      Gênero: st_importacoes_moda.genero
      Modal: st_importacoes_moda.via_transp_norm
      País de Origem: st_importacoes_moda.nm_pais_origem
      Período: st_importacoes_moda.anomes_norm
      Modelo: st_importacoes_moda.modelo
      Importador Nome: st_importacoes_moda.importador_nome
    row: 41
    col: 7
    width: 17
    height: 6
  filters:
  - name: Importador Nome
    title: Importador Nome
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
      options: []
    model: external_st_importacoes_postgres
    explore: st_importacoes_moda
    listens_to_filters: []
    field: st_importacoes_moda.importador_nome
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
    model: external_st_importacoes_postgres
    explore: st_importacoes_moda
    listens_to_filters: []
    field: st_importacoes_moda.anomes_norm_ord
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
    model: external_st_importacoes_postgres
    explore: st_importacoes_moda
    listens_to_filters: []
    field: st_importacoes_moda.cdncm_compl
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
    model: external_st_importacoes_postgres
    explore: st_importacoes_moda
    listens_to_filters: []
    field: st_importacoes_moda.produto
  - name: Material
    title: Material
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
      options: []
    model: external_st_importacoes_postgres
    explore: st_importacoes_moda
    listens_to_filters: []
    field: st_importacoes_moda.material
  - name: Gênero
    title: Gênero
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
      options: []
    model: external_st_importacoes_postgres
    explore: st_importacoes_moda
    listens_to_filters: []
    field: st_importacoes_moda.genero
  - name: Modelo
    title: Modelo
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
      options: []
    model: external_st_importacoes_postgres
    explore: st_importacoes_moda
    listens_to_filters: []
    field: st_importacoes_moda.modelo
  - name: País de Origem
    title: País de Origem
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
      options: []
    model: external_st_importacoes_postgres
    explore: st_importacoes_moda
    listens_to_filters: []
    field: st_importacoes_moda.nm_pais_origem
  - name: Modal
    title: Modal
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
      options: []
    model: external_st_importacoes_postgres
    explore: st_importacoes_moda
    listens_to_filters: []
    field: st_importacoes_moda.via_transp_norm
