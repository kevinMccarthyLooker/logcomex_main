- dashboard: importadores_ativos_e_no_radar
  title: Importadores Ativos e no Radar
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - title: Match - Importadores 180 dias e no Radar
    name: Match - Importadores 180 dias e no Radar
    model: Aereo
    explore: active_importers_match_radar
    type: looker_column
    fields: [active_importers_match_radar.match, active_importers_match_radar.count_distinct_cnpj]
    pivots: [active_importers_match_radar.match]
    fill_fields: [active_importers_match_radar.match]
    sorts: [active_importers_match_radar.match desc]
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
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: Yes - active_importers_match_radar.count,
            id: Yes - active_importers_match_radar.count, name: 'Yes'}, {axisId: No
              - active_importers_match_radar.count, id: No - active_importers_match_radar.count,
            name: 'No'}], showLabels: false, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors:
      Yes - active_importers_match_radar.count: "#72D16D"
      No - active_importers_match_radar.count: "#B32F37"
      Yes - active_importers_match_radar.count_distinct_cnpj: "#72D16D"
      No - active_importers_match_radar.count_distinct_cnpj: "#B32F37"
    defaults_version: 1
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
    listen: {}
    row: 5
    col: 0
    width: 6
    height: 8
  - title: Match - Importadores 180 dias e no Radar %
    name: Match - Importadores 180 dias e no Radar %
    model: Aereo
    explore: active_importers_match_radar
    type: looker_column
    fields: [active_importers_match_radar.match, active_importers_match_radar.count_distinct_cnpj]
    pivots: [active_importers_match_radar.match]
    fill_fields: [active_importers_match_radar.match]
    sorts: [active_importers_match_radar.match desc]
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
    stacking: percent
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
    y_axes: [{label: '', orientation: left, series: [{axisId: Yes - active_importers_match_radar.count,
            id: Yes - active_importers_match_radar.count, name: 'Yes'}, {axisId: No
              - active_importers_match_radar.count, id: No - active_importers_match_radar.count,
            name: 'No'}], showLabels: false, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    label_value_format: ''
    series_types: {}
    series_colors:
      Yes - active_importers_match_radar.count: "#72D16D"
      No - active_importers_match_radar.count: "#B32F37"
      Yes - active_importers_match_radar.count_distinct_cnpj: "#72D16D"
      No - active_importers_match_radar.count_distinct_cnpj: "#B32F37"
    defaults_version: 1
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
    value_labels: legend
    label_type: labPer
    listen: {}
    row: 5
    col: 6
    width: 6
    height: 8
  - title: Total no Radar
    name: Total no Radar
    model: internal_only
    explore: consignee_radar
    type: single_value
    fields: [consignee.count_distinct_cnpj]
    filters:
      consignee.cnpj: "-NULL"
      certificate.valid_until_date: after today
      consignee.deleted_date: 'NULL'
      certificate_consignee_radar.deleted_date: 'NULL'
      certificate.deleted_date: 'NULL'
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
    defaults_version: 1
    listen: {}
    row: 2
    col: 8
    width: 7
    height: 3
  - title: Total Importadores - 180 Dias
    name: Total Importadores - 180 Dias
    model: Aereo
    explore: active_importers_match_radar
    type: single_value
    fields: [active_importers_match_radar.count_distinct_cnpj]
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
    listen: {}
    row: 2
    col: 16
    width: 7
    height: 3
  - title: Importadores - DIs
    name: Importadores - DIs
    model: Aereo
    explore: active_importers_match_radar
    type: looker_grid
    fields: [active_importers_match_radar.nome_importador, active_importers_match_radar.cnpj_importador,
      active_importers_match_radar.cnpj_radar, active_importers_match_radar.match,
      active_importers_match_radar.sum_qtd_importacoes]
    sorts: [active_importers_match_radar.sum_qtd_importacoes desc]
    limit: 500
    total: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_cell_visualizations:
      active_importers_match_radar.qtd_importacoes:
        is_active: true
      active_importers_match_radar.sum_qtd_importacoes:
        is_active: true
    series_text_format:
      active_importers_match_radar.match: {}
    conditional_formatting: [{type: equal to, value: 1, background_color: "#3EB0D5",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: []}]
    series_types: {}
    defaults_version: 1
    listen: {}
    row: 27
    col: 0
    width: 23
    height: 7
  - title: Importadores Match
    name: Importadores Match
    model: Aereo
    explore: active_importers_match_radar
    type: single_value
    fields: [active_importers_match_radar.count_distinct_cnpj]
    filters:
      active_importers_match_radar.match: 'Yes'
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
    defaults_version: 1
    listen: {}
    row: 2
    col: 0
    width: 7
    height: 3
  - title: Certificados
    name: Certificados
    model: internal_only
    explore: consignee_radar
    type: looker_grid
    fields: [consignee.count_distinct_cnpj, customer.id, customer.name, certificate.owner_name,
      certificate.id, certificate.valid_until_date, count_of_owner_cpf]
    filters:
      certificate.valid_until_date: after today
      consignee.cpf: 'No'
      consignee.customer_id: ''
      consignee.deleted_date: 'NULL'
      certificate_consignee_radar.deleted_date: 'NULL'
      certificate.deleted_date: 'NULL'
    sorts: [consignee.count_distinct_cnpj desc]
    limit: 5000
    total: true
    dynamic_fields: [{measure: count_of_owner_cpf, based_on: certificate.owner_cpf,
        expression: '', label: Count of Owner Cpf, type: count_distinct, _kind_hint: measure,
        _type_hint: number}]
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
      customer.id: ID Cliente
      customer.name: Cliente Nome
      certificate.owner_name: Dono Certificado
      certificate.id: ID Certificado
      certificate.valid_until_date: Validade
      consignee.count_distinct_cnpj: Consignatários Distintos
    series_column_widths:
      customer.id: 124
      consignee.name: 405
    series_cell_visualizations:
      consignee.count_distinct_cnpj:
        is_active: true
    defaults_version: 1
    note_state: collapsed
    note_display: hover
    note_text: |-
      Mais de um cliente pode ter o mesmo consignatário.  A contagem dos CNPJs distintos é por cliente, porém o total no final da tabela são CNPJs distintos no todo.

      Apenas Certiticados e consignees não deletados.
    listen: {}
    row: 21
    col: 0
    width: 23
    height: 6
  - name: Nota Importadores
    type: text
    title_text: Nota Importadores
    subtitle_text: ''
    body_text: "Nessa Seção do Dashboard verificamos nos últimos 180 dias a quantidade\
      \ de importadores que temos nos certificados e estão no radar, com a quantidade\
      \ de importadores da di_pu. Quando um importador que está no radar é encontrado\
      \ na di_pu no período de 180 dias é dado um \"Match\". \n\nApenas Consignees\
      \ e certificados não deletados."
    row: 13
    col: 12
    width: 12
    height: 4
  - title: Despachantes - CIF
    name: Despachantes - CIF
    model: Aereo
    explore: active_importers_match_radar
    type: looker_grid
    fields: [active_importers_match_radar.cpf, active_importers_match_radar.responsavel,
      active_importers_match_radar.match_cpf, active_importers_match_radar.sum_cif]
    sorts: [cif desc]
    limit: 5000
    dynamic_fields: [{_kind_hint: measure, table_calculation: total_cif, _type_hint: number,
        category: table_calculation, expression: 'sum(${active_importers_match_radar.sum_cif})',
        label: 'Total CIF ', value_format: !!null '', value_format_name: usd}, {_kind_hint: measure,
        table_calculation: cif, _type_hint: number, category: table_calculation, expression: "${active_importers_match_radar.sum_cif}/${total_cif}",
        label: "% CIF", value_format: !!null '', value_format_name: percent_4}]
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_labels:
      active_importers_match_radar.sum_cif: CIF
      cif: "% CIF do Total"
    series_cell_visualizations:
      active_importers_match_radar.qtd_importacoes:
        is_active: true
    series_text_format:
      active_importers_match_radar.match: {}
    conditional_formatting: [{type: equal to, value: 1, background_color: "#3EB0D5",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: []}]
    series_value_format:
      active_importers_match_radar.sum_cif:
        name: usd_0
        decimals: '0'
        format_string: "$#,##0"
        label: U.S. Dollars (0)
        label_prefix: U.S. Dollars
    series_types: {}
    defaults_version: 1
    hidden_fields: [total_cif]
    listen: {}
    row: 54
    col: 0
    width: 23
    height: 7
  - title: Despachantes Match
    name: Despachantes Match
    model: Aereo
    explore: active_importers_match_radar
    type: single_value
    fields: [active_importers_match_radar.count_distinct_cpf, active_importers_match_radar.match_cpf]
    filters:
      active_importers_match_radar.match_cpf: 'Yes'
    sorts: [active_importers_match_radar.count_distinct_cpf desc]
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
    defaults_version: 1
    listen: {}
    row: 37
    col: 0
    width: 7
    height: 3
  - name: Importadores
    type: text
    title_text: Importadores
    subtitle_text: ''
    body_text: ''
    row: 0
    col: 0
    width: 23
    height: 2
  - name: Despachantes
    type: text
    title_text: Despachantes
    subtitle_text: ''
    body_text: ''
    row: 34
    col: 0
    width: 23
    height: 3
  - title: Match - Importadores 180 dias - CIF
    name: Match - Importadores 180 dias - CIF
    model: Aereo
    explore: active_importers_match_radar
    type: looker_column
    fields: [active_importers_match_radar.match, active_importers_match_radar.sum_cif]
    pivots: [active_importers_match_radar.match]
    fill_fields: [active_importers_match_radar.match]
    sorts: [active_importers_match_radar.match desc]
    limit: 500
    dynamic_fields: [{_kind_hint: measure, table_calculation: cif, _type_hint: number,
        category: table_calculation, expression: "${active_importers_match_radar.sum_cif}",
        label: cif, value_format: !!null '', value_format_name: usd_0}]
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
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: Yes - active_importers_match_radar.count,
            id: Yes - active_importers_match_radar.count, name: 'Yes'}, {axisId: No
              - active_importers_match_radar.count, id: No - active_importers_match_radar.count,
            name: 'No'}], showLabels: false, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    label_value_format: ''
    series_types: {}
    series_colors:
      Yes - active_importers_match_radar.count: "#72D16D"
      No - active_importers_match_radar.count: "#B32F37"
      Yes - active_importers_match_radar.count_distinct_cnpj: "#72D16D"
      No - active_importers_match_radar.count_distinct_cnpj: "#B32F37"
      Yes - active_importers_match_radar.sum_cif: "#72D16D"
      No - active_importers_match_radar.sum_cif: "#B32F37"
      Yes - cif: "#72D16D"
      No - cif: "#B32F37"
    defaults_version: 1
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
    value_labels: legend
    label_type: labPer
    hidden_fields: [active_importers_match_radar.sum_cif]
    listen: {}
    row: 5
    col: 12
    width: 6
    height: 8
  - title: Match - Importadores 180 dias - DIs
    name: Match - Importadores 180 dias - DIs
    model: Aereo
    explore: active_importers_match_radar
    type: looker_column
    fields: [active_importers_match_radar.match, active_importers_match_radar.sum_qtd_importacoes]
    pivots: [active_importers_match_radar.match]
    fill_fields: [active_importers_match_radar.match]
    sorts: [active_importers_match_radar.match desc]
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
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: Yes - active_importers_match_radar.count,
            id: Yes - active_importers_match_radar.count, name: 'Yes'}, {axisId: No
              - active_importers_match_radar.count, id: No - active_importers_match_radar.count,
            name: 'No'}], showLabels: false, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    label_value_format: ''
    series_types: {}
    series_colors:
      Yes - active_importers_match_radar.count: "#72D16D"
      No - active_importers_match_radar.count: "#B32F37"
      Yes - active_importers_match_radar.count_distinct_cnpj: "#72D16D"
      No - active_importers_match_radar.count_distinct_cnpj: "#B32F37"
      Yes - active_importers_match_radar.sum_cif: "#72D16D"
      No - active_importers_match_radar.sum_cif: "#B32F37"
      Yes - active_importers_match_radar.sum_qtd_importacoes: "#72D16D"
      No - active_importers_match_radar.sum_qtd_importacoes: "#B32F37"
    defaults_version: 1
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
    value_labels: legend
    label_type: labPer
    listen: {}
    row: 13
    col: 0
    width: 6
    height: 8
  - title: Match - Importadores 180 dias - CIF %
    name: Match - Importadores 180 dias - CIF %
    model: Aereo
    explore: active_importers_match_radar
    type: looker_column
    fields: [active_importers_match_radar.match, active_importers_match_radar.sum_cif]
    pivots: [active_importers_match_radar.match]
    fill_fields: [active_importers_match_radar.match]
    sorts: [active_importers_match_radar.match desc]
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
    stacking: percent
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
    y_axes: [{label: '', orientation: left, series: [{axisId: Yes - active_importers_match_radar.count,
            id: Yes - active_importers_match_radar.count, name: 'Yes'}, {axisId: No
              - active_importers_match_radar.count, id: No - active_importers_match_radar.count,
            name: 'No'}], showLabels: false, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    label_value_format: ''
    series_types: {}
    series_colors:
      Yes - active_importers_match_radar.count: "#72D16D"
      No - active_importers_match_radar.count: "#B32F37"
      Yes - active_importers_match_radar.count_distinct_cnpj: "#72D16D"
      No - active_importers_match_radar.count_distinct_cnpj: "#B32F37"
      Yes - active_importers_match_radar.sum_cif: "#72D16D"
      No - active_importers_match_radar.sum_cif: "#B32F37"
      Yes - active_importers_match_radar.sum_qtd_importacoes: "#72D16D"
      No - active_importers_match_radar.sum_qtd_importacoes: "#B32F37"
    defaults_version: 1
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
    value_labels: legend
    label_type: labPer
    listen: {}
    row: 5
    col: 18
    width: 6
    height: 8
  - title: Match - Importadores 180 dias - DIs %
    name: Match - Importadores 180 dias - DIs %
    model: Aereo
    explore: active_importers_match_radar
    type: looker_column
    fields: [active_importers_match_radar.match, active_importers_match_radar.sum_qtd_importacoes]
    pivots: [active_importers_match_radar.match]
    fill_fields: [active_importers_match_radar.match]
    sorts: [active_importers_match_radar.match desc]
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
    stacking: percent
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
    y_axes: [{label: '', orientation: left, series: [{axisId: Yes - active_importers_match_radar.count,
            id: Yes - active_importers_match_radar.count, name: 'Yes'}, {axisId: No
              - active_importers_match_radar.count, id: No - active_importers_match_radar.count,
            name: 'No'}], showLabels: false, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    label_value_format: ''
    series_types: {}
    series_colors:
      Yes - active_importers_match_radar.count: "#72D16D"
      No - active_importers_match_radar.count: "#B32F37"
      Yes - active_importers_match_radar.count_distinct_cnpj: "#72D16D"
      No - active_importers_match_radar.count_distinct_cnpj: "#B32F37"
      Yes - active_importers_match_radar.sum_cif: "#72D16D"
      No - active_importers_match_radar.sum_cif: "#B32F37"
      Yes - active_importers_match_radar.sum_qtd_importacoes: "#72D16D"
      No - active_importers_match_radar.sum_qtd_importacoes: "#B32F37"
    defaults_version: 1
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
    value_labels: legend
    label_type: labPer
    listen: {}
    row: 13
    col: 6
    width: 6
    height: 8
  - title: Total Despachantes - 180 Dias
    name: Total Despachantes - 180 Dias
    model: Aereo
    explore: active_importers_match_radar
    type: single_value
    fields: [active_importers_match_radar.count_distinct_cpf]
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
    defaults_version: 1
    listen: {}
    row: 37
    col: 16
    width: 7
    height: 3
  - title: Despachantes no Radar
    name: Despachantes no Radar
    model: internal_only
    explore: consignee_radar
    type: single_value
    fields: [certificate.count_distinct_cpf]
    filters:
      certificate.valid_until_date: after today
      consignee.cpf: 'No'
      consignee.deleted_date: 'NULL'
      certificate.deleted_date: 'NULL'
      certificate_consignee_radar.deleted_date: 'NULL'
    sorts: [certificate.count_distinct_cpf desc]
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
    defaults_version: 1
    listen: {}
    row: 37
    col: 8
    width: 7
    height: 3
  - title: Despachantes - DIs
    name: Despachantes - DIs
    model: Aereo
    explore: active_importers_match_radar
    type: looker_grid
    fields: [active_importers_match_radar.cpf, active_importers_match_radar.responsavel,
      active_importers_match_radar.match_cpf, active_importers_match_radar.sum_qtd_importacoes]
    sorts: [dis desc]
    limit: 5000
    dynamic_fields: [{_kind_hint: measure, table_calculation: total_dis, _type_hint: number,
        category: table_calculation, expression: 'sum(${active_importers_match_radar.sum_qtd_importacoes})',
        label: Total DIs, value_format: !!null '', value_format_name: id}, {_kind_hint: measure,
        table_calculation: dis, _type_hint: number, category: table_calculation, expression: "${active_importers_match_radar.sum_qtd_importacoes}/${total_dis}",
        label: "% DIs", value_format: !!null '', value_format_name: percent_4}]
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_labels:
      active_importers_match_radar.sum_qtd_importacoes: DIs
      dis: "% DIs do Total"
    series_cell_visualizations:
      active_importers_match_radar.qtd_importacoes:
        is_active: true
    series_text_format:
      active_importers_match_radar.match: {}
    conditional_formatting: [{type: equal to, value: 1, background_color: "#3EB0D5",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: []}]
    series_types: {}
    defaults_version: 1
    hidden_fields: [total_dis]
    listen: {}
    row: 61
    col: 0
    width: 23
    height: 7
  - title: Despachantes - Importadores
    name: Despachantes - Importadores
    model: Aereo
    explore: active_importers_match_radar
    type: looker_grid
    fields: [active_importers_match_radar.cpf, active_importers_match_radar.responsavel,
      active_importers_match_radar.match_cpf, active_importers_match_radar.count_distinct_cnpj]
    sorts: [active_importers_match_radar.count_distinct_cnpj desc]
    limit: 5000
    total: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_labels:
      active_importers_match_radar.count_distinct_cnpj: Importadores (CNPJs)
    series_cell_visualizations:
      active_importers_match_radar.qtd_importacoes:
        is_active: true
    series_text_format:
      active_importers_match_radar.match: {}
    conditional_formatting: [{type: equal to, value: 1, background_color: "#3EB0D5",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: []}]
    series_types: {}
    defaults_version: 1
    note_state: collapsed
    note_display: hover
    note_text: 'Importadores distintos por Despachante, ou seja o mesmo importador
      pode estar em mais de um despachantes. A quantidade de importadores distintos
      no geral encontra-se no final da tabela na linha Totals. '
    listen: {}
    row: 68
    col: 0
    width: 23
    height: 8
  - title: Match - Despachantes 180 dias e no Radar
    name: Match - Despachantes 180 dias e no Radar
    model: Aereo
    explore: active_importers_match_radar
    type: looker_column
    fields: [active_importers_match_radar.count_distinct_cpf, active_importers_match_radar.match_cpf]
    pivots: [active_importers_match_radar.match_cpf]
    fill_fields: [active_importers_match_radar.match_cpf]
    sorts: [active_importers_match_radar.match_cpf desc]
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
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: Yes - active_importers_match_radar.count,
            id: Yes - active_importers_match_radar.count, name: 'Yes'}, {axisId: No
              - active_importers_match_radar.count, id: No - active_importers_match_radar.count,
            name: 'No'}], showLabels: false, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors:
      Yes - active_importers_match_radar.count: "#72D16D"
      No - active_importers_match_radar.count: "#B32F37"
      Yes - active_importers_match_radar.count_distinct_cnpj: "#72D16D"
      No - active_importers_match_radar.count_distinct_cnpj: "#B32F37"
      No - active_importers_match_radar.count_distinct_cpf: "#B32F37"
      Yes - active_importers_match_radar.count_distinct_cpf: "#72D16D"
    defaults_version: 1
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
    listen: {}
    row: 40
    col: 0
    width: 6
    height: 7
  - title: Match - Despachantes 180 dias e no Radar %
    name: Match - Despachantes 180 dias e no Radar %
    model: Aereo
    explore: active_importers_match_radar
    type: looker_column
    fields: [active_importers_match_radar.count_distinct_cpf, active_importers_match_radar.match_cpf]
    pivots: [active_importers_match_radar.match_cpf]
    fill_fields: [active_importers_match_radar.match_cpf]
    sorts: [active_importers_match_radar.match_cpf desc]
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
    stacking: percent
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: Yes - active_importers_match_radar.count,
            id: Yes - active_importers_match_radar.count, name: 'Yes'}, {axisId: No
              - active_importers_match_radar.count, id: No - active_importers_match_radar.count,
            name: 'No'}], showLabels: false, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors:
      Yes - active_importers_match_radar.count: "#72D16D"
      No - active_importers_match_radar.count: "#B32F37"
      Yes - active_importers_match_radar.count_distinct_cnpj: "#72D16D"
      No - active_importers_match_radar.count_distinct_cnpj: "#B32F37"
      No - active_importers_match_radar.count_distinct_cpf: "#B32F37"
      Yes - active_importers_match_radar.count_distinct_cpf: "#72D16D"
    defaults_version: 1
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
    listen: {}
    row: 40
    col: 6
    width: 6
    height: 7
  - title: Match - Despachantes 180 dias - CIF %
    name: Match - Despachantes 180 dias - CIF %
    model: Aereo
    explore: active_importers_match_radar
    type: looker_column
    fields: [active_importers_match_radar.match_cpf, active_importers_match_radar.sum_cif]
    pivots: [active_importers_match_radar.match_cpf]
    fill_fields: [active_importers_match_radar.match_cpf]
    sorts: [active_importers_match_radar.match_cpf desc]
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
    stacking: percent
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: Yes - active_importers_match_radar.count,
            id: Yes - active_importers_match_radar.count, name: 'Yes'}, {axisId: No
              - active_importers_match_radar.count, id: No - active_importers_match_radar.count,
            name: 'No'}], showLabels: false, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors:
      Yes - active_importers_match_radar.count: "#72D16D"
      No - active_importers_match_radar.count: "#B32F37"
      Yes - active_importers_match_radar.count_distinct_cnpj: "#72D16D"
      No - active_importers_match_radar.count_distinct_cnpj: "#B32F37"
      No - active_importers_match_radar.count_distinct_cpf: "#B32F37"
      Yes - active_importers_match_radar.count_distinct_cpf: "#72D16D"
      Yes - active_importers_match_radar.sum_cif: "#72D16D"
      No - active_importers_match_radar.sum_cif: "#B32F37"
    defaults_version: 1
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
    listen: {}
    row: 40
    col: 18
    width: 6
    height: 7
  - title: Match - Despachantes 180 dias - CIF
    name: Match - Despachantes 180 dias - CIF
    model: Aereo
    explore: active_importers_match_radar
    type: looker_column
    fields: [active_importers_match_radar.match_cpf, active_importers_match_radar.sum_cif]
    pivots: [active_importers_match_radar.match_cpf]
    fill_fields: [active_importers_match_radar.match_cpf]
    sorts: [active_importers_match_radar.match_cpf desc]
    limit: 500
    dynamic_fields: [{_kind_hint: measure, table_calculation: cif, _type_hint: number,
        category: table_calculation, expression: "${active_importers_match_radar.sum_cif}",
        label: CIF, value_format: !!null '', value_format_name: usd_0}]
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
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: Yes - active_importers_match_radar.count,
            id: Yes - active_importers_match_radar.count, name: 'Yes'}, {axisId: No
              - active_importers_match_radar.count, id: No - active_importers_match_radar.count,
            name: 'No'}], showLabels: false, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors:
      Yes - active_importers_match_radar.count: "#72D16D"
      No - active_importers_match_radar.count: "#B32F37"
      Yes - active_importers_match_radar.count_distinct_cnpj: "#72D16D"
      No - active_importers_match_radar.count_distinct_cnpj: "#B32F37"
      No - active_importers_match_radar.count_distinct_cpf: "#B32F37"
      Yes - active_importers_match_radar.count_distinct_cpf: "#72D16D"
      Yes - active_importers_match_radar.sum_cif: "#72D16D"
      No - active_importers_match_radar.sum_cif: "#B32F37"
      Yes - cif: "#72D16D"
      No - cif: "#B32F37"
    defaults_version: 1
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
    hidden_fields: [active_importers_match_radar.sum_cif]
    listen: {}
    row: 40
    col: 12
    width: 6
    height: 7
  - title: Match - Despachantes 180 dias - DIs
    name: Match - Despachantes 180 dias - DIs
    model: Aereo
    explore: active_importers_match_radar
    type: looker_column
    fields: [active_importers_match_radar.match_cpf, active_importers_match_radar.sum_qtd_importacoes]
    pivots: [active_importers_match_radar.match_cpf]
    fill_fields: [active_importers_match_radar.match_cpf]
    sorts: [active_importers_match_radar.match_cpf desc]
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
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: Yes - active_importers_match_radar.count,
            id: Yes - active_importers_match_radar.count, name: 'Yes'}, {axisId: No
              - active_importers_match_radar.count, id: No - active_importers_match_radar.count,
            name: 'No'}], showLabels: false, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors:
      Yes - active_importers_match_radar.count: "#72D16D"
      No - active_importers_match_radar.count: "#B32F37"
      Yes - active_importers_match_radar.count_distinct_cnpj: "#72D16D"
      No - active_importers_match_radar.count_distinct_cnpj: "#B32F37"
      No - active_importers_match_radar.count_distinct_cpf: "#B32F37"
      Yes - active_importers_match_radar.count_distinct_cpf: "#72D16D"
      Yes - active_importers_match_radar.sum_cif: "#72D16D"
      No - active_importers_match_radar.sum_cif: "#B32F37"
      Yes - cif: "#72D16D"
      No - cif: "#B32F37"
      No - active_importers_match_radar.sum_qtd_importacoes: "#B32F37"
      Yes - active_importers_match_radar.sum_qtd_importacoes: "#72D16D"
    defaults_version: 1
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
    hidden_fields: []
    listen: {}
    row: 47
    col: 0
    width: 6
    height: 7
  - title: Match - Despachantes 180 dias - DIs %
    name: Match - Despachantes 180 dias - DIs %
    model: Aereo
    explore: active_importers_match_radar
    type: looker_column
    fields: [active_importers_match_radar.match_cpf, active_importers_match_radar.sum_qtd_importacoes]
    pivots: [active_importers_match_radar.match_cpf]
    fill_fields: [active_importers_match_radar.match_cpf]
    sorts: [active_importers_match_radar.match_cpf desc]
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
    stacking: percent
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: Yes - active_importers_match_radar.count,
            id: Yes - active_importers_match_radar.count, name: 'Yes'}, {axisId: No
              - active_importers_match_radar.count, id: No - active_importers_match_radar.count,
            name: 'No'}], showLabels: false, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors:
      Yes - active_importers_match_radar.count: "#72D16D"
      No - active_importers_match_radar.count: "#B32F37"
      Yes - active_importers_match_radar.count_distinct_cnpj: "#72D16D"
      No - active_importers_match_radar.count_distinct_cnpj: "#B32F37"
      No - active_importers_match_radar.count_distinct_cpf: "#B32F37"
      Yes - active_importers_match_radar.count_distinct_cpf: "#72D16D"
      Yes - active_importers_match_radar.sum_cif: "#72D16D"
      No - active_importers_match_radar.sum_cif: "#B32F37"
      Yes - cif: "#72D16D"
      No - cif: "#B32F37"
      No - active_importers_match_radar.sum_qtd_importacoes: "#B32F37"
      Yes - active_importers_match_radar.sum_qtd_importacoes: "#72D16D"
    defaults_version: 1
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
    hidden_fields: []
    listen: {}
    row: 47
    col: 6
    width: 6
    height: 7
  - name: Nota Despachantes
    type: text
    title_text: Nota Despachantes
    subtitle_text: ''
    body_text: "Nessa Seção do Dashboard verificamos nos últimos 180 dias a quantidade\
      \ de Despachantes que temos nos certificados e estão no radar, com a quantidade\
      \ de despachantes da di_pu. Quando um despachante está no radar e é encontrado\
      \ na di_pu no período de 180 dias é dado um \"Match\". \n\nApenas Despachantes\
      \ de Consignees e certificados não deletados."
    row: 47
    col: 12
    width: 12
    height: 5
