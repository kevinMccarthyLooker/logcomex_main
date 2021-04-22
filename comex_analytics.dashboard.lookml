- dashboard: comex_analytics
  title: Comex Analytics
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - title: DI registrada
    name: DI registrada
    model: Comex_Analytics
    explore: comex_analytics_di
    type: single_value
    fields: [comex_analytics_di.di_total]
    limit: 500
    dynamic_fields: [{measure: count_of_di_number, based_on: comex_analytics_di.di_number,
        expression: '', label: Count of Di Number, type: count_distinct, _kind_hint: measure,
        _type_hint: number}]
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
      URF Despacho: comex_analytics_di.urf_despacho
      URF Entrada Carga: comex_analytics_di.urf_entrada_carga
      CPF Representante: comex_analytics_di.cpf_representante
      Representante: comex_analytics_di.nome_representante
      Mês de Chegada: comex_analytics_di.data_chegada_month
      Importador: comex_analytics_di.importador_nome
    row: 0
    col: 0
    width: 4
    height: 2
  - title: Peso Líquido
    name: Peso Líquido
    model: Comex_Analytics
    explore: comex_analytics_di
    type: single_value
    fields: [comex_analytics_di.peso_liquido_total]
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
    value_format: "#,##0"
    series_types: {}
    defaults_version: 1
    listen:
      URF Despacho: comex_analytics_di.urf_despacho
      URF Entrada Carga: comex_analytics_di.urf_entrada_carga
      CPF Representante: comex_analytics_di.cpf_representante
      Representante: comex_analytics_di.nome_representante
      Mês de Chegada: comex_analytics_di.data_chegada_month
      Importador: comex_analytics_di.importador_nome
    row: 0
    col: 4
    width: 5
    height: 2
  - title: VMLE R$
    name: VMLE R$
    model: Comex_Analytics
    explore: comex_analytics_di
    type: single_value
    fields: [comex_analytics_di.valor_vmle_reais]
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
    value_format: "#,##0"
    series_types: {}
    defaults_version: 1
    listen:
      URF Despacho: comex_analytics_di.urf_despacho
      URF Entrada Carga: comex_analytics_di.urf_entrada_carga
      CPF Representante: comex_analytics_di.cpf_representante
      Representante: comex_analytics_di.nome_representante
      Mês de Chegada: comex_analytics_di.data_chegada_month
      Importador: comex_analytics_di.importador_nome
    row: 0
    col: 9
    width: 5
    height: 2
  - title: VMLD R$
    name: VMLD R$
    model: Comex_Analytics
    explore: comex_analytics_di
    type: single_value
    fields: [comex_analytics_di.valor_vmld_reais]
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
    value_format: "#,##0"
    series_types: {}
    defaults_version: 1
    listen:
      URF Despacho: comex_analytics_di.urf_despacho
      URF Entrada Carga: comex_analytics_di.urf_entrada_carga
      CPF Representante: comex_analytics_di.cpf_representante
      Representante: comex_analytics_di.nome_representante
      Mês de Chegada: comex_analytics_di.data_chegada_month
      Importador: comex_analytics_di.importador_nome
    row: 0
    col: 14
    width: 5
    height: 2
  - title: Valor de Multa
    name: Valor de Multa
    model: Comex_Analytics
    explore: comex_analytics_di
    type: single_value
    fields: [comex_analytics_di.valor_multa_total]
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
    value_format: "#,##0"
    series_types: {}
    defaults_version: 1
    listen:
      URF Despacho: comex_analytics_di.urf_despacho
      URF Entrada Carga: comex_analytics_di.urf_entrada_carga
      CPF Representante: comex_analytics_di.cpf_representante
      Representante: comex_analytics_di.nome_representante
      Mês de Chegada: comex_analytics_di.data_chegada_month
      Importador: comex_analytics_di.importador_nome
    row: 0
    col: 19
    width: 5
    height: 2
  - title: Timeline
    name: Timeline
    model: Comex_Analytics
    explore: comex_analytics_di
    type: looker_column
    fields: [comex_analytics_di.data_chegada_month, comex_analytics_di.di_total, comex_analytics_di.valor_vmld_reais,
      comex_analytics_di.valor_vmle_reais]
    filters: {}
    sorts: [comex_analytics_di.data_chegada_month]
    limit: 500
    dynamic_fields: [{measure: count_of_di_number, based_on: comex_analytics_di.di_number,
        expression: '', label: Count of Di Number, type: count_distinct, _kind_hint: measure,
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
      palette_id: 471a8295-662d-46fc-bd2d-2d0acd370c1e
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: comex_analytics_di.valor_vmld_reais,
            id: comex_analytics_di.valor_vmld_reais, name: VMLD R$}, {axisId: comex_analytics_di.valor_vmle_reais,
            id: comex_analytics_di.valor_vmle_reais, name: VMLE R$}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: comex_analytics_di.di_total,
            id: comex_analytics_di.di_total, name: DI}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types:
      comex_analytics_di.valor_vmld_reais: line
      comex_analytics_di.valor_vmle_reais: line
    series_colors:
      comex_analytics_di.di_total: "#5a189a"
      comex_analytics_di.valor_vmld_reais: "#ff6d00"
      comex_analytics_di.valor_vmle_reais: "#ff9e00"
    series_labels:
      comex_analytics_di.di_total: DI
      comex_analytics_di.valor_vmld_reais: VMLD R$
      comex_analytics_di.valor_vmle_reais: VMLE R$
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
    show_null_points: true
    interpolation: linear
    listen:
      URF Despacho: comex_analytics_di.urf_despacho
      URF Entrada Carga: comex_analytics_di.urf_entrada_carga
      CPF Representante: comex_analytics_di.cpf_representante
      Representante: comex_analytics_di.nome_representante
      Mês de Chegada: comex_analytics_di.data_chegada_month
      Importador: comex_analytics_di.importador_nome
    row: 2
    col: 0
    width: 24
    height: 8
  - title: Último Registro
    name: Último Registro
    model: Comex_Analytics
    explore: comex_analytics_di
    type: looker_grid
    fields: [comex_analytics_di.cpf_representante, comex_analytics_di.nome_representante,
      comex_analytics_di.importador_nome, comex_analytics_di.data_hora_registro]
    sorts: [comex_analytics_di.data_hora_registro desc]
    limit: 500
    dynamic_fields: [{measure: count_of_di_number, based_on: comex_analytics_di.di_number,
        expression: '', label: Count of Di Number, type: count_distinct, _kind_hint: measure,
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
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: 471a8295-662d-46fc-bd2d-2d0acd370c1e
      options:
        steps: 5
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_labels:
      comex_analytics_di.di_total: DI
      comex_analytics_di.valor_vmld_reais: VMLD R$
      comex_analytics_di.valor_vmle_reais: VMLE R$
      comex_analytics_di.cpf_representante: CPF
      comex_analytics_di.nome_representante: Representante
      comex_analytics_di.importador_nome: Importador
      comex_analytics_di.data_hora_registro: Data
    series_column_widths:
      comex_analytics_di.cpf_representante: 94
      comex_analytics_di.data_hora_registro: 88
    series_cell_visualizations:
      comex_analytics_di.data_hora_registro:
        is_active: true
    series_text_format:
      comex_analytics_di.data_hora_registro:
        align: left
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
    y_axes: [{label: '', orientation: left, series: [{axisId: comex_analytics_di.valor_vmld_reais,
            id: comex_analytics_di.valor_vmld_reais, name: VMLD R$}, {axisId: comex_analytics_di.valor_vmle_reais,
            id: comex_analytics_di.valor_vmle_reais, name: VMLE R$}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: comex_analytics_di.di_total,
            id: comex_analytics_di.di_total, name: DI}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    defaults_version: 1
    show_null_points: true
    interpolation: linear
    listen:
      URF Despacho: comex_analytics_di.urf_despacho
      URF Entrada Carga: comex_analytics_di.urf_entrada_carga
      CPF Representante: comex_analytics_di.cpf_representante
      Representante: comex_analytics_di.nome_representante
      Mês de Chegada: comex_analytics_di.data_chegada_month
      Importador: comex_analytics_di.importador_nome
    row: 10
    col: 0
    width: 13
    height: 6
  - title: DI por despachante
    name: DI por despachante
    model: Comex_Analytics
    explore: comex_analytics_di
    type: looker_grid
    fields: [comex_analytics_di.nome_representante, comex_analytics_di.importador_nome,
      comex_analytics_di.di_total]
    sorts: [comex_analytics_di.di_total desc]
    limit: 500
    dynamic_fields: [{measure: count_of_di_number, based_on: comex_analytics_di.di_number,
        expression: '', label: Count of Di Number, type: count_distinct, _kind_hint: measure,
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
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: 471a8295-662d-46fc-bd2d-2d0acd370c1e
      options:
        steps: 5
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_labels:
      comex_analytics_di.di_total: DI
      comex_analytics_di.valor_vmld_reais: VMLD R$
      comex_analytics_di.valor_vmle_reais: VMLE R$
      comex_analytics_di.cpf_representante: CPF
      comex_analytics_di.nome_representante: Despachante
      comex_analytics_di.importador_nome: Importador
      comex_analytics_di.data_hora_registro: Data
    series_column_widths:
      comex_analytics_di.cpf_representante: 107
      comex_analytics_di.data_hora_registro: 87
      comex_analytics_di.di_total: 78
    series_cell_visualizations:
      comex_analytics_di.data_hora_registro:
        is_active: true
    series_text_format:
      comex_analytics_di.data_hora_registro:
        align: left
      comex_analytics_di.di_total:
        align: left
      comex_analytics_di.importador_nome:
        align: left
      comex_analytics_di.nome_representante:
        align: left
      comex_analytics_di.cpf_representante:
        align: left
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
    y_axes: [{label: '', orientation: left, series: [{axisId: comex_analytics_di.valor_vmld_reais,
            id: comex_analytics_di.valor_vmld_reais, name: VMLD R$}, {axisId: comex_analytics_di.valor_vmle_reais,
            id: comex_analytics_di.valor_vmle_reais, name: VMLE R$}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: comex_analytics_di.di_total,
            id: comex_analytics_di.di_total, name: DI}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    defaults_version: 1
    show_null_points: true
    interpolation: linear
    listen:
      URF Despacho: comex_analytics_di.urf_despacho
      URF Entrada Carga: comex_analytics_di.urf_entrada_carga
      CPF Representante: comex_analytics_di.cpf_representante
      Representante: comex_analytics_di.nome_representante
      Mês de Chegada: comex_analytics_di.data_chegada_month
      Importador: comex_analytics_di.importador_nome
    row: 10
    col: 13
    width: 11
    height: 6
  - title: Registros com Multa
    name: Registros com Multa
    model: Comex_Analytics
    explore: comex_analytics_di
    type: looker_grid
    fields: [comex_analytics_di.importador_nome, comex_analytics_di.di_number, comex_analytics_di.valor_multa_total,
      comex_analytics_di.importador_cnpj, comex_analytics_di.valor_vmld_reais, comex_analytics_di.valor_vmle_reais]
    filters:
      comex_analytics_di.valor_multa_total: ">0"
    sorts: [comex_analytics_di.valor_multa_total desc]
    limit: 500
    dynamic_fields: [{measure: count_of_di_number, based_on: comex_analytics_di.di_number,
        expression: '', label: Count of Di Number, type: count_distinct, _kind_hint: measure,
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
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: 471a8295-662d-46fc-bd2d-2d0acd370c1e
      options:
        steps: 5
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", comex_analytics_di.di_number, comex_analytics_di.importador_nome,
      comex_analytics_di.importador_cnpj, comex_analytics_di.val_multa, comex_analytics_di.valor_multa_total,
      comex_analytics_di.valor_vmld_reais, comex_analytics_di.valor_vmle_reais]
    show_totals: true
    show_row_totals: true
    series_labels:
      comex_analytics_di.di_total: DI
      comex_analytics_di.valor_vmld_reais: VMLD R$
      comex_analytics_di.valor_vmle_reais: VMLE R$
      comex_analytics_di.cpf_representante: CPF
      comex_analytics_di.nome_representante: Representante
      comex_analytics_di.importador_nome: Importador
      comex_analytics_di.data_hora_registro: Data
      comex_analytics_di.di_number: DI
      comex_analytics_di.importador_cnpj: CNPJ
      comex_analytics_di.val_multa: Multa
      comex_analytics_di.valor_multa_total: Multa
    series_column_widths:
      comex_analytics_di.cpf_representante: 98
      comex_analytics_di.data_hora_registro: 87
      comex_analytics_di.di_number: 86
      comex_analytics_di.importador_cnpj: 115
      comex_analytics_di.val_multa: 120
      comex_analytics_di.valor_multa_total: 106
      comex_analytics_di.valor_vmld_reais: 112
      comex_analytics_di.valor_vmle_reais: 117
    series_cell_visualizations:
      comex_analytics_di.data_hora_registro:
        is_active: true
    series_text_format:
      comex_analytics_di.data_hora_registro:
        align: left
      comex_analytics_di.di_number:
        align: left
      comex_analytics_di.val_multa:
        align: left
      comex_analytics_di.valor_multa_total:
        align: left
      comex_analytics_di.valor_vmld_reais:
        align: left
      comex_analytics_di.valor_vmle_reais:
        align: left
    series_value_format:
      comex_analytics_di.valor_multa_total: '"R"$#,##0.00'
      comex_analytics_di.valor_vmld_reais: '"R"$#,##0.00'
      comex_analytics_di.valor_vmle_reais: '"R"$#,##0.00'
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
    y_axes: [{label: '', orientation: left, series: [{axisId: comex_analytics_di.valor_vmld_reais,
            id: comex_analytics_di.valor_vmld_reais, name: VMLD R$}, {axisId: comex_analytics_di.valor_vmle_reais,
            id: comex_analytics_di.valor_vmle_reais, name: VMLE R$}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: comex_analytics_di.di_total,
            id: comex_analytics_di.di_total, name: DI}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    defaults_version: 1
    show_null_points: true
    interpolation: linear
    listen:
      URF Despacho: comex_analytics_di.urf_despacho
      URF Entrada Carga: comex_analytics_di.urf_entrada_carga
      CPF Representante: comex_analytics_di.cpf_representante
      Representante: comex_analytics_di.nome_representante
      Mês de Chegada: comex_analytics_di.data_chegada_month
      Importador: comex_analytics_di.importador_nome
    row: 16
    col: 0
    width: 15
    height: 6
  - title: Consulta de Canal
    name: Consulta de Canal
    model: Comex_Analytics
    explore: comex_analytics_di
    type: looker_pie
    fields: [comex_analytics_di.canal, comex_analytics_di.di_total]
    filters:
      comex_analytics_di.canal: "-%-%"
    limit: 500
    dynamic_fields: [{measure: count_of_di_number, based_on: comex_analytics_di.di_number,
        expression: '', label: Count of Di Number, type: count_distinct, _kind_hint: measure,
        _type_hint: number}, {measure: count_of_canal, based_on: comex_analytics_di.canal,
        expression: '', label: Count of Canal, type: count_distinct, _kind_hint: measure,
        _type_hint: number}]
    value_labels: legend
    label_type: labPer
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: 471a8295-662d-46fc-bd2d-2d0acd370c1e
      options:
        steps: 5
    series_colors:
      Verde: "#22b515"
      Cinz: "#c2c2c2"
      "-": "#2747d1"
      Amarelo: "#d3d429"
      Vermelho: "#c41611"
      Cinza: "#c2c2c2"
    series_labels:
      comex_analytics_di.di_total: DI
      comex_analytics_di.valor_vmld_reais: VMLD R$
      comex_analytics_di.valor_vmle_reais: VMLE R$
      comex_analytics_di.cpf_representante: CPF
      comex_analytics_di.nome_representante: Representante
      comex_analytics_di.importador_nome: Importador
      comex_analytics_di.data_hora_registro: Data
      comex_analytics_di.di_number: DI
      comex_analytics_di.importador_cnpj: CNPJ
      comex_analytics_di.val_multa: Multa
      comex_analytics_di.valor_multa_total: Multa
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
    column_order: ["$$$_row_numbers_$$$", comex_analytics_di.di_number, comex_analytics_di.importador_nome,
      comex_analytics_di.importador_cnpj, comex_analytics_di.val_multa, comex_analytics_di.valor_multa_total,
      comex_analytics_di.valor_vmld_reais, comex_analytics_di.valor_vmle_reais]
    show_totals: true
    show_row_totals: true
    series_column_widths:
      comex_analytics_di.cpf_representante: 98
      comex_analytics_di.data_hora_registro: 87
      comex_analytics_di.di_number: 86
      comex_analytics_di.importador_cnpj: 115
      comex_analytics_di.val_multa: 120
      comex_analytics_di.valor_multa_total: 106
      comex_analytics_di.valor_vmld_reais: 112
      comex_analytics_di.valor_vmle_reais: 117
    series_cell_visualizations:
      comex_analytics_di.data_hora_registro:
        is_active: true
    series_text_format:
      comex_analytics_di.data_hora_registro:
        align: left
      comex_analytics_di.di_number:
        align: left
      comex_analytics_di.val_multa:
        align: left
      comex_analytics_di.valor_multa_total:
        align: left
      comex_analytics_di.valor_vmld_reais:
        align: left
      comex_analytics_di.valor_vmle_reais:
        align: left
    series_value_format:
      comex_analytics_di.valor_multa_total: '"R"$#,##0.00'
      comex_analytics_di.valor_vmld_reais: '"R"$#,##0.00'
      comex_analytics_di.valor_vmle_reais: '"R"$#,##0.00'
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
    y_axes: [{label: '', orientation: left, series: [{axisId: comex_analytics_di.valor_vmld_reais,
            id: comex_analytics_di.valor_vmld_reais, name: VMLD R$}, {axisId: comex_analytics_di.valor_vmle_reais,
            id: comex_analytics_di.valor_vmle_reais, name: VMLE R$}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: comex_analytics_di.di_total,
            id: comex_analytics_di.di_total, name: DI}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    defaults_version: 1
    show_null_points: true
    interpolation: linear
    listen:
      URF Despacho: comex_analytics_di.urf_despacho
      URF Entrada Carga: comex_analytics_di.urf_entrada_carga
      CPF Representante: comex_analytics_di.cpf_representante
      Representante: comex_analytics_di.nome_representante
      Mês de Chegada: comex_analytics_di.data_chegada_month
      Importador: comex_analytics_di.importador_nome
    row: 16
    col: 15
    width: 9
    height: 6
  filters:
  - name: Mês de Chegada
    title: Mês de Chegada
    type: field_filter
    default_value: 12 month
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: Comex_Analytics
    explore: comex_analytics_di
    listens_to_filters: []
    field: comex_analytics_di.data_chegada_month
  - name: Importador
    title: Importador
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: Comex_Analytics
    explore: comex_analytics_di
    listens_to_filters: []
    field: comex_analytics_di.importador_nome
  - name: URF Despacho
    title: URF Despacho
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: Comex_Analytics
    explore: comex_analytics_di
    listens_to_filters: []
    field: comex_analytics_di.urf_despacho
  - name: URF Entrada Carga
    title: URF Entrada Carga
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: Comex_Analytics
    explore: comex_analytics_di
    listens_to_filters: []
    field: comex_analytics_di.urf_entrada_carga
  - name: CPF Representante
    title: CPF Representante
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: Comex_Analytics
    explore: comex_analytics_di
    listens_to_filters: []
    field: comex_analytics_di.cpf_representante
  - name: Representante
    title: Representante
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: Comex_Analytics
    explore: comex_analytics_di
    listens_to_filters: []
    field: comex_analytics_di.nome_representante
