- dashboard: hubspot_tickers
  title: Tickets - Hubspot - EM ATUALIZAÇÃO - VERSAO2
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - title: Tickets
    name: Tickets
    model: internal_only
    explore: tickets_hubspot_with_fake_customers
    type: looker_grid
    fields: [customer.name, customer.id, customer.executive_name, hubspot_tickets.ticket_owner,
      hubspot_tickets.ticket_id, hubspot_tickets.treated_priority, hubspot_tickets.squad,
      hubspot_tickets.stage, hubspot_tickets.nps_score, hubspot_tickets.satisfacao_normalizado,
      hubspot_tickets.subject, hubspot_tickets.category, hubspot_tickets.create_date_ticket_date,
      hubspot_tickets.close_date_ticket_date, hubspot_tickets.sla_primeira_resposta,
      hubspot_tickets.time_to_first_agent_reply, hubspot_tickets.sla_p_resposta_no_prazo,
      hubspot_tickets.sla_resposta, hubspot_tickets.sla_resposta_no_prazo, hubspot_tickets.tempo_util,
      hubspot_tickets.awaiting_return_time, hubspot_tickets.tempo_real]
    filters:
      hubspot_tickets.ticket_id: NOT NULL
    sorts: [hubspot_tickets.create_date_ticket_date desc]
    limit: 5000
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
      hubspot_tickets.nps_score: Satisfação
    series_column_widths:
      customer.name: 323
      hubspot_tickets.sla_primeira_resposta: 94
      hubspot_tickets.sla_resposta: 99
      hubspot_tickets.stage: 80
      hubspot_tickets.nps_score: 104
      hubspot_tickets.satisfacao_normalizado: 149
      hubspot_tickets.subject: 125
      hubspot_cs_deal.stage: 179
      hubspot_tickets.ticket_id: 239
      hubspot_tickets.ticket_owner: 171
      customer.executive_name: 115
    defaults_version: 1
    hidden_fields: [customer.id]
    listen:
      Service: hubspot_tickets.service
      Customer Name: customer.name
      Squad: hubspot_tickets.squad
      Tickets Situation: hubspot_tickets.situation
      Ticket Owner: hubspot_tickets.ticket_owner
      Guardião: customer.executive_name
      Close Date Ticket: hubspot_tickets.close_date_ticket_month
      Deleted Date: hubspot_tickets.deleted_date
    row: 31
    col: 0
    width: 24
    height: 12
  - title: Squad - Tickets
    name: Squad - Tickets
    model: internal_only
    explore: tickets_hubspot_with_fake_customers
    type: looker_bar
    fields: [hubspot_tickets.squad, hubspot_tickets.count]
    filters:
      hubspot_tickets.ticket_id: NOT NULL
    sorts: [hubspot_tickets.count desc]
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
    y_axes: [{label: '', orientation: bottom, series: [{axisId: hubspot_tickets.count,
            id: hubspot_tickets.count, name: Hubspot Tickets}], showLabels: false,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types: {}
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
    defaults_version: 1
    listen:
      Service: hubspot_tickets.service
      Customer Name: customer.name
      Squad: hubspot_tickets.squad
      Tickets Situation: hubspot_tickets.situation
      Ticket Owner: hubspot_tickets.ticket_owner
      Guardião: customer.executive_name
      Close Date Ticket: hubspot_tickets.close_date_ticket_month
      Deleted Date: hubspot_tickets.deleted_date
    row: 17
    col: 0
    width: 12
    height: 10
  - title: Categoria - Tickets
    name: Categoria - Tickets
    model: internal_only
    explore: tickets_hubspot_with_fake_customers
    type: looker_bar
    fields: [hubspot_tickets.count, hubspot_tickets.category]
    filters:
      hubspot_tickets.ticket_id: NOT NULL
    sorts: [hubspot_tickets.count desc]
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
    y_axes: [{label: '', orientation: bottom, series: [{axisId: hubspot_tickets.count,
            id: hubspot_tickets.count, name: Hubspot Tickets}], showLabels: false,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types: {}
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
    defaults_version: 1
    listen:
      Service: hubspot_tickets.service
      Customer Name: customer.name
      Squad: hubspot_tickets.squad
      Tickets Situation: hubspot_tickets.situation
      Ticket Owner: hubspot_tickets.ticket_owner
      Guardião: customer.executive_name
      Close Date Ticket: hubspot_tickets.close_date_ticket_month
      Deleted Date: hubspot_tickets.deleted_date
    row: 17
    col: 12
    width: 12
    height: 7
  - title: Fechados - Total
    name: Fechados - Total
    model: internal_only
    explore: tickets_hubspot_with_fake_customers
    type: single_value
    fields: [hubspot_tickets.count]
    filters:
      hubspot_tickets.ticket_id: NOT NULL
      hubspot_tickets.situation: Closed
    sorts: [hubspot_tickets.count desc]
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
    y_axes: [{label: '', orientation: bottom, series: [{axisId: hubspot_tickets.count,
            id: hubspot_tickets.count, name: Hubspot Tickets}], showLabels: false,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types: {}
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
    note_state: collapsed
    note_display: hover
    note_text: Fechados até a data atual,  filtro de período não se aplica nessa visualização.
    listen:
      Service: hubspot_tickets.service
      Customer Name: customer.name
      Squad: hubspot_tickets.squad
      Ticket Owner: hubspot_tickets.ticket_owner
      Guardião: customer.executive_name
      Deleted Date: hubspot_tickets.deleted_date
    row: 4
    col: 0
    width: 4
    height: 3
  - title: Abertos - Total
    name: Abertos - Total
    model: internal_only
    explore: tickets_hubspot_with_fake_customers
    type: single_value
    fields: [hubspot_tickets.count]
    filters:
      hubspot_tickets.ticket_id: NOT NULL
      hubspot_tickets.situation: Open
    sorts: [hubspot_tickets.count desc]
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
    y_axes: [{label: '', orientation: bottom, series: [{axisId: hubspot_tickets.count,
            id: hubspot_tickets.count, name: Hubspot Tickets}], showLabels: false,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types: {}
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
    note_state: collapsed
    note_display: hover
    note_text: Abertos até a data atual, filtro de período não se aplica nessa visualização.
    listen:
      Service: hubspot_tickets.service
      Customer Name: customer.name
      Squad: hubspot_tickets.squad
      Ticket Owner: hubspot_tickets.ticket_owner
      Guardião: customer.executive_name
      Deleted Date: hubspot_tickets.deleted_date
    row: 0
    col: 0
    width: 4
    height: 4
  - title: Origem - Tickets
    name: Origem - Tickets
    model: internal_only
    explore: tickets_hubspot_with_fake_customers
    type: looker_bar
    fields: [hubspot_tickets.count, hubspot_tickets.source_type]
    filters:
      hubspot_tickets.ticket_id: NOT NULL
    sorts: [hubspot_tickets.count desc]
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
    y_axes: [{label: '', orientation: bottom, series: [{axisId: hubspot_tickets.count,
            id: hubspot_tickets.count, name: Hubspot Tickets}], showLabels: false,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types: {}
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
    defaults_version: 1
    listen:
      Service: hubspot_tickets.service
      Customer Name: customer.name
      Squad: hubspot_tickets.squad
      Tickets Situation: hubspot_tickets.situation
      Ticket Owner: hubspot_tickets.ticket_owner
      Guardião: customer.executive_name
      Close Date Ticket: hubspot_tickets.close_date_ticket_month
      Deleted Date: hubspot_tickets.deleted_date
    row: 24
    col: 12
    width: 12
    height: 7
  - title: "% SLA - Primeira Resposta"
    name: "% SLA - Primeira Resposta"
    model: internal_only
    explore: tickets_hubspot_with_fake_customers
    type: looker_bar
    fields: [hubspot_tickets.count, hubspot_tickets.sla_p_resposta_no_prazo]
    pivots: [hubspot_tickets.sla_p_resposta_no_prazo]
    filters:
      hubspot_tickets.ticket_id: NOT NULL
      hubspot_tickets.sla_p_resposta_no_prazo: "-NULL"
    sorts: [hubspot_tickets.count desc 0, hubspot_tickets.sla_p_resposta_no_prazo]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: false
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
    y_axes: [{label: '', orientation: bottom, series: [{axisId: no - hubspot_tickets.count,
            id: no - hubspot_tickets.count, name: 'no'}, {axisId: yes - hubspot_tickets.count,
            id: yes - hubspot_tickets.count, name: 'yes'}, {axisId: hubspot_tickets.sla_p_resposta_no_prazo___null
              - hubspot_tickets.count, id: hubspot_tickets.sla_p_resposta_no_prazo___null
              - hubspot_tickets.count, name: "∅"}], showLabels: false, showValues: false,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors:
      no - hubspot_tickets.count: "#B32F37"
      yes - hubspot_tickets.count: "#72D16D"
      hubspot_tickets.sla_p_resposta_no_prazo___null - hubspot_tickets.count: "#4276BE"
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
    defaults_version: 1
    note_state: collapsed
    note_display: hover
    note_text: "A primeira Resposta foi dada em até 5 minutos após a criação do Ticket.\
      \ \n/ Considera todos os tickets"
    listen:
      Service: hubspot_tickets.service
      Customer Name: customer.name
      Squad: hubspot_tickets.squad
      Ticket Owner: hubspot_tickets.ticket_owner
      Guardião: customer.executive_name
      Close Date Ticket: hubspot_tickets.close_date_ticket_month
      Deleted Date: hubspot_tickets.deleted_date
    row: 13
    col: 12
    width: 12
    height: 4
  - title: "% SLA - Resposta"
    name: "% SLA - Resposta"
    model: internal_only
    explore: tickets_hubspot_with_fake_customers
    type: looker_bar
    fields: [hubspot_tickets.count, hubspot_tickets.sla_resposta_no_prazo, hubspot_tickets.treated_priority]
    pivots: [hubspot_tickets.sla_resposta_no_prazo]
    filters:
      hubspot_tickets.ticket_id: NOT NULL
      hubspot_tickets.situation: Closed
      hubspot_tickets.sla_resposta_no_prazo: "-NULL"
    sorts: [hubspot_tickets.count desc 0, hubspot_tickets.sla_resposta_no_prazo]
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
    y_axes: [{label: '', orientation: bottom, series: [{axisId: no - hubspot_tickets.count,
            id: no - hubspot_tickets.count, name: 'no'}, {axisId: yes - hubspot_tickets.count,
            id: yes - hubspot_tickets.count, name: 'yes'}], showLabels: false, showValues: false,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors:
      no - hubspot_tickets.count: "#B32F37"
      yes - hubspot_tickets.count: "#72D16D"
      hubspot_tickets.sla_p_resposta_no_prazo___null - hubspot_tickets.count: "#4276BE"
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
    defaults_version: 1
    note_state: collapsed
    note_display: hover
    note_text: |-
      Tickets respondidos dentro do SLA
      / Considera apenas tickets fechados
      / Não considera tickets sem dados no campo tempo_real
      / O SLA considera 9h por dia útil e expediente iniciando as 08:00h e terminando as 18:00h
    listen:
      Service: hubspot_tickets.service
      Customer Name: customer.name
      Squad: hubspot_tickets.squad
      Ticket Owner: hubspot_tickets.ticket_owner
      Guardião: customer.executive_name
      Close Date Ticket: hubspot_tickets.close_date_ticket_month
      Deleted Date: hubspot_tickets.deleted_date
    row: 6
    col: 12
    width: 12
    height: 7
  - title: Atendimento N1 - Mediana
    name: Atendimento N1 - Mediana
    model: internal_only
    explore: tickets_hubspot_with_fake_customers
    type: single_value
    fields: [median_of_attendance_n1_time]
    filters:
      hubspot_tickets.ticket_id: NOT NULL
      hubspot_tickets.situation: Closed
    limit: 500
    dynamic_fields: [{measure: median_of_attendance_n1_time, based_on: hubspot_tickets.attendance_n1_time,
        type: median, label: Median of Attendance N1 Time, expression: !!null '',
        _kind_hint: measure, _type_hint: number}, {table_calculation: horas, label: horas,
        expression: "${median_of_attendance_n1_time}/3600", value_format: !!null '',
        value_format_name: decimal_1, _kind_hint: measure, _type_hint: number}]
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
    y_axes: [{label: '', orientation: bottom, series: [{axisId: hubspot_tickets.count,
            id: hubspot_tickets.count, name: Hubspot Tickets}], showLabels: false,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types: {}
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
    hidden_fields: [median_of_attendance_n1_time]
    note_state: collapsed
    note_display: hover
    note_text: Tempo Em Horas
    listen:
      Service: hubspot_tickets.service
      Customer Name: customer.name
      Squad: hubspot_tickets.squad
      Ticket Owner: hubspot_tickets.ticket_owner
      Guardião: customer.executive_name
      Close Date Ticket: hubspot_tickets.close_date_ticket_month
      Deleted Date: hubspot_tickets.deleted_date
    row: 7
    col: 0
    width: 4
    height: 3
  - title: Atendimento N2 - Mediana
    name: Atendimento N2 - Mediana
    model: internal_only
    explore: tickets_hubspot_with_fake_customers
    type: single_value
    fields: [median_of_attendance_n2_time]
    filters:
      hubspot_tickets.ticket_id: NOT NULL
      hubspot_tickets.situation: Closed
    limit: 500
    dynamic_fields: [{measure: median_of_attendance_n2_time, based_on: hubspot_tickets.attendance_n2_time,
        type: median, label: Median of Attendance N2 Time, expression: !!null '',
        _kind_hint: measure, _type_hint: number}, {table_calculation: horas, label: horas,
        expression: "${median_of_attendance_n2_time}/3600", value_format: !!null '',
        value_format_name: decimal_1, _kind_hint: measure, _type_hint: number}]
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
    y_axes: [{label: '', orientation: bottom, series: [{axisId: hubspot_tickets.count,
            id: hubspot_tickets.count, name: Hubspot Tickets}], showLabels: false,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types: {}
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
    hidden_fields: [median_of_attendance_n2_time]
    note_state: collapsed
    note_display: hover
    note_text: Tempo Em Horas
    listen:
      Service: hubspot_tickets.service
      Customer Name: customer.name
      Squad: hubspot_tickets.squad
      Ticket Owner: hubspot_tickets.ticket_owner
      Guardião: customer.executive_name
      Close Date Ticket: hubspot_tickets.close_date_ticket_month
      Deleted Date: hubspot_tickets.deleted_date
    row: 7
    col: 4
    width: 4
    height: 3
  - title: Atendimento N3 - Mediana
    name: Atendimento N3 - Mediana
    model: internal_only
    explore: tickets_hubspot_with_fake_customers
    type: single_value
    fields: [median_of_attendance_n3_time]
    filters:
      hubspot_tickets.ticket_id: NOT NULL
      hubspot_tickets.situation: Closed
    limit: 500
    dynamic_fields: [{measure: median_of_attendance_n3_time, based_on: hubspot_tickets.attendance_n3_time,
        type: median, label: Median of Attendance N3 Time, expression: !!null '',
        _kind_hint: measure, _type_hint: number}, {table_calculation: horas, label: horas,
        expression: "${median_of_attendance_n3_time}/3600", value_format: !!null '',
        value_format_name: decimal_1, _kind_hint: measure, _type_hint: number}]
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
    y_axes: [{label: '', orientation: bottom, series: [{axisId: hubspot_tickets.count,
            id: hubspot_tickets.count, name: Hubspot Tickets}], showLabels: false,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types: {}
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
    hidden_fields: [median_of_attendance_n3_time]
    note_state: collapsed
    note_display: hover
    note_text: Tempo Em Horas
    listen:
      Service: hubspot_tickets.service
      Customer Name: customer.name
      Squad: hubspot_tickets.squad
      Ticket Owner: hubspot_tickets.ticket_owner
      Guardião: customer.executive_name
      Close Date Ticket: hubspot_tickets.close_date_ticket_month
      Deleted Date: hubspot_tickets.deleted_date
    row: 7
    col: 8
    width: 4
    height: 3
  - name: Observação
    type: text
    title_text: Observação
    subtitle_text: ''
    body_text: Dados atualizados uma vez por dia às 01:00h
    row: 0
    col: 12
    width: 12
    height: 2
  - title: Satisfação
    name: Satisfação
    model: internal_only
    explore: tickets_hubspot_with_fake_customers
    type: looker_column
    fields: [hubspot_tickets.nps_score_type, hubspot_tickets.count]
    filters:
      hubspot_tickets.stage: Closed
    sorts: [hubspot_tickets.count desc]
    limit: 500
    dynamic_fields: [{_kind_hint: measure, table_calculation: satisfeitos, _type_hint: number,
        category: table_calculation, expression: "${hubspot_tickets.count_satisfeitos}/${hubspot_tickets.count}",
        label: "% Satisfeitos", value_format: !!null '', value_format_name: percent_2,
        is_disabled: true}, {_kind_hint: measure, table_calculation: neutros, _type_hint: number,
        category: table_calculation, expression: "${hubspot_tickets.count_neutros}/${hubspot_tickets.count}",
        label: "% Neutros", value_format: !!null '', value_format_name: percent_2,
        is_disabled: true}, {_kind_hint: measure, table_calculation: insatisfeitos,
        _type_hint: number, category: table_calculation, expression: "${hubspot_tickets.count_insatisfeitos}/${hubspot_tickets.count}",
        label: "% Insatisfeitos", value_format: !!null '', value_format_name: percent_2,
        is_disabled: true}, {_kind_hint: measure, table_calculation: sem_resposta,
        _type_hint: number, category: table_calculation, expression: "((${hubspot_tickets.count})-(${hubspot_tickets.count_satisfeitos}+${hubspot_tickets.count_neutros}+${hubspot_tickets.count_insatisfeitos}))/${hubspot_tickets.count}",
        label: "% Sem Resposta", value_format: !!null '', value_format_name: percent_2,
        is_disabled: true}, {_kind_hint: measure, table_calculation: satisfacao, _type_hint: number,
        category: table_calculation, expression: "${hubspot_tickets.count}/sum(${hubspot_tickets.count})",
        label: "% Satisfação", value_format: !!null '', value_format_name: percent_2}]
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: satisfacao, id: satisfacao,
            name: "% Satisfação"}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, type: linear}, {label: !!null '', orientation: right,
        series: [{axisId: hubspot_tickets.count, id: hubspot_tickets.count, name: Hubspot
              Tickets}], showLabels: false, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: log}]
    series_types:
      hubspot_tickets.count: line
    series_colors:
      satisfeitos: "#72D16D"
      insatisfeitos: "#B32F37"
      neutros: "#FBB555"
      satisfacao: "#4276BE"
      hubspot_tickets.count: "#B32F37"
    value_labels: legend
    label_type: labPer
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
    defaults_version: 1
    hidden_fields: [new_calculation]
    note_state: collapsed
    note_display: hover
    note_text: 'Considera todos os tickets fechados, com resposta ou não. '
    listen:
      Service: hubspot_tickets.service
      Customer Name: customer.name
      Squad: hubspot_tickets.squad
      Ticket Owner: hubspot_tickets.ticket_owner
      Guardião: customer.executive_name
      Close Date Ticket: hubspot_tickets.close_date_ticket_month
      Deleted Date: hubspot_tickets.deleted_date
    row: 0
    col: 4
    width: 8
    height: 7
  - name: Tickets Criados x Fechados
    title: Tickets Criados x Fechados
    note_state: collapsed
    note_display: hover
    note_text: 'Merged Result, Filtros não se aplicam nessa visualização. '
    merged_queries:
    - model: internal_only
      explore: tickets_hubspot_with_fake_customers
      type: looker_column
      fields: [hubspot_tickets.create_date_ticket_month, hubspot_tickets.count]
      fill_fields: [hubspot_tickets.create_date_ticket_month]
      filters:
        hubspot_tickets.create_date_ticket_month: 6 months
      sorts: [hubspot_tickets.create_date_ticket_month desc]
      limit: 500
      total: true
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
      series_types: {}
      show_null_points: true
      interpolation: linear
      defaults_version: 1
    - model: internal_only
      explore: tickets_hubspot_with_fake_customers
      type: table
      fields: [hubspot_tickets.count, hubspot_tickets.close_date_ticket_month]
      fill_fields: [hubspot_tickets.close_date_ticket_month]
      sorts: [hubspot_tickets.close_date_ticket_month desc]
      limit: 500
      column_limit: 50
      total: true
      join_fields:
      - field_name: hubspot_tickets.close_date_ticket_month
        source_field_name: hubspot_tickets.create_date_ticket_month
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
    series_types: {}
    point_style: none
    series_colors:
      q1_hubspot_tickets.count: "#72D16D"
    series_labels:
      hubspot_tickets.count: Tickets Criados
      q1_hubspot_tickets.count: Tickets Fechados
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    type: looker_column
    sorts: [hubspot_tickets.create_date_ticket_month]
    total: true
    listen:
    - Deleted Date: hubspot_tickets.deleted_date
    - Deleted Date: hubspot_tickets.deleted_date
    row: 10
    col: 0
    width: 12
    height: 7
  - title: "% SLA - Resposta (Geral)"
    name: "% SLA - Resposta (Geral)"
    model: internal_only
    explore: tickets_hubspot_with_fake_customers
    type: looker_bar
    fields: [hubspot_tickets.count, hubspot_tickets.sla_resposta_no_prazo]
    pivots: [hubspot_tickets.sla_resposta_no_prazo]
    filters:
      hubspot_tickets.ticket_id: NOT NULL
      hubspot_tickets.situation: Closed
      hubspot_tickets.sla_resposta_no_prazo: "-NULL"
    sorts: [hubspot_tickets.count desc 0, hubspot_tickets.sla_resposta_no_prazo]
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
    y_axes: [{label: '', orientation: bottom, series: [{axisId: no - hubspot_tickets.count,
            id: no - hubspot_tickets.count, name: 'no'}, {axisId: yes - hubspot_tickets.count,
            id: yes - hubspot_tickets.count, name: 'yes'}], showLabels: false, showValues: false,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors:
      no - hubspot_tickets.count: "#B32F37"
      yes - hubspot_tickets.count: "#72D16D"
      hubspot_tickets.sla_p_resposta_no_prazo___null - hubspot_tickets.count: "#4276BE"
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
    defaults_version: 1
    note_state: collapsed
    note_display: hover
    note_text: |-
      Tickets respondidos dentro do SLA
      / Considera apenas tickets fechados
      / Não considera tickets sem dados no campo tempo_real
      / O SLA considera 9h por dia útil e expediente iniciando as 08:00h e terminando as 18:00h
    listen:
      Service: hubspot_tickets.service
      Customer Name: customer.name
      Squad: hubspot_tickets.squad
      Ticket Owner: hubspot_tickets.ticket_owner
      Guardião: customer.executive_name
      Close Date Ticket: hubspot_tickets.close_date_ticket_month
      Deleted Date: hubspot_tickets.deleted_date
    row: 2
    col: 12
    width: 12
    height: 4
  filters:
  - name: Tickets Situation
    title: Tickets Situation
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_group
      display: inline
      options: []
    model: internal_only
    explore: tickets_hubspot_with_fake_customers
    listens_to_filters: []
    field: hubspot_tickets.situation
  - name: Service
    title: Service
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
      options: []
    model: internal_only
    explore: tickets_hubspot_with_fake_customers
    listens_to_filters: []
    field: hubspot_tickets.service
  - name: Customer Name
    title: Customer Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
      options: []
    model: internal_only
    explore: tickets_hubspot_with_fake_customers
    listens_to_filters: []
    field: customer.name
  - name: Squad
    title: Squad
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
      options: []
    model: internal_only
    explore: tickets_hubspot_with_fake_customers
    listens_to_filters: []
    field: hubspot_tickets.squad
  - name: Ticket Owner
    title: Ticket Owner
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
      options: []
    model: internal_only
    explore: tickets_hubspot_with_fake_customers
    listens_to_filters: []
    field: hubspot_tickets.ticket_owner
  - name: Guardião
    title: Guardião
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
      options: []
    model: internal_only
    explore: tickets_hubspot_with_fake_customers
    listens_to_filters: []
    field: customer.executive_name
  - name: Close Date Ticket
    title: Close Date Ticket
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: internal_only
    explore: tickets_hubspot_with_fake_customers
    listens_to_filters: []
    field: hubspot_tickets.close_date_ticket_month
  - name: Deleted Date
    title: Deleted Date
    type: field_filter
    default_value: 'null'
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: internal_only
    explore: tickets_hubspot_with_fake_customers
    listens_to_filters: []
    field: hubspot_tickets.deleted_date
