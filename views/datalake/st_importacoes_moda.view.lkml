view: st_importacoes_moda {
  #sql_table_name: st_importacoes.st_importacoes_fase01 ;;  dados fake
  sql_table_name: search_ncm_vestuario_st ;; #dados finais

  dimension: addition_number {
    type: string
    sql: ${TABLE}.addition_number ;;
  }

  dimension: anomes {
    type: string
    sql: ${TABLE}.anomes ;;
  }

  dimension: anomes_norm {
    type: string
    sql:
    case
    when ${TABLE}.anomes = '202001' then 'JAN 20'
    when ${TABLE}.anomes = '202002' then 'FEV 20'
    when ${TABLE}.anomes = '202003' then 'MAR 20'
    when ${TABLE}.anomes = '202004' then 'ABR 20'
    when ${TABLE}.anomes = '202005' then 'MAI 20'
    when ${TABLE}.anomes = '202006' then 'JUN 20'
    when ${TABLE}.anomes = '202007' then 'JUL 20'
    when ${TABLE}.anomes = '202008' then 'AGO 20'
    when ${TABLE}.anomes = '202009' then 'SET 20'
    when ${TABLE}.anomes = '202010' then 'OUT 20'
    when ${TABLE}.anomes = '202011' then 'NOV 20'
    when ${TABLE}.anomes = '202012' then 'DEZ 20'
    when ${TABLE}.anomes = '202101' then 'JAN 21'
    when ${TABLE}.anomes = '202102' then 'FEV 21'
    when ${TABLE}.anomes = '202103' then 'MAR 21'
    when ${TABLE}.anomes = '202104' then 'ABR 21'
    when ${TABLE}.anomes = '202105' then 'MAI 21'
    when ${TABLE}.anomes = '202106' then 'JUN 21'
    when ${TABLE}.anomes = '202107' then 'JUL 21'
    when ${TABLE}.anomes = '202108' then 'AGO 21'
    when ${TABLE}.anomes = '202109' then 'SET 21'
    when ${TABLE}.anomes = '202110' then 'OUT 21'
    when ${TABLE}.anomes = '202111' then 'NOV 21'
    when ${TABLE}.anomes = '202112' then 'DEZ 21'
    when ${TABLE}.anomes = '202201' then 'JAN 22'
    when ${TABLE}.anomes = '202202' then 'FEV 22'
    when ${TABLE}.anomes = '202203' then 'MAR 22'
    when ${TABLE}.anomes = '202204' then 'ABR 22'
    when ${TABLE}.anomes = '202205' then 'MAI 22'
    when ${TABLE}.anomes = '202206' then 'JUN 22'
    when ${TABLE}.anomes = '202207' then 'JUL 22'
    when ${TABLE}.anomes = '202208' then 'AGO 22'
    when ${TABLE}.anomes = '202209' then 'SET 22'
    when ${TABLE}.anomes = '202210' then 'OUT 22'
    when ${TABLE}.anomes = '202211' then 'NOV 22'
    when ${TABLE}.anomes = '202212' then 'DEZ 22'
    else 'ERRO'
    end;;
  }

  dimension: armazem {
    type: string
    sql: ${TABLE}.armazem ;;
  }

  dimension: awb {
    type: string
    sql: ${TABLE}.awb ;;
  }

  dimension: bandeira {
    type: string
    sql: ${TABLE}.bandeira ;;
  }

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }

  dimension: canal {
    type: string
    sql: ${TABLE}.canal ;;
  }

  dimension: cd_pais_proced {
    type: string
    sql: ${TABLE}.cd_pais_proced ;;
  }

  dimension: cdncm {
    type: string
    sql: ${TABLE}.cdncm ;;
  }

  dimension: cdncm_compl {
    type: string
    sql: ${TABLE}.cdncm_compl ;;
  }

  dimension: cdpaisaquis {
    type: string
    sql: ${TABLE}.cdpaisaquis ;;
  }

  #ISO 3166-1 alfa-2
  dimension: cdpaisorigem {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.cdpaisorigem ;;
  }

#Graus decimais (DD, na sigla em inglês): 41.40338, 2.17403
  dimension: latitude {
    type: number
    sql:  case
          when ${cdpaisorigem} = 'AF' THEN 33
          when ${cdpaisorigem} = 'AL' THEN 41
          when ${cdpaisorigem} = 'DZ' THEN 28
          when ${cdpaisorigem} = 'AS' THEN -14.3333
          when ${cdpaisorigem} = 'AD' THEN 42.5
          when ${cdpaisorigem} = 'AO' THEN -12.5
          when ${cdpaisorigem} = 'AI' THEN 18.25
          when ${cdpaisorigem} = 'AQ' THEN -90
          when ${cdpaisorigem} = 'AG' THEN 17.05
          when ${cdpaisorigem} = 'AR' THEN -34
          when ${cdpaisorigem} = 'AM' THEN 40
          when ${cdpaisorigem} = 'AW' THEN 12.5
          when ${cdpaisorigem} = 'AU' THEN -27
          when ${cdpaisorigem} = 'AT' THEN 47.3333
          when ${cdpaisorigem} = 'AZ' THEN 40.5
          when ${cdpaisorigem} = 'BS' THEN 24.25
          when ${cdpaisorigem} = 'BH' THEN 26
          when ${cdpaisorigem} = 'BD' THEN 24
          when ${cdpaisorigem} = 'BB' THEN 13.1667
          when ${cdpaisorigem} = 'BY' THEN 53
          when ${cdpaisorigem} = 'BE' THEN 50.8333
          when ${cdpaisorigem} = 'BZ' THEN 17.25
          when ${cdpaisorigem} = 'BJ' THEN 9.5
          when ${cdpaisorigem} = 'BM' THEN 32.3333
          when ${cdpaisorigem} = 'BT' THEN 27.5
          when ${cdpaisorigem} = 'BO' THEN -17
          when ${cdpaisorigem} = 'BO' THEN -17
          when ${cdpaisorigem} = 'BA' THEN 44
          when ${cdpaisorigem} = 'BW' THEN -22
          when ${cdpaisorigem} = 'BV' THEN -54.4333
          when ${cdpaisorigem} = 'BR' THEN -10
          when ${cdpaisorigem} = 'IO' THEN -6
          when ${cdpaisorigem} = 'BN' THEN 4.5
          when ${cdpaisorigem} = 'BN' THEN 4.5
          when ${cdpaisorigem} = 'BG' THEN 43
          when ${cdpaisorigem} = 'BF' THEN 13
          when ${cdpaisorigem} = 'BI' THEN -3.5
          when ${cdpaisorigem} = 'KH' THEN 13
          when ${cdpaisorigem} = 'CM' THEN 6
          when ${cdpaisorigem} = 'CA' THEN 60
          when ${cdpaisorigem} = 'CV' THEN 16
          when ${cdpaisorigem} = 'KY' THEN 19.5
          when ${cdpaisorigem} = 'CF' THEN 7
          when ${cdpaisorigem} = 'TD' THEN 15
          when ${cdpaisorigem} = 'CL' THEN -30
          when ${cdpaisorigem} = 'CN' THEN 35
          when ${cdpaisorigem} = 'CX' THEN -10.5
          when ${cdpaisorigem} = 'CC' THEN -12.5
          when ${cdpaisorigem} = 'CO' THEN 4
          when ${cdpaisorigem} = 'KM' THEN -12.1667
          when ${cdpaisorigem} = 'CG' THEN -1
          when ${cdpaisorigem} = 'CD' THEN 0
          when ${cdpaisorigem} = 'CK' THEN -21.2333
          when ${cdpaisorigem} = 'CR' THEN 10
          when ${cdpaisorigem} = 'CI' THEN 8
          when ${cdpaisorigem} = 'CI' THEN 8
          when ${cdpaisorigem} = 'HR' THEN 45.1667
          when ${cdpaisorigem} = 'CU' THEN 21.5
          when ${cdpaisorigem} = 'CY' THEN 35
          when ${cdpaisorigem} = 'CZ' THEN 49.75
          when ${cdpaisorigem} = 'DK' THEN 56
          when ${cdpaisorigem} = 'DJ' THEN 11.5
          when ${cdpaisorigem} = 'DM' THEN 15.4167
          when ${cdpaisorigem} = 'DO' THEN 19
          when ${cdpaisorigem} = 'EC' THEN -2
          when ${cdpaisorigem} = 'EG' THEN 27
          when ${cdpaisorigem} = 'SV' THEN 13.8333
          when ${cdpaisorigem} = 'GQ' THEN 2
          when ${cdpaisorigem} = 'ER' THEN 15
          when ${cdpaisorigem} = 'EE' THEN 59
          when ${cdpaisorigem} = 'ET' THEN 8
          when ${cdpaisorigem} = 'FK' THEN -51.75
          when ${cdpaisorigem} = 'FO' THEN 62
          when ${cdpaisorigem} = 'FJ' THEN -18
          when ${cdpaisorigem} = 'FI' THEN 64
          when ${cdpaisorigem} = 'FR' THEN 46
          when ${cdpaisorigem} = 'GF' THEN 4
          when ${cdpaisorigem} = 'PF' THEN -15
          when ${cdpaisorigem} = 'TF' THEN -43
          when ${cdpaisorigem} = 'GA' THEN -1
          when ${cdpaisorigem} = 'GM' THEN 13.4667
          when ${cdpaisorigem} = 'GE' THEN 42
          when ${cdpaisorigem} = 'DE' THEN 51
          when ${cdpaisorigem} = 'GH' THEN 8
          when ${cdpaisorigem} = 'GI' THEN 36.1833
          when ${cdpaisorigem} = 'GR' THEN 39
          when ${cdpaisorigem} = 'GL' THEN 72
          when ${cdpaisorigem} = 'GD' THEN 12.1167
          when ${cdpaisorigem} = 'GP' THEN 16.25
          when ${cdpaisorigem} = 'GU' THEN 13.4667
          when ${cdpaisorigem} = 'GT' THEN 15.5
          when ${cdpaisorigem} = 'GG' THEN 49.5
          when ${cdpaisorigem} = 'GN' THEN 11
          when ${cdpaisorigem} = 'GW' THEN 12
          when ${cdpaisorigem} = 'GY' THEN 5
          when ${cdpaisorigem} = 'HT' THEN 19
          when ${cdpaisorigem} = 'HM' THEN -53.1
          when ${cdpaisorigem} = 'VA' THEN 41.9
          when ${cdpaisorigem} = 'HN' THEN 15
          when ${cdpaisorigem} = 'HK' THEN 22.25
          when ${cdpaisorigem} = 'HU' THEN 47
          when ${cdpaisorigem} = 'IS' THEN 65
          when ${cdpaisorigem} = 'IN' THEN 20
          when ${cdpaisorigem} = 'ID' THEN -5
          when ${cdpaisorigem} = 'IR' THEN 32
          when ${cdpaisorigem} = 'IQ' THEN 33
          when ${cdpaisorigem} = 'IE' THEN 53
          when ${cdpaisorigem} = 'IM' THEN 54.23
          when ${cdpaisorigem} = 'IL' THEN 31.5
          when ${cdpaisorigem} = 'IT' THEN 42.8333
          when ${cdpaisorigem} = 'JM' THEN 18.25
          when ${cdpaisorigem} = 'JP' THEN 36
          when ${cdpaisorigem} = 'JE' THEN 49.21
          when ${cdpaisorigem} = 'JO' THEN 31
          when ${cdpaisorigem} = 'KZ' THEN 48
          when ${cdpaisorigem} = 'KE' THEN 1
          when ${cdpaisorigem} = 'KI' THEN 1.4167
          when ${cdpaisorigem} = 'KP' THEN 40
          when ${cdpaisorigem} = 'KR' THEN 37
          when ${cdpaisorigem} = 'KR' THEN 37
          when ${cdpaisorigem} = 'KW' THEN 29.3375
          when ${cdpaisorigem} = 'KG' THEN 41
          when ${cdpaisorigem} = 'LA' THEN 18
          when ${cdpaisorigem} = 'LV' THEN 57
          when ${cdpaisorigem} = 'LB' THEN 33.8333
          when ${cdpaisorigem} = 'LS' THEN -29.5
          when ${cdpaisorigem} = 'LR' THEN 6.5
          when ${cdpaisorigem} = 'LY' THEN 25
          when ${cdpaisorigem} = 'LY' THEN 25
          when ${cdpaisorigem} = 'LI' THEN 47.1667
          when ${cdpaisorigem} = 'LT' THEN 56
          when ${cdpaisorigem} = 'LU' THEN 49.75
          when ${cdpaisorigem} = 'MO' THEN 22.1667
          when ${cdpaisorigem} = 'MK' THEN 41.8333
          when ${cdpaisorigem} = 'MG' THEN -20
          when ${cdpaisorigem} = 'MW' THEN -13.5
          when ${cdpaisorigem} = 'MY' THEN 2.5
          when ${cdpaisorigem} = 'MV' THEN 3.25
          when ${cdpaisorigem} = 'ML' THEN 17
          when ${cdpaisorigem} = 'MT' THEN 35.8333
          when ${cdpaisorigem} = 'MH' THEN 9
          when ${cdpaisorigem} = 'MQ' THEN 14.6667
          when ${cdpaisorigem} = 'MR' THEN 20
          when ${cdpaisorigem} = 'MU' THEN -20.2833
          when ${cdpaisorigem} = 'YT' THEN -12.8333
          when ${cdpaisorigem} = 'MX' THEN 23
          when ${cdpaisorigem} = 'FM' THEN 6.9167
          when ${cdpaisorigem} = 'MD' THEN 47
          when ${cdpaisorigem} = 'MC' THEN 43.7333
          when ${cdpaisorigem} = 'MN' THEN 46
          when ${cdpaisorigem} = 'ME' THEN 42
          when ${cdpaisorigem} = 'MS' THEN 16.75
          when ${cdpaisorigem} = 'MA' THEN 32
          when ${cdpaisorigem} = 'MZ' THEN -18.25
          when ${cdpaisorigem} = 'MM' THEN 22
          when ${cdpaisorigem} = 'MM' THEN 22
          when ${cdpaisorigem} = 'NA' THEN -22
          when ${cdpaisorigem} = 'NR' THEN -0.5333
          when ${cdpaisorigem} = 'NP' THEN 28
          when ${cdpaisorigem} = 'NL' THEN 52.5
          when ${cdpaisorigem} = 'AN' THEN 12.25
          when ${cdpaisorigem} = 'NC' THEN -21.5
          when ${cdpaisorigem} = 'NZ' THEN -41
          when ${cdpaisorigem} = 'NI' THEN 13
          when ${cdpaisorigem} = 'NE' THEN 16
          when ${cdpaisorigem} = 'NG' THEN 10
          when ${cdpaisorigem} = 'NU' THEN -19.0333
          when ${cdpaisorigem} = 'NF' THEN -29.0333
          when ${cdpaisorigem} = 'MP' THEN 15.2
          when ${cdpaisorigem} = 'NO' THEN 62
          when ${cdpaisorigem} = 'OM' THEN 21
          when ${cdpaisorigem} = 'PK' THEN 30
          when ${cdpaisorigem} = 'PW' THEN 7.5
          when ${cdpaisorigem} = 'PS' THEN 32
          when ${cdpaisorigem} = 'PA' THEN 9
          when ${cdpaisorigem} = 'PG' THEN -6
          when ${cdpaisorigem} = 'PY' THEN -23
          when ${cdpaisorigem} = 'PE' THEN -10
          when ${cdpaisorigem} = 'PH' THEN 13
          when ${cdpaisorigem} = 'PN' THEN -24.7
          when ${cdpaisorigem} = 'PL' THEN 52
          when ${cdpaisorigem} = 'PT' THEN 39.5
          when ${cdpaisorigem} = 'PR' THEN 18.25
          when ${cdpaisorigem} = 'QA' THEN 25.5
          when ${cdpaisorigem} = 'RE' THEN -21.1
          when ${cdpaisorigem} = 'RO' THEN 46
          when ${cdpaisorigem} = 'RU' THEN 60
          when ${cdpaisorigem} = 'RU' THEN 60
          when ${cdpaisorigem} = 'RW' THEN -2
          when ${cdpaisorigem} = 'SH' THEN -15.9333
          when ${cdpaisorigem} = 'KN' THEN 17.3333
          when ${cdpaisorigem} = 'LC' THEN 13.8833
          when ${cdpaisorigem} = 'PM' THEN 46.8333
          when ${cdpaisorigem} = 'VC' THEN 13.25
          when ${cdpaisorigem} = 'VC' THEN 13.25
          when ${cdpaisorigem} = 'VC' THEN 13.25
          when ${cdpaisorigem} = 'WS' THEN -13.5833
          when ${cdpaisorigem} = 'SM' THEN 43.7667
          when ${cdpaisorigem} = 'ST' THEN 1
          when ${cdpaisorigem} = 'SA' THEN 25
          when ${cdpaisorigem} = 'SN' THEN 14
          when ${cdpaisorigem} = 'RS' THEN 44
          when ${cdpaisorigem} = 'SC' THEN -4.5833
          when ${cdpaisorigem} = 'SL' THEN 8.5
          when ${cdpaisorigem} = 'SG' THEN 1.3667
          when ${cdpaisorigem} = 'SK' THEN 48.6667
          when ${cdpaisorigem} = 'SI' THEN 46
          when ${cdpaisorigem} = 'SB' THEN -8
          when ${cdpaisorigem} = 'SO' THEN 10
          when ${cdpaisorigem} = 'ZA' THEN -29
          when ${cdpaisorigem} = 'GS' THEN -54.5
          when ${cdpaisorigem} = 'SS' THEN 8
          when ${cdpaisorigem} = 'ES' THEN 40
          when ${cdpaisorigem} = 'LK' THEN 7
          when ${cdpaisorigem} = 'SD' THEN 15
          when ${cdpaisorigem} = 'SR' THEN 4
          when ${cdpaisorigem} = 'SJ' THEN 78
          when ${cdpaisorigem} = 'SZ' THEN -26.5
          when ${cdpaisorigem} = 'SE' THEN 62
          when ${cdpaisorigem} = 'CH' THEN 47
          when ${cdpaisorigem} = 'SY' THEN 35
          when ${cdpaisorigem} = 'TW' THEN 23.5
          when ${cdpaisorigem} = 'TW' THEN 23.5
          when ${cdpaisorigem} = 'TJ' THEN 39
          when ${cdpaisorigem} = 'TZ' THEN -6
          when ${cdpaisorigem} = 'TH' THEN 15
          when ${cdpaisorigem} = 'TL' THEN -8.55
          when ${cdpaisorigem} = 'TG' THEN 8
          when ${cdpaisorigem} = 'TK' THEN -9
          when ${cdpaisorigem} = 'TO' THEN -20
          when ${cdpaisorigem} = 'TT' THEN 11
          when ${cdpaisorigem} = 'TN' THEN 34
          when ${cdpaisorigem} = 'TR' THEN 39
          when ${cdpaisorigem} = 'TM' THEN 40
          when ${cdpaisorigem} = 'TC' THEN 21.75
          when ${cdpaisorigem} = 'TV' THEN -8
          when ${cdpaisorigem} = 'UG' THEN 1
          when ${cdpaisorigem} = 'UA' THEN 49
          when ${cdpaisorigem} = 'AE' THEN 24
          when ${cdpaisorigem} = 'GB' THEN 54
          when ${cdpaisorigem} = 'US' THEN 38
          when ${cdpaisorigem} = 'UM' THEN 19.2833
          when ${cdpaisorigem} = 'UY' THEN -33
          when ${cdpaisorigem} = 'UZ' THEN 41
          when ${cdpaisorigem} = 'VU' THEN -16
          when ${cdpaisorigem} = 'VE' THEN 8
          when ${cdpaisorigem} = 'VE' THEN 8
          when ${cdpaisorigem} = 'VN' THEN 16
          when ${cdpaisorigem} = 'VN' THEN 16
          when ${cdpaisorigem} = 'VG' THEN 18.5
          when ${cdpaisorigem} = 'VI' THEN 18.3333
          when ${cdpaisorigem} = 'WF' THEN -13.3
          when ${cdpaisorigem} = 'EH' THEN 24.5
          when ${cdpaisorigem} = 'YE' THEN 15
          when ${cdpaisorigem} = 'ZM' THEN -15
          when ${cdpaisorigem} = 'ZW' THEN -20
          else null
          end;;
  }

  dimension: longitude {
    type: number
    sql:  case
          when ${cdpaisorigem} = 'AF' THEN 65
          when ${cdpaisorigem} = 'AL' THEN 20
          when ${cdpaisorigem} = 'DZ' THEN 3
          when ${cdpaisorigem} = 'AS' THEN -170
          when ${cdpaisorigem} = 'AD' THEN 1.6
          when ${cdpaisorigem} = 'AO' THEN 18.5
          when ${cdpaisorigem} = 'AI' THEN -63.1667
          when ${cdpaisorigem} = 'AQ' THEN 0
          when ${cdpaisorigem} = 'AG' THEN -61.8
          when ${cdpaisorigem} = 'AR' THEN -64
          when ${cdpaisorigem} = 'AM' THEN 45
          when ${cdpaisorigem} = 'AW' THEN -69.9667
          when ${cdpaisorigem} = 'AU' THEN 133
          when ${cdpaisorigem} = 'AT' THEN 13.3333
          when ${cdpaisorigem} = 'AZ' THEN 47.5
          when ${cdpaisorigem} = 'BS' THEN -76
          when ${cdpaisorigem} = 'BH' THEN 50.55
          when ${cdpaisorigem} = 'BD' THEN 90
          when ${cdpaisorigem} = 'BB' THEN -59.5333
          when ${cdpaisorigem} = 'BY' THEN 28
          when ${cdpaisorigem} = 'BE' THEN 4
          when ${cdpaisorigem} = 'BZ' THEN -88.75
          when ${cdpaisorigem} = 'BJ' THEN 2.25
          when ${cdpaisorigem} = 'BM' THEN -64.75
          when ${cdpaisorigem} = 'BT' THEN 90.5
          when ${cdpaisorigem} = 'BO' THEN -65
          when ${cdpaisorigem} = 'BO' THEN -65
          when ${cdpaisorigem} = 'BA' THEN 18
          when ${cdpaisorigem} = 'BW' THEN 24
          when ${cdpaisorigem} = 'BV' THEN 3.4
          when ${cdpaisorigem} = 'BR' THEN -55
          when ${cdpaisorigem} = 'IO' THEN 71.5
          when ${cdpaisorigem} = 'BN' THEN 114.6667
          when ${cdpaisorigem} = 'BN' THEN 114.6667
          when ${cdpaisorigem} = 'BG' THEN 25
          when ${cdpaisorigem} = 'BF' THEN -2
          when ${cdpaisorigem} = 'BI' THEN 30
          when ${cdpaisorigem} = 'KH' THEN 105
          when ${cdpaisorigem} = 'CM' THEN 12
          when ${cdpaisorigem} = 'CA' THEN -95
          when ${cdpaisorigem} = 'CV' THEN -24
          when ${cdpaisorigem} = 'KY' THEN -80.5
          when ${cdpaisorigem} = 'CF' THEN 21
          when ${cdpaisorigem} = 'TD' THEN 19
          when ${cdpaisorigem} = 'CL' THEN -71
          when ${cdpaisorigem} = 'CN' THEN 105
          when ${cdpaisorigem} = 'CX' THEN 105.6667
          when ${cdpaisorigem} = 'CC' THEN 96.8333
          when ${cdpaisorigem} = 'CO' THEN -72
          when ${cdpaisorigem} = 'KM' THEN 44.25
          when ${cdpaisorigem} = 'CG' THEN 15
          when ${cdpaisorigem} = 'CD' THEN 25
          when ${cdpaisorigem} = 'CK' THEN -159.7667
          when ${cdpaisorigem} = 'CR' THEN -84
          when ${cdpaisorigem} = 'CI' THEN -5
          when ${cdpaisorigem} = 'CI' THEN -5
          when ${cdpaisorigem} = 'HR' THEN 15.5
          when ${cdpaisorigem} = 'CU' THEN -80
          when ${cdpaisorigem} = 'CY' THEN 33
          when ${cdpaisorigem} = 'CZ' THEN 15.5
          when ${cdpaisorigem} = 'DK' THEN 10
          when ${cdpaisorigem} = 'DJ' THEN 43
          when ${cdpaisorigem} = 'DM' THEN -61.3333
          when ${cdpaisorigem} = 'DO' THEN -70.6667
          when ${cdpaisorigem} = 'EC' THEN -77.5
          when ${cdpaisorigem} = 'EG' THEN 30
          when ${cdpaisorigem} = 'SV' THEN -88.9167
          when ${cdpaisorigem} = 'GQ' THEN 10
          when ${cdpaisorigem} = 'ER' THEN 39
          when ${cdpaisorigem} = 'EE' THEN 26
          when ${cdpaisorigem} = 'ET' THEN 38
          when ${cdpaisorigem} = 'FK' THEN -59
          when ${cdpaisorigem} = 'FO' THEN -7
          when ${cdpaisorigem} = 'FJ' THEN 175
          when ${cdpaisorigem} = 'FI' THEN 26
          when ${cdpaisorigem} = 'FR' THEN 2
          when ${cdpaisorigem} = 'GF' THEN -53
          when ${cdpaisorigem} = 'PF' THEN -140
          when ${cdpaisorigem} = 'TF' THEN 67
          when ${cdpaisorigem} = 'GA' THEN 11.75
          when ${cdpaisorigem} = 'GM' THEN -16.5667
          when ${cdpaisorigem} = 'GE' THEN 43.5
          when ${cdpaisorigem} = 'DE' THEN 9
          when ${cdpaisorigem} = 'GH' THEN -2
          when ${cdpaisorigem} = 'GI' THEN -5.3667
          when ${cdpaisorigem} = 'GR' THEN 22
          when ${cdpaisorigem} = 'GL' THEN -40
          when ${cdpaisorigem} = 'GD' THEN -61.6667
          when ${cdpaisorigem} = 'GP' THEN -61.5833
          when ${cdpaisorigem} = 'GU' THEN 144.7833
          when ${cdpaisorigem} = 'GT' THEN -90.25
          when ${cdpaisorigem} = 'GG' THEN -2.56
          when ${cdpaisorigem} = 'GN' THEN -10
          when ${cdpaisorigem} = 'GW' THEN -15
          when ${cdpaisorigem} = 'GY' THEN -59
          when ${cdpaisorigem} = 'HT' THEN -72.4167
          when ${cdpaisorigem} = 'HM' THEN 72.5167
          when ${cdpaisorigem} = 'VA' THEN 12.45
          when ${cdpaisorigem} = 'HN' THEN -86.5
          when ${cdpaisorigem} = 'HK' THEN 114.1667
          when ${cdpaisorigem} = 'HU' THEN 20
          when ${cdpaisorigem} = 'IS' THEN -18
          when ${cdpaisorigem} = 'IN' THEN 77
          when ${cdpaisorigem} = 'ID' THEN 120
          when ${cdpaisorigem} = 'IR' THEN 53
          when ${cdpaisorigem} = 'IQ' THEN 44
          when ${cdpaisorigem} = 'IE' THEN -8
          when ${cdpaisorigem} = 'IM' THEN -4.55
          when ${cdpaisorigem} = 'IL' THEN 34.75
          when ${cdpaisorigem} = 'IT' THEN 12.8333
          when ${cdpaisorigem} = 'JM' THEN -77.5
          when ${cdpaisorigem} = 'JP' THEN 138
          when ${cdpaisorigem} = 'JE' THEN -2.13
          when ${cdpaisorigem} = 'JO' THEN 36
          when ${cdpaisorigem} = 'KZ' THEN 68
          when ${cdpaisorigem} = 'KE' THEN 38
          when ${cdpaisorigem} = 'KI' THEN 173
          when ${cdpaisorigem} = 'KP' THEN 127
          when ${cdpaisorigem} = 'KR' THEN 127.5
          when ${cdpaisorigem} = 'KR' THEN 127.5
          when ${cdpaisorigem} = 'KW' THEN 47.6581
          when ${cdpaisorigem} = 'KG' THEN 75
          when ${cdpaisorigem} = 'LA' THEN 105
          when ${cdpaisorigem} = 'LV' THEN 25
          when ${cdpaisorigem} = 'LB' THEN 35.8333
          when ${cdpaisorigem} = 'LS' THEN 28.5
          when ${cdpaisorigem} = 'LR' THEN -9.5
          when ${cdpaisorigem} = 'LY' THEN 17
          when ${cdpaisorigem} = 'LY' THEN 17
          when ${cdpaisorigem} = 'LI' THEN 9.5333
          when ${cdpaisorigem} = 'LT' THEN 24
          when ${cdpaisorigem} = 'LU' THEN 6.1667
          when ${cdpaisorigem} = 'MO' THEN 113.55
          when ${cdpaisorigem} = 'MK' THEN 22
          when ${cdpaisorigem} = 'MG' THEN 47
          when ${cdpaisorigem} = 'MW' THEN 34
          when ${cdpaisorigem} = 'MY' THEN 112.5
          when ${cdpaisorigem} = 'MV' THEN 73
          when ${cdpaisorigem} = 'ML' THEN -4
          when ${cdpaisorigem} = 'MT' THEN 14.5833
          when ${cdpaisorigem} = 'MH' THEN 168
          when ${cdpaisorigem} = 'MQ' THEN -61
          when ${cdpaisorigem} = 'MR' THEN -12
          when ${cdpaisorigem} = 'MU' THEN 57.55
          when ${cdpaisorigem} = 'YT' THEN 45.1667
          when ${cdpaisorigem} = 'MX' THEN -102
          when ${cdpaisorigem} = 'FM' THEN 158.25
          when ${cdpaisorigem} = 'MD' THEN 29
          when ${cdpaisorigem} = 'MC' THEN 7.4
          when ${cdpaisorigem} = 'MN' THEN 105
          when ${cdpaisorigem} = 'ME' THEN 19
          when ${cdpaisorigem} = 'MS' THEN -62.2
          when ${cdpaisorigem} = 'MA' THEN -5
          when ${cdpaisorigem} = 'MZ' THEN 35
          when ${cdpaisorigem} = 'MM' THEN 98
          when ${cdpaisorigem} = 'MM' THEN 98
          when ${cdpaisorigem} = 'NA' THEN 17
          when ${cdpaisorigem} = 'NR' THEN 166.9167
          when ${cdpaisorigem} = 'NP' THEN 84
          when ${cdpaisorigem} = 'NL' THEN 5.75
          when ${cdpaisorigem} = 'AN' THEN -68.75
          when ${cdpaisorigem} = 'NC' THEN 165.5
          when ${cdpaisorigem} = 'NZ' THEN 174
          when ${cdpaisorigem} = 'NI' THEN -85
          when ${cdpaisorigem} = 'NE' THEN 8
          when ${cdpaisorigem} = 'NG' THEN 8
          when ${cdpaisorigem} = 'NU' THEN -169.8667
          when ${cdpaisorigem} = 'NF' THEN 167.95
          when ${cdpaisorigem} = 'MP' THEN 145.75
          when ${cdpaisorigem} = 'NO' THEN 10
          when ${cdpaisorigem} = 'OM' THEN 57
          when ${cdpaisorigem} = 'PK' THEN 70
          when ${cdpaisorigem} = 'PW' THEN 134.5
          when ${cdpaisorigem} = 'PS' THEN 35.25
          when ${cdpaisorigem} = 'PA' THEN -80
          when ${cdpaisorigem} = 'PG' THEN 147
          when ${cdpaisorigem} = 'PY' THEN -58
          when ${cdpaisorigem} = 'PE' THEN -76
          when ${cdpaisorigem} = 'PH' THEN 122
          when ${cdpaisorigem} = 'PN' THEN -127.4
          when ${cdpaisorigem} = 'PL' THEN 20
          when ${cdpaisorigem} = 'PT' THEN -8
          when ${cdpaisorigem} = 'PR' THEN -66.5
          when ${cdpaisorigem} = 'QA' THEN 51.25
          when ${cdpaisorigem} = 'RE' THEN 55.6
          when ${cdpaisorigem} = 'RO' THEN 25
          when ${cdpaisorigem} = 'RU' THEN 100
          when ${cdpaisorigem} = 'RU' THEN 100
          when ${cdpaisorigem} = 'RW' THEN 30
          when ${cdpaisorigem} = 'SH' THEN -5.7
          when ${cdpaisorigem} = 'KN' THEN -62.75
          when ${cdpaisorigem} = 'LC' THEN -61.1333
          when ${cdpaisorigem} = 'PM' THEN -56.3333
          when ${cdpaisorigem} = 'VC' THEN -61.2
          when ${cdpaisorigem} = 'VC' THEN -61.2
          when ${cdpaisorigem} = 'VC' THEN -61.2
          when ${cdpaisorigem} = 'WS' THEN -172.3333
          when ${cdpaisorigem} = 'SM' THEN 12.4167
          when ${cdpaisorigem} = 'ST' THEN 7
          when ${cdpaisorigem} = 'SA' THEN 45
          when ${cdpaisorigem} = 'SN' THEN -14
          when ${cdpaisorigem} = 'RS' THEN 21
          when ${cdpaisorigem} = 'SC' THEN 55.6667
          when ${cdpaisorigem} = 'SL' THEN -11.5
          when ${cdpaisorigem} = 'SG' THEN 103.8
          when ${cdpaisorigem} = 'SK' THEN 19.5
          when ${cdpaisorigem} = 'SI' THEN 15
          when ${cdpaisorigem} = 'SB' THEN 159
          when ${cdpaisorigem} = 'SO' THEN 49
          when ${cdpaisorigem} = 'ZA' THEN 24
          when ${cdpaisorigem} = 'GS' THEN -37
          when ${cdpaisorigem} = 'SS' THEN 30
          when ${cdpaisorigem} = 'ES' THEN -4
          when ${cdpaisorigem} = 'LK' THEN 81
          when ${cdpaisorigem} = 'SD' THEN 30
          when ${cdpaisorigem} = 'SR' THEN -56
          when ${cdpaisorigem} = 'SJ' THEN 20
          when ${cdpaisorigem} = 'SZ' THEN 31.5
          when ${cdpaisorigem} = 'SE' THEN 15
          when ${cdpaisorigem} = 'CH' THEN 8
          when ${cdpaisorigem} = 'SY' THEN 38
          when ${cdpaisorigem} = 'TW' THEN 121
          when ${cdpaisorigem} = 'TW' THEN 121
          when ${cdpaisorigem} = 'TJ' THEN 71
          when ${cdpaisorigem} = 'TZ' THEN 35
          when ${cdpaisorigem} = 'TH' THEN 100
          when ${cdpaisorigem} = 'TL' THEN 125.5167
          when ${cdpaisorigem} = 'TG' THEN 1.1667
          when ${cdpaisorigem} = 'TK' THEN -172
          when ${cdpaisorigem} = 'TO' THEN -175
          when ${cdpaisorigem} = 'TT' THEN -61
          when ${cdpaisorigem} = 'TN' THEN 9
          when ${cdpaisorigem} = 'TR' THEN 35
          when ${cdpaisorigem} = 'TM' THEN 60
          when ${cdpaisorigem} = 'TC' THEN -71.5833
          when ${cdpaisorigem} = 'TV' THEN 178
          when ${cdpaisorigem} = 'UG' THEN 32
          when ${cdpaisorigem} = 'UA' THEN 32
          when ${cdpaisorigem} = 'AE' THEN 54
          when ${cdpaisorigem} = 'GB' THEN -2
          when ${cdpaisorigem} = 'US' THEN -97
          when ${cdpaisorigem} = 'UM' THEN 166.6
          when ${cdpaisorigem} = 'UY' THEN -56
          when ${cdpaisorigem} = 'UZ' THEN 64
          when ${cdpaisorigem} = 'VU' THEN 167
          when ${cdpaisorigem} = 'VE' THEN -66
          when ${cdpaisorigem} = 'VE' THEN -66
          when ${cdpaisorigem} = 'VN' THEN 106
          when ${cdpaisorigem} = 'VN' THEN 106
          when ${cdpaisorigem} = 'VG' THEN -64.5
          when ${cdpaisorigem} = 'VI' THEN -64.8333
          when ${cdpaisorigem} = 'WF' THEN -176.2
          when ${cdpaisorigem} = 'EH' THEN -13
          when ${cdpaisorigem} = 'YE' THEN 48
          when ${cdpaisorigem} = 'ZM' THEN 30
          when ${cdpaisorigem} = 'ZW' THEN 30
          else null
          end;;
  }

  dimension: cdportodestino {
    type: string
    sql: ${TABLE}.cdportodestino ;;
  }

  dimension: cdportoorigem {
    type: string
    sql: ${TABLE}.cdportoorigem ;;
  }

  dimension: cidade_import {
    type: string
    sql: ${TABLE}.cidade_import ;;
  }

  dimension: cnpj_adquirente {
    type: string
    sql: ${TABLE}.cnpj_adquirente ;;
  }

  dimension: cnpj_adquirente_int {
    type: string
    sql: ${TABLE}.cnpj_adquirente_int ;;
  }

  dimension: cod_cep_import {
    type: string
    sql: ${TABLE}.cod_cep_import ;;
  }

  dimension: cod_cnae_import {
    type: string
    sql: ${TABLE}.cod_cnae_import ;;
  }

  dimension: cod_cnpj_import {
    type: string
    sql: ${TABLE}.cod_cnpj_import ;;
  }

  dimension: crt {
    type: string
    sql: ${TABLE}.crt ;;
  }

  dimension: data_chegada_carga {
    type: string
    sql: ${TABLE}.data_chegada_carga ;;
  }

  dimension: data_desembaraco {
    type: string
    sql: ${TABLE}.data_desembaraco ;;
  }

  dimension: data_embarque {
    type: string
    sql: ${TABLE}.data_embarque ;;
  }

  dimension: data_hora_registro {
    type: string
    sql: ${TABLE}.data_hora_registro ;;
  }

  dimension: data_pagamento {
    type: string
    sql: ${TABLE}.data_pagamento ;;
  }

  dimension: desc_cnae_import {
    type: string
    sql: ${TABLE}.desc_cnae_import ;;
  }

  dimension: desc_prodt {
    type: string
    sql: ${TABLE}.desc_prodt ;;
  }

  dimension: desc_unid_desembaraco {
    type: string
    sql: ${TABLE}.desc_unid_desembaraco ;;
  }

  dimension: desc_unid_desembq {
    type: string
    sql: ${TABLE}.desc_unid_desembq ;;
  }

  dimension: desc_unid_estat {
    type: string
    sql: ${TABLE}.desc_unid_estat ;;
  }

  dimension: di_number {
    type: string
    sql: ${TABLE}.di_number ;;
  }

  dimension: doc_chegada_carga_identificacao {
    type: string
    sql: ${TABLE}.doc_chegada_carga_identificacao ;;
  }

  dimension: doc_chegada_carga_tipo {
    type: string
    sql: ${TABLE}.doc_chegada_carga_tipo ;;
  }

  dimension: embarcacao {
    type: string
    sql: ${TABLE}.embarcacao ;;
  }

  dimension: exportador_endereco {
    type: string
    sql: ${TABLE}.exportador_endereco ;;
  }

  dimension: exportador_nome {
    type: string
    sql:
    case
    when ${TABLE}.exportador_nome is null or ${TABLE}.exportador_nome = '' then 'NÃO IDENTIFICADO'
    else ${TABLE}.exportador_nome
    end ;;
  }

  dimension: exportador_check {
    type: yesno
    sql:
    case
    when ${exportador_nome} = 'NÃO IDENTIFICADO' then false
    else true
    end;;
  }


  dimension: genero {
    type: string
    sql:
    case
    when ${TABLE}.genero is null or ${TABLE}.genero = '' then 'NÃO IDENTIFICADO'
    else ${TABLE}.genero
    end ;;
  }

  dimension: genero_check {
    type: yesno
    sql:
    case
    when ${genero} = 'NÃO IDENTIFICADO' then false
    else true
    end;;
  }

  dimension: hwb {
    type: string
    sql: ${TABLE}.hwb ;;
  }

  dimension: id_cap_ncm {
    type: string
    sql: ${TABLE}.id_cap_ncm ;;
  }

  dimension: id_import {
    type: string
    sql: ${TABLE}.id_import ;;
  }

  dimension: importador_cnpj {
    type: string
    sql: ${TABLE}.importador_cnpj ;;
  }

  dimension: importador_endereco {
    type: string
    sql: ${TABLE}.importador_endereco ;;
  }

  dimension: importador_nome {
    type: string
    sql:
    case
    when ${TABLE}.importador_nome is null or ${TABLE}.importador_nome = '' then 'NÃO IDENTIFICADO'
    when ${TABLE}.importador_nome = 'HAVAN LOJAS DE DEPARTAMENTOS LTDA' then 'HAVAN SA'
    else ${TABLE}.importador_nome
    end;;
  }

  dimension: importador_colorido {
    type: string
    sql: ${importador_nome} ;;
    html: {% if value == 'ST IMPORTACOES LTDA' %}
            <font color="green">{{ importador_nome }}</font>
          {% else %}
            <font color="black">{{ importador_nome }}</font>
          {% endif %};;
  }

  dimension: importador_check {
    type: yesno
    sql:
    case
    when ${importador_nome} = 'NÃO IDENTIFICADO' then false
    else true
    end;;
  }

  dimension: incoterm {
    type: string
    sql: ${TABLE}.incoterm ;;
  }

  dimension: loc_embarque {
    type: string
    sql: ${TABLE}.loc_embarque ;;
  }

  dimension: marca {
    type: string
    sql: ${TABLE}.marca ;;
  }

  dimension: material {
    type: string
    sql:
    case
    when ${TABLE}.material is null or ${TABLE}.material = '' then 'NÃO IDENTIFICADO'
    else ${TABLE}.material
    end;;

    }

    dimension: material_check {
      type: yesno
      sql:
          case
          when ${material} = 'NÃO IDENTIFICADO' then false
          else true
          end;;
    }

    dimension: modalidade_despacho {
      type: string
      sql: ${TABLE}.modalidade_despacho ;;
    }

    dimension: model {
      type: string
      sql: ${TABLE}.model ;;
    }

    dimension: modelo {
      type: string
      sql: ${TABLE}.modelo ;;
    }

    dimension: ncm_desc {
      type: string
      sql: ${TABLE}.ncm_desc ;;
    }

    dimension: nm_pais_aquis {
      type: string
      sql: ${TABLE}.nm_pais_aquis ;;
    }

    dimension: nm_pais_origem {
      type: string
      sql: ${TABLE}.nm_pais_origem ;;
    }

    dimension: nm_pais_proced {
      type: string
      sql: ${TABLE}.nm_pais_proced ;;
    }

    dimension: nmportodestino {
      type: string
      sql: ${TABLE}.nmportodestino ;;
    }

    dimension: nmportoorigem {
      type: string
      sql: ${TABLE}.nmportoorigem ;;
    }

    dimension: nome_adquirente {
      type: string
      sql: ${TABLE}.nome_adquirente ;;
    }

    dimension: nome_ncm_pt {
      type: string
      sql: ${TABLE}.nome_ncm_pt ;;
    }

    dimension: nome_unid_desembaraco {
      type: string
      sql: ${TABLE}.nome_unid_desembaraco ;;
    }

    dimension: num_item {
      type: string
      sql: ${TABLE}.num_item ;;
    }

    dimension: num_ord {
      type: string
      sql: ${TABLE}.num_ord ;;
    }

    dimension: num_ord_cmpl {
      type: string
      sql: ${TABLE}.num_ord_cmpl ;;
    }

    dimension: num_subitem {
      type: string
      sql: ${TABLE}.num_subitem ;;
    }

    dimension: num_tel1_import {
      type: string
      sql: ${TABLE}.num_tel1_import ;;
    }

    dimension: num_tel2_import {
      type: string
      sql: ${TABLE}.num_tel2_import ;;
    }

    dimension: numero_ce {
      type: string
      sql: ${TABLE}.numero_ce ;;
    }

    dimension: operacao_fundap {
      type: string
      sql: ${TABLE}.operacao_fundap ;;
    }

    dimension: pais_proced {
      type: string
      sql: ${TABLE}.pais_proced ;;
    }

    dimension: produto {
      type: string
      sql:
          case
          when ${TABLE}.produto is null or ${TABLE}.produto = '' then 'NÃO IDENTIFICADO'
          else ${TABLE}.produto
          end;;
    }

    dimension: produto_check {
      type: yesno
      sql:
          case
          when ${produto} = 'NÃO IDENTIFICADO' then false
          else true
          end;;
    }

    dimension: percentual {
      type: string
      sql: ${TABLE}.percentual ;;
    }

    dimension: qtd_comerc {
      type: string
      sql: ${TABLE}.qtd_comerc ;;
    }

    dimension: qtd_estat {
      type: string
      sql: ${TABLE}.qtd_estat ;;
    }

    dimension: recinto_aduaneiro {
      type: string
      sql: ${TABLE}.recinto_aduaneiro ;;
    }

    dimension: rn {
      type: number
      sql: ${TABLE}.rn ;;
    }

    dimension: sgl_uf_import {
      type: string
      sql: ${TABLE}.sgl_uf_import ;;
    }

    dimension: tipo_declaracao {
      type: string
      sql: ${TABLE}.tipo_declaracao ;;
    }

    dimension: tipo_recolhimento {
      type: string
      sql: ${TABLE}.tipo_recolhimento ;;
    }

    dimension: tp_match {
      type: string
      sql: ${TABLE}.tp_match ;;
    }

    dimension: tp_nat_inf {
      type: string
      sql: ${TABLE}.tp_nat_inf ;;
    }

    dimension: tp_sit_desp {
      type: string
      sql: ${TABLE}.tp_sit_desp ;;
    }

    dimension: tp_unid_comerc {
      type: string
      sql: ${TABLE}.tp_unid_comerc ;;
    }

    dimension: transportador {
      type: string
      sql: ${TABLE}.transportador ;;
    }

    dimension: urf_despacho {
      type: string
      sql: ${TABLE}.urf_despacho ;;
    }

    dimension: urf_entrada_carga {
      type: string
      sql: ${TABLE}.urf_entrada_carga ;;
    }

    dimension: utilizacao {
      type: string
      sql: ${TABLE}.utilizacao ;;
    }

    dimension: val_cif_un_us {
      type: string
      sql: ${TABLE}.val_cif_un_us ;;
    }

    dimension: val_fob_un_us {
      type: string
      sql: ${TABLE}.val_fob_un_us ;;
    }

    dimension: val_fob_us_subitem {
      type: string
      sql: ${TABLE}.val_fob_us_subitem ;;
    }

    dimension: val_frete_un_us {
      type: string
      sql: ${TABLE}.val_frete_un_us ;;
    }

    dimension: val_frete_us {
      type: string
      sql: ${TABLE}.val_frete_us ;;
    }

    dimension: val_frete_us_subitem {
      type: string
      sql: ${TABLE}.val_frete_us_subitem ;;
    }

    dimension: val_peso_liq {
      type: string
      sql: ${TABLE}.val_peso_liq ;;
    }

    dimension: val_peso_liq_subitem {
      type: string
      sql: ${TABLE}.val_peso_liq_subitem ;;
    }

    dimension: val_seg_un_us {
      type: string
      sql: ${TABLE}.val_seg_un_us ;;
    }

    dimension: val_seg_us {
      type: string
      sql: ${TABLE}.val_seg_us ;;
    }

    dimension: val_seg_us_subitem {
      type: string
      sql: ${TABLE}.val_seg_us_subitem ;;
    }

    dimension: val_tot_unid_prod_us {
      type: string
      sql: ${TABLE}.val_tot_unid_prod_us ;;
    }

    dimension: val_unid_prod_us {
      type: string
      sql: ${TABLE}.val_unid_prod_us ;;
    }

    dimension: val_vmld_us_subitem {
      type: string
      sql: ${TABLE}.val_vmld_us_subitem ;;
    }

    dimension: val_vmle_us {
      type: string
      sql: ${TABLE}.val_vmle_us ;;
    }

    dimension: val_vmle_us_subitem {
      type: string
      sql: ${TABLE}.val_vmle_us_subitem ;;
    }

    dimension: via_transp {
      type: string
      sql: ${TABLE}.via_transp ;;
    }

    dimension: via_transp_norm {
      type: string
      sql: case
         when ${TABLE}.via_transp = 'MARíTIMA' then 'MARÍTIMO'
         when ${TABLE}.via_transp = 'AÉREA' then 'AÉREO'
         when ${TABLE}.via_transp = 'RODOVIÁRIA' then 'RODOVIÁRIO'
         when ${TABLE}.via_transp = '' or ${TABLE}.via_transp is null then 'NÃO IDENTIFICADO'
         else ${TABLE}.via_transp
         end;;
    }

    dimension: via_transp_norm_check {
      type: yesno
      sql:
          case
          when ${via_transp_norm} = 'NÃO IDENTIFICADO' then false
          else true
          end;;
    }

    dimension: store_location {
      type: location
      sql_latitude: ${latitude} ;;
      sql_longitude: ${longitude} ;;
    }

    dimension: qtd_comerc_num {
      type: number
      sql: cast(${TABLE}.qtd_comerc as float) ;;
    }

    dimension: val_cif_un_us_num {
      type: number
      sql: cast(${TABLE}.val_cif_un_us as float) ;;
    }

    dimension: val_fob_un_us_num {
      type: number
      sql: cast(${TABLE}.val_fob_un_us as float) ;;
    }

    dimension: val_vmld_us_subitem_num {
      type: number
      sql: cast(${TABLE}.val_vmld_us_subitem as float) ;;
    }

    dimension: val_vmle_us_subitem_num {
      type: number
      sql: cast(${TABLE}.val_vmle_us_subitem as float) ;;
    }

    measure: count {
      type: count
      drill_fields: []
    }

    measure: cif_sum {
      type: sum
      sql: ${val_vmld_us_subitem_num};;
    }

    measure: fob_sum {
      type: sum
      sql: ${val_vmle_us_subitem_num};;
    }

    measure: qtde_comerc_sum {
      type: sum
      sql: ${qtd_comerc_num};;
    }

    measure: val_fob_un_us_num_avg {
      type: average
      sql: ${val_fob_un_us_num};;
    }

    measure: val_fob_un_us_num_min {
      type: min
      sql: ${val_fob_un_us_num};;
    }

    measure: val_fob_un_us_num_max {
      type: max
      sql: ${val_fob_un_us_num};;
    }

#  measure: val_fob_un_us_num_p25 {
#   type: percentile
#    percentile: 25
#    sql: ${val_fob_un_us_num};;
#  }

#  measure: val_fob_un_us_num_p75 {
#    type: percentile
#    percentile: 75
#    sql: ${val_fob_un_us_num};;
#  }


  }
