view: searchx_importadores_agrupado {

  derived_table: {
    sql:select importador_nome,cod_cnae_import,desc_cnae_import,cdncm_compl,nome_ncm_pt,valor
        from(
        select
        concat(importador_nome,cod_cnae_import,cod_cnae_import,cdncm_compl,nome_ncm_pt,desc_cnae_import) as id,
        importador_nome,
        cod_cnae_import,
        cdncm_compl,
        nome_ncm_pt,
        desc_cnae_import,
        sum(cast(val_vmle_us_subitem as float)) as valor
        from searchx.searchx_gold_v2
        GROUP BY 1,2,3,4,5,6) as qq1
        where valor =
        (
        select max(valor)
        from(
        select
        concat(importador_nome,cod_cnae_import,cod_cnae_import,cdncm_compl,nome_ncm_pt,desc_cnae_import) as id,
        importador_nome,
        cod_cnae_import,
        cdncm_compl,
        nome_ncm_pt,
        desc_cnae_import,
        sum(cast(val_vmle_us_subitem as float)) as valor
        from searchx.searchx_gold_v2
        GROUP BY 1,2,3,4,5,6) as qq2 where qq2.importador_nome = qq1.importador_nome
        ) ;;
  }

  dimension: importador_nome_agp {
    type: string
    sql: ${TABLE}.importador_nome ;;
  }

  dimension: top_cod_cnae_import {
    type: string
    sql: ${TABLE}.cod_cnae_import ;;
  }

  dimension: cnae_segmento{
    type: string
    sql:
    case
    when left(${TABLE}.cod_cnae_import,2) = '01' then 'AGRICULTURA, PECUÁRIA, PRODUÇÃO FLORESTAL, PESCA E AQÜICULTURA'
    when left(${TABLE}.cod_cnae_import,2) = '02' then 'AGRICULTURA, PECUÁRIA, PRODUÇÃO FLORESTAL, PESCA E AQÜICULTURA'
    when left(${TABLE}.cod_cnae_import,2) = '03' then 'AGRICULTURA, PECUÁRIA, PRODUÇÃO FLORESTAL, PESCA E AQÜICULTURA'
    when left(${TABLE}.cod_cnae_import,2) = '05' then 'INDÚSTRIAS EXTRATIVAS'
    when left(${TABLE}.cod_cnae_import,2) = '06' then 'INDÚSTRIAS EXTRATIVAS'
    when left(${TABLE}.cod_cnae_import,2) = '07' then 'INDÚSTRIAS EXTRATIVAS'
    when left(${TABLE}.cod_cnae_import,2) = '08' then 'INDÚSTRIAS EXTRATIVAS'
    when left(${TABLE}.cod_cnae_import,2) = '09' then 'INDÚSTRIAS EXTRATIVAS'
    when left(${TABLE}.cod_cnae_import,2) = '10' then 'INDÚSTRIAS DE TRANSFORMAÇÃO'
    when left(${TABLE}.cod_cnae_import,2) = '11' then 'INDÚSTRIAS DE TRANSFORMAÇÃO'
    when left(${TABLE}.cod_cnae_import,2) = '12' then 'INDÚSTRIAS DE TRANSFORMAÇÃO'
    when left(${TABLE}.cod_cnae_import,2) = '13' then 'INDÚSTRIAS DE TRANSFORMAÇÃO'
    when left(${TABLE}.cod_cnae_import,2) = '14' then 'INDÚSTRIAS DE TRANSFORMAÇÃO'
    when left(${TABLE}.cod_cnae_import,2) = '15' then 'INDÚSTRIAS DE TRANSFORMAÇÃO'
    when left(${TABLE}.cod_cnae_import,2) = '16' then 'INDÚSTRIAS DE TRANSFORMAÇÃO'
    when left(${TABLE}.cod_cnae_import,2) = '17' then 'INDÚSTRIAS DE TRANSFORMAÇÃO'
    when left(${TABLE}.cod_cnae_import,2) = '18' then 'INDÚSTRIAS DE TRANSFORMAÇÃO'
    when left(${TABLE}.cod_cnae_import,2) = '19' then 'INDÚSTRIAS DE TRANSFORMAÇÃO'
    when left(${TABLE}.cod_cnae_import,2) = '20' then 'INDÚSTRIAS DE TRANSFORMAÇÃO'
    when left(${TABLE}.cod_cnae_import,2) = '21' then 'INDÚSTRIAS DE TRANSFORMAÇÃO'
    when left(${TABLE}.cod_cnae_import,2) = '22' then 'INDÚSTRIAS DE TRANSFORMAÇÃO'
    when left(${TABLE}.cod_cnae_import,2) = '23' then 'INDÚSTRIAS DE TRANSFORMAÇÃO'
    when left(${TABLE}.cod_cnae_import,2) = '24' then 'INDÚSTRIAS DE TRANSFORMAÇÃO'
    when left(${TABLE}.cod_cnae_import,2) = '25' then 'INDÚSTRIAS DE TRANSFORMAÇÃO'
    when left(${TABLE}.cod_cnae_import,2) = '26' then 'INDÚSTRIAS DE TRANSFORMAÇÃO'
    when left(${TABLE}.cod_cnae_import,2) = '27' then 'INDÚSTRIAS DE TRANSFORMAÇÃO'
    when left(${TABLE}.cod_cnae_import,2) = '28' then 'INDÚSTRIAS DE TRANSFORMAÇÃO'
    when left(${TABLE}.cod_cnae_import,2) = '29' then 'INDÚSTRIAS DE TRANSFORMAÇÃO'
    when left(${TABLE}.cod_cnae_import,2) = '30' then 'INDÚSTRIAS DE TRANSFORMAÇÃO'
    when left(${TABLE}.cod_cnae_import,2) = '31' then 'INDÚSTRIAS DE TRANSFORMAÇÃO'
    when left(${TABLE}.cod_cnae_import,2) = '32' then 'INDÚSTRIAS DE TRANSFORMAÇÃO'
    when left(${TABLE}.cod_cnae_import,2) = '33' then 'INDÚSTRIAS DE TRANSFORMAÇÃO'
    when left(${TABLE}.cod_cnae_import,2) = '35' then 'ELETRICIDADE E GÁS'
    when left(${TABLE}.cod_cnae_import,2) = '36' then 'ÁGUA, ESGOTO, ATIVIDADES DE GESTÃO DE RESÍDUOS E DESCONTAMINAÇÃO'
    when left(${TABLE}.cod_cnae_import,2) = '37' then 'ÁGUA, ESGOTO, ATIVIDADES DE GESTÃO DE RESÍDUOS E DESCONTAMINAÇÃO'
    when left(${TABLE}.cod_cnae_import,2) = '38' then 'ÁGUA, ESGOTO, ATIVIDADES DE GESTÃO DE RESÍDUOS E DESCONTAMINAÇÃO'
    when left(${TABLE}.cod_cnae_import,2) = '39' then 'ÁGUA, ESGOTO, ATIVIDADES DE GESTÃO DE RESÍDUOS E DESCONTAMINAÇÃO'
    when left(${TABLE}.cod_cnae_import,2) = '41' then 'CONSTRUÇÃO'
    when left(${TABLE}.cod_cnae_import,2) = '42' then 'CONSTRUÇÃO'
    when left(${TABLE}.cod_cnae_import,2) = '43' then 'CONSTRUÇÃO'
    when left(${TABLE}.cod_cnae_import,2) = '45' then 'COMÉRCIO, REPARAÇÃO DE VEÍCULOS AUTOMOTORES E MOTOCICLETAS'
    when left(${TABLE}.cod_cnae_import,2) = '46' then 'COMÉRCIO, REPARAÇÃO DE VEÍCULOS AUTOMOTORES E MOTOCICLETAS'
    when left(${TABLE}.cod_cnae_import,2) = '47' then 'COMÉRCIO, REPARAÇÃO DE VEÍCULOS AUTOMOTORES E MOTOCICLETAS'
    when left(${TABLE}.cod_cnae_import,2) = '49' then 'TRANSPORTE, ARMAZENAGEM E CORREIO'
    when left(${TABLE}.cod_cnae_import,2) = '50' then 'TRANSPORTE, ARMAZENAGEM E CORREIO'
    when left(${TABLE}.cod_cnae_import,2) = '51' then 'TRANSPORTE, ARMAZENAGEM E CORREIO'
    when left(${TABLE}.cod_cnae_import,2) = '52' then 'TRANSPORTE, ARMAZENAGEM E CORREIO'
    when left(${TABLE}.cod_cnae_import,2) = '53' then 'TRANSPORTE, ARMAZENAGEM E CORREIO'
    when left(${TABLE}.cod_cnae_import,2) = '55' then 'ALOJAMENTO E ALIMENTAÇÃO'
    when left(${TABLE}.cod_cnae_import,2) = '56' then 'ALOJAMENTO E ALIMENTAÇÃO'
    when left(${TABLE}.cod_cnae_import,2) = '58' then 'INFORMAÇÃO E COMUNICAÇÃO'
    when left(${TABLE}.cod_cnae_import,2) = '59' then 'INFORMAÇÃO E COMUNICAÇÃO'
    when left(${TABLE}.cod_cnae_import,2) = '60' then 'INFORMAÇÃO E COMUNICAÇÃO'
    when left(${TABLE}.cod_cnae_import,2) = '61' then 'INFORMAÇÃO E COMUNICAÇÃO'
    when left(${TABLE}.cod_cnae_import,2) = '62' then 'INFORMAÇÃO E COMUNICAÇÃO'
    when left(${TABLE}.cod_cnae_import,2) = '63' then 'INFORMAÇÃO E COMUNICAÇÃO'
    when left(${TABLE}.cod_cnae_import,2) = '64' then 'ATIVIDADES FINANCEIRAS, DE SEGUROS E SERVIÇOS RELACIONADOS'
    when left(${TABLE}.cod_cnae_import,2) = '65' then 'ATIVIDADES FINANCEIRAS, DE SEGUROS E SERVIÇOS RELACIONADOS'
    when left(${TABLE}.cod_cnae_import,2) = '66' then 'ATIVIDADES FINANCEIRAS, DE SEGUROS E SERVIÇOS RELACIONADOS'
    when left(${TABLE}.cod_cnae_import,2) = '68' then 'ATIVIDADES IMOBILIÁRIAS'
    when left(${TABLE}.cod_cnae_import,2) = '69' then 'ATIVIDADES PROFISSIONAIS, CIENTÍFICAS E TÉCNICAS'
    when left(${TABLE}.cod_cnae_import,2) = '70' then 'ATIVIDADES PROFISSIONAIS, CIENTÍFICAS E TÉCNICAS'
    when left(${TABLE}.cod_cnae_import,2) = '71' then 'ATIVIDADES PROFISSIONAIS, CIENTÍFICAS E TÉCNICAS'
    when left(${TABLE}.cod_cnae_import,2) = '72' then 'ATIVIDADES PROFISSIONAIS, CIENTÍFICAS E TÉCNICAS'
    when left(${TABLE}.cod_cnae_import,2) = '73' then 'ATIVIDADES PROFISSIONAIS, CIENTÍFICAS E TÉCNICAS'
    when left(${TABLE}.cod_cnae_import,2) = '74' then 'ATIVIDADES PROFISSIONAIS, CIENTÍFICAS E TÉCNICAS'
    when left(${TABLE}.cod_cnae_import,2) = '75' then 'ATIVIDADES PROFISSIONAIS, CIENTÍFICAS E TÉCNICAS'
    when left(${TABLE}.cod_cnae_import,2) = '77' then 'ATIVIDADES ADMINISTRATIVAS E SERVIÇOS COMPLEMENTARES'
    when left(${TABLE}.cod_cnae_import,2) = '78' then 'ATIVIDADES ADMINISTRATIVAS E SERVIÇOS COMPLEMENTARES'
    when left(${TABLE}.cod_cnae_import,2) = '79' then 'ATIVIDADES ADMINISTRATIVAS E SERVIÇOS COMPLEMENTARES'
    when left(${TABLE}.cod_cnae_import,2) = '80' then 'ATIVIDADES ADMINISTRATIVAS E SERVIÇOS COMPLEMENTARES'
    when left(${TABLE}.cod_cnae_import,2) = '81' then 'ATIVIDADES ADMINISTRATIVAS E SERVIÇOS COMPLEMENTARES'
    when left(${TABLE}.cod_cnae_import,2) = '82' then 'ATIVIDADES ADMINISTRATIVAS E SERVIÇOS COMPLEMENTARES'
    when left(${TABLE}.cod_cnae_import,2) = '84' then 'ADMINISTRAÇÃO PÚBLICA, DEFESA E SEGURIDADE SOCIAL'
    when left(${TABLE}.cod_cnae_import,2) = '85' then 'EDUCAÇÃO'
    when left(${TABLE}.cod_cnae_import,2) = '86' then 'SAÚDE HUMANA E SERVIÇOS SOCIAIS'
    when left(${TABLE}.cod_cnae_import,2) = '87' then 'SAÚDE HUMANA E SERVIÇOS SOCIAIS'
    when left(${TABLE}.cod_cnae_import,2) = '88' then 'SAÚDE HUMANA E SERVIÇOS SOCIAIS'
    when left(${TABLE}.cod_cnae_import,2) = '90' then 'ARTES, CULTURA, ESPORTE E RECREAÇÃO'
    when left(${TABLE}.cod_cnae_import,2) = '91' then 'ARTES, CULTURA, ESPORTE E RECREAÇÃO'
    when left(${TABLE}.cod_cnae_import,2) = '92' then 'ARTES, CULTURA, ESPORTE E RECREAÇÃO'
    when left(${TABLE}.cod_cnae_import,2) = '93' then 'ARTES, CULTURA, ESPORTE E RECREAÇÃO'
    when left(${TABLE}.cod_cnae_import,2) = '94' then 'OUTRAS ATIVIDADES DE SERVIÇOS'
    when left(${TABLE}.cod_cnae_import,2) = '95' then 'OUTRAS ATIVIDADES DE SERVIÇOS'
    when left(${TABLE}.cod_cnae_import,2) = '96' then 'OUTRAS ATIVIDADES DE SERVIÇOS'
    when left(${TABLE}.cod_cnae_import,2) = '97' then 'SERVIÇOS DOMÉSTICOS'
    when left(${TABLE}.cod_cnae_import,2) = '99' then 'ORGANISMOS INTERNACIONAIS E OUTRAS INSTITUIÇÕES EXTRATERRITORIAIS'
    else 'Erro'
    end;;
  }

  dimension: top_cdncm_compl {
    type: string
    sql: ${TABLE}.cdncm_compl ;;
  }


  dimension: top_ncm_cap_desc {
    type: string
    sql:
    case
    when left(${TABLE}.cdncm_compl,2) = '01' then 'ANIMAIS VIVOS.'
    when left(${TABLE}.cdncm_compl,2) = '02' then 'CARNES E MIUDEZAS, COMESTÍVEIS.'
    when left(${TABLE}.cdncm_compl,2) = '03' then 'PEIXES E CRUSTÁCEOS, MOLUSCOS E OUTROS INVERTEBRADOS AQUÁTICOS.'
    when left(${TABLE}.cdncm_compl,2) = '04' then 'LEITE E LACTICÍNIOS; OVOS DE AVES; MEL NATURAL; PRODUTOS COMESTÍVEIS DE ORIGEM ANIMAL, NÃO ESPECIFICADOS NEM COMPREENDIDOS NOUTROS CAPÍTULOS.'
    when left(${TABLE}.cdncm_compl,2) = '05' then 'OUTROS PRODUTOS DE ORIGEM ANIMAL, NÃO ESPECIFICADOS NEM COMPREENDIDOS NOUTROS CAPÍTULOS.'
    when left(${TABLE}.cdncm_compl,2) = '06' then 'PLANTAS VIVAS E PRODUTOS DE FLORICULTURA.'
    when left(${TABLE}.cdncm_compl,2) = '07' then 'PRODUTOS HORTÍCOLAS, PLANTAS, RAÍZES E TUBÉRCULOS, COMESTÍVEIS.'
    when left(${TABLE}.cdncm_compl,2) = '08' then 'FRUTAS; CASCAS DE FRUTOS CÍTRICOS E DE MELÕES.'
    when left(${TABLE}.cdncm_compl,2) = '09' then 'CAFÉ, CHÁ, MATE E ESPECIARIAS.'
    when left(${TABLE}.cdncm_compl,2) = '10' then 'CEREAIS.'
    when left(${TABLE}.cdncm_compl,2) = '11' then 'PRODUTOS DA INDÚSTRIA DE MOAGEM; MALTE; AMIDOS E FÉCULAS; INULINA; GLÚTEN DE TRIGO.'
    when left(${TABLE}.cdncm_compl,2) = '12' then 'SEMENTES E FRUTOS OLEAGINOSOS; GRÃOS, SEMENTES E FRUTOS DIVERSOS; PLANTAS INDUSTRIAIS OU MEDICINAIS; PALHAS E FORRAGENS.'
    when left(${TABLE}.cdncm_compl,2) = '13' then 'GOMAS, RESINAS E OUTROS SUCOS E EXTRATOS VEGETAIS.'
    when left(${TABLE}.cdncm_compl,2) = '14' then 'MATÉRIAS PARA ENTRANÇAR E OUTROS PRODUTOS DE ORIGEM VEGETAL, NÃO ESPECIFICADOS NEM COMPREENDIDOS NOUTROS CAPÍTULOS.'
    when left(${TABLE}.cdncm_compl,2) = '15' then 'GORDURAS E ÓLEOS ANIMAIS OU VEGETAIS; PRODUTOS DA SUA DISSOCIAÇÃO; GORDURAS ALIMENTARES ELABORADAS; CERAS DE ORIGEM ANIMAL OU VEGETAL.'
    when left(${TABLE}.cdncm_compl,2) = '16' then 'PREPARAÇÕES DE CARNE, DE PEIXES OU DE CRUSTÁCEOS, DE MOLUSCOS OU DE OUTROS INVERTEBRADOS AQUÁTICOS.'
    when left(${TABLE}.cdncm_compl,2) = '17' then 'AÇÚCARES E PRODUTOS DE CONFEITARIA.'
    when left(${TABLE}.cdncm_compl,2) = '18' then 'CACAU E SUAS PREPARAÇÕES.'
    when left(${TABLE}.cdncm_compl,2) = '19' then 'PREPARAÇÕES À BASE DE CEREAIS, FARINHAS, AMIDOS, FÉCULAS OU LEITE; PRODUTOS DE PASTELARIA.'
    when left(${TABLE}.cdncm_compl,2) = '20' then 'PREPARAÇÕES DE PRODUTOS HORTÍCOLAS, DE FRUTAS OU DE OUTRAS PARTES DE PLANTAS.'
    when left(${TABLE}.cdncm_compl,2) = '21' then 'PREPARAÇÕES ALIMENTÍCIAS DIVERSAS.'
    when left(${TABLE}.cdncm_compl,2) = '22' then 'BEBIDAS, LÍQUIDOS ALCOÓLICOS E VINAGRES.'
    when left(${TABLE}.cdncm_compl,2) = '23' then 'RESÍDUOS E DESPERDÍCIOS DAS INDÚSTRIAS ALIMENTARES; ALIMENTOS PREPARADOS PARA ANIMAIS.'
    when left(${TABLE}.cdncm_compl,2) = '24' then 'TABACO E SEUS SUCEDÂNEOS MANUFATURADOS.'
    when left(${TABLE}.cdncm_compl,2) = '25' then 'SAL; ENXOFRE; TERRAS E PEDRAS; GESSO, CAL E CIMENTO.'
    when left(${TABLE}.cdncm_compl,2) = '26' then 'MINÉRIOS, ESCÓRIAS E CINZAS.'
    when left(${TABLE}.cdncm_compl,2) = '27' then 'COMBUSTÍVEIS MINERAIS, ÓLEOS MINERAIS E PRODUTOS DA SUA DESTILAÇÃO; MATÉRIAS BETUMINOSAS; CERAS MINERAIS.'
    when left(${TABLE}.cdncm_compl,2) = '28' then 'PRODUTOS QUÍMICOS INORGÂNICOS; COMPOSTOS INORGÂNICOS OU ORGÂNICOS DE METAIS PRECIOSOS, DE ELEMENTOS RADIOATIVOS, DE METAIS DAS TERRAS RARAS OU DE ISÓTOPOS.'
    when left(${TABLE}.cdncm_compl,2) = '29' then 'PRODUTOS QUÍMICOS ORGÂNICOS.'
    when left(${TABLE}.cdncm_compl,2) = '30' then 'PRODUTOS FARMACÊUTICOS.'
    when left(${TABLE}.cdncm_compl,2) = '31' then 'ADUBOS (FERTILIZANTES).'
    when left(${TABLE}.cdncm_compl,2) = '32' then 'EXTRATOS TANANTES E TINTORIAIS; TANINOS E SEUS DERIVADOS; PIGMENTOS E OUTRAS MATÉRIAS CORANTES; TINTAS E VERNIZES; MÁSTIQUES; TINTAS DE ESCREVER.'
    when left(${TABLE}.cdncm_compl,2) = '33' then 'ÓLEOS ESSENCIAIS E RESINÓIDES; PRODUTOS DE PERFUMARIA OU DE TOUCADOR PREPARADOS E PREPARAÇÕES COSMÉTICAS.'
    when left(${TABLE}.cdncm_compl,2) = '34' then 'SABÕES, AGENTES ORGÂNICOS DE SUPERFÍCIE, PREPARAÇÕES PARA LAVAGEM, PREPARAÇÕES LUBRIFICANTES, CERAS ARTIFICIAIS, CERAS PREPARADAS, PRODUTOS DE CONSERVAÇÃO E LIMPEZA, VELAS E ARTIGOS SEMELHANTES, MASSAS OU PASTAS PARA MODELAR, "CERAS PARA DENTISTAS" E COMPOSIÇÕES PARA DENTISTAS À BASE DE GESSO.'
    when left(${TABLE}.cdncm_compl,2) = '35' then 'MATÉRIAS ALBUMINÓIDES; PRODUTOS À BASE DE AMIDOS OU DE FÉCULAS MODIFICADOS; COLAS; ENZIMAS.'
    when left(${TABLE}.cdncm_compl,2) = '36' then 'PÓLVORAS E EXPLOSIVOS; ARTIGOS DE PIROTECNIA; FÓSFOROS; LIGAS PIROFÓRICAS; MATÉRIAS INFLAMÁVEIS.'
    when left(${TABLE}.cdncm_compl,2) = '37' then 'PRODUTOS PARA FOTOGRAFIA E CINEMATOGRAFIA.'
    when left(${TABLE}.cdncm_compl,2) = '38' then 'PRODUTOS DIVERSOS DAS INDÚSTRIAS QUÍMICAS.'
    when left(${TABLE}.cdncm_compl,2) = '39' then 'PLÁSTICOS E SUAS OBRAS.'
    when left(${TABLE}.cdncm_compl,2) = '40' then 'BORRACHA E SUAS OBRAS.'
    when left(${TABLE}.cdncm_compl,2) = '41' then 'PELES, EXCETO AS PELES COM PELO, E COUROS.'
    when left(${TABLE}.cdncm_compl,2) = '42' then 'OBRAS DE COURO; ARTIGOS DE CORREEIRO OU DE SELEIRO; ARTIGOS DE VIAGEM, BOLSAS E ARTEFATOS SEMELHANTES; OBRAS DE TRIPA.'
    when left(${TABLE}.cdncm_compl,2) = '43' then 'PELES COM PELO E SUAS OBRAS; PELES COM PELO ARTIFICIAIS.'
    when left(${TABLE}.cdncm_compl,2) = '44' then 'MADEIRA, CARVÃO VEGETAL E OBRAS DE MADEIRA.'
    when left(${TABLE}.cdncm_compl,2) = '45' then 'CORTIÇA E SUAS OBRAS.'
    when left(${TABLE}.cdncm_compl,2) = '46' then 'OBRAS DE ESPARTARIA OU DE CESTARIA.'
    when left(${TABLE}.cdncm_compl,2) = '47' then 'PASTAS DE MADEIRA OU DE OUTRAS MATÉRIAS FIBROSAS CELULÓSICAS; PAPEL OU CARTÃO PARA RECICLAR (DESPERDÍCIOS E APARAS).'
    when left(${TABLE}.cdncm_compl,2) = '48' then 'PAPEL E CARTÃO; OBRAS DE PASTA DE CELULOSE, DE PAPEL OU DE CARTÃO.'
    when left(${TABLE}.cdncm_compl,2) = '49' then 'LIVROS, JORNAIS, GRAVURAS E OUTROS PRODUTOS DAS INDÚSTRIAS GRÁFICAS; TEXTOS MANUSCRITOS OU DATILOGRAFADOS, PLANOS E PLANTAS.'
    when left(${TABLE}.cdncm_compl,2) = '50' then 'SEDA.'
    when left(${TABLE}.cdncm_compl,2) = '51' then 'LÃ, PELOS FINOS OU GROSSEIROS; FIOS E TECIDOS DE CRINA.'
    when left(${TABLE}.cdncm_compl,2) = '52' then 'ALGODÃO.'
    when left(${TABLE}.cdncm_compl,2) = '53' then 'OUTRAS FIBRAS TÊXTEIS VEGETAIS; FIOS DE PAPEL E TECIDOS DE FIOS DE PAPEL.'
    when left(${TABLE}.cdncm_compl,2) = '54' then 'FILAMENTOS SINTÉTICOS OU ARTIFICIAIS; LÂMINAS E FORMAS SEMELHANTES DE MATÉRIAS TÊXTEIS SINTÉTICAS OU ARTIFICIAIS.'
    when left(${TABLE}.cdncm_compl,2) = '55' then 'FIBRAS SINTÉTICAS OU ARTIFICIAIS, DESCONTÍNUAS.'
    when left(${TABLE}.cdncm_compl,2) = '56' then 'PASTAS (OUATES), FELTROS E FALSOS TECIDOS; FIOS ESPECIAIS; CORDÉIS, CORDAS E CABOS; ARTIGOS DE CORDOARIA.'
    when left(${TABLE}.cdncm_compl,2) = '57' then 'TAPETES E OUTROS REVESTIMENTOS PARA PISOS (PAVIMENTOS), DE MATÉRIAS TÊXTEIS.'
    when left(${TABLE}.cdncm_compl,2) = '58' then 'TECIDOS ESPECIAIS; TECIDOS TUFADOS; RENDAS; TAPEÇARIAS; PASSAMANARIAS; BORDADOS.'
    when left(${TABLE}.cdncm_compl,2) = '59' then 'TECIDOS IMPREGNADOS, REVESTIDOS, RECOBERTOS OU ESTRATIFICADOS; ARTIGOS PARA USOS TÉCNICOS DE MATÉRIAS TÊXTEIS.'
    when left(${TABLE}.cdncm_compl,2) = '60' then 'TECIDOS DE MALHA.'
    when left(${TABLE}.cdncm_compl,2) = '61' then 'VESTUÁRIO E SEUS ACESSÓRIOS, DE MALHA.'
    when left(${TABLE}.cdncm_compl,2) = '62' then 'VESTUÁRIO E SEUS ACESSÓRIOS, EXCETO DE MALHA.'
    when left(${TABLE}.cdncm_compl,2) = '63' then 'OUTROS ARTEFATOS TÊXTEIS CONFECCIONADOS; SORTIDOS; ARTEFATOS DE MATÉRIAS TÊXTEIS, CALÇADOS, CHAPÉUS E ARTEFATOS DE USO SEMELHANTE, USADOS; TRAPOS.'
    when left(${TABLE}.cdncm_compl,2) = '64' then 'CALÇADOS, POLAINAS E ARTEFATOS SEMELHANTES; SUAS PARTES.'
    when left(${TABLE}.cdncm_compl,2) = '65' then 'CHAPÉUS E ARTEFATOS DE USO SEMELHANTE, E SUAS PARTES.'
    when left(${TABLE}.cdncm_compl,2) = '66' then 'GUARDA-CHUVAS, SOMBRINHAS, GUARDA-SÓIS, BENGALAS, BENGALAS-ASSENTOS, CHICOTES, PINGALINS, E SUAS PARTES.'
    when left(${TABLE}.cdncm_compl,2) = '67' then 'PENAS E PENUGEM PREPARADAS E SUAS OBRAS; FLORES ARTIFICIAIS; OBRAS DE CABELO.'
    when left(${TABLE}.cdncm_compl,2) = '68' then 'OBRAS DE PEDRA, GESSO, CIMENTO, AMIANTO, MICA OU DE MATÉRIAS SEMELHANTES.'
    when left(${TABLE}.cdncm_compl,2) = '69' then 'PRODUTOS CERÂMICOS.'
    when left(${TABLE}.cdncm_compl,2) = '70' then 'VIDRO E SUAS OBRAS.'
    when left(${TABLE}.cdncm_compl,2) = '71' then 'PÉROLAS NATURAIS OU CULTIVADAS, PEDRAS PRECIOSAS OU SEMIPRECIOSAS E SEMELHANTES, METAIS PRECIOSOS, METAIS FOLHEADOS OU CHAPEADOS DE METAIS PRECIOSOS (PLAQUÊ), E SUAS OBRAS; BIJUTERIAS; MOEDAS.'
    when left(${TABLE}.cdncm_compl,2) = '72' then 'FERRO FUNDIDO, FERRO E AÇO.'
    when left(${TABLE}.cdncm_compl,2) = '73' then 'OBRAS DE FERRO FUNDIDO, FERRO OU AÇO.'
    when left(${TABLE}.cdncm_compl,2) = '74' then 'COBRE E SUAS OBRAS.'
    when left(${TABLE}.cdncm_compl,2) = '75' then 'NÍQUEL E SUAS OBRAS.'
    when left(${TABLE}.cdncm_compl,2) = '76' then 'ALUMÍNIO E SUAS OBRAS.'
    when left(${TABLE}.cdncm_compl,2) = '77' then 'RESERVADO PARA FUTURA UTILIZAÇÃO.'
    when left(${TABLE}.cdncm_compl,2) = '78' then 'CHUMBO E SUAS OBRAS.'
    when left(${TABLE}.cdncm_compl,2) = '79' then 'ZINCO E SUAS OBRAS.'
    when left(${TABLE}.cdncm_compl,2) = '80' then 'ESTANHO E SUAS OBRAS.'
    when left(${TABLE}.cdncm_compl,2) = '81' then 'OUTROS METAIS COMUNS; CERAMAIS (CERMETS); OBRAS DESSAS MATÉRIAS.'
    when left(${TABLE}.cdncm_compl,2) = '82' then 'FERRAMENTAS, ARTEFATOS DE CUTELARIA E TALHERES, E SUAS PARTES, DE METAIS COMUNS.'
    when left(${TABLE}.cdncm_compl,2) = '83' then 'OBRAS DIVERSAS DE METAIS COMUNS.'
    when left(${TABLE}.cdncm_compl,2) = '84' then 'REATORES NUCLEARES, CALDEIRAS, MÁQUINAS, APARELHOS E INSTRUMENTOS MECÂNICOS, E SUAS PARTES.'
    when left(${TABLE}.cdncm_compl,2) = '85' then 'MÁQUINAS, APARELHOS E MATERIAIS ELÉTRICOS, E SUAS PARTES; APARELHOS DE GRAVAÇÃO OU DE REPRODUÇÃO DE SOM, APARELHOS DE GRAVAÇÃO OU DE REPRODUÇÃO DE IMAGENS E DE SOM EM TELEVISÃO, E SUAS PARTES E ACESSÓRIOS.'
    when left(${TABLE}.cdncm_compl,2) = '86' then 'VEÍCULOS E MATERIAL PARA VIAS FÉRREAS OU SEMELHANTES, E SUAS PARTES; APARELHOS MECÂNICOS (INCLUINDO OS ELETROMECÂNICOS) DE SINALIZAÇÃO PARA VIAS DE COMUNICAÇÃO.'
    when left(${TABLE}.cdncm_compl,2) = '87' then 'VEÍCULOS AUTOMÓVEIS, TRATORES, CICLOS E OUTROS VEÍCULOS TERRESTRES, SUAS PARTES E ACESSÓRIOS.'
    when left(${TABLE}.cdncm_compl,2) = '88' then 'AERONAVES E APARELHOS ESPACIAIS, E SUAS PARTES.'
    when left(${TABLE}.cdncm_compl,2) = '89' then 'EMBARCAÇÕES E ESTRUTURAS FLUTUANTES.'
    when left(${TABLE}.cdncm_compl,2) = '90' then 'INSTRUMENTOS E APARELHOS DE ÓPTICA, DE FOTOGRAFIA, DE CINEMATOGRAFIA, DE MEDIDA, DE CONTROLE OU DE PRECISÃO; INSTRUMENTOS E APARELHOS MÉDICO-CIRÚRGICOS; SUAS PARTES E ACESSÓRIOS.'
    when left(${TABLE}.cdncm_compl,2) = '91' then 'ARTIGOS DE RELOJOARIA.'
    when left(${TABLE}.cdncm_compl,2) = '92' then 'INSTRUMENTOS MUSICAIS; SUAS PARTES E ACESSÓRIOS.'
    when left(${TABLE}.cdncm_compl,2) = '93' then 'ARMAS E MUNIÇÕES; SUAS PARTES E ACESSÓRIOS.'
    when left(${TABLE}.cdncm_compl,2) = '94' then 'MÓVEIS; MOBILIÁRIO MÉDICO-CIRÚRGICO; COLCHÕES, ALMOFADAS E SEMELHANTES; APARELHOS DE ILUMINAÇÃO NÃO ESPECIFICADOS NEM COMPREENDIDOS NOUTROS CAPÍTULOS; ANÚNCIOS, CARTAZES OU TABULETAS E PLACAS INDICADORAS, LUMINOSOS E ARTIGOS SEMELHANTES; CONSTRUÇÕES PRÉ-FABRICADAS.'
    when left(${TABLE}.cdncm_compl,2) = '95' then 'BRINQUEDOS, JOGOS, ARTIGOS PARA DIVERTIMENTO OU PARA ESPORTE; SUAS PARTES E ACESSÓRIOS.'
    when left(${TABLE}.cdncm_compl,2) = '96' then 'OBRAS DIVERSAS.'
    when left(${TABLE}.cdncm_compl,2) = '97' then 'OBJETOS DE ARTE, DE COLEÇÃO E ANTIGUIDADES.'
    else 'Erro'
    end ;;
  }

  dimension: top_nome_ncm_pt {
    type: string
    sql: ${TABLE}.nome_ncm_pt ;;
  }

  dimension: top_desc_cnae_import {
    type: string
    sql: ${TABLE}.desc_cnae_import ;;
  }

  dimension: top_valor {
    type: number
    sql: ${TABLE}.valor ;;
  }


}
