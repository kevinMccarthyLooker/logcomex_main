- dashboard: st_importacoes_visao_uni_vol
  title: Visão de Mercado Unificado -  Volume Comercializado
  layout: newspaper
  preferred_viewer: dashboards-next
  crossfilter_enabled: true
  elements:
  - title: Valor FOB Total (US$) de Itens Importados
    name: Valor FOB Total (US$) de Itens Importados
    model: external_st_importacoes_postgres
    explore: search_estrutura_atrib_st
    type: single_value
    fields: [search_estrutura_atrib_st.fob_sum]
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
    conditional_formatting: [{type: greater than, value: 0, background_color: "#aaf52d",
        font_color: "#000000", color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
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
      NCM: search_estrutura_atrib_st.cdncm_compl
      Produto: search_estrutura_atrib_st.produto
      Modal: search_estrutura_atrib_st.via_transp_norm
      País de Origem: search_estrutura_atrib_st.nm_pais_origem
      Modelo: search_estrutura_atrib_st.modelo
      Tamanho: search_estrutura_atrib_st.tamanho
      Material: search_estrutura_atrib_st.material
      Importador Nome: search_estrutura_atrib_st.importador_nome
      Período: search_estrutura_atrib_st.anomes_norm_ord
      Departamento: search_estrutura_atrib_st.departamento
      Marca: search_estrutura_atrib_st.marca
      Gênero: search_estrutura_atrib_st.genero
      Tipo Unidade: search_estrutura_atrib_st.tp_unid_comerc
    row: 0
    col: 16
    width: 8
    height: 3
  - title: Quantidade Total de Itens Importados
    name: Quantidade Total de Itens Importados
    model: external_st_importacoes_postgres
    explore: search_estrutura_atrib_st
    type: single_value
    fields: [search_estrutura_atrib_st.qtde_comerc_sum]
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
    value_format: "#,##0"
    conditional_formatting: [{type: greater than, value: 0, background_color: "#aaf52d",
        font_color: "#000000", color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
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
    note_text: A Quantidade de Itens de acordo com o tipo unidade.
    listen:
      NCM: search_estrutura_atrib_st.cdncm_compl
      Produto: search_estrutura_atrib_st.produto
      Modal: search_estrutura_atrib_st.via_transp_norm
      País de Origem: search_estrutura_atrib_st.nm_pais_origem
      Modelo: search_estrutura_atrib_st.modelo
      Tamanho: search_estrutura_atrib_st.tamanho
      Material: search_estrutura_atrib_st.material
      Importador Nome: search_estrutura_atrib_st.importador_nome
      Período: search_estrutura_atrib_st.anomes_norm_ord
      Departamento: search_estrutura_atrib_st.departamento
      Marca: search_estrutura_atrib_st.marca
      Gênero: search_estrutura_atrib_st.genero
      Tipo Unidade: search_estrutura_atrib_st.tp_unid_comerc
    row: 3
    col: 16
    width: 8
    height: 3
  - title: Volume - Tendência Mensal
    name: Volume - Tendência Mensal
    model: external_st_importacoes_postgres
    explore: search_estrutura_atrib_st
    type: looker_column
    fields: [search_estrutura_atrib_st.anomes_norm, search_estrutura_atrib_st.anomes,
      search_estrutura_atrib_st.qtde_comerc_sum]
    sorts: [search_estrutura_atrib_st.anomes]
    limit: 500
    dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: "${search_estrutura_atrib_st.fob_sum}",
        value_format: "$#,##0", value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number, is_disabled: true}]
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
    y_axes: [{label: '', orientation: left, series: [{axisId: search_estrutura_atrib_st.fob_sum,
            id: search_estrutura_atrib_st.fob_sum, name: Fob Sum}], showLabels: true,
        showValues: true, valueFormat: "$#,##0", unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: !!null '', orientation: right,
        series: [{axisId: search_estrutura_atrib_st.count, id: search_estrutura_atrib_st.count,
            name: Quantidade}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: Mês / Ano
    label_value_format: "#,##0"
    series_types:
      search_estrutura_atrib_st.count: line
    series_colors:
      calculation_1: "#9BDA32"
      search_estrutura_atrib_st.count: "#97d921"
      search_estrutura_atrib_st.qtde_comerc_sum: "#9BDA32"
    series_labels:
      search_estrutura_atrib_st.count: Quantidade
      calculation_1: Valor Fob Total
      search_estrutura_atrib_st.qtde_comerc_sum: Volume
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
    hidden_fields: [search_estrutura_atrib_st.anomes]
    listen:
      NCM: search_estrutura_atrib_st.cdncm_compl
      Produto: search_estrutura_atrib_st.produto
      Modal: search_estrutura_atrib_st.via_transp_norm
      País de Origem: search_estrutura_atrib_st.nm_pais_origem
      Modelo: search_estrutura_atrib_st.modelo
      Tamanho: search_estrutura_atrib_st.tamanho
      Material: search_estrutura_atrib_st.material
      Importador Nome: search_estrutura_atrib_st.importador_nome
      Período: search_estrutura_atrib_st.anomes_norm_ord
      Departamento: search_estrutura_atrib_st.departamento
      Marca: search_estrutura_atrib_st.marca
      Gênero: search_estrutura_atrib_st.genero
      Tipo Unidade: search_estrutura_atrib_st.tp_unid_comerc
    row: 6
    col: 0
    width: 24
    height: 7
  - title: Volume - Ranking Importadores
    name: Volume - Ranking Importadores
    model: external_st_importacoes_postgres
    explore: search_estrutura_atrib_st
    type: looker_column
    fields: [search_estrutura_atrib_st.importador_nome, search_estrutura_atrib_st.qtde_comerc_sum]
    filters:
      search_estrutura_atrib_st.importador_check: 'Yes'
    sorts: [search_estrutura_atrib_st.qtde_comerc_sum desc]
    limit: 15
    dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: "${search_estrutura_atrib_st.fob_sum}",
        value_format: "$#,##0", value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number, is_disabled: true}]
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
    y_axes: [{label: '', orientation: left, series: [{axisId: search_estrutura_atrib_st.fob_sum,
            id: search_estrutura_atrib_st.fob_sum, name: Fob Sum}], showLabels: true,
        showValues: true, valueFormat: "$#,##0", unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: !!null '', orientation: right,
        series: [{axisId: search_estrutura_atrib_st.count, id: search_estrutura_atrib_st.count,
            name: Quantidade}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    series_types:
      search_estrutura_atrib_st.count: line
    series_colors:
      search_estrutura_atrib_st.count: "#98d91e"
      calculation_1: "#7a7a7a"
      search_estrutura_atrib_st.qtde_comerc_sum: "#7a7a7a"
    series_labels:
      search_estrutura_atrib_st.count: Quantidade
      calculation_1: Valor Fob Total
      search_estrutura_atrib_st.qtde_comerc_sum: Volume
    defaults_version: 1
    hidden_fields: []
    listen:
      NCM: search_estrutura_atrib_st.cdncm_compl
      Produto: search_estrutura_atrib_st.produto
      Modal: search_estrutura_atrib_st.via_transp_norm
      País de Origem: search_estrutura_atrib_st.nm_pais_origem
      Modelo: search_estrutura_atrib_st.modelo
      Tamanho: search_estrutura_atrib_st.tamanho
      Material: search_estrutura_atrib_st.material
      Importador Nome: search_estrutura_atrib_st.importador_nome
      Período: search_estrutura_atrib_st.anomes_norm_ord
      Departamento: search_estrutura_atrib_st.departamento
      Marca: search_estrutura_atrib_st.marca
      Gênero: search_estrutura_atrib_st.genero
      Tipo Unidade: search_estrutura_atrib_st.tp_unid_comerc
    row: 23
    col: 7
    width: 17
    height: 7
  - title: NCMs Importados
    name: NCMs Importados
    model: external_st_importacoes_postgres
    explore: search_estrutura_atrib_st
    type: looker_grid
    fields: [search_estrutura_atrib_st.ncm_desc, search_estrutura_atrib_st.fob_sum,
      search_estrutura_atrib_st.qtde_comerc_sum]
    sorts: [search_estrutura_atrib_st.fob_sum desc]
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
      search_estrutura_atrib_st.count: Quantidade
      search_estrutura_atrib_st.fob_sum: Valor FOB Total
      search_estrutura_atrib_st.qtde_comerc_sum: Volume
    series_cell_visualizations:
      search_estrutura_atrib_st.fob_sum:
        is_active: true
        palette:
          palette_id: 8c3460c5-235a-02c4-2c97-9d07278c8050
          collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
          custom_colors:
          - "#68823D"
          - "#799F39"
          - "#89BB35"
          - "#9BDA32"
          - "#AAF52D"
        value_display: true
    series_value_format:
      search_estrutura_atrib_st.fob_sum: "$#,##0.00"
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
      NCM: search_estrutura_atrib_st.cdncm_compl
      Produto: search_estrutura_atrib_st.produto
      Modal: search_estrutura_atrib_st.via_transp_norm
      País de Origem: search_estrutura_atrib_st.nm_pais_origem
      Modelo: search_estrutura_atrib_st.modelo
      Tamanho: search_estrutura_atrib_st.tamanho
      Material: search_estrutura_atrib_st.material
      Importador Nome: search_estrutura_atrib_st.importador_nome
      Período: search_estrutura_atrib_st.anomes_norm_ord
      Departamento: search_estrutura_atrib_st.departamento
      Marca: search_estrutura_atrib_st.marca
      Gênero: search_estrutura_atrib_st.genero
      Tipo Unidade: search_estrutura_atrib_st.tp_unid_comerc
    row: 64
    col: 0
    width: 24
    height: 9
  - title: País de Origem
    name: País de Origem
    model: external_st_importacoes_postgres
    explore: search_estrutura_atrib_st
    type: looker_map
    fields: [search_estrutura_atrib_st.store_location, search_estrutura_atrib_st.qtde_comerc_sum]
    sorts: [search_estrutura_atrib_st.qtde_comerc_sum desc]
    limit: 500
    dynamic_fields: [{table_calculation: valor_fob_total, label: Valor Fob Total,
        expression: "${search_estrutura_atrib_st.fob_sum}", value_format: "$#,##0",
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number, is_disabled: true},
      {_kind_hint: measure, table_calculation: volume, _type_hint: number, category: table_calculation,
        expression: "${search_estrutura_atrib_st.qtde_comerc_sum}", label: Volume,
        value_format: "#,##0", value_format_name: !!null ''}]
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
    y_axes: [{label: '', orientation: left, series: [{axisId: search_estrutura_atrib_st.fob_sum,
            id: search_estrutura_atrib_st.fob_sum, name: Fob Sum}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: search_estrutura_atrib_st.count,
            id: search_estrutura_atrib_st.count, name: Quantidade}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types: {}
    series_labels:
      search_estrutura_atrib_st.count: Quantidade
    defaults_version: 1
    map: auto
    map_projection: ''
    quantize_colors: false
    hidden_fields: [search_estrutura_atrib_st.qtde_comerc_sum]
    listen:
      NCM: search_estrutura_atrib_st.cdncm_compl
      Produto: search_estrutura_atrib_st.produto
      Modal: search_estrutura_atrib_st.via_transp_norm
      País de Origem: search_estrutura_atrib_st.nm_pais_origem
      Modelo: search_estrutura_atrib_st.modelo
      Tamanho: search_estrutura_atrib_st.tamanho
      Material: search_estrutura_atrib_st.material
      Importador Nome: search_estrutura_atrib_st.importador_nome
      Período: search_estrutura_atrib_st.anomes_norm_ord
      Departamento: search_estrutura_atrib_st.departamento
      Marca: search_estrutura_atrib_st.marca
      Gênero: search_estrutura_atrib_st.genero
      Tipo Unidade: search_estrutura_atrib_st.tp_unid_comerc
    row: 13
    col: 0
    width: 24
    height: 10
  - title: Volume - Modal
    name: Volume - Modal
    model: external_st_importacoes_postgres
    explore: search_estrutura_atrib_st
    type: looker_pie
    fields: [search_estrutura_atrib_st.via_transp_norm, search_estrutura_atrib_st.qtde_comerc_sum]
    filters:
      search_estrutura_atrib_st.via_transp_norm_check: 'Yes'
    sorts: [search_estrutura_atrib_st.qtde_comerc_sum desc]
    limit: 500
    dynamic_fields: [{table_calculation: valor_fob_total, label: Valor FOB Total,
        expression: "${search_estrutura_atrib_st.fob_sum}", value_format: "$#,##0",
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number, is_disabled: true},
      {_kind_hint: measure, table_calculation: volume, _type_hint: number, category: table_calculation,
        expression: "${search_estrutura_atrib_st.qtde_comerc_sum}", label: Volume,
        value_format: "#,##0", value_format_name: !!null ''}]
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
      search_estrutura_atrib_st.count: Quantidade
      search_estrutura_atrib_st.via_transp: Transporte
      search_estrutura_atrib_st.qtde_comerc_sum: Qtde Comercializada
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
      search_estrutura_atrib_st.qtde_comerc_sum:
        is_active: true
      search_estrutura_atrib_st.fob_sum:
        is_active: false
    series_value_format:
      search_estrutura_atrib_st.fob_sum: "$#,##0"
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
    y_axes: [{label: '', orientation: left, series: [{axisId: search_estrutura_atrib_st.fob_sum,
            id: search_estrutura_atrib_st.fob_sum, name: Fob Sum}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: search_estrutura_atrib_st.count,
            id: search_estrutura_atrib_st.count, name: Quantidade}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types: {}
    defaults_version: 1
    map: auto
    map_projection: ''
    quantize_colors: false
    hidden_fields: [search_estrutura_atrib_st.qtde_comerc_sum]
    note_state: collapsed
    note_display: hover
    note_text: Considera apenas os Identificados
    listen:
      NCM: search_estrutura_atrib_st.cdncm_compl
      Produto: search_estrutura_atrib_st.produto
      Modal: search_estrutura_atrib_st.via_transp_norm
      País de Origem: search_estrutura_atrib_st.nm_pais_origem
      Modelo: search_estrutura_atrib_st.modelo
      Tamanho: search_estrutura_atrib_st.tamanho
      Material: search_estrutura_atrib_st.material
      Importador Nome: search_estrutura_atrib_st.importador_nome
      Período: search_estrutura_atrib_st.anomes_norm_ord
      Departamento: search_estrutura_atrib_st.departamento
      Marca: search_estrutura_atrib_st.marca
      Gênero: search_estrutura_atrib_st.genero
      Tipo Unidade: search_estrutura_atrib_st.tp_unid_comerc
    row: 0
    col: 9
    width: 7
    height: 6
  - title: Registros
    name: Registros
    model: external_st_importacoes_postgres
    explore: search_estrutura_atrib_st
    type: looker_grid
    fields: [search_estrutura_atrib_st.produto, search_estrutura_atrib_st.tp_unid_comerc,
      search_estrutura_atrib_st.qtde_comerc_sum, search_estrutura_atrib_st.fob_sum,
      search_estrutura_atrib_st.val_fob_un_us_avg]
    filters: {}
    sorts: [search_estrutura_atrib_st.qtde_comerc_sum desc]
    limit: 500
    dynamic_fields: [{table_calculation: media_simples, label: Média Simples, expression: "${search_estrutura_atrib_st.fob_sum}\
          \ / ${search_estrutura_atrib_st.qtde_comerc_sum}", value_format: !!null '',
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
    column_order: ["$$$_row_numbers_$$$", search_estrutura_atrib_st.produto, search_estrutura_atrib_st.qtde_comerc_sum,
      search_estrutura_atrib_st.tp_unid_comerc, search_estrutura_atrib_st.fob_sum,
      search_estrutura_atrib_st.val_fob_un_us_avg]
    show_totals: true
    show_row_totals: true
    series_labels:
      search_estrutura_atrib_st.count: Quantidade
      search_estrutura_atrib_st.desc_prodt: Produto
      search_estrutura_atrib_st.tp_unid_comerc: Tipo Unidade
      search_estrutura_atrib_st.qtde_comerc_sum: Quantidade
      search_estrutura_atrib_st.val_fob_un_us_avg: Média Ponderada
      search_estrutura_atrib_st.fob_sum: Valor FOB Total
    series_cell_visualizations:
      search_estrutura_atrib_st.qtde_comerc_sum:
        is_active: false
      search_estrutura_atrib_st.fob_sum:
        is_active: true
        palette:
          palette_id: 39dda765-0763-514e-e2ac-8db862369f0f
          collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
          custom_colors:
          - "#c2c2c2"
          - "#363636"
    series_text_format:
      search_estrutura_atrib_st.produto:
        align: left
      search_estrutura_atrib_st.tp_unid_comerc:
        align: left
      search_estrutura_atrib_st.qtde_comerc_sum:
        align: left
      search_estrutura_atrib_st.val_fob_un_us_avg:
        align: left
      media_simples:
        align: left
    series_value_format:
      search_estrutura_atrib_st.fob_sum: "$#,##0"
      search_estrutura_atrib_st.val_fob_un_us_avg:
        name: usd
        format_string: "$#,##0.00"
        label: U.S. Dollars (2)
      search_estrutura_atrib_st.qtde_comerc_sum:
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
    y_axes: [{label: '', orientation: left, series: [{axisId: search_estrutura_atrib_st.fob_sum,
            id: search_estrutura_atrib_st.fob_sum, name: Fob Sum}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: search_estrutura_atrib_st.count,
            id: search_estrutura_atrib_st.count, name: Quantidade}], showLabels: true,
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
      NCM: search_estrutura_atrib_st.cdncm_compl
      Produto: search_estrutura_atrib_st.produto
      Modal: search_estrutura_atrib_st.via_transp_norm
      País de Origem: search_estrutura_atrib_st.nm_pais_origem
      Modelo: search_estrutura_atrib_st.modelo
      Tamanho: search_estrutura_atrib_st.tamanho
      Material: search_estrutura_atrib_st.material
      Importador Nome: search_estrutura_atrib_st.importador_nome
      Período: search_estrutura_atrib_st.anomes_norm_ord
      Departamento: search_estrutura_atrib_st.departamento
      Marca: search_estrutura_atrib_st.marca
      Gênero: search_estrutura_atrib_st.genero
      Tipo Unidade: search_estrutura_atrib_st.tp_unid_comerc
    row: 115
    col: 8
    width: 16
    height: 7
  - title: Volume - Ranking Produtos
    name: Volume - Ranking Produtos
    model: external_st_importacoes_postgres
    explore: search_estrutura_atrib_st
    type: looker_column
    fields: [search_estrutura_atrib_st.produto, search_estrutura_atrib_st.qtde_comerc_sum]
    filters:
      search_estrutura_atrib_st.produto_check: 'Yes'
    sorts: [search_estrutura_atrib_st.qtde_comerc_sum desc]
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
    label_value_format: ''
    series_types: {}
    series_colors:
      search_estrutura_atrib_st.fob_sum: "#7a7a7a"
      search_estrutura_atrib_st.qtde_comerc_sum: "#7a7a7a"
    series_labels:
      search_estrutura_atrib_st.fob_sum: Valor Fob Total
      search_estrutura_atrib_st.qtde_comerc_sum: Volume
    value_labels: legend
    label_type: labPer
    defaults_version: 1
    note_state: collapsed
    note_display: below
    listen:
      NCM: search_estrutura_atrib_st.cdncm_compl
      Produto: search_estrutura_atrib_st.produto
      Modal: search_estrutura_atrib_st.via_transp_norm
      País de Origem: search_estrutura_atrib_st.nm_pais_origem
      Modelo: search_estrutura_atrib_st.modelo
      Tamanho: search_estrutura_atrib_st.tamanho
      Material: search_estrutura_atrib_st.material
      Importador Nome: search_estrutura_atrib_st.importador_nome
      Período: search_estrutura_atrib_st.anomes_norm_ord
      Departamento: search_estrutura_atrib_st.departamento
      Marca: search_estrutura_atrib_st.marca
      Gênero: search_estrutura_atrib_st.genero
      Tipo Unidade: search_estrutura_atrib_st.tp_unid_comerc
    row: 73
    col: 0
    width: 24
    height: 7
  - title: Média Simples Valor FOB (US$) - Ranking Produtos
    name: Média Simples Valor FOB (US$) - Ranking Produtos
    model: external_st_importacoes_postgres
    explore: search_estrutura_atrib_st
    type: looker_column
    fields: [search_estrutura_atrib_st.fob_sum, search_estrutura_atrib_st.produto,
      search_estrutura_atrib_st.qtde_comerc_sum]
    filters:
      search_estrutura_atrib_st.produto_check: 'Yes'
    sorts: [media_simples desc]
    limit: 500
    dynamic_fields: [{table_calculation: media_simples, label: Média Simples, expression: "${search_estrutura_atrib_st.fob_sum}\
          \ / ${search_estrutura_atrib_st.qtde_comerc_sum}", value_format: !!null '',
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
      search_estrutura_atrib_st.fob_sum: "#7a7a7a"
      media_simples: "#89BB35"
    series_labels:
      search_estrutura_atrib_st.fob_sum: Valor Fob Total
    label_color: ["#7a7a7a"]
    value_labels: legend
    label_type: labPer
    defaults_version: 1
    hidden_fields: [search_estrutura_atrib_st.qtde_comerc_sum, search_estrutura_atrib_st.fob_sum]
    note_state: collapsed
    note_display: below
    note_text: Considera apenas o tipo UNIDADE.
    listen:
      NCM: search_estrutura_atrib_st.cdncm_compl
      Produto: search_estrutura_atrib_st.produto
      Modal: search_estrutura_atrib_st.via_transp_norm
      País de Origem: search_estrutura_atrib_st.nm_pais_origem
      Modelo: search_estrutura_atrib_st.modelo
      Tamanho: search_estrutura_atrib_st.tamanho
      Material: search_estrutura_atrib_st.material
      Importador Nome: search_estrutura_atrib_st.importador_nome
      Período: search_estrutura_atrib_st.anomes_norm_ord
      Departamento: search_estrutura_atrib_st.departamento
      Marca: search_estrutura_atrib_st.marca
      Gênero: search_estrutura_atrib_st.genero
      Tipo Unidade: search_estrutura_atrib_st.tp_unid_comerc
    row: 80
    col: 0
    width: 24
    height: 7
  - title: Volume - Ranking Exportadores
    name: Volume - Ranking Exportadores
    model: external_st_importacoes_postgres
    explore: search_estrutura_atrib_st
    type: looker_column
    fields: [search_estrutura_atrib_st.exportador_nome, search_estrutura_atrib_st.qtde_comerc_sum]
    filters:
      search_estrutura_atrib_st.exportador_check: 'Yes'
    sorts: [search_estrutura_atrib_st.qtde_comerc_sum desc]
    limit: 15
    dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: "${search_estrutura_atrib_st.fob_sum}",
        value_format: "$#,##0", value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number, is_disabled: true}]
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
    y_axes: [{label: '', orientation: left, series: [{axisId: search_estrutura_atrib_st.fob_sum,
            id: search_estrutura_atrib_st.fob_sum, name: Fob Sum}], showLabels: true,
        showValues: true, valueFormat: "$#,##0", unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: !!null '', orientation: right,
        series: [{axisId: search_estrutura_atrib_st.count, id: search_estrutura_atrib_st.count,
            name: Quantidade}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    series_types:
      search_estrutura_atrib_st.count: line
    series_colors:
      search_estrutura_atrib_st.count: "#98d91e"
      calculation_1: "#9BDA32"
      search_estrutura_atrib_st.qtde_comerc_sum: "#9BDA32"
    series_labels:
      search_estrutura_atrib_st.count: Quantidade
      calculation_1: Valor Fob Total
      search_estrutura_atrib_st.qtde_comerc_sum: Volume
    label_color: ["#7a7a7a"]
    defaults_version: 1
    hidden_fields: []
    listen:
      NCM: search_estrutura_atrib_st.cdncm_compl
      Produto: search_estrutura_atrib_st.produto
      Modal: search_estrutura_atrib_st.via_transp_norm
      País de Origem: search_estrutura_atrib_st.nm_pais_origem
      Modelo: search_estrutura_atrib_st.modelo
      Tamanho: search_estrutura_atrib_st.tamanho
      Material: search_estrutura_atrib_st.material
      Importador Nome: search_estrutura_atrib_st.importador_nome
      Período: search_estrutura_atrib_st.anomes_norm_ord
      Departamento: search_estrutura_atrib_st.departamento
      Marca: search_estrutura_atrib_st.marca
      Gênero: search_estrutura_atrib_st.genero
      Tipo Unidade: search_estrutura_atrib_st.tp_unid_comerc
    row: 57
    col: 0
    width: 24
    height: 7
  - title: Volume - Tamanho
    name: Volume - Tamanho
    model: external_st_importacoes_postgres
    explore: search_estrutura_atrib_st
    type: looker_column
    fields: [search_estrutura_atrib_st.tamanho, search_estrutura_atrib_st.qtde_comerc_sum]
    filters:
      search_estrutura_atrib_st.tamanho_check: 'Yes'
    sorts: [search_estrutura_atrib_st.qtde_comerc_sum desc]
    limit: 15
    dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: "${search_estrutura_atrib_st.fob_sum}",
        value_format: "$#,##0", value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number, is_disabled: true}, {table_calculation: percent_of_total,
        label: percent_of_total, expression: "${search_estrutura_atrib_st.fob_sum}/sum(${search_estrutura_atrib_st.fob_sum})",
        value_format: !!null '', value_format_name: percent_3, _kind_hint: measure,
        _type_hint: number, is_disabled: true}]
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
    y_axes: [{label: '', orientation: left, series: [{axisId: search_estrutura_atrib_st.fob_sum,
            id: search_estrutura_atrib_st.fob_sum, name: Fob Sum}], showLabels: true,
        showValues: true, valueFormat: "$#,##0", unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: !!null '', orientation: right,
        series: [{axisId: search_estrutura_atrib_st.count, id: search_estrutura_atrib_st.count,
            name: Quantidade}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    series_types:
      search_estrutura_atrib_st.count: line
    series_colors:
      search_estrutura_atrib_st.count: "#98d91e"
      calculation_1: "#7a7a7a"
      percent_of_total: "#9BDA32"
      search_estrutura_atrib_st.qtde_comerc_sum: "#9BDA32"
    series_labels:
      search_estrutura_atrib_st.count: Quantidade
      calculation_1: Valor Fob Total
      search_estrutura_atrib_st.qtde_comerc_sum: Volume
    label_color: ["#7a7a7a"]
    defaults_version: 1
    hidden_fields: []
    note_state: collapsed
    note_display: hover
    note_text: Não considera tamanhos não identificados.
    listen:
      NCM: search_estrutura_atrib_st.cdncm_compl
      Produto: search_estrutura_atrib_st.produto
      Modal: search_estrutura_atrib_st.via_transp_norm
      País de Origem: search_estrutura_atrib_st.nm_pais_origem
      Modelo: search_estrutura_atrib_st.modelo
      Tamanho: search_estrutura_atrib_st.tamanho
      Material: search_estrutura_atrib_st.material
      Importador Nome: search_estrutura_atrib_st.importador_nome
      Período: search_estrutura_atrib_st.anomes_norm_ord
      Departamento: search_estrutura_atrib_st.departamento
      Marca: search_estrutura_atrib_st.marca
      Gênero: search_estrutura_atrib_st.genero
      Tipo Unidade: search_estrutura_atrib_st.tp_unid_comerc
    row: 108
    col: 0
    width: 24
    height: 7
  - title: Volume - Ranking Modelos
    name: Volume - Ranking Modelos
    model: external_st_importacoes_postgres
    explore: search_estrutura_atrib_st
    type: looker_column
    fields: [search_estrutura_atrib_st.modelo, search_estrutura_atrib_st.qtde_comerc_sum]
    filters:
      search_estrutura_atrib_st.modelo_check: 'Yes'
    sorts: [search_estrutura_atrib_st.qtde_comerc_sum desc]
    limit: 150
    dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: "${search_estrutura_atrib_st.fob_sum}",
        value_format: "$#,##0", value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number, is_disabled: true}]
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
    y_axes: [{label: '', orientation: left, series: [{axisId: search_estrutura_atrib_st.fob_sum,
            id: search_estrutura_atrib_st.fob_sum, name: Fob Sum}], showLabels: true,
        showValues: true, valueFormat: "$#,##0", unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: !!null '', orientation: right,
        series: [{axisId: search_estrutura_atrib_st.count, id: search_estrutura_atrib_st.count,
            name: Quantidade}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '15'
    series_types:
      search_estrutura_atrib_st.count: line
    series_colors:
      search_estrutura_atrib_st.count: "#98d91e"
      calculation_1: "#89BB35"
      search_estrutura_atrib_st.qtde_comerc_sum: "#89BB35"
    series_labels:
      search_estrutura_atrib_st.count: Quantidade
      calculation_1: Valor Fob Total
      search_estrutura_atrib_st.qtde_comerc_sum: Volume
    label_color: ["#7a7a7a"]
    defaults_version: 1
    hidden_fields: []
    listen:
      NCM: search_estrutura_atrib_st.cdncm_compl
      Produto: search_estrutura_atrib_st.produto
      Modal: search_estrutura_atrib_st.via_transp_norm
      País de Origem: search_estrutura_atrib_st.nm_pais_origem
      Modelo: search_estrutura_atrib_st.modelo
      Tamanho: search_estrutura_atrib_st.tamanho
      Material: search_estrutura_atrib_st.material
      Importador Nome: search_estrutura_atrib_st.importador_nome
      Período: search_estrutura_atrib_st.anomes_norm_ord
      Departamento: search_estrutura_atrib_st.departamento
      Marca: search_estrutura_atrib_st.marca
      Gênero: search_estrutura_atrib_st.genero
      Tipo Unidade: search_estrutura_atrib_st.tp_unid_comerc
    row: 94
    col: 0
    width: 24
    height: 7
  - title: Volume - ST Importações
    name: Volume - ST Importações
    model: external_st_importacoes_postgres
    explore: search_estrutura_atrib_st
    type: single_value
    fields: [search_estrutura_atrib_st.importador_nome, search_estrutura_atrib_st.qtde_comerc_sum]
    filters:
      search_estrutura_atrib_st.importador_check: 'Yes'
      search_estrutura_atrib_st.importador_colorido: ST IMPORTACOES LTDA
    sorts: [search_estrutura_atrib_st.qtde_comerc_sum desc]
    limit: 15
    dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: "${search_estrutura_atrib_st.fob_sum}",
        value_format: "$#,##0", value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number, is_disabled: true}]
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
    y_axes: [{label: '', orientation: left, series: [{axisId: search_estrutura_atrib_st.fob_sum,
            id: search_estrutura_atrib_st.fob_sum, name: Fob Sum}], showLabels: true,
        showValues: true, valueFormat: "$#,##0", unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: !!null '', orientation: right,
        series: [{axisId: search_estrutura_atrib_st.count, id: search_estrutura_atrib_st.count,
            name: Quantidade}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    series_types: {}
    series_colors:
      search_estrutura_atrib_st.count: "#98d91e"
      calculation_1: "#7a7a7a"
    series_labels:
      search_estrutura_atrib_st.count: Quantidade
      calculation_1: Valor Fob Total
    defaults_version: 1
    hidden_fields: []
    listen:
      NCM: search_estrutura_atrib_st.cdncm_compl
      Produto: search_estrutura_atrib_st.produto
      Modal: search_estrutura_atrib_st.via_transp_norm
      País de Origem: search_estrutura_atrib_st.nm_pais_origem
      Modelo: search_estrutura_atrib_st.modelo
      Tamanho: search_estrutura_atrib_st.tamanho
      Material: search_estrutura_atrib_st.material
      Período: search_estrutura_atrib_st.anomes_norm_ord
      Departamento: search_estrutura_atrib_st.departamento
      Marca: search_estrutura_atrib_st.marca
      Gênero: search_estrutura_atrib_st.genero
      Tipo Unidade: search_estrutura_atrib_st.tp_unid_comerc
    row: 23
    col: 0
    width: 7
    height: 7
  - title: Volume - Material
    name: Volume - Material
    model: external_st_importacoes_postgres
    explore: search_estrutura_atrib_st
    type: looker_column
    fields: [search_estrutura_atrib_st.material, search_estrutura_atrib_st.qtde_comerc_sum]
    filters:
      search_estrutura_atrib_st.material_check: 'Yes'
    sorts: [search_estrutura_atrib_st.qtde_comerc_sum desc]
    limit: 15
    dynamic_fields: [{table_calculation: calculation_1, label: Calculation 1, expression: "${search_estrutura_atrib_st.fob_sum}",
        value_format: "$#,##0", value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number, is_disabled: true}, {table_calculation: percent_of_total,
        label: percent_of_total, expression: "${search_estrutura_atrib_st.fob_sum}/sum(${search_estrutura_atrib_st.fob_sum})",
        value_format: !!null '', value_format_name: percent_3, _kind_hint: measure,
        _type_hint: number, is_disabled: true}]
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
    y_axes: [{label: '', orientation: left, series: [{axisId: search_estrutura_atrib_st.fob_sum,
            id: search_estrutura_atrib_st.fob_sum, name: Fob Sum}], showLabels: true,
        showValues: true, valueFormat: "$#,##0", unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: !!null '', orientation: right,
        series: [{axisId: search_estrutura_atrib_st.count, id: search_estrutura_atrib_st.count,
            name: Quantidade}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    series_types:
      search_estrutura_atrib_st.count: line
    series_colors:
      search_estrutura_atrib_st.count: "#98d91e"
      calculation_1: "#7a7a7a"
      percent_of_total: "#7a7a7a"
      search_estrutura_atrib_st.qtde_comerc_sum: "#7a7a7a"
    series_labels:
      search_estrutura_atrib_st.count: Quantidade
      calculation_1: Valor Fob Total
      search_estrutura_atrib_st.qtde_comerc_sum: Volume
    label_color: ["#7a7a7a"]
    defaults_version: 1
    hidden_fields: []
    listen:
      NCM: search_estrutura_atrib_st.cdncm_compl
      Produto: search_estrutura_atrib_st.produto
      Modal: search_estrutura_atrib_st.via_transp_norm
      País de Origem: search_estrutura_atrib_st.nm_pais_origem
      Modelo: search_estrutura_atrib_st.modelo
      Tamanho: search_estrutura_atrib_st.tamanho
      Material: search_estrutura_atrib_st.material
      Importador Nome: search_estrutura_atrib_st.importador_nome
      Período: search_estrutura_atrib_st.anomes_norm_ord
      Departamento: search_estrutura_atrib_st.departamento
      Marca: search_estrutura_atrib_st.marca
      Gênero: search_estrutura_atrib_st.genero
      Tipo Unidade: search_estrutura_atrib_st.tp_unid_comerc
    row: 101
    col: 0
    width: 24
    height: 7
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: <img src="https://drive.google.com/uc?export=view&id=1NpOJPe-eAjUY7w5qHgn4ndPyEu0baTDI"/>
    row: 0
    col: 0
    width: 9
    height: 6
  - title: Base de Dados
    name: Base de Dados
    model: external_st_importacoes_postgres
    explore: search_estrutura_atrib_st
    type: looker_grid
    fields: [search_estrutura_atrib_st.id_import, search_estrutura_atrib_st.importador_nome,
      search_estrutura_atrib_st.exportador_nome, search_estrutura_atrib_st.anomes_norm,
      search_estrutura_atrib_st.via_transp_norm, search_estrutura_atrib_st.tp_unid_comerc,
      search_estrutura_atrib_st.material, search_estrutura_atrib_st.modelo, search_estrutura_atrib_st.nm_pais_origem,
      search_estrutura_atrib_st.ncm_desc, search_estrutura_atrib_st.desc_prodt, search_estrutura_atrib_st.produto,
      search_estrutura_atrib_st.qtd_comerc, search_estrutura_atrib_st.val_fob_un_us,
      search_estrutura_atrib_st.val_vmle_us_subitem, search_estrutura_atrib_st.cdncm_compl,
      search_estrutura_atrib_st.tamanho]
    sorts: [search_estrutura_atrib_st.id_import]
    limit: 500
    dynamic_fields: [{table_calculation: valor_fob_total, label: Valor FOB Total,
        expression: "${search_estrutura_atrib_st.fob_sum}", value_format: "$#,##0",
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
    column_order: ["$$$_row_numbers_$$$", search_estrutura_atrib_st.via_transp_norm,
      search_estrutura_atrib_st.id_import, search_estrutura_atrib_st.qtd_comerc, search_estrutura_atrib_st.val_fob_un_us,
      search_estrutura_atrib_st.exportador_nome, search_estrutura_atrib_st.cdncm_compl,
      search_estrutura_atrib_st.tp_unid_comerc, search_estrutura_atrib_st.desc_prodt,
      search_estrutura_atrib_st.nm_pais_origem, search_estrutura_atrib_st.val_vmle_us_subitem,
      search_estrutura_atrib_st.importador_nome, search_estrutura_atrib_st.anomes_norm,
      search_estrutura_atrib_st.tamanho, search_estrutura_atrib_st.material, search_estrutura_atrib_st.modelo,
      search_estrutura_atrib_st.ncm_desc, search_estrutura_atrib_st.produto]
    show_totals: true
    show_row_totals: true
    series_labels:
      search_estrutura_atrib_st.count: Quantidade
      search_estrutura_atrib_st.via_transp: Transporte
      search_estrutura_atrib_st.qtde_comerc_sum: Qtde Comercializada
      search_estrutura_atrib_st.id_import: ID
      search_estrutura_atrib_st.anomes_norm: Periodo
      search_estrutura_atrib_st.via_transp_norm: Modal
      search_estrutura_atrib_st.tp_unid_comerc: Tipo Unidade
      search_estrutura_atrib_st.nm_pais_origem: Pais de Origem
      search_estrutura_atrib_st.ncm_desc: NCM Desc
      search_estrutura_atrib_st.desc_prodt: Desc Produto
      search_estrutura_atrib_st.produto: Produto
      search_estrutura_atrib_st.qtd_comerc: Quantidade
      search_estrutura_atrib_st.val_fob_un_us: Valor FOB Unidade
      search_estrutura_atrib_st.val_vmle_us_subitem: Valor FOB
      search_estrutura_atrib_st.cdncm_compl: NCM
    series_column_widths:
      search_estrutura_atrib_st.qtd_comerc: 115
      search_estrutura_atrib_st.id_import: 104
      search_estrutura_atrib_st.val_fob_un_us: 157
      search_estrutura_atrib_st.exportador_nome: 151
      search_estrutura_atrib_st.ncm_desc: 112
      search_estrutura_atrib_st.cdncm_compl: 94
      search_estrutura_atrib_st.importador_nome: 175
      search_estrutura_atrib_st.tp_unid_comerc: 150
      search_estrutura_atrib_st.desc_prodt: 135
      search_estrutura_atrib_st.nm_pais_origem: 142
      search_estrutura_atrib_st.val_vmle_us_subitem: 120
      search_estrutura_atrib_st.anomes_norm: 107
      search_estrutura_atrib_st.material: 137
      search_estrutura_atrib_st.modelo: 94
      search_estrutura_atrib_st.produto: 92
      search_estrutura_atrib_st.tamanho: 128
    series_cell_visualizations:
      search_estrutura_atrib_st.qtde_comerc_sum:
        is_active: true
      search_estrutura_atrib_st.fob_sum:
        is_active: false
    series_value_format:
      search_estrutura_atrib_st.fob_sum: "$#,##0"
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
    y_axes: [{label: '', orientation: left, series: [{axisId: search_estrutura_atrib_st.fob_sum,
            id: search_estrutura_atrib_st.fob_sum, name: Fob Sum}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: search_estrutura_atrib_st.count,
            id: search_estrutura_atrib_st.count, name: Quantidade}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types: {}
    defaults_version: 1
    map: auto
    map_projection: ''
    quantize_colors: false
    hidden_fields: []
    listen:
      NCM: search_estrutura_atrib_st.cdncm_compl
      Produto: search_estrutura_atrib_st.produto
      Modal: search_estrutura_atrib_st.via_transp_norm
      País de Origem: search_estrutura_atrib_st.nm_pais_origem
      Modelo: search_estrutura_atrib_st.modelo
      Tamanho: search_estrutura_atrib_st.tamanho
      Material: search_estrutura_atrib_st.material
      Importador Nome: search_estrutura_atrib_st.importador_nome
      Período: search_estrutura_atrib_st.anomes_norm_ord
      Departamento: search_estrutura_atrib_st.departamento
      Marca: search_estrutura_atrib_st.marca
      Gênero: search_estrutura_atrib_st.genero
      Tipo Unidade: search_estrutura_atrib_st.tp_unid_comerc
    row: 122
    col: 0
    width: 24
    height: 7
  - title: Variação do Valor FOB Unitário (US$) por Importador
    name: Variação do Valor FOB Unitário (US$) por Importador
    model: external_st_importacoes_postgres
    explore: search_estrutura_atrib_st
    type: looker_boxplot
    fields: [search_estrutura_atrib_st.importador_nome, search_estrutura_atrib_st.val_fob_un_us_min,
      search_estrutura_atrib_st.val_fob_un_us_p25, search_estrutura_atrib_st.val_fob_un_us_med,
      search_estrutura_atrib_st.val_fob_un_us_p75, search_estrutura_atrib_st.val_fob_un_us_max,
      search_estrutura_atrib_st.fob_sum]
    filters:
      search_estrutura_atrib_st.importador_check: 'Yes'
    sorts: [search_estrutura_atrib_st.fob_sum desc]
    limit: 10
    dynamic_fields: [{table_calculation: valores, label: 'Valores:', expression: "${search_estrutura_atrib_st.val_fob_un_us_min}",
        value_format: !!null '', value_format_name: usd, _kind_hint: measure, _type_hint: number},
      {_kind_hint: measure, table_calculation: p25_calc, _type_hint: number, category: table_calculation,
        expression: "${search_estrutura_atrib_st.val_fob_un_us_p25}", label: p25_calc,
        value_format: !!null '', value_format_name: decimal_2}, {_kind_hint: measure,
        table_calculation: med_calc, _type_hint: number, category: table_calculation,
        expression: "${search_estrutura_atrib_st.val_fob_un_us_med}", label: med_calc,
        value_format: !!null '', value_format_name: usd}, {_kind_hint: measure, table_calculation: p75_calc,
        _type_hint: number, category: table_calculation, expression: "${search_estrutura_atrib_st.val_fob_un_us_p75}",
        label: p75_calc, value_format: !!null '', value_format_name: decimal_2}, {
        table_calculation: max_calc, label: max_calc, expression: "${search_estrutura_atrib_st.val_fob_un_us_max}",
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
      search_estrutura_atrib_st.fob_sum: "#7a7a7a"
      media_simples: "#7a7a7a"
    series_labels:
      search_estrutura_atrib_st.fob_sum: Valor Fob Total
    value_labels: legend
    label_type: labPer
    defaults_version: 1
    hidden_fields: [search_estrutura_atrib_st.val_fob_un_us_min, search_estrutura_atrib_st.val_fob_un_us_max,
      search_estrutura_atrib_st.fob_sum, search_estrutura_atrib_st.val_fob_un_us_p25,
      search_estrutura_atrib_st.val_fob_un_us_med, search_estrutura_atrib_st.val_fob_un_us_p75]
    note_state: collapsed
    note_display: below
    note_text: Considera apenas o tipo UNIDADE.
    listen:
      NCM: search_estrutura_atrib_st.cdncm_compl
      Produto: search_estrutura_atrib_st.produto
      Modal: search_estrutura_atrib_st.via_transp_norm
      País de Origem: search_estrutura_atrib_st.nm_pais_origem
      Modelo: search_estrutura_atrib_st.modelo
      Tamanho: search_estrutura_atrib_st.tamanho
      Material: search_estrutura_atrib_st.material
      Importador Nome: search_estrutura_atrib_st.importador_nome
      Período: search_estrutura_atrib_st.anomes_norm_ord
      Departamento: search_estrutura_atrib_st.departamento
      Marca: search_estrutura_atrib_st.marca
      Gênero: search_estrutura_atrib_st.genero
      Tipo Unidade: search_estrutura_atrib_st.tp_unid_comerc
    row: 30
    col: 7
    width: 17
    height: 7
  - title: Variação do Valor FOB Unitário (US$) por Importador - Valores
    name: Variação do Valor FOB Unitário (US$) por Importador - Valores
    model: external_st_importacoes_postgres
    explore: search_estrutura_atrib_st
    type: looker_grid
    fields: [search_estrutura_atrib_st.importador_nome, search_estrutura_atrib_st.val_fob_un_us_min,
      search_estrutura_atrib_st.val_fob_un_us_p25, search_estrutura_atrib_st.val_fob_un_us_med,
      search_estrutura_atrib_st.val_fob_un_us_p75, search_estrutura_atrib_st.val_fob_un_us_max,
      search_estrutura_atrib_st.fob_sum]
    filters:
      search_estrutura_atrib_st.importador_check: 'Yes'
    sorts: [search_estrutura_atrib_st.fob_sum desc]
    limit: 10
    dynamic_fields: [{table_calculation: valores, label: 'Valores:', expression: "${search_estrutura_atrib_st.val_fob_un_us_min}",
        value_format: !!null '', value_format_name: usd, _kind_hint: measure, _type_hint: number},
      {_kind_hint: measure, table_calculation: p25_calc, _type_hint: number, category: table_calculation,
        expression: "${search_estrutura_atrib_st.val_fob_un_us_p25}", label: p25_calc,
        value_format: !!null '', value_format_name: decimal_2}, {_kind_hint: measure,
        table_calculation: med_calc, _type_hint: number, category: table_calculation,
        expression: "${search_estrutura_atrib_st.val_fob_un_us_med}", label: med_calc,
        value_format: !!null '', value_format_name: usd}, {_kind_hint: measure, table_calculation: p75_calc,
        _type_hint: number, category: table_calculation, expression: "${search_estrutura_atrib_st.val_fob_un_us_p75}",
        label: p75_calc, value_format: !!null '', value_format_name: decimal_2}, {
        table_calculation: max_calc, label: max_calc, expression: "${search_estrutura_atrib_st.val_fob_un_us_max}",
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
      search_estrutura_atrib_st.fob_sum: Valor Fob Total
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
      search_estrutura_atrib_st.fob_sum: "#7a7a7a"
      media_simples: "#7a7a7a"
    value_labels: legend
    label_type: labPer
    defaults_version: 1
    hidden_fields: [search_estrutura_atrib_st.val_fob_un_us_min, search_estrutura_atrib_st.val_fob_un_us_max,
      search_estrutura_atrib_st.fob_sum, search_estrutura_atrib_st.val_fob_un_us_p25,
      search_estrutura_atrib_st.val_fob_un_us_med, search_estrutura_atrib_st.val_fob_un_us_p75]
    note_state: collapsed
    note_display: below
    note_text: Considera apenas o tipo UNIDADE.
    listen:
      NCM: search_estrutura_atrib_st.cdncm_compl
      Produto: search_estrutura_atrib_st.produto
      Modal: search_estrutura_atrib_st.via_transp_norm
      País de Origem: search_estrutura_atrib_st.nm_pais_origem
      Modelo: search_estrutura_atrib_st.modelo
      Tamanho: search_estrutura_atrib_st.tamanho
      Material: search_estrutura_atrib_st.material
      Importador Nome: search_estrutura_atrib_st.importador_nome
      Período: search_estrutura_atrib_st.anomes_norm_ord
      Departamento: search_estrutura_atrib_st.departamento
      Marca: search_estrutura_atrib_st.marca
      Gênero: search_estrutura_atrib_st.genero
      Tipo Unidade: search_estrutura_atrib_st.tp_unid_comerc
    row: 37
    col: 7
    width: 17
    height: 6
  - name: BoxPlot
    type: text
    title_text: BoxPlot
    subtitle_text: ''
    body_text: "O BoxPlot é um gráfico utilizado para analisar a distribuição dos\
      \ dados. Nesse Dashboard utilizamos o Boxplot para analisar o valor FOB Unitá\
      rio. \n<a href=\"https://docs.google.com/document/d/1O-X_Urr8R0A0_k8PMAUD1B5MYruXUJkF-X_J19GhjRQ/edit?usp=sharing\"\
      \ target=\"_blank\">Saiba Mais</a> "
    row: 37
    col: 0
    width: 7
    height: 6
  - title: Variação do Valor FOB Unitário (US$) por Produto
    name: Variação do Valor FOB Unitário (US$) por Produto
    model: external_st_importacoes_postgres
    explore: search_estrutura_atrib_st
    type: looker_boxplot
    fields: [search_estrutura_atrib_st.val_fob_un_us_min, search_estrutura_atrib_st.val_fob_un_us_p25,
      search_estrutura_atrib_st.val_fob_un_us_med, search_estrutura_atrib_st.val_fob_un_us_p75,
      search_estrutura_atrib_st.val_fob_un_us_max, search_estrutura_atrib_st.fob_sum,
      search_estrutura_atrib_st.produto]
    filters:
      search_estrutura_atrib_st.produto_check: 'Yes'
    sorts: [search_estrutura_atrib_st.fob_sum desc]
    limit: 10
    dynamic_fields: [{table_calculation: valores, label: 'Valores:', expression: "${search_estrutura_atrib_st.val_fob_un_us_min}",
        value_format: !!null '', value_format_name: usd, _kind_hint: measure, _type_hint: number},
      {_kind_hint: measure, table_calculation: p25_calc, _type_hint: number, category: table_calculation,
        expression: "${search_estrutura_atrib_st.val_fob_un_us_p25}", label: p25_calc,
        value_format: !!null '', value_format_name: decimal_2}, {_kind_hint: measure,
        table_calculation: med_calc, _type_hint: number, category: table_calculation,
        expression: "${search_estrutura_atrib_st.val_fob_un_us_med}", label: med_calc,
        value_format: !!null '', value_format_name: usd}, {_kind_hint: measure, table_calculation: p75_calc,
        _type_hint: number, category: table_calculation, expression: "${search_estrutura_atrib_st.val_fob_un_us_p75}",
        label: p75_calc, value_format: !!null '', value_format_name: decimal_2}, {
        table_calculation: max_calc, label: max_calc, expression: "${search_estrutura_atrib_st.val_fob_un_us_max}",
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
      search_estrutura_atrib_st.fob_sum: "#7a7a7a"
      media_simples: "#7a7a7a"
    series_labels:
      search_estrutura_atrib_st.fob_sum: Valor Fob Total
    value_labels: legend
    label_type: labPer
    defaults_version: 1
    hidden_fields: [search_estrutura_atrib_st.val_fob_un_us_min, search_estrutura_atrib_st.val_fob_un_us_max,
      search_estrutura_atrib_st.fob_sum, search_estrutura_atrib_st.val_fob_un_us_p25,
      search_estrutura_atrib_st.val_fob_un_us_med, search_estrutura_atrib_st.val_fob_un_us_p75]
    note_state: collapsed
    note_display: below
    note_text: Considera apenas o tipo UNIDADE.
    listen:
      NCM: search_estrutura_atrib_st.cdncm_compl
      Produto: search_estrutura_atrib_st.produto
      Modal: search_estrutura_atrib_st.via_transp_norm
      País de Origem: search_estrutura_atrib_st.nm_pais_origem
      Modelo: search_estrutura_atrib_st.modelo
      Tamanho: search_estrutura_atrib_st.tamanho
      Material: search_estrutura_atrib_st.material
      Importador Nome: search_estrutura_atrib_st.importador_nome
      Período: search_estrutura_atrib_st.anomes_norm_ord
      Departamento: search_estrutura_atrib_st.departamento
      Marca: search_estrutura_atrib_st.marca
      Gênero: search_estrutura_atrib_st.genero
      Tipo Unidade: search_estrutura_atrib_st.tp_unid_comerc
    row: 43
    col: 0
    width: 24
    height: 8
  - title: Variação do Valor FOB Unitário (US$) por Produto - Valores
    name: Variação do Valor FOB Unitário (US$) por Produto - Valores
    model: external_st_importacoes_postgres
    explore: search_estrutura_atrib_st
    type: looker_grid
    fields: [search_estrutura_atrib_st.val_fob_un_us_min, search_estrutura_atrib_st.val_fob_un_us_p25,
      search_estrutura_atrib_st.val_fob_un_us_med, search_estrutura_atrib_st.val_fob_un_us_p75,
      search_estrutura_atrib_st.val_fob_un_us_max, search_estrutura_atrib_st.fob_sum,
      search_estrutura_atrib_st.produto]
    filters:
      search_estrutura_atrib_st.produto_check: 'Yes'
    sorts: [search_estrutura_atrib_st.fob_sum desc]
    limit: 10
    dynamic_fields: [{table_calculation: valores, label: 'Valores:', expression: "${search_estrutura_atrib_st.val_fob_un_us_min}",
        value_format: !!null '', value_format_name: usd, _kind_hint: measure, _type_hint: number},
      {_kind_hint: measure, table_calculation: p25_calc, _type_hint: number, category: table_calculation,
        expression: "${search_estrutura_atrib_st.val_fob_un_us_p25}", label: p25_calc,
        value_format: !!null '', value_format_name: decimal_2}, {_kind_hint: measure,
        table_calculation: med_calc, _type_hint: number, category: table_calculation,
        expression: "${search_estrutura_atrib_st.val_fob_un_us_med}", label: med_calc,
        value_format: !!null '', value_format_name: usd}, {_kind_hint: measure, table_calculation: p75_calc,
        _type_hint: number, category: table_calculation, expression: "${search_estrutura_atrib_st.val_fob_un_us_p75}",
        label: p75_calc, value_format: !!null '', value_format_name: decimal_2}, {
        table_calculation: max_calc, label: max_calc, expression: "${search_estrutura_atrib_st.val_fob_un_us_max}",
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
      search_estrutura_atrib_st.fob_sum: Valor Fob Total
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
      search_estrutura_atrib_st.fob_sum: "#7a7a7a"
      media_simples: "#7a7a7a"
    value_labels: legend
    label_type: labPer
    defaults_version: 1
    hidden_fields: [search_estrutura_atrib_st.val_fob_un_us_min, search_estrutura_atrib_st.val_fob_un_us_max,
      search_estrutura_atrib_st.fob_sum, search_estrutura_atrib_st.val_fob_un_us_p25,
      search_estrutura_atrib_st.val_fob_un_us_med, search_estrutura_atrib_st.val_fob_un_us_p75]
    note_state: collapsed
    note_display: below
    note_text: Considera apenas o tipo UNIDADE.
    listen:
      NCM: search_estrutura_atrib_st.cdncm_compl
      Produto: search_estrutura_atrib_st.produto
      Modal: search_estrutura_atrib_st.via_transp_norm
      País de Origem: search_estrutura_atrib_st.nm_pais_origem
      Modelo: search_estrutura_atrib_st.modelo
      Tamanho: search_estrutura_atrib_st.tamanho
      Material: search_estrutura_atrib_st.material
      Importador Nome: search_estrutura_atrib_st.importador_nome
      Período: search_estrutura_atrib_st.anomes_norm_ord
      Departamento: search_estrutura_atrib_st.departamento
      Marca: search_estrutura_atrib_st.marca
      Gênero: search_estrutura_atrib_st.genero
      Tipo Unidade: search_estrutura_atrib_st.tp_unid_comerc
    row: 51
    col: 0
    width: 24
    height: 6
  - title: Volume - Gênero
    name: Volume - Gênero
    model: external_st_importacoes_postgres
    explore: search_estrutura_atrib_st
    type: looker_pie
    fields: [search_estrutura_atrib_st.genero, search_estrutura_atrib_st.qtde_comerc_sum]
    filters:
      search_estrutura_atrib_st.genero_check: 'Yes'
    sorts: [search_estrutura_atrib_st.qtde_comerc_sum desc]
    limit: 500
    dynamic_fields: [{table_calculation: valor_fob_total, label: Valor FOB Total,
        expression: "${search_estrutura_atrib_st.fob_sum}", value_format: "$#,##0",
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number, is_disabled: true}]
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
      FEMININO: "#aaf52d"
      MASCULINO: "#525252"
      INFANTIL: "#848484"
      UNISSEX: "#b4b4b4"
    series_labels:
      search_estrutura_atrib_st.count: Quantidade
      search_estrutura_atrib_st.via_transp: Transporte
      search_estrutura_atrib_st.qtde_comerc_sum: Qtde Comercializada
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
      search_estrutura_atrib_st.qtde_comerc_sum:
        is_active: true
      search_estrutura_atrib_st.fob_sum:
        is_active: false
    series_value_format:
      search_estrutura_atrib_st.fob_sum: "$#,##0"
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
    y_axes: [{label: '', orientation: left, series: [{axisId: search_estrutura_atrib_st.fob_sum,
            id: search_estrutura_atrib_st.fob_sum, name: Fob Sum}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: search_estrutura_atrib_st.count,
            id: search_estrutura_atrib_st.count, name: Quantidade}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types: {}
    defaults_version: 1
    map: auto
    map_projection: ''
    quantize_colors: false
    hidden_fields: []
    note_state: collapsed
    note_display: hover
    note_text: Considera apenas os identificados
    listen:
      NCM: search_estrutura_atrib_st.cdncm_compl
      Produto: search_estrutura_atrib_st.produto
      Modal: search_estrutura_atrib_st.via_transp_norm
      País de Origem: search_estrutura_atrib_st.nm_pais_origem
      Modelo: search_estrutura_atrib_st.modelo
      Tamanho: search_estrutura_atrib_st.tamanho
      Material: search_estrutura_atrib_st.material
      Importador Nome: search_estrutura_atrib_st.importador_nome
      Período: search_estrutura_atrib_st.anomes_norm_ord
      Departamento: search_estrutura_atrib_st.departamento
      Marca: search_estrutura_atrib_st.marca
      Gênero: search_estrutura_atrib_st.genero
      Tipo Unidade: search_estrutura_atrib_st.tp_unid_comerc
    row: 115
    col: 0
    width: 8
    height: 7
  - title: Volume - Ranking Marcas
    name: Volume - Ranking Marcas
    model: external_st_importacoes_postgres
    explore: search_estrutura_atrib_st
    type: looker_column
    fields: [search_estrutura_atrib_st.marca, search_estrutura_atrib_st.qtde_comerc_sum]
    filters:
      search_estrutura_atrib_st.marca_check: 'Yes'
    sorts: [search_estrutura_atrib_st.qtde_comerc_sum desc]
    limit: 500
    dynamic_fields: [{table_calculation: media_simples, label: Média Simples, expression: "${search_estrutura_atrib_st.fob_sum}\
          \ / ${search_estrutura_atrib_st.qtde_comerc_sum}", value_format: !!null '',
        value_format_name: usd, _kind_hint: measure, _type_hint: number, is_disabled: true},
      {_kind_hint: measure, table_calculation: new_calculation, _type_hint: number,
        category: table_calculation, expression: "${search_estrutura_atrib_st.fob_sum}",
        label: New Calculation, value_format: "$#,##0", value_format_name: !!null '',
        is_disabled: true}]
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
      search_estrutura_atrib_st.fob_sum: "#7a7a7a"
      media_simples: "#9BDA32"
      new_calculation: "#7a7a7a"
      search_estrutura_atrib_st.qtde_comerc_sum: "#7a7a7a"
    series_labels:
      search_estrutura_atrib_st.fob_sum: Valor Fob Total
      search_estrutura_atrib_st.qtde_comerc_sum: Volume
    label_color: ["#7a7a7a"]
    value_labels: legend
    label_type: labPer
    defaults_version: 1
    hidden_fields: []
    listen:
      NCM: search_estrutura_atrib_st.cdncm_compl
      Produto: search_estrutura_atrib_st.produto
      Modal: search_estrutura_atrib_st.via_transp_norm
      País de Origem: search_estrutura_atrib_st.nm_pais_origem
      Modelo: search_estrutura_atrib_st.modelo
      Tamanho: search_estrutura_atrib_st.tamanho
      Material: search_estrutura_atrib_st.material
      Importador Nome: search_estrutura_atrib_st.importador_nome
      Período: search_estrutura_atrib_st.anomes_norm_ord
      Departamento: search_estrutura_atrib_st.departamento
      Marca: search_estrutura_atrib_st.marca
      Gênero: search_estrutura_atrib_st.genero
      Tipo Unidade: search_estrutura_atrib_st.tp_unid_comerc
    row: 87
    col: 0
    width: 24
    height: 7
  - title: Variação do Valor FOB Unitário (US$) - ST Importações
    name: Variação do Valor FOB Unitário (US$) - ST Importações
    model: external_st_importacoes_postgres
    explore: search_estrutura_atrib_st
    type: looker_boxplot
    fields: [search_estrutura_atrib_st.importador_nome, search_estrutura_atrib_st.val_fob_un_us_min,
      search_estrutura_atrib_st.val_fob_un_us_p25, search_estrutura_atrib_st.val_fob_un_us_med,
      search_estrutura_atrib_st.val_fob_un_us_p75, search_estrutura_atrib_st.val_fob_un_us_max,
      search_estrutura_atrib_st.fob_sum]
    filters:
      search_estrutura_atrib_st.importador_check: 'Yes'
      search_estrutura_atrib_st.importador_colorido: ST IMPORTACOES LTDA
    sorts: [search_estrutura_atrib_st.fob_sum desc]
    limit: 10
    dynamic_fields: [{table_calculation: valores, label: 'Valores:', expression: "${search_estrutura_atrib_st.val_fob_un_us_min}",
        value_format: !!null '', value_format_name: usd, _kind_hint: measure, _type_hint: number},
      {_kind_hint: measure, table_calculation: p25_calc, _type_hint: number, category: table_calculation,
        expression: "${search_estrutura_atrib_st.val_fob_un_us_p25}", label: p25_calc,
        value_format: !!null '', value_format_name: decimal_2}, {_kind_hint: measure,
        table_calculation: med_calc, _type_hint: number, category: table_calculation,
        expression: "${search_estrutura_atrib_st.val_fob_un_us_med}", label: med_calc,
        value_format: !!null '', value_format_name: usd}, {_kind_hint: measure, table_calculation: p75_calc,
        _type_hint: number, category: table_calculation, expression: "${search_estrutura_atrib_st.val_fob_un_us_p75}",
        label: p75_calc, value_format: !!null '', value_format_name: decimal_2}, {
        table_calculation: max_calc, label: max_calc, expression: "${search_estrutura_atrib_st.val_fob_un_us_max}",
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
        reverse: false
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
      search_estrutura_atrib_st.fob_sum: "#7a7a7a"
      media_simples: "#7a7a7a"
    series_labels:
      search_estrutura_atrib_st.fob_sum: Valor Fob Total
    value_labels: legend
    label_type: labPer
    defaults_version: 1
    hidden_fields: [search_estrutura_atrib_st.val_fob_un_us_min, search_estrutura_atrib_st.val_fob_un_us_max,
      search_estrutura_atrib_st.fob_sum, search_estrutura_atrib_st.val_fob_un_us_p25,
      search_estrutura_atrib_st.val_fob_un_us_med, search_estrutura_atrib_st.val_fob_un_us_p75]
    note_state: collapsed
    note_display: below
    note_text: Considera apenas o tipo UNIDADE.
    listen:
      NCM: search_estrutura_atrib_st.cdncm_compl
      Produto: search_estrutura_atrib_st.produto
      Modal: search_estrutura_atrib_st.via_transp_norm
      País de Origem: search_estrutura_atrib_st.nm_pais_origem
      Modelo: search_estrutura_atrib_st.modelo
      Tamanho: search_estrutura_atrib_st.tamanho
      Material: search_estrutura_atrib_st.material
      Importador Nome: search_estrutura_atrib_st.importador_nome
      Período: search_estrutura_atrib_st.anomes_norm_ord
      Departamento: search_estrutura_atrib_st.departamento
      Marca: search_estrutura_atrib_st.marca
      Gênero: search_estrutura_atrib_st.genero
      Tipo Unidade: search_estrutura_atrib_st.tp_unid_comerc
    row: 30
    col: 0
    width: 7
    height: 7
  filters:
  - name: Departamento
    title: Departamento
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: true
    ui_config:
      type: dropdown_menu
      display: inline
      options: []
    model: external_st_importacoes_postgres
    explore: search_estrutura_atrib_st
    listens_to_filters: []
    field: search_estrutura_atrib_st.departamento
  - name: Tipo Unidade
    title: Tipo Unidade
    type: field_filter
    default_value: UNIDADE
    allow_multiple_values: true
    required: true
    ui_config:
      type: tag_list
      display: popover
      options: []
    model: external_st_importacoes_postgres
    explore: search_estrutura_atrib_st
    listens_to_filters: [Departamento]
    field: search_estrutura_atrib_st.tp_unid_comerc
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
    explore: search_estrutura_atrib_st
    listens_to_filters: [Departamento]
    field: search_estrutura_atrib_st.importador_nome
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
    explore: search_estrutura_atrib_st
    listens_to_filters: [Departamento]
    field: search_estrutura_atrib_st.anomes_norm_ord
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
    explore: search_estrutura_atrib_st
    listens_to_filters: [Departamento]
    field: search_estrutura_atrib_st.cdncm_compl
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
    explore: search_estrutura_atrib_st
    listens_to_filters: [Departamento]
    field: search_estrutura_atrib_st.produto
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
    explore: search_estrutura_atrib_st
    listens_to_filters: [Departamento]
    field: search_estrutura_atrib_st.tamanho
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
    explore: search_estrutura_atrib_st
    listens_to_filters: [Departamento]
    field: search_estrutura_atrib_st.modelo
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
    explore: search_estrutura_atrib_st
    listens_to_filters: [Departamento]
    field: search_estrutura_atrib_st.material
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
    explore: search_estrutura_atrib_st
    listens_to_filters: [Departamento]
    field: search_estrutura_atrib_st.via_transp_norm
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
    explore: search_estrutura_atrib_st
    listens_to_filters: [Departamento]
    field: search_estrutura_atrib_st.nm_pais_origem
  - name: Marca
    title: Marca
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
      options: []
    model: external_st_importacoes_postgres
    explore: search_estrutura_atrib_st
    listens_to_filters: [Departamento]
    field: search_estrutura_atrib_st.marca
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
    explore: search_estrutura_atrib_st
    listens_to_filters: [Departamento]
    field: search_estrutura_atrib_st.genero
