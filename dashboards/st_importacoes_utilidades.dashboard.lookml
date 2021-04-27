- dashboard: st_importacoes_utilidades
  title: Visão de Mercado - Utilidades Domésticas
  layout: newspaper
  preferred_viewer: dashboards-next
  crossfilter_enabled: true
  elements:
  - title: Valor FOB Total (US$) de Itens Importados
    name: Valor FOB Total (US$) de Itens Importados
    model: external_st_importacoes
    explore: st_importacoes_utilidades
    type: single_value
    fields: [st_importacoes_utilidades.fob_sum]
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
      Importador Nome: st_importacoes_utilidades.importador_nome
      NCM: st_importacoes_utilidades.cdncm_compl
      Produto: st_importacoes_utilidades.produto
      Modal: st_importacoes_utilidades.via_transp_norm
      País de Origem: st_importacoes_utilidades.nm_pais_origem
      Período: st_importacoes_utilidades.anomes_norm
      Modelo: st_importacoes_utilidades.modelo
      Tamanho: st_importacoes_utilidades.tamanho
      Material: st_importacoes_utilidades.material
    row: 6
    col: 2
    width: 9
    height: 4
  - title: Quantidade Total de Itens Importados
    name: Quantidade Total de Itens Importados
    model: external_st_importacoes
    explore: st_importacoes_utilidades
    type: single_value
    fields: [st_importacoes_utilidades.count]
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
      Importador Nome: st_importacoes_utilidades.importador_nome
      NCM: st_importacoes_utilidades.cdncm_compl
      Produto: st_importacoes_utilidades.produto
      Modal: st_importacoes_utilidades.via_transp_norm
      País de Origem: st_importacoes_utilidades.nm_pais_origem
      Período: st_importacoes_utilidades.anomes_norm
      Modelo: st_importacoes_utilidades.modelo
      Tamanho: st_importacoes_utilidades.tamanho
      Material: st_importacoes_utilidades.material
    row: 6
    col: 13
    width: 9
    height: 4
  - title: Valor FOB Total (US$) - Tendência Mensal
    name: Valor FOB Total (US$) - Tendência Mensal
    model: external_st_importacoes
    explore: st_importacoes_utilidades
    type: looker_column
    fields: [st_importacoes_utilidades.fob_sum, st_importacoes_utilidades.count, st_importacoes_utilidades.anomes_norm,
      st_importacoes_utilidades.anomes]
    sorts: [st_importacoes_utilidades.anomes]
    limit: 500
    dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: "${st_importacoes_utilidades.fob_sum}",
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
    y_axes: [{label: '', orientation: left, series: [{axisId: st_importacoes_utilidades.fob_sum,
            id: st_importacoes_utilidades.fob_sum, name: Fob Sum}], showLabels: true,
        showValues: true, valueFormat: "$#,##0", unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: !!null '', orientation: right,
        series: [{axisId: st_importacoes_utilidades.count, id: st_importacoes_utilidades.count,
            name: Quantidade}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: Mês / Ano
    label_value_format: ''
    series_types:
      st_importacoes_utilidades.count: line
    series_colors:
      calculation_1: "#9BDA32"
      st_importacoes_utilidades.count: "#97d921"
    series_labels:
      st_importacoes_utilidades.count: Quantidade
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
    hidden_fields: [st_importacoes_utilidades.fob_sum, st_importacoes_utilidades.count,
      st_importacoes_utilidades.anomes]
    listen:
      Importador Nome: st_importacoes_utilidades.importador_nome
      NCM: st_importacoes_utilidades.cdncm_compl
      Produto: st_importacoes_utilidades.produto
      Modal: st_importacoes_utilidades.via_transp_norm
      País de Origem: st_importacoes_utilidades.nm_pais_origem
      Período: st_importacoes_utilidades.anomes_norm
      Modelo: st_importacoes_utilidades.modelo
      Tamanho: st_importacoes_utilidades.tamanho
      Material: st_importacoes_utilidades.material
    row: 10
    col: 0
    width: 24
    height: 7
  - title: Valor FOB Total (US$) - Ranking Importadores
    name: Valor FOB Total (US$) - Ranking Importadores
    model: external_st_importacoes
    explore: st_importacoes_utilidades
    type: looker_column
    fields: [st_importacoes_utilidades.fob_sum, st_importacoes_utilidades.count, st_importacoes_utilidades.importador_nome]
    filters:
      st_importacoes_utilidades.importador_check: 'Yes'
      st_importacoes_utilidades.importador_colorido: "-ST IMPORTACOES LTDA"
    sorts: [st_importacoes_utilidades.fob_sum desc]
    limit: 15
    dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: "${st_importacoes_utilidades.fob_sum}",
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
    y_axes: [{label: '', orientation: left, series: [{axisId: st_importacoes_utilidades.fob_sum,
            id: st_importacoes_utilidades.fob_sum, name: Fob Sum}], showLabels: true,
        showValues: true, valueFormat: "$#,##0", unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: !!null '', orientation: right,
        series: [{axisId: st_importacoes_utilidades.count, id: st_importacoes_utilidades.count,
            name: Quantidade}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    series_types:
      st_importacoes_utilidades.count: line
    series_colors:
      st_importacoes_utilidades.count: "#98d91e"
      calculation_1: "#7a7a7a"
    series_labels:
      st_importacoes_utilidades.count: Quantidade
      calculation_1: Valor Fob Total
    defaults_version: 1
    hidden_fields: [st_importacoes_utilidades.fob_sum, st_importacoes_utilidades.count]
    listen:
      Importador Nome: st_importacoes_utilidades.importador_nome
      NCM: st_importacoes_utilidades.cdncm_compl
      Produto: st_importacoes_utilidades.produto
      Modal: st_importacoes_utilidades.via_transp_norm
      País de Origem: st_importacoes_utilidades.nm_pais_origem
      Período: st_importacoes_utilidades.anomes_norm
      Modelo: st_importacoes_utilidades.modelo
      Tamanho: st_importacoes_utilidades.tamanho
      Material: st_importacoes_utilidades.material
    row: 27
    col: 7
    width: 17
    height: 7
  - title: NCMs Importados
    name: NCMs Importados
    model: external_st_importacoes
    explore: st_importacoes_utilidades
    type: looker_grid
    fields: [st_importacoes_utilidades.ncm_desc, st_importacoes_utilidades.fob_sum,
      st_importacoes_utilidades.count]
    sorts: [st_importacoes_utilidades.fob_sum desc]
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
      st_importacoes_utilidades.count: Quantidade
      st_importacoes_utilidades.fob_sum: Valor FOB Total
    series_cell_visualizations:
      st_importacoes_utilidades.fob_sum:
        is_active: true
        palette:
          palette_id: 1d226da9-6ef2-4271-18c3-68d6209ca6ad
          collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
          custom_colors:
          - "#c2c2c2"
          - "#363636"
    series_value_format:
      st_importacoes_utilidades.fob_sum: "$#,##0.00"
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
      Importador Nome: st_importacoes_utilidades.importador_nome
      NCM: st_importacoes_utilidades.cdncm_compl
      Produto: st_importacoes_utilidades.produto
      Modal: st_importacoes_utilidades.via_transp_norm
      País de Origem: st_importacoes_utilidades.nm_pais_origem
      Período: st_importacoes_utilidades.anomes_norm
      Modelo: st_importacoes_utilidades.modelo
      Tamanho: st_importacoes_utilidades.tamanho
      Material: st_importacoes_utilidades.material
    row: 41
    col: 0
    width: 24
    height: 9
  - title: País de Origem
    name: País de Origem
    model: external_st_importacoes
    explore: st_importacoes_utilidades
    type: looker_map
    fields: [st_importacoes_utilidades.fob_sum, st_importacoes_utilidades.store_location]
    sorts: [st_importacoes_utilidades.fob_sum]
    limit: 500
    dynamic_fields: [{table_calculation: valor_fob_total, label: Valor Fob Total,
        expression: "${st_importacoes_utilidades.fob_sum}", value_format: "$#,##0",
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number}]
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
    y_axes: [{label: '', orientation: left, series: [{axisId: st_importacoes_utilidades.fob_sum,
            id: st_importacoes_utilidades.fob_sum, name: Fob Sum}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: st_importacoes_utilidades.count,
            id: st_importacoes_utilidades.count, name: Quantidade}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types: {}
    series_labels:
      st_importacoes_utilidades.count: Quantidade
    defaults_version: 1
    map: auto
    map_projection: ''
    quantize_colors: false
    hidden_fields: [st_importacoes_utilidades.fob_sum]
    listen:
      Importador Nome: st_importacoes_utilidades.importador_nome
      NCM: st_importacoes_utilidades.cdncm_compl
      Produto: st_importacoes_utilidades.produto
      Modal: st_importacoes_utilidades.via_transp_norm
      País de Origem: st_importacoes_utilidades.nm_pais_origem
      Período: st_importacoes_utilidades.anomes_norm
      Modelo: st_importacoes_utilidades.modelo
      Tamanho: st_importacoes_utilidades.tamanho
      Material: st_importacoes_utilidades.material
    row: 17
    col: 0
    width: 24
    height: 10
  - title: Valor FOB Total (US$) - Modal
    name: Valor FOB Total (US$) - Modal
    model: external_st_importacoes
    explore: st_importacoes_utilidades
    type: looker_pie
    fields: [st_importacoes_utilidades.fob_sum, st_importacoes_utilidades.via_transp_norm]
    filters:
      st_importacoes_utilidades.via_transp_norm_check: 'Yes'
    sorts: [st_importacoes_utilidades.fob_sum desc]
    limit: 500
    dynamic_fields: [{table_calculation: valor_fob_total, label: Valor FOB Total,
        expression: "${st_importacoes_utilidades.fob_sum}", value_format: "$#,##0",
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number}]
    value_labels: legend
    label_type: labPer
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      custom:
        id: 93fcc1b6-c368-4337-343f-d6c9cba07479
        label: Custom
        type: continuous
        stops:
        - color: "#C2C2C2"
          offset: 0
        - color: "#363636"
          offset: 100
      options:
        steps: 5
        reverse: true
    series_colors:
      MARÍTIMO: "#aaf52d"
      AÉREO: "#525252"
      RODOVIÁRIO: "#848484"
      MEIOS PRÓPRIOS: "#b4b4b4"
      ENTRADA/SAÍDA FICTA: "#DADADA"
    series_labels:
      st_importacoes_utilidades.count: Quantidade
      st_importacoes_utilidades.via_transp: Transporte
      st_importacoes_utilidades.qtde_comerc_sum: Qtde Comercializada
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
      st_importacoes_utilidades.qtde_comerc_sum:
        is_active: true
      st_importacoes_utilidades.fob_sum:
        is_active: false
    series_value_format:
      st_importacoes_utilidades.fob_sum: "$#,##0"
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
    y_axes: [{label: '', orientation: left, series: [{axisId: st_importacoes_utilidades.fob_sum,
            id: st_importacoes_utilidades.fob_sum, name: Fob Sum}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: st_importacoes_utilidades.count,
            id: st_importacoes_utilidades.count, name: Quantidade}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types: {}
    defaults_version: 1
    map: auto
    map_projection: ''
    quantize_colors: false
    hidden_fields: [st_importacoes_utilidades.fob_sum]
    listen:
      Importador Nome: st_importacoes_utilidades.importador_nome
      NCM: st_importacoes_utilidades.cdncm_compl
      Produto: st_importacoes_utilidades.produto
      Modal: st_importacoes_utilidades.via_transp_norm
      País de Origem: st_importacoes_utilidades.nm_pais_origem
      Período: st_importacoes_utilidades.anomes_norm
      Modelo: st_importacoes_utilidades.modelo
      Tamanho: st_importacoes_utilidades.tamanho
      Material: st_importacoes_utilidades.material
    row: 92
    col: 0
    width: 8
    height: 7
  - title: Registros
    name: Registros
    model: external_st_importacoes
    explore: st_importacoes_utilidades
    type: looker_grid
    fields: [st_importacoes_utilidades.produto, st_importacoes_utilidades.tp_unid_comerc,
      st_importacoes_utilidades.qtde_comerc_sum, st_importacoes_utilidades.fob_sum,
      st_importacoes_utilidades.val_fob_un_us_num_avg]
    filters:
      st_importacoes_utilidades.tp_unid_comerc: "-EMPTY"
    sorts: [st_importacoes_utilidades.qtde_comerc_sum desc]
    limit: 500
    dynamic_fields: [{table_calculation: media_simples, label: Média Simples, expression: "${st_importacoes_utilidades.fob_sum}\
          \ / ${st_importacoes_utilidades.qtde_comerc_sum}", value_format: !!null '',
        value_format_name: decimal_2, _kind_hint: measure, _type_hint: number}]
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
    column_order: ["$$$_row_numbers_$$$", st_importacoes_utilidades.produto, st_importacoes_utilidades.qtde_comerc_sum,
      st_importacoes_utilidades.tp_unid_comerc, st_importacoes_utilidades.fob_sum,
      st_importacoes_utilidades.val_fob_un_us_num_avg]
    show_totals: true
    show_row_totals: true
    series_labels:
      st_importacoes_utilidades.count: Quantidade
      st_importacoes_utilidades.desc_prodt: Produto
      st_importacoes_utilidades.tp_unid_comerc: Tipo Unidade
      st_importacoes_utilidades.qtde_comerc_sum: Quantidade
      st_importacoes_utilidades.val_fob_un_us_num_avg: Média Ponderada
      st_importacoes_utilidades.fob_sum: Valor FOB Total
    series_cell_visualizations:
      st_importacoes_utilidades.qtde_comerc_sum:
        is_active: false
      st_importacoes_utilidades.fob_sum:
        is_active: true
        palette:
          palette_id: 39dda765-0763-514e-e2ac-8db862369f0f
          collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
          custom_colors:
          - "#c2c2c2"
          - "#363636"
    series_text_format:
      st_importacoes_utilidades.produto:
        align: left
      st_importacoes_utilidades.tp_unid_comerc:
        align: left
      st_importacoes_utilidades.qtde_comerc_sum:
        align: left
      st_importacoes_utilidades.val_fob_un_us_num_avg:
        align: left
      media_simples:
        align: left
    series_value_format:
      st_importacoes_utilidades.fob_sum: "$#,##0"
      st_importacoes_utilidades.val_fob_un_us_num_avg:
        name: usd
        format_string: "$#,##0.00"
        label: U.S. Dollars (2)
      st_importacoes_utilidades.qtde_comerc_sum:
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
    y_axes: [{label: '', orientation: left, series: [{axisId: st_importacoes_utilidades.fob_sum,
            id: st_importacoes_utilidades.fob_sum, name: Fob Sum}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: st_importacoes_utilidades.count,
            id: st_importacoes_utilidades.count, name: Quantidade}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
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
      Importador Nome: st_importacoes_utilidades.importador_nome
      NCM: st_importacoes_utilidades.cdncm_compl
      Produto: st_importacoes_utilidades.produto
      Modal: st_importacoes_utilidades.via_transp_norm
      País de Origem: st_importacoes_utilidades.nm_pais_origem
      Período: st_importacoes_utilidades.anomes_norm
      Modelo: st_importacoes_utilidades.modelo
      Tamanho: st_importacoes_utilidades.tamanho
      Material: st_importacoes_utilidades.material
    row: 92
    col: 8
    width: 16
    height: 7
  - title: Valor FOB Total (US$) - Ranking Produtos
    name: Valor FOB Total (US$) - Ranking Produtos
    model: external_st_importacoes
    explore: st_importacoes_utilidades
    type: looker_column
    fields: [st_importacoes_utilidades.fob_sum, st_importacoes_utilidades.produto]
    filters:
      st_importacoes_utilidades.produto_check: 'Yes'
    sorts: [st_importacoes_utilidades.fob_sum desc]
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
      st_importacoes_utilidades.fob_sum: "#7a7a7a"
    series_labels:
      st_importacoes_utilidades.fob_sum: Valor Fob Total
    value_labels: legend
    label_type: labPer
    defaults_version: 1
    note_state: collapsed
    note_display: below
    listen:
      Importador Nome: st_importacoes_utilidades.importador_nome
      NCM: st_importacoes_utilidades.cdncm_compl
      Produto: st_importacoes_utilidades.produto
      Modal: st_importacoes_utilidades.via_transp_norm
      País de Origem: st_importacoes_utilidades.nm_pais_origem
      Período: st_importacoes_utilidades.anomes_norm
      Modelo: st_importacoes_utilidades.modelo
      Tamanho: st_importacoes_utilidades.tamanho
      Material: st_importacoes_utilidades.material
    row: 50
    col: 0
    width: 24
    height: 7
  - title: Média Simples Valor FOB (US$) - Ranking Produtos
    name: Média Simples Valor FOB (US$) - Ranking Produtos
    model: external_st_importacoes
    explore: st_importacoes_utilidades
    type: looker_column
    fields: [st_importacoes_utilidades.fob_sum, st_importacoes_utilidades.produto,
      st_importacoes_utilidades.qtde_comerc_sum]
    filters:
      st_importacoes_utilidades.tp_unid_comerc: UNIDADE
      st_importacoes_utilidades.produto_check: 'Yes'
    sorts: [media_simples desc]
    limit: 500
    dynamic_fields: [{table_calculation: media_simples, label: Média Simples, expression: "${st_importacoes_utilidades.fob_sum}\
          \ / ${st_importacoes_utilidades.qtde_comerc_sum}", value_format: !!null '',
        value_format_name: usd, _kind_hint: measure, _type_hint: number}]
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
      st_importacoes_utilidades.fob_sum: "#7a7a7a"
      media_simples: "#9BDA32"
    series_labels:
      st_importacoes_utilidades.fob_sum: Valor Fob Total
    label_color: ["#7a7a7a"]
    value_labels: legend
    label_type: labPer
    defaults_version: 1
    hidden_fields: [st_importacoes_utilidades.qtde_comerc_sum, st_importacoes_utilidades.fob_sum]
    note_state: collapsed
    note_display: below
    note_text: Considera apenas o tipo UNIDADE.
    listen:
      Importador Nome: st_importacoes_utilidades.importador_nome
      NCM: st_importacoes_utilidades.cdncm_compl
      Produto: st_importacoes_utilidades.produto
      Modal: st_importacoes_utilidades.via_transp_norm
      País de Origem: st_importacoes_utilidades.nm_pais_origem
      Período: st_importacoes_utilidades.anomes_norm
      Modelo: st_importacoes_utilidades.modelo
      Tamanho: st_importacoes_utilidades.tamanho
      Material: st_importacoes_utilidades.material
    row: 64
    col: 0
    width: 24
    height: 7
  - title: Valor FOB Total (US$) - Ranking Exportadores
    name: Valor FOB Total (US$) - Ranking Exportadores
    model: external_st_importacoes
    explore: st_importacoes_utilidades
    type: looker_column
    fields: [st_importacoes_utilidades.fob_sum, st_importacoes_utilidades.count, st_importacoes_utilidades.exportador_nome]
    filters:
      st_importacoes_utilidades.exportador_check: 'Yes'
    sorts: [st_importacoes_utilidades.fob_sum desc]
    limit: 15
    dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: "${st_importacoes_utilidades.fob_sum}",
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
    y_axes: [{label: '', orientation: left, series: [{axisId: st_importacoes_utilidades.fob_sum,
            id: st_importacoes_utilidades.fob_sum, name: Fob Sum}], showLabels: true,
        showValues: true, valueFormat: "$#,##0", unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: !!null '', orientation: right,
        series: [{axisId: st_importacoes_utilidades.count, id: st_importacoes_utilidades.count,
            name: Quantidade}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    series_types:
      st_importacoes_utilidades.count: line
    series_colors:
      st_importacoes_utilidades.count: "#98d91e"
      calculation_1: "#9BDA32"
    series_labels:
      st_importacoes_utilidades.count: Quantidade
      calculation_1: Valor Fob Total
    label_color: ["#7a7a7a"]
    defaults_version: 1
    hidden_fields: [st_importacoes_utilidades.fob_sum, st_importacoes_utilidades.count]
    listen:
      Importador Nome: st_importacoes_utilidades.importador_nome
      NCM: st_importacoes_utilidades.cdncm_compl
      Produto: st_importacoes_utilidades.produto
      Modal: st_importacoes_utilidades.via_transp_norm
      País de Origem: st_importacoes_utilidades.nm_pais_origem
      Período: st_importacoes_utilidades.anomes_norm
      Modelo: st_importacoes_utilidades.modelo
      Tamanho: st_importacoes_utilidades.tamanho
      Material: st_importacoes_utilidades.material
    row: 34
    col: 0
    width: 24
    height: 7
  - title: Variação do Valor FOB Unitário (US$) por Produto
    name: Variação do Valor FOB Unitário (US$) por Produto
    model: external_st_importacoes
    explore: st_importacoes_utilidades
    type: looker_boxplot
    fields: [st_importacoes_utilidades.produto, st_importacoes_utilidades.val_fob_un_us_num_min,
      st_importacoes_utilidades.val_fob_un_us_num_avg, st_importacoes_utilidades.val_fob_un_us_num_max,
      st_importacoes_utilidades.fob_sum]
    filters:
      st_importacoes_utilidades.tp_unid_comerc: UNIDADE
      st_importacoes_utilidades.produto_check: 'Yes'
    sorts: [st_importacoes_utilidades.val_fob_un_us_num_max desc]
    limit: 15
    dynamic_fields: [{table_calculation: media_simples, label: Média Simples, expression: "${st_importacoes_utilidades.fob_sum}\
          \ / ${st_importacoes_utilidades.qtde_comerc_sum}", value_format: !!null '',
        value_format_name: usd, is_disabled: true, _kind_hint: measure, _type_hint: number},
      {table_calculation: valores, label: 'Valores:', expression: "${st_importacoes_utilidades.val_fob_un_us_num_min}",
        value_format: !!null '', value_format_name: usd, _kind_hint: measure, _type_hint: number},
      {table_calculation: avg_calc, label: avg_calc, expression: "${st_importacoes_utilidades.val_fob_un_us_num_avg}",
        value_format: !!null '', value_format_name: usd, _kind_hint: measure, _type_hint: number},
      {table_calculation: max_calc, label: max_calc, expression: "${st_importacoes_utilidades.val_fob_un_us_num_max}",
        value_format: !!null '', value_format_name: usd, _kind_hint: measure, _type_hint: number}]
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
    y_axis_labels: [Valor]
    y_axis_value_format: "#,##0.00"
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
      st_importacoes_utilidades.fob_sum: "#7a7a7a"
      media_simples: "#7a7a7a"
    series_labels:
      st_importacoes_utilidades.fob_sum: Valor Fob Total
    value_labels: legend
    label_type: labPer
    defaults_version: 1
    hidden_fields: [st_importacoes_utilidades.val_fob_un_us_num_min, st_importacoes_utilidades.val_fob_un_us_num_avg,
      st_importacoes_utilidades.val_fob_un_us_num_max, st_importacoes_utilidades.fob_sum]
    note_state: collapsed
    note_display: below
    note_text: Considera apenas o tipo UNIDADE.
    listen:
      Importador Nome: st_importacoes_utilidades.importador_nome
      NCM: st_importacoes_utilidades.cdncm_compl
      Produto: st_importacoes_utilidades.produto
      Modal: st_importacoes_utilidades.via_transp_norm
      País de Origem: st_importacoes_utilidades.nm_pais_origem
      Período: st_importacoes_utilidades.anomes_norm
      Modelo: st_importacoes_utilidades.modelo
      Tamanho: st_importacoes_utilidades.tamanho
      Material: st_importacoes_utilidades.material
    row: 57
    col: 0
    width: 24
    height: 7
  - title: Valor FOB Total (US$) - Tamanho
    name: Valor FOB Total (US$) - Tamanho
    model: external_st_importacoes
    explore: st_importacoes_utilidades
    type: looker_column
    fields: [st_importacoes_utilidades.fob_sum, st_importacoes_utilidades.tamanho]
    filters:
      st_importacoes_utilidades.tamanho_check: 'Yes'
    sorts: [st_importacoes_utilidades.fob_sum desc]
    limit: 15
    dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: "${st_importacoes_utilidades.fob_sum}",
        value_format: "$#,##0", value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}, {table_calculation: percent_of_total, label: percent_of_total,
        expression: "${st_importacoes_utilidades.fob_sum}/sum(${st_importacoes_utilidades.fob_sum})",
        value_format: !!null '', value_format_name: percent_3, _kind_hint: measure,
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
    y_axes: [{label: '', orientation: left, series: [{axisId: st_importacoes_utilidades.fob_sum,
            id: st_importacoes_utilidades.fob_sum, name: Fob Sum}], showLabels: true,
        showValues: true, valueFormat: "$#,##0", unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: !!null '', orientation: right,
        series: [{axisId: st_importacoes_utilidades.count, id: st_importacoes_utilidades.count,
            name: Quantidade}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    series_types:
      st_importacoes_utilidades.count: line
    series_colors:
      st_importacoes_utilidades.count: "#98d91e"
      calculation_1: "#7a7a7a"
      percent_of_total: "#7a7a7a"
    series_labels:
      st_importacoes_utilidades.count: Quantidade
      calculation_1: Valor Fob Total
    label_color: ["#7a7a7a"]
    defaults_version: 1
    hidden_fields: [st_importacoes_utilidades.fob_sum, calculation_1]
    note_state: collapsed
    note_display: hover
    note_text: Não considera tamanhos não identificados.
    listen:
      Importador Nome: st_importacoes_utilidades.importador_nome
      NCM: st_importacoes_utilidades.cdncm_compl
      Produto: st_importacoes_utilidades.produto
      Modal: st_importacoes_utilidades.via_transp_norm
      País de Origem: st_importacoes_utilidades.nm_pais_origem
      Período: st_importacoes_utilidades.anomes_norm
      Modelo: st_importacoes_utilidades.modelo
      Tamanho: st_importacoes_utilidades.tamanho
      Material: st_importacoes_utilidades.material
    row: 85
    col: 0
    width: 24
    height: 7
  - title: Valor FOB Total (US$) - Ranking Modelos
    name: Valor FOB Total (US$) - Ranking Modelos
    model: external_st_importacoes
    explore: st_importacoes_utilidades
    type: looker_column
    fields: [st_importacoes_utilidades.fob_sum, st_importacoes_utilidades.count, st_importacoes_utilidades.modelo]
    filters:
      st_importacoes_utilidades.modelo_check: 'Yes'
    sorts: [st_importacoes_utilidades.fob_sum desc]
    limit: 150
    dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: "${st_importacoes_utilidades.fob_sum}",
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
    y_axes: [{label: '', orientation: left, series: [{axisId: st_importacoes_utilidades.fob_sum,
            id: st_importacoes_utilidades.fob_sum, name: Fob Sum}], showLabels: true,
        showValues: true, valueFormat: "$#,##0", unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: !!null '', orientation: right,
        series: [{axisId: st_importacoes_utilidades.count, id: st_importacoes_utilidades.count,
            name: Quantidade}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '15'
    series_types:
      st_importacoes_utilidades.count: line
    series_colors:
      st_importacoes_utilidades.count: "#98d91e"
      calculation_1: "#7a7a7a"
    series_labels:
      st_importacoes_utilidades.count: Quantidade
      calculation_1: Valor Fob Total
    defaults_version: 1
    hidden_fields: [st_importacoes_utilidades.fob_sum, st_importacoes_utilidades.count]
    listen:
      Importador Nome: st_importacoes_utilidades.importador_nome
      NCM: st_importacoes_utilidades.cdncm_compl
      Produto: st_importacoes_utilidades.produto
      Modal: st_importacoes_utilidades.via_transp_norm
      País de Origem: st_importacoes_utilidades.nm_pais_origem
      Período: st_importacoes_utilidades.anomes_norm
      Modelo: st_importacoes_utilidades.modelo
      Tamanho: st_importacoes_utilidades.tamanho
      Material: st_importacoes_utilidades.material
    row: 71
    col: 0
    width: 24
    height: 7
  - title: Valor FOB Total (US$) - ST Importações
    name: Valor FOB Total (US$) - ST Importações
    model: external_st_importacoes
    explore: st_importacoes_utilidades
    type: single_value
    fields: [st_importacoes_utilidades.fob_sum, st_importacoes_utilidades.count, st_importacoes_utilidades.importador_nome]
    filters:
      st_importacoes_utilidades.importador_check: 'Yes'
      st_importacoes_utilidades.importador_colorido: ST IMPORTACOES LTDA
    sorts: [st_importacoes_utilidades.fob_sum desc]
    limit: 15
    dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: "${st_importacoes_utilidades.fob_sum}",
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
    custom_color: "#72D16D"
    conditional_formatting: [{type: greater than, value: 0, background_color: "#000000",
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
    y_axes: [{label: '', orientation: left, series: [{axisId: st_importacoes_utilidades.fob_sum,
            id: st_importacoes_utilidades.fob_sum, name: Fob Sum}], showLabels: true,
        showValues: true, valueFormat: "$#,##0", unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: !!null '', orientation: right,
        series: [{axisId: st_importacoes_utilidades.count, id: st_importacoes_utilidades.count,
            name: Quantidade}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    series_types: {}
    series_colors:
      st_importacoes_utilidades.count: "#98d91e"
      calculation_1: "#7a7a7a"
    series_labels:
      st_importacoes_utilidades.count: Quantidade
      calculation_1: Valor Fob Total
    defaults_version: 1
    hidden_fields: [st_importacoes_utilidades.fob_sum, st_importacoes_utilidades.count]
    listen:
      Importador Nome: st_importacoes_utilidades.importador_nome
      NCM: st_importacoes_utilidades.cdncm_compl
      Produto: st_importacoes_utilidades.produto
      Modal: st_importacoes_utilidades.via_transp_norm
      País de Origem: st_importacoes_utilidades.nm_pais_origem
      Período: st_importacoes_utilidades.anomes_norm
      Modelo: st_importacoes_utilidades.modelo
      Tamanho: st_importacoes_utilidades.tamanho
      Material: st_importacoes_utilidades.material
    row: 27
    col: 0
    width: 7
    height: 7
  - title: Valor FOB Total (US$) - Material
    name: Valor FOB Total (US$) - Material
    model: external_st_importacoes
    explore: st_importacoes_utilidades
    type: looker_column
    fields: [st_importacoes_utilidades.fob_sum, st_importacoes_utilidades.material]
    filters:
      st_importacoes_utilidades.tamanho_check: 'Yes'
    sorts: [st_importacoes_utilidades.fob_sum desc]
    limit: 15
    dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: "${st_importacoes_utilidades.fob_sum}",
        value_format: "$#,##0", value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}, {table_calculation: percent_of_total, label: percent_of_total,
        expression: "${st_importacoes_utilidades.fob_sum}/sum(${st_importacoes_utilidades.fob_sum})",
        value_format: !!null '', value_format_name: percent_3, _kind_hint: measure,
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
    y_axes: [{label: '', orientation: left, series: [{axisId: st_importacoes_utilidades.fob_sum,
            id: st_importacoes_utilidades.fob_sum, name: Fob Sum}], showLabels: true,
        showValues: true, valueFormat: "$#,##0", unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: !!null '', orientation: right,
        series: [{axisId: st_importacoes_utilidades.count, id: st_importacoes_utilidades.count,
            name: Quantidade}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    series_types:
      st_importacoes_utilidades.count: line
    series_colors:
      st_importacoes_utilidades.count: "#98d91e"
      calculation_1: "#9BDA32"
      percent_of_total: "#7a7a7a"
    series_labels:
      st_importacoes_utilidades.count: Quantidade
      calculation_1: Valor Fob Total
    label_color: ["#7a7a7a"]
    defaults_version: 1
    hidden_fields: [st_importacoes_utilidades.fob_sum, percent_of_total]
    listen:
      Importador Nome: st_importacoes_utilidades.importador_nome
      NCM: st_importacoes_utilidades.cdncm_compl
      Produto: st_importacoes_utilidades.produto
      Modal: st_importacoes_utilidades.via_transp_norm
      País de Origem: st_importacoes_utilidades.nm_pais_origem
      Período: st_importacoes_utilidades.anomes_norm
      Modelo: st_importacoes_utilidades.modelo
      Tamanho: st_importacoes_utilidades.tamanho
      Material: st_importacoes_utilidades.material
    row: 78
    col: 0
    width: 24
    height: 7
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: <img src="https://drive.google.com/uc?export=view&id=1NpOJPe-eAjUY7w5qHgn4ndPyEu0baTDI"/>
    row: 0
    col: 6
    width: 13
    height: 6
  - title: Registros - Analítico
    name: Registros - Analítico
    model: external_st_importacoes
    explore: st_importacoes_utilidades
    type: looker_grid
    fields: [st_importacoes_utilidades.id_import, st_importacoes_utilidades.importador_nome,
      st_importacoes_utilidades.exportador_nome, st_importacoes_utilidades.anomes_norm,
      st_importacoes_utilidades.via_transp_norm, st_importacoes_utilidades.tp_unid_comerc,
      st_importacoes_utilidades.material, st_importacoes_utilidades.modelo, st_importacoes_utilidades.nm_pais_origem,
      st_importacoes_utilidades.ncm_desc, st_importacoes_utilidades.desc_prodt, st_importacoes_utilidades.produto,
      st_importacoes_utilidades.qtd_comerc_num, st_importacoes_utilidades.val_fob_un_us_num,
      st_importacoes_utilidades.val_vmle_us_subitem_num, st_importacoes_utilidades.cdncm_compl,
      st_importacoes_utilidades.tamanho]
    sorts: [st_importacoes_utilidades.id_import]
    limit: 500
    dynamic_fields: [{table_calculation: valor_fob_total, label: Valor FOB Total,
        expression: "${st_importacoes_utilidades.fob_sum}", value_format: "$#,##0",
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number, is_disabled: true}]
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
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      custom:
        id: 93fcc1b6-c368-4337-343f-d6c9cba07479
        label: Custom
        type: continuous
        stops:
        - color: "#C2C2C2"
          offset: 0
        - color: "#363636"
          offset: 100
      options:
        steps: 5
        reverse: true
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", st_importacoes_utilidades.via_transp_norm,
      st_importacoes_utilidades.id_import, st_importacoes_utilidades.qtd_comerc_num,
      st_importacoes_utilidades.val_fob_un_us_num, st_importacoes_utilidades.exportador_nome,
      st_importacoes_utilidades.cdncm_compl, st_importacoes_utilidades.tp_unid_comerc,
      st_importacoes_utilidades.desc_prodt, st_importacoes_utilidades.nm_pais_origem,
      st_importacoes_utilidades.val_vmle_us_subitem_num, st_importacoes_utilidades.importador_nome,
      st_importacoes_utilidades.anomes_norm, st_importacoes_utilidades.tamanho, st_importacoes_utilidades.material,
      st_importacoes_utilidades.modelo, st_importacoes_utilidades.ncm_desc, st_importacoes_utilidades.produto]
    show_totals: true
    show_row_totals: true
    series_labels:
      st_importacoes_utilidades.count: Quantidade
      st_importacoes_utilidades.via_transp: Transporte
      st_importacoes_utilidades.qtde_comerc_sum: Qtde Comercializada
      st_importacoes_utilidades.id_import: ID
      st_importacoes_utilidades.anomes_norm: Periodo
      st_importacoes_utilidades.via_transp_norm: Modal
      st_importacoes_utilidades.tp_unid_comerc: Tipo Unidade
      st_importacoes_utilidades.nm_pais_origem: Pais de Origem
      st_importacoes_utilidades.ncm_desc: NCM Desc
      st_importacoes_utilidades.desc_prodt: Desc Produto
      st_importacoes_utilidades.produto: Produto
      st_importacoes_utilidades.qtd_comerc_num: Quantidade
      st_importacoes_utilidades.val_fob_un_us_num: Valor FOB Unidade
      st_importacoes_utilidades.val_vmle_us_subitem_num: Valor FOB
      st_importacoes_utilidades.cdncm_compl: NCM
    series_column_widths:
      st_importacoes_utilidades.qtd_comerc_num: 115
      st_importacoes_utilidades.id_import: 104
      st_importacoes_utilidades.val_fob_un_us_num: 157
      st_importacoes_utilidades.exportador_nome: 151
      st_importacoes_utilidades.ncm_desc: 112
      st_importacoes_utilidades.cdncm_compl: 94
      st_importacoes_utilidades.importador_nome: 175
      st_importacoes_utilidades.tp_unid_comerc: 150
      st_importacoes_utilidades.desc_prodt: 135
      st_importacoes_utilidades.nm_pais_origem: 142
      st_importacoes_utilidades.val_vmle_us_subitem_num: 120
      st_importacoes_utilidades.anomes_norm: 107
      st_importacoes_utilidades.material: 137
      st_importacoes_utilidades.modelo: 94
      st_importacoes_utilidades.produto: 92
      st_importacoes_utilidades.tamanho: 128
    series_cell_visualizations:
      st_importacoes_utilidades.qtde_comerc_sum:
        is_active: true
      st_importacoes_utilidades.fob_sum:
        is_active: false
    series_value_format:
      st_importacoes_utilidades.fob_sum: "$#,##0"
    value_labels: legend
    label_type: labPer
    series_colors:
      MARÍTIMO: "#aaf52d"
      AÉREO: "#525252"
      RODOVIÁRIO: "#848484"
      MEIOS PRÓPRIOS: "#b4b4b4"
      ENTRADA/SAÍDA FICTA: "#DADADA"
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
    y_axes: [{label: '', orientation: left, series: [{axisId: st_importacoes_utilidades.fob_sum,
            id: st_importacoes_utilidades.fob_sum, name: Fob Sum}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: st_importacoes_utilidades.count,
            id: st_importacoes_utilidades.count, name: Quantidade}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types: {}
    defaults_version: 1
    map: auto
    map_projection: ''
    quantize_colors: false
    hidden_fields: []
    listen:
      Importador Nome: st_importacoes_utilidades.importador_nome
      NCM: st_importacoes_utilidades.cdncm_compl
      Produto: st_importacoes_utilidades.produto
      Modal: st_importacoes_utilidades.via_transp_norm
      País de Origem: st_importacoes_utilidades.nm_pais_origem
      Período: st_importacoes_utilidades.anomes_norm
      Modelo: st_importacoes_utilidades.modelo
      Tamanho: st_importacoes_utilidades.tamanho
      Material: st_importacoes_utilidades.material
    row: 99
    col: 0
    width: 24
    height: 7
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
    model: external_st_importacoes
    explore: st_importacoes_utilidades
    listens_to_filters: []
    field: st_importacoes_utilidades.importador_nome
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
    explore: st_importacoes_utilidades
    listens_to_filters: []
    field: st_importacoes_utilidades.anomes_norm
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
    explore: st_importacoes_utilidades
    listens_to_filters: []
    field: st_importacoes_utilidades.cdncm_compl
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
    explore: st_importacoes_utilidades
    listens_to_filters: []
    field: st_importacoes_utilidades.produto
  - name: Tamanho
    title: Tamanho
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
      options: []
    model: external_st_importacoes
    explore: st_importacoes_utilidades
    listens_to_filters: []
    field: st_importacoes_utilidades.tamanho
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
    model: external_st_importacoes
    explore: st_importacoes_utilidades
    listens_to_filters: []
    field: st_importacoes_utilidades.modelo
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
    model: external_st_importacoes
    explore: st_importacoes_utilidades
    listens_to_filters: []
    field: st_importacoes_utilidades.material
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
    model: external_st_importacoes
    explore: st_importacoes_utilidades
    listens_to_filters: []
    field: st_importacoes_utilidades.via_transp_norm
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
    model: external_st_importacoes
    explore: st_importacoes_utilidades
    listens_to_filters: []
    field: st_importacoes_utilidades.nm_pais_origem
