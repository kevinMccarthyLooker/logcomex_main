- dashboard: external_search_expo_siscori
  title: Dashboard - Siscori (v0)
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
      Ano / Mês: db_commodities_export.anomes
    row: 0
    col: 0
    width: 6
    height: 4
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
      Ano / Mês: db_commodities_export.anomes
    row: 0
    col: 6
    width: 6
    height: 4
  - title: Valor e Peso no Tempo
    name: Valor e Peso no Tempo
    model: Dados_Expo
    explore: db_commodities_export
    type: looker_column
    fields: [db_commodities_export.val_peso_liq, db_commodities_export.anomes, db_commodities_export.val_fob_us]
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
    y_axes: [{label: '', orientation: left, series: [{axisId: db_commodities_export.val_peso_liq,
            id: db_commodities_export.val_peso_liq, name: Val Peso Liq}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: db_commodities_export.val_fob_us,
            id: db_commodities_export.val_fob_us, name: Val Fob Us}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types:
      db_commodities_export.val_peso_liq: line
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
    listen:
      Ano / Mês: db_commodities_export.anomes
    row: 0
    col: 12
    width: 12
    height: 11
  - title: Valor Total Exportado por NCM
    name: Valor Total Exportado por NCM
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
    listen:
      Ano / Mês: db_commodities_export.anomes
    row: 4
    col: 0
    width: 12
    height: 7
  - title: Valor Total Exportador por Unidades Fiscal
    name: Valor Total Exportador por Unidades Fiscal
    model: Dados_Expo
    explore: db_commodities_export
    type: looker_grid
    fields: [db_commodities_export.val_fob_us, db_siscori_unid_fiscal.nome_unid_fiscal]
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
    listen:
      Ano / Mês: db_commodities_export.anomes
    row: 11
    col: 12
    width: 12
    height: 7
  - title: Valor Total Exportado por Estado
    name: Valor Total Exportado por Estado
    model: Dados_Expo
    explore: db_commodities_export
    type: looker_grid
    fields: [db_commodities_export.val_fob_us, db_siscori_unid_fiscal.uf]
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
      Ano / Mês: db_commodities_export.anomes
    row: 11
    col: 0
    width: 12
    height: 7
  - title: Detalhamento
    name: Detalhamento
    model: Dados_Expo
    explore: db_commodities_export
    type: looker_grid
    fields: [db_commodities_export.anomes, db_siscori_cod_ncm.cdncm, db_siscori_cod_ncm.cdncm_compl,
      db_siscori_cod_ncm.ncm_desc, db_commodities_export.desc_prodt, db_siscori_incoterm.incoterm,
      db_siscori_natinf.tp_nat_inf, db_siscori_natinf.version, db_siscori_sitdesp.tp_sit_desp,
      db_siscori_sitdesp.version]
    sorts: [db_commodities_export.anomes]
    limit: 500
    query_timezone: America/Sao_Paulo
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
      db_siscori_sitdesp.tp_sit_desp: 237
    listen:
      Ano / Mês: db_commodities_export.anomes
    row: 18
    col: 0
    width: 24
    height: 7
  filters:
  - name: Ano / Mês
    title: Ano / Mês
    type: field_filter
    default_value: "[202008,202010]"
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: inline
      options: []
    model: Dados_Expo
    explore: db_commodities_export
    listens_to_filters: []
    field: db_commodities_export.anomes
