- dashboard: visao_mercado_template
  title: Visão Completa de Mercado
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - title: Estrutura Mercadológica
    name: Estrutura Mercadológica
    model: external_st_importacoes_postgres
    explore: search_estrutura_atrib_st
    type: subtotal
    fields: [search_estrutura_atrib_st.departamento, search_estrutura_atrib_st.linha,
      search_estrutura_atrib_st.familia, search_estrutura_atrib_st.subfamilia, search_estrutura_atrib_st.produto,
      search_estrutura_atrib_st.Registros, search_estrutura_atrib_st.Media_Valor_FOB_Unitario,
      search_estrutura_atrib_st.Estimativa_Valor_Total]
    sorts: [search_estrutura_atrib_st.Registros desc]
    limit: 500
    hidden_fields: [search_estrutura_atrib_st.fob_sum]
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    theme: classic
    show_full_field_name: false
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
    defaults_version: 0
    series_types: {}
    listen:
      Departamento: search_estrutura_atrib_st.departamento
      Linha: search_estrutura_atrib_st.linha
      Familia: search_estrutura_atrib_st.familia
      Subfamília: search_estrutura_atrib_st.subfamilia
      Produto: search_estrutura_atrib_st.produto
    row: 16
    col: 0
    width: 24
    height: 21
  - title: Valor FOB Total (US$) - Países
    name: Valor FOB Total (US$) - Países
    model: external_st_importacoes_postgres
    explore: search_estrutura_atrib_st
    type: looker_column
    fields: [search_estrutura_atrib_st.Estimativa_Valor_Total, search_estrutura_atrib_st.nm_pais_origem]
    sorts: [search_estrutura_atrib_st.Estimativa_Valor_Total desc]
    limit: 3
    dynamic_fields: [{_kind_hint: measure, table_calculation: valor_fob, _type_hint: number,
        category: table_calculation, expression: "${search_estrutura_atrib_st.fob_sum}",
        label: Valor FOB, value_format: !!null '', value_format_name: usd_0, is_disabled: true},
      {_kind_hint: measure, table_calculation: volume, _type_hint: number, category: table_calculation,
        expression: "${search_estrutura_atrib_st.count}", label: Volume, value_format: !!null '',
        value_format_name: id, is_disabled: true}]
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
    y_axes: [{label: '', orientation: left, series: [{axisId: search_estrutura_atrib_st.Valor_FOB,
            id: search_estrutura_atrib_st.Valor_FOB, name: Valor FOB}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '5'
    series_types: {}
    series_colors:
      search_estrutura_atrib_st.Valor_FOB: "#9BDA32"
      CN: "#aaf52d"
      BR: "#525252"
      search_estrutura_atrib_st.Estimativa_Valor_Total: "#9BDA32"
    series_labels: {}
    label_color: ["#black"]
    value_labels: legend
    label_type: labPer
    theme: classic
    show_full_field_name: false
    hidden_fields: [search_estrutura_atrib_st.fob_sum]
    hidden_points_if_no: []
    defaults_version: 1
    listen:
      Departamento: search_estrutura_atrib_st.departamento
      Linha: search_estrutura_atrib_st.linha
      Familia: search_estrutura_atrib_st.familia
      Subfamília: search_estrutura_atrib_st.subfamilia
      Produto: search_estrutura_atrib_st.produto
    row: 0
    col: 17
    width: 7
    height: 6
  - title: Valor FOB Total (US$) - Ranking Exportadores
    name: Valor FOB Total (US$) - Ranking Exportadores
    model: external_st_importacoes_postgres
    explore: search_estrutura_atrib_st
    type: looker_column
    fields: [search_estrutura_atrib_st.Estimativa_Valor_Total, search_estrutura_atrib_st.exportador_nome]
    filters:
      search_estrutura_atrib_st.exportador_check: 'Yes'
    sorts: [search_estrutura_atrib_st.Estimativa_Valor_Total desc]
    limit: 500
    dynamic_fields: [{_kind_hint: measure, table_calculation: valor_fob, _type_hint: number,
        category: table_calculation, expression: "${search_estrutura_atrib_st.fob_sum}",
        label: Valor FOB, value_format: !!null '', value_format_name: usd_0, is_disabled: true},
      {_kind_hint: measure, table_calculation: volume, _type_hint: number, category: table_calculation,
        expression: "${search_estrutura_atrib_st.count}", label: Volume, value_format: !!null '',
        value_format_name: id, is_disabled: true}]
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
    y_axes: [{label: '', orientation: left, series: [{axisId: search_estrutura_atrib_st.Valor_FOB,
            id: search_estrutura_atrib_st.Valor_FOB, name: Valor FOB}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '5'
    series_types: {}
    series_colors:
      search_estrutura_atrib_st.Valor_FOB: "#9BDA32"
      search_estrutura_atrib_st.Estimativa_Valor_Total: "#9BDA32"
    series_labels: {}
    label_color: ["#black"]
    theme: classic
    show_full_field_name: false
    hidden_fields: [search_estrutura_atrib_st.fob_sum]
    hidden_points_if_no: []
    defaults_version: 1
    listen:
      Departamento: search_estrutura_atrib_st.departamento
      Linha: search_estrutura_atrib_st.linha
      Familia: search_estrutura_atrib_st.familia
      Subfamília: search_estrutura_atrib_st.subfamilia
      Produto: search_estrutura_atrib_st.produto
    row: 6
    col: 12
    width: 12
    height: 7
  - title: Valor FOB Total (US$) - Modal
    name: Valor FOB Total (US$) - Modal
    model: external_st_importacoes_postgres
    explore: search_estrutura_atrib_st
    type: looker_column
    fields: [search_estrutura_atrib_st.Valor_FOB, search_estrutura_atrib_st.via_transp_norm,
      search_estrutura_atrib_st.percent_of_total_valor_FOB]
    sorts: [search_estrutura_atrib_st.Valor_FOB desc]
    dynamic_fields: [{_kind_hint: measure, table_calculation: valor_fob, _type_hint: number,
        category: table_calculation, expression: "${search_estrutura_atrib_st.fob_sum}",
        label: Valor FOB, value_format: !!null '', value_format_name: usd_0, is_disabled: true},
      {_kind_hint: measure, table_calculation: volume, _type_hint: number, category: table_calculation,
        expression: "${search_estrutura_atrib_st.count}", label: Volume, value_format: !!null '',
        value_format_name: id, is_disabled: true}]
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
    y_axes: [{label: '', orientation: left, series: [{axisId: search_estrutura_atrib_st.Valor_FOB,
            id: search_estrutura_atrib_st.Valor_FOB, name: Valor FOB}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '3'
    series_types: {}
    series_colors:
      search_estrutura_atrib_st.Valor_FOB: "#7a7a7a"
      MARÍTIMO: "#aaf52d"
      ENTRADA/SAÍDA FICTA: "#525252"
      AÉREO: "#848484"
      RODOVIÁRIO: "#b4b4b4"
      NÃO IDENTIFICADO: "#8a8a8a"
      MEIOS PRÓPRIOS: "#DADADA"
      POSTAL: "#525252"
      search_estrutura_atrib_st.percent_of_total_valor_FOB: "#7a7a7a"
    series_labels: {}
    label_color: ["#black"]
    value_labels: legend
    label_type: labPer
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    size_to_fit: true
    series_cell_visualizations:
      search_estrutura_atrib_st.Valor_FOB:
        is_active: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    theme: classic
    show_full_field_name: false
    hidden_fields: [search_estrutura_atrib_st.fob_sum, search_estrutura_atrib_st.Valor_FOB]
    hidden_points_if_no: []
    defaults_version: 1
    hide_totals: false
    hide_row_totals: false
    listen:
      Departamento: search_estrutura_atrib_st.departamento
      Linha: search_estrutura_atrib_st.linha
      Familia: search_estrutura_atrib_st.familia
      Subfamília: search_estrutura_atrib_st.subfamilia
      Produto: search_estrutura_atrib_st.produto
    row: 0
    col: 10
    width: 7
    height: 6
  - title: Valor FOB Total (US$) - Ranking Importadores
    name: Valor FOB Total (US$) - Ranking Importadores
    model: external_st_importacoes_postgres
    explore: search_estrutura_atrib_st
    type: looker_column
    fields: [search_estrutura_atrib_st.importador_nome, search_estrutura_atrib_st.Estimativa_Valor_Total]
    filters:
      search_estrutura_atrib_st.importador_check: 'Yes'
    sorts: [search_estrutura_atrib_st.Estimativa_Valor_Total desc]
    limit: 500
    dynamic_fields: [{_kind_hint: measure, table_calculation: valor_fob, _type_hint: number,
        category: table_calculation, expression: "${search_estrutura_atrib_st.fob_sum}",
        label: Valor FOB, value_format: !!null '', value_format_name: usd_0, is_disabled: true},
      {_kind_hint: measure, table_calculation: volume, _type_hint: number, category: table_calculation,
        expression: "${search_estrutura_atrib_st.count}", label: Volume, value_format: !!null '',
        value_format_name: id, is_disabled: true}]
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
    y_axes: [{label: '', orientation: left, series: [{axisId: search_estrutura_atrib_st.Valor_FOB,
            id: search_estrutura_atrib_st.Valor_FOB, name: Valor FOB}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '5'
    series_types: {}
    series_colors:
      search_estrutura_atrib_st.Valor_FOB: "#7a7a7a"
      search_estrutura_atrib_st.Estimativa_Valor_Total: "#9BDA32"
    series_labels: {}
    label_color: ["#black"]
    theme: classic
    show_full_field_name: false
    hidden_fields: [search_estrutura_atrib_st.fob_sum]
    hidden_points_if_no: []
    defaults_version: 1
    listen:
      Departamento: search_estrutura_atrib_st.departamento
      Linha: search_estrutura_atrib_st.linha
      Familia: search_estrutura_atrib_st.familia
      Subfamília: search_estrutura_atrib_st.subfamilia
      Produto: search_estrutura_atrib_st.produto
    row: 6
    col: 0
    width: 12
    height: 7
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: <img src="https://drive.google.com/uc?export=view&id=1NpOJPe-eAjUY7w5qHgn4ndPyEu0baTDI"/>
    row: 0
    col: 0
    width: 10
    height: 6
  - title: Departamentos
    name: Departamentos
    model: external_st_importacoes_postgres
    explore: search_estrutura_atrib_st
    type: single_value
    fields: [search_estrutura_atrib_st.count_dsc_departamento]
    sorts: [search_estrutura_atrib_st.count_dsc_departamento desc]
    limit: 500
    dynamic_fields: [{_kind_hint: measure, table_calculation: valor_fob, _type_hint: number,
        category: table_calculation, expression: "${search_estrutura_atrib_st.fob_sum}",
        label: Valor FOB, value_format: !!null '', value_format_name: usd_0, is_disabled: true},
      {_kind_hint: measure, table_calculation: volume, _type_hint: number, category: table_calculation,
        expression: "${search_estrutura_atrib_st.count}", label: Volume, value_format: !!null '',
        value_format_name: id, is_disabled: true}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    conditional_formatting: [{type: greater than, value: 0, background_color: "#aaf52d",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: search_estrutura_atrib_st.Valor_FOB,
            id: search_estrutura_atrib_st.Valor_FOB, name: Valor FOB}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
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
    limit_displayed_rows: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '5'
    legend_position: center
    series_types: {}
    point_style: none
    series_colors:
      search_estrutura_atrib_st.Valor_FOB: "#9BDA32"
    series_labels: {}
    show_value_labels: true
    label_density: 25
    label_color: ["#black"]
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    theme: classic
    show_full_field_name: false
    hidden_fields: [search_estrutura_atrib_st.fob_sum]
    hidden_points_if_no: []
    defaults_version: 1
    listen:
      Departamento: search_estrutura_atrib_st.departamento
      Linha: search_estrutura_atrib_st.linha
      Familia: search_estrutura_atrib_st.familia
      Subfamília: search_estrutura_atrib_st.subfamilia
      Produto: search_estrutura_atrib_st.produto
    row: 13
    col: 0
    width: 6
    height: 3
  - title: Linhas
    name: Linhas
    model: external_st_importacoes_postgres
    explore: search_estrutura_atrib_st
    type: single_value
    fields: [search_estrutura_atrib_st.count_dsc_linha]
    limit: 500
    dynamic_fields: [{_kind_hint: measure, table_calculation: valor_fob, _type_hint: number,
        category: table_calculation, expression: "${search_estrutura_atrib_st.fob_sum}",
        label: Valor FOB, value_format: !!null '', value_format_name: usd_0, is_disabled: true},
      {_kind_hint: measure, table_calculation: volume, _type_hint: number, category: table_calculation,
        expression: "${search_estrutura_atrib_st.count}", label: Volume, value_format: !!null '',
        value_format_name: id, is_disabled: true}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    conditional_formatting: [{type: greater than, value: 0, background_color: "#aaf52d",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: search_estrutura_atrib_st.Valor_FOB,
            id: search_estrutura_atrib_st.Valor_FOB, name: Valor FOB}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
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
    limit_displayed_rows: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '5'
    legend_position: center
    series_types: {}
    point_style: none
    series_colors:
      search_estrutura_atrib_st.Valor_FOB: "#9BDA32"
    series_labels: {}
    show_value_labels: true
    label_density: 25
    label_color: ["#black"]
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    theme: classic
    show_full_field_name: false
    hidden_fields: [search_estrutura_atrib_st.fob_sum]
    hidden_points_if_no: []
    defaults_version: 1
    listen:
      Departamento: search_estrutura_atrib_st.departamento
      Linha: search_estrutura_atrib_st.linha
      Familia: search_estrutura_atrib_st.familia
      Subfamília: search_estrutura_atrib_st.subfamilia
      Produto: search_estrutura_atrib_st.produto
    row: 13
    col: 6
    width: 6
    height: 3
  - title: SubFamílias
    name: SubFamílias
    model: external_st_importacoes_postgres
    explore: search_estrutura_atrib_st
    type: single_value
    fields: [search_estrutura_atrib_st.count_dsc_subfamilia]
    limit: 500
    dynamic_fields: [{_kind_hint: measure, table_calculation: valor_fob, _type_hint: number,
        category: table_calculation, expression: "${search_estrutura_atrib_st.fob_sum}",
        label: Valor FOB, value_format: !!null '', value_format_name: usd_0, is_disabled: true},
      {_kind_hint: measure, table_calculation: volume, _type_hint: number, category: table_calculation,
        expression: "${search_estrutura_atrib_st.count}", label: Volume, value_format: !!null '',
        value_format_name: id, is_disabled: true}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    conditional_formatting: [{type: greater than, value: 0, background_color: "#aaf52d",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: search_estrutura_atrib_st.Valor_FOB,
            id: search_estrutura_atrib_st.Valor_FOB, name: Valor FOB}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
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
    limit_displayed_rows: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '5'
    legend_position: center
    series_types: {}
    point_style: none
    series_colors:
      search_estrutura_atrib_st.Valor_FOB: "#9BDA32"
    series_labels: {}
    show_value_labels: true
    label_density: 25
    label_color: ["#black"]
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    theme: classic
    show_full_field_name: false
    hidden_fields: [search_estrutura_atrib_st.fob_sum]
    hidden_points_if_no: []
    defaults_version: 1
    listen:
      Departamento: search_estrutura_atrib_st.departamento
      Linha: search_estrutura_atrib_st.linha
      Familia: search_estrutura_atrib_st.familia
      Subfamília: search_estrutura_atrib_st.subfamilia
      Produto: search_estrutura_atrib_st.produto
    row: 13
    col: 18
    width: 6
    height: 3
  - title: Famílias
    name: Famílias
    model: external_st_importacoes_postgres
    explore: search_estrutura_atrib_st
    type: single_value
    fields: [search_estrutura_atrib_st.count_dsc_familia]
    limit: 500
    dynamic_fields: [{_kind_hint: measure, table_calculation: valor_fob, _type_hint: number,
        category: table_calculation, expression: "${search_estrutura_atrib_st.fob_sum}",
        label: Valor FOB, value_format: !!null '', value_format_name: usd_0, is_disabled: true},
      {_kind_hint: measure, table_calculation: volume, _type_hint: number, category: table_calculation,
        expression: "${search_estrutura_atrib_st.count}", label: Volume, value_format: !!null '',
        value_format_name: id, is_disabled: true}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    conditional_formatting: [{type: greater than, value: 0, background_color: "#aaf52d",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: search_estrutura_atrib_st.Valor_FOB,
            id: search_estrutura_atrib_st.Valor_FOB, name: Valor FOB}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
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
    limit_displayed_rows: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '5'
    legend_position: center
    series_types: {}
    point_style: none
    series_colors:
      search_estrutura_atrib_st.Valor_FOB: "#9BDA32"
    series_labels: {}
    show_value_labels: true
    label_density: 25
    label_color: ["#black"]
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    theme: classic
    show_full_field_name: false
    hidden_fields: [search_estrutura_atrib_st.fob_sum]
    hidden_points_if_no: []
    defaults_version: 1
    listen:
      Departamento: search_estrutura_atrib_st.departamento
      Linha: search_estrutura_atrib_st.linha
      Familia: search_estrutura_atrib_st.familia
      Subfamília: search_estrutura_atrib_st.subfamilia
      Produto: search_estrutura_atrib_st.produto
    row: 13
    col: 12
    width: 6
    height: 3
  filters:
  - name: Departamento
    title: Departamento
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
    listens_to_filters: []
    field: search_estrutura_atrib_st.departamento
  - name: Linha
    title: Linha
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
    field: search_estrutura_atrib_st.linha
  - name: Familia
    title: Familia
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
    listens_to_filters: [Departamento, Linha]
    field: search_estrutura_atrib_st.familia
  - name: Subfamília
    title: Subfamília
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
    listens_to_filters: [Departamento, Linha, Familia]
    field: search_estrutura_atrib_st.subfamilia
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
    listens_to_filters: [Departamento, Linha, Subfamília]
    field: search_estrutura_atrib_st.produto
