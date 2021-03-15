- dashboard: external_search_expo_nfs
  title: Dashboard - NFs (v0)
  layout: newspaper
  preferred_viewer: dashboards-next
  crossfilter_enabled: true
  elements:
  - title: Total Detalhes
    name: Total Detalhes
    model: Dados_Expo
    explore: db_export_cargo_reception_details
    type: single_value
    fields: [db_export_cargo_reception_details.count]
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
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: db_export_cargo_reception_details.count,
            id: db_export_cargo_reception_details.count, name: Db Export Cargo Reception
              Details}], showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: !!null '', orientation: right,
        series: [{axisId: db_export_cargo_reception_details.count_distinct_ce, id: db_export_cargo_reception_details.count_distinct_ce,
            name: Count Distinct Ce}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
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
    series_types: {}
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: time
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    listen:
      Data Registro: db_export_cargo_reception_details.dataregistro_month
    row: 0
    col: 0
    width: 4
    height: 3
  - title: Total NFs
    name: Total NFs
    model: Dados_Expo
    explore: db_export_cargo_reception_details
    type: single_value
    fields: [db_export_cargo_reception_nf.count]
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
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axes: [{label: '', orientation: left, series: [{axisId: db_export_cargo_reception_details.count,
            id: db_export_cargo_reception_details.count, name: Db Export Cargo Reception
              Details}], showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: !!null '', orientation: right,
        series: [{axisId: db_export_cargo_reception_details.count_distinct_ce, id: db_export_cargo_reception_details.count_distinct_ce,
            name: Count Distinct Ce}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
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
    x_axis_scale: time
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    listen:
      Data Registro: db_export_cargo_reception_details.dataregistro_month
    row: 0
    col: 4
    width: 4
    height: 3
  - title: Total Itens NF
    name: Total Itens NF
    model: Dados_Expo
    explore: db_export_cargo_reception_details
    type: single_value
    fields: [db_export_cargo_reception_nf_itens.count]
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
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axes: [{label: '', orientation: left, series: [{axisId: db_export_cargo_reception_details.count,
            id: db_export_cargo_reception_details.count, name: Db Export Cargo Reception
              Details}], showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: !!null '', orientation: right,
        series: [{axisId: db_export_cargo_reception_details.count_distinct_ce, id: db_export_cargo_reception_details.count_distinct_ce,
            name: Count Distinct Ce}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
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
    x_axis_scale: time
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    listen:
      Data Registro: db_export_cargo_reception_details.dataregistro_month
    row: 3
    col: 4
    width: 4
    height: 3
  - title: Total Valor
    name: Total Valor
    model: Dados_Expo
    explore: db_export_cargo_reception_details
    type: single_value
    fields: [db_export_cargo_reception_nf_itens.val_tot_bruto]
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
    value_format: '"R$" ###,###'
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
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axes: [{label: '', orientation: left, series: [{axisId: db_export_cargo_reception_details.count,
            id: db_export_cargo_reception_details.count, name: Db Export Cargo Reception
              Details}], showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: !!null '', orientation: right,
        series: [{axisId: db_export_cargo_reception_details.count_distinct_ce, id: db_export_cargo_reception_details.count_distinct_ce,
            name: Count Distinct Ce}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
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
    x_axis_scale: time
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    listen:
      Data Registro: db_export_cargo_reception_details.dataregistro_month
    row: 0
    col: 8
    width: 4
    height: 3
  - title: Total Conteineres
    name: Total Conteineres
    model: Dados_Expo
    explore: db_export_cargo_reception_details
    type: single_value
    fields: [db_export_cargo_reception_fcl.count]
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
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axes: [{label: '', orientation: left, series: [{axisId: db_export_cargo_reception_details.count,
            id: db_export_cargo_reception_details.count, name: Db Export Cargo Reception
              Details}], showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: !!null '', orientation: right,
        series: [{axisId: db_export_cargo_reception_details.count_distinct_ce, id: db_export_cargo_reception_details.count_distinct_ce,
            name: Count Distinct Ce}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
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
    x_axis_scale: time
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    listen:
      Data Registro: db_export_cargo_reception_details.dataregistro_month
    row: 3
    col: 0
    width: 4
    height: 3
  - title: Total por NCM
    name: Total por NCM
    model: Dados_Expo
    explore: db_export_cargo_reception_details
    type: looker_grid
    fields: [db_export_cargo_reception_nf_itens.val_tot_bruto, db_export_cargo_reception_nf_itens.cdncm_compl,
      db_siscori_cod_ncm.ncm_desc]
    sorts: [db_export_cargo_reception_nf_itens.val_tot_bruto desc]
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
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", db_export_cargo_reception_nf_itens.cdncm_compl,
      db_siscori_cod_ncm.ncm_desc, db_export_cargo_reception_nf_itens.descr_ncm, db_export_cargo_reception_nf_itens.val_tot_bruto]
    show_totals: true
    show_row_totals: true
    series_labels:
      db_export_cargo_reception_nf_itens.cdncm_compl: NCM
      db_siscori_cod_ncm.ncm_desc: Descrição NCM
    series_column_widths:
      db_export_cargo_reception_nf_itens.descr_ncm: 286
      db_export_cargo_reception_nf_itens.cdncm_compl: 120
      db_siscori_cod_ncm.ncm_desc: 300
    series_cell_visualizations:
      db_export_cargo_reception_nf_itens.val_tot_bruto:
        is_active: true
    custom_color_enabled: true
    show_single_value_title: true
    value_format: ''
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axes: [{label: '', orientation: left, series: [{axisId: db_export_cargo_reception_details.count,
            id: db_export_cargo_reception_details.count, name: Db Export Cargo Reception
              Details}], showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: !!null '', orientation: right,
        series: [{axisId: db_export_cargo_reception_details.count_distinct_ce, id: db_export_cargo_reception_details.count_distinct_ce,
            name: Count Distinct Ce}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
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
    x_axis_scale: time
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    listen: {}
    row: 6
    col: 12
    width: 12
    height: 7
  - title: Valor Total por Emissor
    name: Valor Total por Emissor
    model: Dados_Expo
    explore: db_export_cargo_reception_details
    type: looker_grid
    fields: [db_export_cargo_reception_nf.nome_emissor, db_export_cargo_reception_nf.count,
      db_export_cargo_reception_nf_itens.val_tot_bruto]
    sorts: [db_export_cargo_reception_nf_itens.val_tot_bruto desc]
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
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", db_export_cargo_reception_nf.nome_emissor,
      db_export_cargo_reception_nf.count, db_export_cargo_reception_nf_itens.val_tot_bruto]
    show_totals: true
    show_row_totals: true
    series_labels:
      db_export_cargo_reception_nf_itens.cdncm_compl: NCM
      db_siscori_cod_ncm.ncm_desc: Descrição NCM
      db_export_cargo_reception_nf.nome_emissor: Emissor
      db_export_cargo_reception_nf.count: Qtde Notas
      db_export_cargo_reception_nf_itens.val_tot_bruto: Valor Total Bruto
    series_column_widths:
      db_export_cargo_reception_nf_itens.descr_ncm: 286
      db_export_cargo_reception_nf_itens.cdncm_compl: 120
      db_siscori_cod_ncm.ncm_desc: 300
      db_export_cargo_reception_nf.nome_emissor: 350
      db_export_cargo_reception_nf.count: 120
    series_cell_visualizations:
      db_export_cargo_reception_nf_itens.val_tot_bruto:
        is_active: true
      db_export_cargo_reception_nf.count:
        is_active: false
    series_text_format:
      db_export_cargo_reception_nf.count:
        align: center
    custom_color_enabled: true
    show_single_value_title: true
    value_format: ''
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axes: [{label: '', orientation: left, series: [{axisId: db_export_cargo_reception_details.count,
            id: db_export_cargo_reception_details.count, name: Db Export Cargo Reception
              Details}], showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: !!null '', orientation: right,
        series: [{axisId: db_export_cargo_reception_details.count_distinct_ce, id: db_export_cargo_reception_details.count_distinct_ce,
            name: Count Distinct Ce}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
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
    x_axis_scale: time
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    listen: {}
    row: 6
    col: 0
    width: 12
    height: 7
  - title: Valor Total por Destinatário
    name: Valor Total por Destinatário
    model: Dados_Expo
    explore: db_export_cargo_reception_details
    type: looker_grid
    fields: [db_export_cargo_reception_nf.count, db_export_cargo_reception_nf_itens.val_tot_bruto,
      db_export_cargo_reception_nf.nome_destinatario]
    sorts: [db_export_cargo_reception_nf_itens.val_tot_bruto desc]
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
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", db_export_cargo_reception_nf.nome_destinatario,
      db_export_cargo_reception_nf.count, db_export_cargo_reception_nf_itens.val_tot_bruto]
    show_totals: true
    show_row_totals: true
    series_labels:
      db_export_cargo_reception_nf_itens.cdncm_compl: NCM
      db_siscori_cod_ncm.ncm_desc: Descrição NCM
      db_export_cargo_reception_nf.nome_emissor: Emissor
      db_export_cargo_reception_nf.count: Qtde Notas
      db_export_cargo_reception_nf_itens.val_tot_bruto: Valor Total Bruto
    series_column_widths:
      db_export_cargo_reception_nf_itens.descr_ncm: 286
      db_export_cargo_reception_nf_itens.cdncm_compl: 120
      db_siscori_cod_ncm.ncm_desc: 300
      db_export_cargo_reception_nf.nome_emissor: 400
      db_export_cargo_reception_nf.count: 120
      db_export_cargo_reception_nf.nome_destinatario: 336
      db_export_cargo_reception_nf_itens.val_tot_bruto: 731
    series_cell_visualizations:
      db_export_cargo_reception_nf_itens.val_tot_bruto:
        is_active: true
      db_export_cargo_reception_nf.count:
        is_active: false
    series_text_format:
      db_export_cargo_reception_nf.count:
        align: center
    custom_color_enabled: true
    show_single_value_title: true
    value_format: ''
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axes: [{label: '', orientation: left, series: [{axisId: db_export_cargo_reception_details.count,
            id: db_export_cargo_reception_details.count, name: Db Export Cargo Reception
              Details}], showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: !!null '', orientation: right,
        series: [{axisId: db_export_cargo_reception_details.count_distinct_ce, id: db_export_cargo_reception_details.count_distinct_ce,
            name: Count Distinct Ce}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
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
    x_axis_scale: time
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    listen: {}
    row: 13
    col: 0
    width: 12
    height: 6
  - title: Valor por Estado Emitente
    name: Valor por Estado Emitente
    model: Dados_Expo
    explore: db_export_cargo_reception_details
    type: looker_grid
    fields: [db_export_cargo_reception_nf.count, db_export_cargo_reception_nf_itens.val_tot_bruto,
      db_export_cargo_reception_nf.sigla_uf_emitente]
    sorts: [db_export_cargo_reception_nf_itens.val_tot_bruto desc]
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
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", db_export_cargo_reception_nf.sigla_uf_emitente,
      db_export_cargo_reception_nf.count, db_export_cargo_reception_nf_itens.val_tot_bruto]
    show_totals: true
    show_row_totals: true
    series_labels:
      db_export_cargo_reception_nf_itens.cdncm_compl: NCM
      db_siscori_cod_ncm.ncm_desc: Descrição NCM
      db_export_cargo_reception_nf.nome_emissor: Emissor
      db_export_cargo_reception_nf.count: Qtde Notas
      db_export_cargo_reception_nf_itens.val_tot_bruto: Valor Total Bruto
      db_export_cargo_reception_nf.sigla_uf_emitente: UF Emitente
    series_column_widths:
      db_export_cargo_reception_nf_itens.descr_ncm: 286
      db_export_cargo_reception_nf_itens.cdncm_compl: 120
      db_siscori_cod_ncm.ncm_desc: 300
      db_export_cargo_reception_nf.nome_emissor: 400
      db_export_cargo_reception_nf.count: 120
      db_export_cargo_reception_nf.nome_destinatario: 336
      db_export_cargo_reception_nf_itens.val_tot_bruto: 612
      db_export_cargo_reception_nf.sigla_uf_emitente: 120
    series_cell_visualizations:
      db_export_cargo_reception_nf_itens.val_tot_bruto:
        is_active: true
      db_export_cargo_reception_nf.count:
        is_active: false
    series_text_format:
      db_export_cargo_reception_nf.count:
        align: center
    custom_color_enabled: true
    show_single_value_title: true
    value_format: ''
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axes: [{label: '', orientation: left, series: [{axisId: db_export_cargo_reception_details.count,
            id: db_export_cargo_reception_details.count, name: Db Export Cargo Reception
              Details}], showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: !!null '', orientation: right,
        series: [{axisId: db_export_cargo_reception_details.count_distinct_ce, id: db_export_cargo_reception_details.count_distinct_ce,
            name: Count Distinct Ce}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
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
    x_axis_scale: time
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    listen: {}
    row: 0
    col: 12
    width: 12
    height: 6
  - title: Total Qtde Estatística
    name: Total Qtde Estatística
    model: Dados_Expo
    explore: db_export_cargo_reception_details
    type: single_value
    fields: [db_export_cargo_reception_nf_itens.qtd_estatistica]
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
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", db_export_cargo_reception_nf.sigla_uf_emitente,
      db_export_cargo_reception_nf.count, db_export_cargo_reception_nf_itens.val_tot_bruto]
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    size_to_fit: true
    series_labels:
      db_export_cargo_reception_nf_itens.cdncm_compl: NCM
      db_siscori_cod_ncm.ncm_desc: Descrição NCM
      db_export_cargo_reception_nf.nome_emissor: Emissor
      db_export_cargo_reception_nf.count: Qtde Notas
      db_export_cargo_reception_nf_itens.val_tot_bruto: Valor Total Bruto
      db_export_cargo_reception_nf.sigla_uf_emitente: UF Emitente
    series_column_widths:
      db_export_cargo_reception_nf_itens.descr_ncm: 286
      db_export_cargo_reception_nf_itens.cdncm_compl: 120
      db_siscori_cod_ncm.ncm_desc: 300
      db_export_cargo_reception_nf.nome_emissor: 400
      db_export_cargo_reception_nf.count: 120
      db_export_cargo_reception_nf.nome_destinatario: 336
      db_export_cargo_reception_nf_itens.val_tot_bruto: 612
      db_export_cargo_reception_nf.sigla_uf_emitente: 120
    series_cell_visualizations:
      db_export_cargo_reception_nf_itens.val_tot_bruto:
        is_active: true
      db_export_cargo_reception_nf.count:
        is_active: false
    series_text_format:
      db_export_cargo_reception_nf.count:
        align: center
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    hide_totals: false
    hide_row_totals: false
    value_format: ''
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axes: [{label: '', orientation: left, series: [{axisId: db_export_cargo_reception_details.count,
            id: db_export_cargo_reception_details.count, name: Db Export Cargo Reception
              Details}], showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: !!null '', orientation: right,
        series: [{axisId: db_export_cargo_reception_details.count_distinct_ce, id: db_export_cargo_reception_details.count_distinct_ce,
            name: Count Distinct Ce}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
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
    x_axis_scale: time
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    row: 3
    col: 8
    width: 4
    height: 3
  filters:
  - name: Data Registro
    title: Data Registro
    type: field_filter
    default_value: 2020/08/01 to 2020/09/01
    allow_multiple_values: true
    required: false
    ui_config:
      type: relative_timeframes
      display: popover
      options: []
    model: Dados_Expo
    explore: db_export_cargo_reception_details
    listens_to_filters: []
    field: db_export_cargo_reception_details.dataregistro_month
