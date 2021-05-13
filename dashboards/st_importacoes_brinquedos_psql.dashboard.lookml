- dashboard: st_importacoes_brinquedos_psql
  title: Visão de Mercado - Utilidades Domésticas
  layout: newspaper
  preferred_viewer: dashboards-next
  crossfilter_enabled: true
  elements:
  - title: Valor FOB Total (US$) de Itens Importados
    name: Valor FOB Total (US$) de Itens Importados
    model: external_st_importacoes_postgres
    explore: st_importacoes_utilidades_psql
    type: single_value
    fields: [st_importacoes_utilidades_psql.fob_sum]
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
      NCM: st_importacoes_utilidades_psql.cdncm_compl
      Produto: st_importacoes_utilidades_psql.produto
      Modal: st_importacoes_utilidades_psql.via_transp_norm
      País de Origem: st_importacoes_utilidades_psql.nm_pais_origem
      Modelo: st_importacoes_utilidades_psql.modelo
      Tamanho: st_importacoes_utilidades_psql.tamanho
      Material: st_importacoes_utilidades_psql.material
      Importador Nome: st_importacoes_utilidades_psql.importador_nome
      Período: st_importacoes_utilidades_psql.anomes_norm_ord
    row: 6
    col: 2
    width: 9
    height: 4
  - title: Quantidade Total de Itens Importados
    name: Quantidade Total de Itens Importados
    model: external_st_importacoes_postgres
    explore: st_importacoes_utilidades_psql
    type: single_value
    fields: [st_importacoes_utilidades_psql.count]
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
      NCM: st_importacoes_utilidades_psql.cdncm_compl
      Produto: st_importacoes_utilidades_psql.produto
      Modal: st_importacoes_utilidades_psql.via_transp_norm
      País de Origem: st_importacoes_utilidades_psql.nm_pais_origem
      Modelo: st_importacoes_utilidades_psql.modelo
      Tamanho: st_importacoes_utilidades_psql.tamanho
      Material: st_importacoes_utilidades_psql.material
      Importador Nome: st_importacoes_utilidades_psql.importador_nome
      Período: st_importacoes_utilidades_psql.anomes_norm_ord
    row: 6
    col: 13
    width: 9
    height: 4
  - title: Valor FOB Total (US$) - Tendência Mensal
    name: Valor FOB Total (US$) - Tendência Mensal
    model: external_st_importacoes_postgres
    explore: st_importacoes_utilidades_psql
    type: looker_column
    fields: [st_importacoes_utilidades_psql.fob_sum, st_importacoes_utilidades_psql.count,
      st_importacoes_utilidades_psql.anomes_norm, st_importacoes_utilidades_psql.anomes]
    sorts: [st_importacoes_utilidades_psql.anomes]
    limit: 500
    dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: "${st_importacoes_utilidades_psql.fob_sum}",
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
    y_axes: [{label: '', orientation: left, series: [{axisId: st_importacoes_utilidades_psql.fob_sum,
            id: st_importacoes_utilidades_psql.fob_sum, name: Fob Sum}], showLabels: true,
        showValues: true, valueFormat: "$#,##0", unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: !!null '', orientation: right,
        series: [{axisId: st_importacoes_utilidades_psql.count, id: st_importacoes_utilidades_psql.count,
            name: Quantidade}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: Mês / Ano
    label_value_format: ''
    series_types:
      st_importacoes_utilidades_psql.count: line
    series_colors:
      calculation_1: "#9BDA32"
      st_importacoes_utilidades_psql.count: "#97d921"
    series_labels:
      st_importacoes_utilidades_psql.count: Quantidade
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
    hidden_fields: [st_importacoes_utilidades_psql.fob_sum, st_importacoes_utilidades_psql.count,
      st_importacoes_utilidades_psql.anomes]
    listen:
      NCM: st_importacoes_utilidades_psql.cdncm_compl
      Produto: st_importacoes_utilidades_psql.produto
      Modal: st_importacoes_utilidades_psql.via_transp_norm
      País de Origem: st_importacoes_utilidades_psql.nm_pais_origem
      Modelo: st_importacoes_utilidades_psql.modelo
      Tamanho: st_importacoes_utilidades_psql.tamanho
      Material: st_importacoes_utilidades_psql.material
      Importador Nome: st_importacoes_utilidades_psql.importador_nome
      Período: st_importacoes_utilidades_psql.anomes_norm_ord
    row: 10
    col: 0
    width: 24
    height: 7
  - title: Valor FOB Total (US$) - Ranking Importadores
    name: Valor FOB Total (US$) - Ranking Importadores
    model: external_st_importacoes_postgres
    explore: st_importacoes_utilidades_psql
    type: looker_column
    fields: [st_importacoes_utilidades_psql.fob_sum, st_importacoes_utilidades_psql.count,
      st_importacoes_utilidades_psql.importador_nome]
    filters:
      st_importacoes_utilidades_psql.importador_check: 'Yes'
    sorts: [st_importacoes_utilidades_psql.fob_sum desc]
    limit: 15
    dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: "${st_importacoes_utilidades_psql.fob_sum}",
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
    y_axes: [{label: '', orientation: left, series: [{axisId: st_importacoes_utilidades_psql.fob_sum,
            id: st_importacoes_utilidades_psql.fob_sum, name: Fob Sum}], showLabels: true,
        showValues: true, valueFormat: "$#,##0", unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: !!null '', orientation: right,
        series: [{axisId: st_importacoes_utilidades_psql.count, id: st_importacoes_utilidades_psql.count,
            name: Quantidade}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    series_types:
      st_importacoes_utilidades_psql.count: line
    series_colors:
      st_importacoes_utilidades_psql.count: "#98d91e"
      calculation_1: "#7a7a7a"
    series_labels:
      st_importacoes_utilidades_psql.count: Quantidade
      calculation_1: Valor Fob Total
    defaults_version: 1
    hidden_fields: [st_importacoes_utilidades_psql.fob_sum, st_importacoes_utilidades_psql.count]
    listen:
      NCM: st_importacoes_utilidades_psql.cdncm_compl
      Produto: st_importacoes_utilidades_psql.produto
      Modal: st_importacoes_utilidades_psql.via_transp_norm
      País de Origem: st_importacoes_utilidades_psql.nm_pais_origem
      Modelo: st_importacoes_utilidades_psql.modelo
      Tamanho: st_importacoes_utilidades_psql.tamanho
      Material: st_importacoes_utilidades_psql.material
      Importador Nome: st_importacoes_utilidades_psql.importador_nome
      Período: st_importacoes_utilidades_psql.anomes_norm_ord
    row: 27
    col: 7
    width: 17
    height: 7
  - title: NCMs Importados
    name: NCMs Importados
    model: external_st_importacoes_postgres
    explore: st_importacoes_utilidades_psql
    type: looker_grid
    fields: [st_importacoes_utilidades_psql.ncm_desc, st_importacoes_utilidades_psql.fob_sum,
      st_importacoes_utilidades_psql.count]
    sorts: [st_importacoes_utilidades_psql.fob_sum desc]
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
      st_importacoes_utilidades_psql.count: Quantidade
      st_importacoes_utilidades_psql.fob_sum: Valor FOB Total
    series_cell_visualizations:
      st_importacoes_utilidades_psql.fob_sum:
        is_active: true
        palette:
          palette_id: 1d226da9-6ef2-4271-18c3-68d6209ca6ad
          collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
          custom_colors:
          - "#c2c2c2"
          - "#363636"
    series_value_format:
      st_importacoes_utilidades_psql.fob_sum: "$#,##0.00"
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
      NCM: st_importacoes_utilidades_psql.cdncm_compl
      Produto: st_importacoes_utilidades_psql.produto
      Modal: st_importacoes_utilidades_psql.via_transp_norm
      País de Origem: st_importacoes_utilidades_psql.nm_pais_origem
      Modelo: st_importacoes_utilidades_psql.modelo
      Tamanho: st_importacoes_utilidades_psql.tamanho
      Material: st_importacoes_utilidades_psql.material
      Importador Nome: st_importacoes_utilidades_psql.importador_nome
      Período: st_importacoes_utilidades_psql.anomes_norm_ord
    row: 54
    col: 0
    width: 24
    height: 9
  - title: País de Origem
    name: País de Origem
    model: external_st_importacoes_postgres
    explore: st_importacoes_utilidades_psql
    type: looker_map
    fields: [st_importacoes_utilidades_psql.fob_sum, st_importacoes_utilidades_psql.store_location]
    sorts: [st_importacoes_utilidades_psql.fob_sum]
    limit: 500
    dynamic_fields: [{table_calculation: valor_fob_total, label: Valor Fob Total,
        expression: "${st_importacoes_utilidades_psql.fob_sum}", value_format: "$#,##0",
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
    y_axes: [{label: '', orientation: left, series: [{axisId: st_importacoes_utilidades_psql.fob_sum,
            id: st_importacoes_utilidades_psql.fob_sum, name: Fob Sum}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: st_importacoes_utilidades_psql.count,
            id: st_importacoes_utilidades_psql.count, name: Quantidade}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types: {}
    series_labels:
      st_importacoes_utilidades_psql.count: Quantidade
    defaults_version: 1
    map: auto
    map_projection: ''
    quantize_colors: false
    hidden_fields: [st_importacoes_utilidades_psql.fob_sum]
    listen:
      NCM: st_importacoes_utilidades_psql.cdncm_compl
      Produto: st_importacoes_utilidades_psql.produto
      Modal: st_importacoes_utilidades_psql.via_transp_norm
      País de Origem: st_importacoes_utilidades_psql.nm_pais_origem
      Modelo: st_importacoes_utilidades_psql.modelo
      Tamanho: st_importacoes_utilidades_psql.tamanho
      Material: st_importacoes_utilidades_psql.material
      Importador Nome: st_importacoes_utilidades_psql.importador_nome
      Período: st_importacoes_utilidades_psql.anomes_norm_ord
    row: 17
    col: 0
    width: 24
    height: 10
  - title: Valor FOB Total (US$) - Modal
    name: Valor FOB Total (US$) - Modal
    model: external_st_importacoes_postgres
    explore: st_importacoes_utilidades_psql
    type: looker_pie
    fields: [st_importacoes_utilidades_psql.fob_sum, st_importacoes_utilidades_psql.via_transp_norm]
    filters:
      st_importacoes_utilidades_psql.via_transp_norm_check: 'Yes'
    sorts: [st_importacoes_utilidades_psql.fob_sum desc]
    limit: 500
    dynamic_fields: [{table_calculation: valor_fob_total, label: Valor FOB Total,
        expression: "${st_importacoes_utilidades_psql.fob_sum}", value_format: "$#,##0",
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
      st_importacoes_utilidades_psql.count: Quantidade
      st_importacoes_utilidades_psql.via_transp: Transporte
      st_importacoes_utilidades_psql.qtde_comerc_sum: Qtde Comercializada
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
      st_importacoes_utilidades_psql.qtde_comerc_sum:
        is_active: true
      st_importacoes_utilidades_psql.fob_sum:
        is_active: false
    series_value_format:
      st_importacoes_utilidades_psql.fob_sum: "$#,##0"
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
    y_axes: [{label: '', orientation: left, series: [{axisId: st_importacoes_utilidades_psql.fob_sum,
            id: st_importacoes_utilidades_psql.fob_sum, name: Fob Sum}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: st_importacoes_utilidades_psql.count,
            id: st_importacoes_utilidades_psql.count, name: Quantidade}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types: {}
    defaults_version: 1
    map: auto
    map_projection: ''
    quantize_colors: false
    hidden_fields: [st_importacoes_utilidades_psql.fob_sum]
    listen:
      NCM: st_importacoes_utilidades_psql.cdncm_compl
      Produto: st_importacoes_utilidades_psql.produto
      Modal: st_importacoes_utilidades_psql.via_transp_norm
      País de Origem: st_importacoes_utilidades_psql.nm_pais_origem
      Modelo: st_importacoes_utilidades_psql.modelo
      Tamanho: st_importacoes_utilidades_psql.tamanho
      Material: st_importacoes_utilidades_psql.material
      Importador Nome: st_importacoes_utilidades_psql.importador_nome
      Período: st_importacoes_utilidades_psql.anomes_norm_ord
    row: 112
    col: 0
    width: 8
    height: 7
  - title: Registros
    name: Registros
    model: external_st_importacoes_postgres
    explore: st_importacoes_utilidades_psql
    type: looker_grid
    fields: [st_importacoes_utilidades_psql.produto, st_importacoes_utilidades_psql.tp_unid_comerc,
      st_importacoes_utilidades_psql.qtde_comerc_sum, st_importacoes_utilidades_psql.fob_sum,
      st_importacoes_utilidades_psql.val_fob_un_us_num_avg]
    filters:
      st_importacoes_utilidades_psql.tp_unid_comerc: "-EMPTY"
    sorts: [st_importacoes_utilidades_psql.qtde_comerc_sum desc]
    limit: 500
    dynamic_fields: [{table_calculation: media_simples, label: Média Simples, expression: "${st_importacoes_utilidades_psql.fob_sum}\
          \ / ${st_importacoes_utilidades_psql.qtde_comerc_sum}", value_format: !!null '',
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
    column_order: ["$$$_row_numbers_$$$", st_importacoes_utilidades_psql.produto,
      st_importacoes_utilidades_psql.qtde_comerc_sum, st_importacoes_utilidades_psql.tp_unid_comerc,
      st_importacoes_utilidades_psql.fob_sum, st_importacoes_utilidades_psql.val_fob_un_us_num_avg]
    show_totals: true
    show_row_totals: true
    series_labels:
      st_importacoes_utilidades_psql.count: Quantidade
      st_importacoes_utilidades_psql.desc_prodt: Produto
      st_importacoes_utilidades_psql.tp_unid_comerc: Tipo Unidade
      st_importacoes_utilidades_psql.qtde_comerc_sum: Quantidade
      st_importacoes_utilidades_psql.val_fob_un_us_num_avg: Média Ponderada
      st_importacoes_utilidades_psql.fob_sum: Valor FOB Total
    series_cell_visualizations:
      st_importacoes_utilidades_psql.qtde_comerc_sum:
        is_active: false
      st_importacoes_utilidades_psql.fob_sum:
        is_active: true
        palette:
          palette_id: 39dda765-0763-514e-e2ac-8db862369f0f
          collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
          custom_colors:
          - "#c2c2c2"
          - "#363636"
    series_text_format:
      st_importacoes_utilidades_psql.produto:
        align: left
      st_importacoes_utilidades_psql.tp_unid_comerc:
        align: left
      st_importacoes_utilidades_psql.qtde_comerc_sum:
        align: left
      st_importacoes_utilidades_psql.val_fob_un_us_num_avg:
        align: left
      media_simples:
        align: left
    series_value_format:
      st_importacoes_utilidades_psql.fob_sum: "$#,##0"
      st_importacoes_utilidades_psql.val_fob_un_us_num_avg:
        name: usd
        format_string: "$#,##0.00"
        label: U.S. Dollars (2)
      st_importacoes_utilidades_psql.qtde_comerc_sum:
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
    y_axes: [{label: '', orientation: left, series: [{axisId: st_importacoes_utilidades_psql.fob_sum,
            id: st_importacoes_utilidades_psql.fob_sum, name: Fob Sum}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: st_importacoes_utilidades_psql.count,
            id: st_importacoes_utilidades_psql.count, name: Quantidade}], showLabels: true,
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
      NCM: st_importacoes_utilidades_psql.cdncm_compl
      Produto: st_importacoes_utilidades_psql.produto
      Modal: st_importacoes_utilidades_psql.via_transp_norm
      País de Origem: st_importacoes_utilidades_psql.nm_pais_origem
      Modelo: st_importacoes_utilidades_psql.modelo
      Tamanho: st_importacoes_utilidades_psql.tamanho
      Material: st_importacoes_utilidades_psql.material
      Importador Nome: st_importacoes_utilidades_psql.importador_nome
      Período: st_importacoes_utilidades_psql.anomes_norm_ord
    row: 112
    col: 8
    width: 16
    height: 7
  - title: Valor FOB Total (US$) - Ranking Produtos
    name: Valor FOB Total (US$) - Ranking Produtos
    model: external_st_importacoes_postgres
    explore: st_importacoes_utilidades_psql
    type: looker_column
    fields: [st_importacoes_utilidades_psql.fob_sum, st_importacoes_utilidades_psql.produto]
    filters:
      st_importacoes_utilidades_psql.produto_check: 'Yes'
    sorts: [st_importacoes_utilidades_psql.fob_sum desc]
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
      st_importacoes_utilidades_psql.fob_sum: "#7a7a7a"
    series_labels:
      st_importacoes_utilidades_psql.fob_sum: Valor Fob Total
    value_labels: legend
    label_type: labPer
    defaults_version: 1
    note_state: collapsed
    note_display: below
    listen:
      NCM: st_importacoes_utilidades_psql.cdncm_compl
      Produto: st_importacoes_utilidades_psql.produto
      Modal: st_importacoes_utilidades_psql.via_transp_norm
      País de Origem: st_importacoes_utilidades_psql.nm_pais_origem
      Modelo: st_importacoes_utilidades_psql.modelo
      Tamanho: st_importacoes_utilidades_psql.tamanho
      Material: st_importacoes_utilidades_psql.material
      Importador Nome: st_importacoes_utilidades_psql.importador_nome
      Período: st_importacoes_utilidades_psql.anomes_norm_ord
    row: 63
    col: 0
    width: 24
    height: 7
  - title: Média Simples Valor FOB (US$) - Ranking Produtos
    name: Média Simples Valor FOB (US$) - Ranking Produtos
    model: external_st_importacoes_postgres
    explore: st_importacoes_utilidades_psql
    type: looker_column
    fields: [st_importacoes_utilidades_psql.fob_sum, st_importacoes_utilidades_psql.produto,
      st_importacoes_utilidades_psql.qtde_comerc_sum]
    filters:
      st_importacoes_utilidades_psql.tp_unid_comerc: UNIDADE
      st_importacoes_utilidades_psql.produto_check: 'Yes'
    sorts: [media_simples desc]
    limit: 500
    dynamic_fields: [{table_calculation: media_simples, label: Média Simples, expression: "${st_importacoes_utilidades_psql.fob_sum}\
          \ / ${st_importacoes_utilidades_psql.qtde_comerc_sum}", value_format: !!null '',
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
      st_importacoes_utilidades_psql.fob_sum: "#7a7a7a"
      media_simples: "#9BDA32"
    series_labels:
      st_importacoes_utilidades_psql.fob_sum: Valor Fob Total
    label_color: ["#7a7a7a"]
    value_labels: legend
    label_type: labPer
    defaults_version: 1
    hidden_fields: [st_importacoes_utilidades_psql.qtde_comerc_sum, st_importacoes_utilidades_psql.fob_sum]
    note_state: collapsed
    note_display: below
    note_text: Considera apenas o tipo UNIDADE.
    listen:
      NCM: st_importacoes_utilidades_psql.cdncm_compl
      Produto: st_importacoes_utilidades_psql.produto
      Modal: st_importacoes_utilidades_psql.via_transp_norm
      País de Origem: st_importacoes_utilidades_psql.nm_pais_origem
      Modelo: st_importacoes_utilidades_psql.modelo
      Tamanho: st_importacoes_utilidades_psql.tamanho
      Material: st_importacoes_utilidades_psql.material
      Importador Nome: st_importacoes_utilidades_psql.importador_nome
      Período: st_importacoes_utilidades_psql.anomes_norm_ord
    row: 84
    col: 0
    width: 24
    height: 7
  - title: Valor FOB Total (US$) - Ranking Exportadores
    name: Valor FOB Total (US$) - Ranking Exportadores
    model: external_st_importacoes_postgres
    explore: st_importacoes_utilidades_psql
    type: looker_column
    fields: [st_importacoes_utilidades_psql.fob_sum, st_importacoes_utilidades_psql.count,
      st_importacoes_utilidades_psql.exportador_nome]
    filters:
      st_importacoes_utilidades_psql.exportador_check: 'Yes'
    sorts: [st_importacoes_utilidades_psql.fob_sum desc]
    limit: 15
    dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: "${st_importacoes_utilidades_psql.fob_sum}",
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
    y_axes: [{label: '', orientation: left, series: [{axisId: st_importacoes_utilidades_psql.fob_sum,
            id: st_importacoes_utilidades_psql.fob_sum, name: Fob Sum}], showLabels: true,
        showValues: true, valueFormat: "$#,##0", unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: !!null '', orientation: right,
        series: [{axisId: st_importacoes_utilidades_psql.count, id: st_importacoes_utilidades_psql.count,
            name: Quantidade}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    series_types:
      st_importacoes_utilidades_psql.count: line
    series_colors:
      st_importacoes_utilidades_psql.count: "#98d91e"
      calculation_1: "#9BDA32"
    series_labels:
      st_importacoes_utilidades_psql.count: Quantidade
      calculation_1: Valor Fob Total
    label_color: ["#7a7a7a"]
    defaults_version: 1
    hidden_fields: [st_importacoes_utilidades_psql.fob_sum, st_importacoes_utilidades_psql.count]
    listen:
      NCM: st_importacoes_utilidades_psql.cdncm_compl
      Produto: st_importacoes_utilidades_psql.produto
      Modal: st_importacoes_utilidades_psql.via_transp_norm
      País de Origem: st_importacoes_utilidades_psql.nm_pais_origem
      Modelo: st_importacoes_utilidades_psql.modelo
      Tamanho: st_importacoes_utilidades_psql.tamanho
      Material: st_importacoes_utilidades_psql.material
      Importador Nome: st_importacoes_utilidades_psql.importador_nome
      Período: st_importacoes_utilidades_psql.anomes_norm_ord
    row: 47
    col: 0
    width: 24
    height: 7
  - title: Valor FOB Total (US$) - Tamanho
    name: Valor FOB Total (US$) - Tamanho
    model: external_st_importacoes_postgres
    explore: st_importacoes_utilidades_psql
    type: looker_column
    fields: [st_importacoes_utilidades_psql.fob_sum, st_importacoes_utilidades_psql.tamanho]
    filters:
      st_importacoes_utilidades_psql.tamanho_check: 'Yes'
    sorts: [st_importacoes_utilidades_psql.fob_sum desc]
    limit: 15
    dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: "${st_importacoes_utilidades_psql.fob_sum}",
        value_format: "$#,##0", value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}, {table_calculation: percent_of_total, label: percent_of_total,
        expression: "${st_importacoes_utilidades_psql.fob_sum}/sum(${st_importacoes_utilidades_psql.fob_sum})",
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
    y_axes: [{label: '', orientation: left, series: [{axisId: st_importacoes_utilidades_psql.fob_sum,
            id: st_importacoes_utilidades_psql.fob_sum, name: Fob Sum}], showLabels: true,
        showValues: true, valueFormat: "$#,##0", unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: !!null '', orientation: right,
        series: [{axisId: st_importacoes_utilidades_psql.count, id: st_importacoes_utilidades_psql.count,
            name: Quantidade}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    series_types:
      st_importacoes_utilidades_psql.count: line
    series_colors:
      st_importacoes_utilidades_psql.count: "#98d91e"
      calculation_1: "#7a7a7a"
      percent_of_total: "#7a7a7a"
    series_labels:
      st_importacoes_utilidades_psql.count: Quantidade
      calculation_1: Valor Fob Total
    label_color: ["#7a7a7a"]
    defaults_version: 1
    hidden_fields: [st_importacoes_utilidades_psql.fob_sum, calculation_1]
    note_state: collapsed
    note_display: hover
    note_text: Não considera tamanhos não identificados.
    listen:
      NCM: st_importacoes_utilidades_psql.cdncm_compl
      Produto: st_importacoes_utilidades_psql.produto
      Modal: st_importacoes_utilidades_psql.via_transp_norm
      País de Origem: st_importacoes_utilidades_psql.nm_pais_origem
      Modelo: st_importacoes_utilidades_psql.modelo
      Tamanho: st_importacoes_utilidades_psql.tamanho
      Material: st_importacoes_utilidades_psql.material
      Importador Nome: st_importacoes_utilidades_psql.importador_nome
      Período: st_importacoes_utilidades_psql.anomes_norm_ord
    row: 105
    col: 0
    width: 24
    height: 7
  - title: Valor FOB Total (US$) - Ranking Modelos
    name: Valor FOB Total (US$) - Ranking Modelos
    model: external_st_importacoes_postgres
    explore: st_importacoes_utilidades_psql
    type: looker_column
    fields: [st_importacoes_utilidades_psql.fob_sum, st_importacoes_utilidades_psql.count,
      st_importacoes_utilidades_psql.modelo]
    filters:
      st_importacoes_utilidades_psql.modelo_check: 'Yes'
    sorts: [st_importacoes_utilidades_psql.fob_sum desc]
    limit: 150
    dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: "${st_importacoes_utilidades_psql.fob_sum}",
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
    y_axes: [{label: '', orientation: left, series: [{axisId: st_importacoes_utilidades_psql.fob_sum,
            id: st_importacoes_utilidades_psql.fob_sum, name: Fob Sum}], showLabels: true,
        showValues: true, valueFormat: "$#,##0", unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: !!null '', orientation: right,
        series: [{axisId: st_importacoes_utilidades_psql.count, id: st_importacoes_utilidades_psql.count,
            name: Quantidade}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '15'
    series_types:
      st_importacoes_utilidades_psql.count: line
    series_colors:
      st_importacoes_utilidades_psql.count: "#98d91e"
      calculation_1: "#7a7a7a"
    series_labels:
      st_importacoes_utilidades_psql.count: Quantidade
      calculation_1: Valor Fob Total
    defaults_version: 1
    hidden_fields: [st_importacoes_utilidades_psql.fob_sum, st_importacoes_utilidades_psql.count]
    listen:
      NCM: st_importacoes_utilidades_psql.cdncm_compl
      Produto: st_importacoes_utilidades_psql.produto
      Modal: st_importacoes_utilidades_psql.via_transp_norm
      País de Origem: st_importacoes_utilidades_psql.nm_pais_origem
      Modelo: st_importacoes_utilidades_psql.modelo
      Tamanho: st_importacoes_utilidades_psql.tamanho
      Material: st_importacoes_utilidades_psql.material
      Importador Nome: st_importacoes_utilidades_psql.importador_nome
      Período: st_importacoes_utilidades_psql.anomes_norm_ord
    row: 91
    col: 0
    width: 24
    height: 7
  - title: Valor FOB Total (US$) - ST Importações
    name: Valor FOB Total (US$) - ST Importações
    model: external_st_importacoes_postgres
    explore: st_importacoes_utilidades_psql
    type: single_value
    fields: [st_importacoes_utilidades_psql.fob_sum, st_importacoes_utilidades_psql.count,
      st_importacoes_utilidades_psql.importador_nome]
    filters:
      st_importacoes_utilidades_psql.importador_check: 'Yes'
      st_importacoes_utilidades_psql.importador_colorido: ST IMPORTACOES LTDA
    sorts: [st_importacoes_utilidades_psql.fob_sum desc]
    limit: 15
    dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: "${st_importacoes_utilidades_psql.fob_sum}",
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
    y_axes: [{label: '', orientation: left, series: [{axisId: st_importacoes_utilidades_psql.fob_sum,
            id: st_importacoes_utilidades_psql.fob_sum, name: Fob Sum}], showLabels: true,
        showValues: true, valueFormat: "$#,##0", unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: !!null '', orientation: right,
        series: [{axisId: st_importacoes_utilidades_psql.count, id: st_importacoes_utilidades_psql.count,
            name: Quantidade}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    series_types: {}
    series_colors:
      st_importacoes_utilidades_psql.count: "#98d91e"
      calculation_1: "#7a7a7a"
    series_labels:
      st_importacoes_utilidades_psql.count: Quantidade
      calculation_1: Valor Fob Total
    defaults_version: 1
    hidden_fields: [st_importacoes_utilidades_psql.fob_sum, st_importacoes_utilidades_psql.count]
    listen:
      NCM: st_importacoes_utilidades_psql.cdncm_compl
      Produto: st_importacoes_utilidades_psql.produto
      Modal: st_importacoes_utilidades_psql.via_transp_norm
      País de Origem: st_importacoes_utilidades_psql.nm_pais_origem
      Modelo: st_importacoes_utilidades_psql.modelo
      Tamanho: st_importacoes_utilidades_psql.tamanho
      Material: st_importacoes_utilidades_psql.material
      Período: st_importacoes_utilidades_psql.anomes_norm_ord
    row: 27
    col: 0
    width: 7
    height: 7
  - title: Valor FOB Total (US$) - Material
    name: Valor FOB Total (US$) - Material
    model: external_st_importacoes_postgres
    explore: st_importacoes_utilidades_psql
    type: looker_column
    fields: [st_importacoes_utilidades_psql.fob_sum, st_importacoes_utilidades_psql.material]
    filters:
      st_importacoes_utilidades_psql.tamanho_check: 'Yes'
    sorts: [st_importacoes_utilidades_psql.fob_sum desc]
    limit: 15
    dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: "${st_importacoes_utilidades_psql.fob_sum}",
        value_format: "$#,##0", value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}, {table_calculation: percent_of_total, label: percent_of_total,
        expression: "${st_importacoes_utilidades_psql.fob_sum}/sum(${st_importacoes_utilidades_psql.fob_sum})",
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
    y_axes: [{label: '', orientation: left, series: [{axisId: st_importacoes_utilidades_psql.fob_sum,
            id: st_importacoes_utilidades_psql.fob_sum, name: Fob Sum}], showLabels: true,
        showValues: true, valueFormat: "$#,##0", unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: !!null '', orientation: right,
        series: [{axisId: st_importacoes_utilidades_psql.count, id: st_importacoes_utilidades_psql.count,
            name: Quantidade}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    series_types:
      st_importacoes_utilidades_psql.count: line
    series_colors:
      st_importacoes_utilidades_psql.count: "#98d91e"
      calculation_1: "#9BDA32"
      percent_of_total: "#7a7a7a"
    series_labels:
      st_importacoes_utilidades_psql.count: Quantidade
      calculation_1: Valor Fob Total
    label_color: ["#7a7a7a"]
    defaults_version: 1
    hidden_fields: [st_importacoes_utilidades_psql.fob_sum, percent_of_total]
    listen:
      NCM: st_importacoes_utilidades_psql.cdncm_compl
      Produto: st_importacoes_utilidades_psql.produto
      Modal: st_importacoes_utilidades_psql.via_transp_norm
      País de Origem: st_importacoes_utilidades_psql.nm_pais_origem
      Modelo: st_importacoes_utilidades_psql.modelo
      Tamanho: st_importacoes_utilidades_psql.tamanho
      Material: st_importacoes_utilidades_psql.material
      Importador Nome: st_importacoes_utilidades_psql.importador_nome
      Período: st_importacoes_utilidades_psql.anomes_norm_ord
    row: 98
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
    model: external_st_importacoes_postgres
    explore: st_importacoes_utilidades_psql
    type: looker_grid
    fields: [st_importacoes_utilidades_psql.id_import, st_importacoes_utilidades_psql.importador_nome,
      st_importacoes_utilidades_psql.exportador_nome, st_importacoes_utilidades_psql.anomes_norm,
      st_importacoes_utilidades_psql.via_transp_norm, st_importacoes_utilidades_psql.tp_unid_comerc,
      st_importacoes_utilidades_psql.material, st_importacoes_utilidades_psql.modelo,
      st_importacoes_utilidades_psql.nm_pais_origem, st_importacoes_utilidades_psql.ncm_desc,
      st_importacoes_utilidades_psql.desc_prodt, st_importacoes_utilidades_psql.produto,
      st_importacoes_utilidades_psql.qtd_comerc_num, st_importacoes_utilidades_psql.val_fob_un_us_num,
      st_importacoes_utilidades_psql.val_vmle_us_subitem_num, st_importacoes_utilidades_psql.cdncm_compl,
      st_importacoes_utilidades_psql.tamanho]
    sorts: [st_importacoes_utilidades_psql.id_import]
    limit: 500
    dynamic_fields: [{table_calculation: valor_fob_total, label: Valor FOB Total,
        expression: "${st_importacoes_utilidades_psql.fob_sum}", value_format: "$#,##0",
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
    column_order: ["$$$_row_numbers_$$$", st_importacoes_utilidades_psql.via_transp_norm,
      st_importacoes_utilidades_psql.id_import, st_importacoes_utilidades_psql.qtd_comerc_num,
      st_importacoes_utilidades_psql.val_fob_un_us_num, st_importacoes_utilidades_psql.exportador_nome,
      st_importacoes_utilidades_psql.cdncm_compl, st_importacoes_utilidades_psql.tp_unid_comerc,
      st_importacoes_utilidades_psql.desc_prodt, st_importacoes_utilidades_psql.nm_pais_origem,
      st_importacoes_utilidades_psql.val_vmle_us_subitem_num, st_importacoes_utilidades_psql.importador_nome,
      st_importacoes_utilidades_psql.anomes_norm, st_importacoes_utilidades_psql.tamanho,
      st_importacoes_utilidades_psql.material, st_importacoes_utilidades_psql.modelo,
      st_importacoes_utilidades_psql.ncm_desc, st_importacoes_utilidades_psql.produto]
    show_totals: true
    show_row_totals: true
    series_labels:
      st_importacoes_utilidades_psql.count: Quantidade
      st_importacoes_utilidades_psql.via_transp: Transporte
      st_importacoes_utilidades_psql.qtde_comerc_sum: Qtde Comercializada
      st_importacoes_utilidades_psql.id_import: ID
      st_importacoes_utilidades_psql.anomes_norm: Periodo
      st_importacoes_utilidades_psql.via_transp_norm: Modal
      st_importacoes_utilidades_psql.tp_unid_comerc: Tipo Unidade
      st_importacoes_utilidades_psql.nm_pais_origem: Pais de Origem
      st_importacoes_utilidades_psql.ncm_desc: NCM Desc
      st_importacoes_utilidades_psql.desc_prodt: Desc Produto
      st_importacoes_utilidades_psql.produto: Produto
      st_importacoes_utilidades_psql.qtd_comerc_num: Quantidade
      st_importacoes_utilidades_psql.val_fob_un_us_num: Valor FOB Unidade
      st_importacoes_utilidades_psql.val_vmle_us_subitem_num: Valor FOB
      st_importacoes_utilidades_psql.cdncm_compl: NCM
    series_column_widths:
      st_importacoes_utilidades_psql.qtd_comerc_num: 115
      st_importacoes_utilidades_psql.id_import: 104
      st_importacoes_utilidades_psql.val_fob_un_us_num: 157
      st_importacoes_utilidades_psql.exportador_nome: 151
      st_importacoes_utilidades_psql.ncm_desc: 112
      st_importacoes_utilidades_psql.cdncm_compl: 94
      st_importacoes_utilidades_psql.importador_nome: 175
      st_importacoes_utilidades_psql.tp_unid_comerc: 150
      st_importacoes_utilidades_psql.desc_prodt: 135
      st_importacoes_utilidades_psql.nm_pais_origem: 142
      st_importacoes_utilidades_psql.val_vmle_us_subitem_num: 120
      st_importacoes_utilidades_psql.anomes_norm: 107
      st_importacoes_utilidades_psql.material: 137
      st_importacoes_utilidades_psql.modelo: 94
      st_importacoes_utilidades_psql.produto: 92
      st_importacoes_utilidades_psql.tamanho: 128
    series_cell_visualizations:
      st_importacoes_utilidades_psql.qtde_comerc_sum:
        is_active: true
      st_importacoes_utilidades_psql.fob_sum:
        is_active: false
    series_value_format:
      st_importacoes_utilidades_psql.fob_sum: "$#,##0"
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
    y_axes: [{label: '', orientation: left, series: [{axisId: st_importacoes_utilidades_psql.fob_sum,
            id: st_importacoes_utilidades_psql.fob_sum, name: Fob Sum}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: st_importacoes_utilidades_psql.count,
            id: st_importacoes_utilidades_psql.count, name: Quantidade}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types: {}
    defaults_version: 1
    map: auto
    map_projection: ''
    quantize_colors: false
    hidden_fields: []
    listen:
      NCM: st_importacoes_utilidades_psql.cdncm_compl
      Produto: st_importacoes_utilidades_psql.produto
      Modal: st_importacoes_utilidades_psql.via_transp_norm
      País de Origem: st_importacoes_utilidades_psql.nm_pais_origem
      Modelo: st_importacoes_utilidades_psql.modelo
      Tamanho: st_importacoes_utilidades_psql.tamanho
      Material: st_importacoes_utilidades_psql.material
      Importador Nome: st_importacoes_utilidades_psql.importador_nome
      Período: st_importacoes_utilidades_psql.anomes_norm_ord
    row: 119
    col: 0
    width: 24
    height: 7
  - name: " (2)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: <img src="https://drive.google.com/uc?export=view&id=1ow5lQtG8wqhV69P8xn5FrU54LvA8BFoQ"/>
    row: 34
    col: 0
    width: 7
    height: 7
  - title: Variação do Valor FOB Unitário (US$) por Importador
    name: Variação do Valor FOB Unitário (US$) por Importador
    model: external_st_importacoes_postgres
    explore: st_importacoes_utilidades_psql
    type: looker_boxplot
    fields: [st_importacoes_utilidades_psql.importador_nome, st_importacoes_utilidades_psql.val_fob_un_us_num_min,
      st_importacoes_utilidades_psql.val_fob_un_us_num_p25, st_importacoes_utilidades_psql.val_fob_un_us_num_med,
      st_importacoes_utilidades_psql.val_fob_un_us_num_p75, st_importacoes_utilidades_psql.val_fob_un_us_num_max,
      st_importacoes_utilidades_psql.fob_sum]
    filters:
      st_importacoes_utilidades_psql.tp_unid_comerc: UNIDADE
      st_importacoes_utilidades_psql.importador_check: 'Yes'
    sorts: [st_importacoes_utilidades_psql.fob_sum desc]
    limit: 10
    dynamic_fields: [{table_calculation: valores, label: 'Valores:', expression: "${st_importacoes_utilidades_psql.val_fob_un_us_num_min}",
        value_format: !!null '', value_format_name: usd, _kind_hint: measure, _type_hint: number},
      {_kind_hint: measure, table_calculation: p25_calc, _type_hint: number, category: table_calculation,
        expression: "${st_importacoes_utilidades_psql.val_fob_un_us_num_p25}", label: p25_calc,
        value_format: !!null '', value_format_name: decimal_2}, {_kind_hint: measure,
        table_calculation: med_calc, _type_hint: number, category: table_calculation,
        expression: "${st_importacoes_utilidades_psql.val_fob_un_us_num_med}", label: med_calc,
        value_format: !!null '', value_format_name: usd}, {_kind_hint: measure, table_calculation: p75_calc,
        _type_hint: number, category: table_calculation, expression: "${st_importacoes_utilidades_psql.val_fob_un_us_num_p75}",
        label: p75_calc, value_format: !!null '', value_format_name: decimal_2}, {
        table_calculation: max_calc, label: max_calc, expression: "${st_importacoes_utilidades_psql.val_fob_un_us_num_max}",
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
        id: c2d4e26e-e79a-aded-eb19-b39cf8abf9e8
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
      st_importacoes_utilidades_psql.fob_sum: "#7a7a7a"
      media_simples: "#7a7a7a"
    series_labels:
      st_importacoes_utilidades_psql.fob_sum: Valor Fob Total
    value_labels: legend
    label_type: labPer
    defaults_version: 1
    hidden_fields: [st_importacoes_utilidades_psql.val_fob_un_us_num_min, st_importacoes_utilidades_psql.val_fob_un_us_num_max,
      st_importacoes_utilidades_psql.fob_sum, st_importacoes_utilidades_psql.val_fob_un_us_num_p25,
      st_importacoes_utilidades_psql.val_fob_un_us_num_med, st_importacoes_utilidades_psql.val_fob_un_us_num_p75]
    note_state: collapsed
    note_display: below
    note_text: Considera apenas o tipo UNIDADE.
    listen:
      NCM: st_importacoes_utilidades_psql.cdncm_compl
      Produto: st_importacoes_utilidades_psql.produto
      Modal: st_importacoes_utilidades_psql.via_transp_norm
      País de Origem: st_importacoes_utilidades_psql.nm_pais_origem
      Modelo: st_importacoes_utilidades_psql.modelo
      Tamanho: st_importacoes_utilidades_psql.tamanho
      Material: st_importacoes_utilidades_psql.material
      Importador Nome: st_importacoes_utilidades_psql.importador_nome
      Período: st_importacoes_utilidades_psql.anomes_norm_ord
    row: 34
    col: 7
    width: 17
    height: 7
  - title: Variação do Valor FOB Unitário (US$) por Importador - Valores
    name: Variação do Valor FOB Unitário (US$) por Importador - Valores
    model: external_st_importacoes_postgres
    explore: st_importacoes_utilidades_psql
    type: looker_grid
    fields: [st_importacoes_utilidades_psql.importador_nome, st_importacoes_utilidades_psql.val_fob_un_us_num_min,
      st_importacoes_utilidades_psql.val_fob_un_us_num_p25, st_importacoes_utilidades_psql.val_fob_un_us_num_med,
      st_importacoes_utilidades_psql.val_fob_un_us_num_p75, st_importacoes_utilidades_psql.val_fob_un_us_num_max,
      st_importacoes_utilidades_psql.fob_sum]
    filters:
      st_importacoes_utilidades_psql.tp_unid_comerc: UNIDADE
      st_importacoes_utilidades_psql.importador_check: 'Yes'
    sorts: [st_importacoes_utilidades_psql.fob_sum desc]
    limit: 10
    dynamic_fields: [{table_calculation: valores, label: 'Valores:', expression: "${st_importacoes_utilidades_psql.val_fob_un_us_num_min}",
        value_format: !!null '', value_format_name: usd, _kind_hint: measure, _type_hint: number},
      {_kind_hint: measure, table_calculation: p25_calc, _type_hint: number, category: table_calculation,
        expression: "${st_importacoes_utilidades_psql.val_fob_un_us_num_p25}", label: p25_calc,
        value_format: !!null '', value_format_name: decimal_2}, {_kind_hint: measure,
        table_calculation: med_calc, _type_hint: number, category: table_calculation,
        expression: "${st_importacoes_utilidades_psql.val_fob_un_us_num_med}", label: med_calc,
        value_format: !!null '', value_format_name: usd}, {_kind_hint: measure, table_calculation: p75_calc,
        _type_hint: number, category: table_calculation, expression: "${st_importacoes_utilidades_psql.val_fob_un_us_num_p75}",
        label: p75_calc, value_format: !!null '', value_format_name: decimal_2}, {
        table_calculation: max_calc, label: max_calc, expression: "${st_importacoes_utilidades_psql.val_fob_un_us_num_max}",
        value_format: !!null '', value_format_name: usd, _kind_hint: measure, _type_hint: number}]
    show_view_names: false
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
        id: c2d4e26e-e79a-aded-eb19-b39cf8abf9e8
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
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_labels:
      st_importacoes_utilidades_psql.fob_sum: Valor Fob Total
      valores: Valor Mínimo
      p25_calc: 25% dos Valores
      med_calc: 50% dos Valores
      p75_calc: 75% dos Valores
      max_calc: Valor Máximo
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '15'
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_labels: [Valor]
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    y_axis_value_format: "#,##0.00"
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
      st_importacoes_utilidades_psql.fob_sum: "#7a7a7a"
      media_simples: "#7a7a7a"
    value_labels: legend
    label_type: labPer
    defaults_version: 1
    hidden_fields: [st_importacoes_utilidades_psql.val_fob_un_us_num_min, st_importacoes_utilidades_psql.val_fob_un_us_num_max,
      st_importacoes_utilidades_psql.fob_sum, st_importacoes_utilidades_psql.val_fob_un_us_num_p25,
      st_importacoes_utilidades_psql.val_fob_un_us_num_med, st_importacoes_utilidades_psql.val_fob_un_us_num_p75]
    note_state: collapsed
    note_display: below
    note_text: Considera apenas o tipo UNIDADE.
    listen:
      NCM: st_importacoes_utilidades_psql.cdncm_compl
      Produto: st_importacoes_utilidades_psql.produto
      Modal: st_importacoes_utilidades_psql.via_transp_norm
      País de Origem: st_importacoes_utilidades_psql.nm_pais_origem
      Modelo: st_importacoes_utilidades_psql.modelo
      Tamanho: st_importacoes_utilidades_psql.tamanho
      Material: st_importacoes_utilidades_psql.material
      Importador Nome: st_importacoes_utilidades_psql.importador_nome
      Período: st_importacoes_utilidades_psql.anomes_norm_ord
    row: 41
    col: 7
    width: 17
    height: 6
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
    row: 78
    col: 0
    width: 7
    height: 6
  - title: Variação do Valor FOB Unitário (US$) por Produto
    name: Variação do Valor FOB Unitário (US$) por Produto
    model: external_st_importacoes_postgres
    explore: st_importacoes_utilidades_psql
    type: looker_boxplot
    fields: [st_importacoes_utilidades_psql.val_fob_un_us_num_min, st_importacoes_utilidades_psql.val_fob_un_us_num_p25,
      st_importacoes_utilidades_psql.val_fob_un_us_num_med, st_importacoes_utilidades_psql.val_fob_un_us_num_p75,
      st_importacoes_utilidades_psql.val_fob_un_us_num_max, st_importacoes_utilidades_psql.fob_sum,
      st_importacoes_utilidades_psql.produto]
    filters:
      st_importacoes_utilidades_psql.tp_unid_comerc: UNIDADE
      st_importacoes_utilidades_psql.produto_check: 'Yes'
    sorts: [st_importacoes_utilidades_psql.fob_sum desc]
    limit: 10
    dynamic_fields: [{table_calculation: valores, label: 'Valores:', expression: "${st_importacoes_utilidades_psql.val_fob_un_us_num_min}",
        value_format: !!null '', value_format_name: usd, _kind_hint: measure, _type_hint: number},
      {_kind_hint: measure, table_calculation: p25_calc, _type_hint: number, category: table_calculation,
        expression: "${st_importacoes_utilidades_psql.val_fob_un_us_num_p25}", label: p25_calc,
        value_format: !!null '', value_format_name: decimal_2}, {_kind_hint: measure,
        table_calculation: med_calc, _type_hint: number, category: table_calculation,
        expression: "${st_importacoes_utilidades_psql.val_fob_un_us_num_med}", label: med_calc,
        value_format: !!null '', value_format_name: usd}, {_kind_hint: measure, table_calculation: p75_calc,
        _type_hint: number, category: table_calculation, expression: "${st_importacoes_utilidades_psql.val_fob_un_us_num_p75}",
        label: p75_calc, value_format: !!null '', value_format_name: decimal_2}, {
        table_calculation: max_calc, label: max_calc, expression: "${st_importacoes_utilidades_psql.val_fob_un_us_num_max}",
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
        id: c2d4e26e-e79a-aded-eb19-b39cf8abf9e8
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
      st_importacoes_utilidades_psql.fob_sum: "#7a7a7a"
      media_simples: "#7a7a7a"
    series_labels:
      st_importacoes_utilidades_psql.fob_sum: Valor Fob Total
    value_labels: legend
    label_type: labPer
    defaults_version: 1
    hidden_fields: [st_importacoes_utilidades_psql.val_fob_un_us_num_min, st_importacoes_utilidades_psql.val_fob_un_us_num_max,
      st_importacoes_utilidades_psql.fob_sum, st_importacoes_utilidades_psql.val_fob_un_us_num_p25,
      st_importacoes_utilidades_psql.val_fob_un_us_num_med, st_importacoes_utilidades_psql.val_fob_un_us_num_p75]
    note_state: collapsed
    note_display: below
    note_text: Considera apenas o tipo UNIDADE.
    listen:
      NCM: st_importacoes_utilidades_psql.cdncm_compl
      Produto: st_importacoes_utilidades_psql.produto
      Modal: st_importacoes_utilidades_psql.via_transp_norm
      País de Origem: st_importacoes_utilidades_psql.nm_pais_origem
      Modelo: st_importacoes_utilidades_psql.modelo
      Tamanho: st_importacoes_utilidades_psql.tamanho
      Material: st_importacoes_utilidades_psql.material
      Importador Nome: st_importacoes_utilidades_psql.importador_nome
      Período: st_importacoes_utilidades_psql.anomes_norm_ord
    row: 70
    col: 7
    width: 17
    height: 8
  - name: " (3)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: <img src="https://drive.google.com/uc?export=view&id=1ow5lQtG8wqhV69P8xn5FrU54LvA8BFoQ"/>
    row: 70
    col: 0
    width: 7
    height: 8
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
  - title: Variação do Valor FOB Unitário (US$) por Produto - Valores
    name: Variação do Valor FOB Unitário (US$) por Produto - Valores
    model: external_st_importacoes_postgres
    explore: st_importacoes_utilidades_psql
    type: looker_grid
    fields: [st_importacoes_utilidades_psql.val_fob_un_us_num_min, st_importacoes_utilidades_psql.val_fob_un_us_num_p25,
      st_importacoes_utilidades_psql.val_fob_un_us_num_med, st_importacoes_utilidades_psql.val_fob_un_us_num_p75,
      st_importacoes_utilidades_psql.val_fob_un_us_num_max, st_importacoes_utilidades_psql.fob_sum,
      st_importacoes_utilidades_psql.produto]
    filters:
      st_importacoes_utilidades_psql.tp_unid_comerc: UNIDADE
      st_importacoes_utilidades_psql.produto_check: 'Yes'
    sorts: [st_importacoes_utilidades_psql.fob_sum desc]
    limit: 10
    dynamic_fields: [{table_calculation: valores, label: 'Valores:', expression: "${st_importacoes_utilidades_psql.val_fob_un_us_num_min}",
        value_format: !!null '', value_format_name: usd, _kind_hint: measure, _type_hint: number},
      {_kind_hint: measure, table_calculation: p25_calc, _type_hint: number, category: table_calculation,
        expression: "${st_importacoes_utilidades_psql.val_fob_un_us_num_p25}", label: p25_calc,
        value_format: !!null '', value_format_name: decimal_2}, {_kind_hint: measure,
        table_calculation: med_calc, _type_hint: number, category: table_calculation,
        expression: "${st_importacoes_utilidades_psql.val_fob_un_us_num_med}", label: med_calc,
        value_format: !!null '', value_format_name: usd}, {_kind_hint: measure, table_calculation: p75_calc,
        _type_hint: number, category: table_calculation, expression: "${st_importacoes_utilidades_psql.val_fob_un_us_num_p75}",
        label: p75_calc, value_format: !!null '', value_format_name: decimal_2}, {
        table_calculation: max_calc, label: max_calc, expression: "${st_importacoes_utilidades_psql.val_fob_un_us_num_max}",
        value_format: !!null '', value_format_name: usd, _kind_hint: measure, _type_hint: number}]
    show_view_names: false
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
        id: c2d4e26e-e79a-aded-eb19-b39cf8abf9e8
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
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_labels:
      st_importacoes_utilidades_psql.fob_sum: Valor Fob Total
      valores: Valor Mínimo
      p25_calc: 25% dos Valores
      med_calc: 50% dos Valores
      p75_calc: 75% dos Valores
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
      st_importacoes_utilidades_psql.fob_sum: "#7a7a7a"
      media_simples: "#7a7a7a"
    value_labels: legend
    label_type: labPer
    defaults_version: 1
    hidden_fields: [st_importacoes_utilidades_psql.val_fob_un_us_num_min, st_importacoes_utilidades_psql.val_fob_un_us_num_max,
      st_importacoes_utilidades_psql.fob_sum, st_importacoes_utilidades_psql.val_fob_un_us_num_p25,
      st_importacoes_utilidades_psql.val_fob_un_us_num_med, st_importacoes_utilidades_psql.val_fob_un_us_num_p75]
    note_state: collapsed
    note_display: below
    note_text: Considera apenas o tipo UNIDADE.
    listen:
      NCM: st_importacoes_utilidades_psql.cdncm_compl
      Produto: st_importacoes_utilidades_psql.produto
      Modal: st_importacoes_utilidades_psql.via_transp_norm
      País de Origem: st_importacoes_utilidades_psql.nm_pais_origem
      Modelo: st_importacoes_utilidades_psql.modelo
      Tamanho: st_importacoes_utilidades_psql.tamanho
      Material: st_importacoes_utilidades_psql.material
      Importador Nome: st_importacoes_utilidades_psql.importador_nome
      Período: st_importacoes_utilidades_psql.anomes_norm_ord
    row: 78
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
    explore: st_importacoes_utilidades_psql
    listens_to_filters: []
    field: st_importacoes_utilidades_psql.importador_nome
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
    explore: st_importacoes_utilidades_psql
    listens_to_filters: []
    field: st_importacoes_utilidades_psql.anomes_norm_ord
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
    explore: st_importacoes_utilidades_psql
    listens_to_filters: []
    field: st_importacoes_utilidades_psql.cdncm_compl
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
    explore: st_importacoes_utilidades_psql
    listens_to_filters: []
    field: st_importacoes_utilidades_psql.produto
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
    model: external_st_importacoes_postgres
    explore: st_importacoes_utilidades_psql
    listens_to_filters: []
    field: st_importacoes_utilidades_psql.tamanho
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
    explore: st_importacoes_utilidades_psql
    listens_to_filters: []
    field: st_importacoes_utilidades_psql.modelo
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
    explore: st_importacoes_utilidades_psql
    listens_to_filters: []
    field: st_importacoes_utilidades_psql.material
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
    explore: st_importacoes_utilidades_psql
    listens_to_filters: []
    field: st_importacoes_utilidades_psql.via_transp_norm
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
    explore: st_importacoes_utilidades_psql
    listens_to_filters: []
    field: st_importacoes_utilidades_psql.nm_pais_origem
