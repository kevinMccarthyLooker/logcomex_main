- dashboard: ncmproduto_siscori
  title: NCM/Produto (siscori)
  layout: newspaper
  preferred_viewer: dashboards-next
  crossfilter_enabled: true
  elements:
  - title: Valor Total Exportado (USD)
    name: Valor Total Exportado (USD)
    model: Siscori_datalake
    explore: siscori_gold
    type: single_value
    fields: [siscori_gold.val_fob_us_total]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    listen:
      Mês: siscori_gold.mes_month
      NCM: siscori_gold.cdncm_compl
      HSCODE: siscori_gold.cdncm
    row: 0
    col: 0
    width: 8
    height: 3
  - title: Peso Total Exportado (Kg)
    name: Peso Total Exportado (Kg)
    model: Siscori_datalake
    explore: siscori_gold
    type: single_value
    fields: [siscori_gold.val_peso_liq_total]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    listen:
      Mês: siscori_gold.mes_month
      NCM: siscori_gold.cdncm_compl
      HSCODE: siscori_gold.cdncm
    row: 3
    col: 0
    width: 8
    height: 3
  - title: Valores e  Pesos - Timeline
    name: Valores e  Pesos - Timeline
    model: Siscori_datalake
    explore: siscori_gold
    type: looker_column
    fields: [siscori_gold.val_fob_us_total, siscori_gold.val_peso_liq_total, siscori_gold.mes_month]
    filters:
      siscori_gold.val_fob_us_total: NOT NULL
    sorts: [siscori_gold.mes_month]
    limit: 500
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
        reverse: true
    y_axes: [{label: !!null '', orientation: left, series: [{axisId: siscori_gold.val_peso_liq_total,
            id: siscori_gold.val_peso_liq_total, name: Peso Líquido}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: siscori_gold.val_fob_us_total,
            id: siscori_gold.val_fob_us_total, name: FOB USD}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types:
      siscori_gold.val_peso_liq_total: line
    series_colors:
      siscori_gold.val_fob_us_total: "#5a189a"
      siscori_gold.val_peso_liq_total: "#ff8500"
    series_labels:
      siscori_gold.val_fob_us_total: FOB USD
      siscori_gold.val_peso_liq_total: Peso Líquido
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Mês: siscori_gold.mes_month
      NCM: siscori_gold.cdncm_compl
      HSCODE: siscori_gold.cdncm
    row: 0
    col: 8
    width: 16
    height: 6
  - title: Valor Total por Estado
    name: Valor Total por Estado
    model: Siscori_datalake
    explore: siscori_gold
    type: looker_pie
    fields: [siscori_gold.val_fob_us_total, siscori_gold.uf]
    filters:
      siscori_gold.uf: "-NULL"
    sorts: [siscori_gold.val_fob_us_total desc]
    limit: 500
    value_labels: legend
    label_type: labPer
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      custom:
        id: 7e17e3ad-e9b2-b028-0da1-093441f4514b
        label: Custom
        type: continuous
        stops:
        - color: "#5a189a"
          offset: 0
        - color: "#9d4edd"
          offset: 50
        - color: "#e0aaff"
          offset: 100
      options:
        steps: 5
        reverse: false
    series_colors: {}
    series_labels:
      siscori_gold.uf: UF
      siscori_gold.val_fob_us_total: FOB USD
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    size_to_fit: true
    series_cell_visualizations:
      siscori_gold.val_fob_us_total:
        is_active: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    series_types: {}
    defaults_version: 1
    hide_totals: false
    hide_row_totals: false
    listen:
      Mês: siscori_gold.mes_month
      NCM: siscori_gold.cdncm_compl
      HSCODE: siscori_gold.cdncm
    row: 6
    col: 0
    width: 12
    height: 9
  - title: Valor por NCM
    name: Valor por NCM
    model: Siscori_datalake
    explore: siscori_gold
    type: looker_grid
    fields: [siscori_gold.val_fob_us_total, siscori_gold.ncm_desc, siscori_gold.cdncm_compl]
    sorts: [siscori_gold.val_fob_us_total desc]
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
      siscori_gold.ncm_desc: Descrição
      siscori_gold.cdncm_compl: NCM
      siscori_gold.val_fob_us_total: FOB USD
    series_column_widths:
      siscori_gold.cdncm_compl: 75
      siscori_gold.val_fob_us_total: 120
    series_cell_visualizations:
      siscori_gold.val_fob_us_total:
        is_active: false
        palette:
          palette_id: d9a7ce47-e058-eb72-569a-f8defe118a91
          collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
          custom_colors:
          - "#89bcd6"
          - "#589fbf"
          - "#0960c2"
    series_text_format:
      siscori_gold.val_fob_us_total:
        align: left
    series_value_format:
      siscori_gold.cdncm_compl: "#00000000"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    series_types: {}
    defaults_version: 1
    listen:
      Mês: siscori_gold.mes_month
      NCM: siscori_gold.cdncm_compl
      HSCODE: siscori_gold.cdncm
    row: 6
    col: 12
    width: 12
    height: 9
  - title: Valor Total - País Destino
    name: Valor Total - País Destino
    model: Siscori_datalake
    explore: siscori_gold
    type: looker_grid
    fields: [siscori_gold.val_fob_us_total, siscori_gold.val_peso_liq_total, siscori_gold.cdpaisdestino]
    sorts: [siscori_gold.val_fob_us_total desc]
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
      siscori_gold.val_fob_us_total: FOB USD
      siscori_gold.val_peso_liq_total: Peso Líquido
      siscori_gold.cdpaisdestino: País Destino
    series_column_widths:
      siscori_gold.cdpaisdestino: 107
    series_cell_visualizations:
      siscori_gold.val_fob_us_total:
        is_active: false
        palette:
          palette_id: e0c29b2e-fe22-7c52-e412-a1f5448de0bd
          collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
          custom_colors:
          - "#3EB0D5"
          - "#4276BE"
          - "#2b5ac2"
    series_text_format:
      siscori_gold.val_fob_us_total:
        align: left
      siscori_gold.val_peso_liq_total:
        align: left
      siscori_gold.cdpaisdestino:
        align: center
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    series_types: {}
    defaults_version: 1
    listen:
      Mês: siscori_gold.mes_month
      NCM: siscori_gold.cdncm_compl
      HSCODE: siscori_gold.cdncm
    row: 15
    col: 0
    width: 12
    height: 9
  - title: Valor Total por Incoterm
    name: Valor Total por Incoterm
    model: Siscori_datalake
    explore: siscori_gold
    type: looker_bar
    fields: [siscori_gold.val_fob_us_total, siscori_gold.incoterm]
    filters:
      siscori_gold.incoterm: "-NULL"
    sorts: [siscori_gold.val_fob_us_total desc]
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
      custom:
        id: eb8d328b-cb0f-9856-9130-9163484bc624
        label: Custom
        type: continuous
        stops:
        - color: "#5a189a"
          offset: 0
        - color: "#9d4edd"
          offset: 50
        - color: "#e0aaff"
          offset: 100
      options:
        steps: 5
    series_types: {}
    series_colors: {}
    series_labels:
      siscori_gold.val_fob_us_total: Valor US Total
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Mês: siscori_gold.mes_month
      NCM: siscori_gold.cdncm_compl
      HSCODE: siscori_gold.cdncm
    row: 15
    col: 12
    width: 12
    height: 9
  filters:
  - name: Mês
    title: Mês
    type: field_filter
    default_value: 6 month
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: Siscori_datalake
    explore: siscori_gold
    listens_to_filters: []
    field: siscori_gold.mes_month
  - name: HSCODE
    title: HSCODE
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: Siscori_datalake
    explore: siscori_gold
    listens_to_filters: []
    field: siscori_gold.cdncm
  - name: NCM
    title: NCM
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: Siscori_datalake
    explore: siscori_gold
    listens_to_filters: []
    field: siscori_gold.cdncm_compl
