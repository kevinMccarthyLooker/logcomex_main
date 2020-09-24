view: pld_consultas {

derived_table: {

  sql:
  select '44046,66875' as DataHora, '44090' as Revisao, 'Safra' as Cliente, 'NBOIOA20070614' as BL, '--' as CS, 'M' as Modal, 'Liberação Aduana, (dei o chain e atualizou para o status liberado p/ carregamento 16/09) ' as Observacao, 'Sim' as Atualizado, '' as DataAtualizacao, 'X' as TrackTrace, 'X' as CMACGM, 'X' as COSCO, 'X' as EVERGREEN, 'X' as GRIMALDI, 'X' as HYUNDAI, 'X' as HAPAG, 'X' as HSUD, 'X' as MAERSK, 'X' as MSC, 'X' as NYK, 'X' as ONE, 'X' as OVERSEAS, 'X' as PIL, 'X' as YANG, 'X' as ZIM, 'x' as LOOKERCE
union select '44046,66875', '44088', 'Safra', 'TJX60301159', '--', 'M', 'BL não encontrado dia 03/08, manifestado em 04/08 (está em liberado p/ carregamento 14/09)', 'Sim', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'x'
union select '44046,66875', '44088', 'Safra', 'NGE20060092', '--', 'M', 'Após re-processar status mudou para Registro Presenca de carga (está em liberado p/ carregamento 14/09)', 'Sim', '', 'X', 'X', '', '', '', '', '', '', '', 'X', '', '', '', '', '', '', 'x'
union select '44046,6875', '44088', 'Safra', 'TPES2004847', '--', 'M', 'BL não encontrado dia 03/08 - atualizado para manifestado em 07/08 (está em liberado p/ carregamento 14/09)', 'Sim', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'x'
union select '44046,6930555556', '44088', 'Safra', 'JKMAO2006002', '--', 'M', 'BL não encontrado dia 03/08, manifestado em 05/08 (está em liberado p/ carregamento 14/09)', 'Sim', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'x'
union select '44046,7083333333', '44090', 'Safra', 'SHBV00155500', '--', 'M', 'Informações encontradas no armador PIL - embarque re-processado status mudou para Manifestado - verificando com squad', 'Sim', '', 'X', '', '', '', '', '', '', '', '', 'X', '', '', '', 'X', 'X', 'X', 'x'
union select '44047,46875', '44088', 'Safra', 'BSHFL20060967', '--', 'M', 'BL não encontrado dia 04/08 - manifestado em 05/08 (está em liberado p/ carregamento 14/09)', 'Sim', '', 'X', 'X', 'X', 'X', 'x', 'x', 'x', 'x', '', 'X', 'x', 'x', 'x', 'x', 'x', 'x', 'x'
union select '44047,4861111111', '44090', 'Safra', 'NB0IE7279500', 'CS', 'M', 'BL encontrado na ONE, porém não atualizou informações, pois o sistema desconsiderou as 4 primeiras letras - squad trabalhou para ajustar regra de consulta no site do armador e informações foram atualizadas (está em transito internacional) - Cadastrado número BL sem ONEY na frente, ficou em trânsito internacional, pois é assim que o site do armador consulta, porém o BL verdareiro é ONEYNB0IE7279500, deveria ter sido cadastrado desta forma, pois para o Siscarga este é o documento válido', 'Sim', '', '', '', '', '', '', '', '', '', '', '', '', 'X', '', '', '', '', 'x'
union select '44047,5138888889', '44088', 'Safra', 'ONEYNB01E7279500', 'CS', 'M', 'BL incorreto - comparado com cadastro anterior há um digito incorreto', 'OK', '', '', '', '', '', '', '', '', '', '', 'X', '', 'X', '', '', '', '', 'x'
union select '44047,5333333333', '44088', 'Safra', 'SZ20070553', 'CS', 'M', 'BL não encontrado (plataforma tem dois BL, e está em transito internacional (SZ20070553C este caso entrou em manifestada), acredito que o SZ20070553 está incorreto pois ainda está em validando embarque ', 'OK', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'x'
union select '44047,5534722222', '44088', 'Safra', '6269897640', 'CS', 'M', 'BL não encontrado, workflow adicionado novamente - embarque cadastrado há mais de 1 mês e ainda não tem CE, talvez esteja incorreto o BL', 'Não ', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'x'
union select '44047,6305555556', '44085', 'C6', '020-39994430', '--', 'M', 'BL não encontrado - documento aéreo (fui analisar e a empresa informa que não há um plano ativo)', 'OK', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', '', 'X', 'x', 'x', 'x', 'x', 'x', 'x', 'x'
union select '44047,7326388889', '44088', 'Safra', 'XMNS002345', '--', 'M', 'Liberado para carregamento ', 'Sim', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', '', 'X', 'x', 'x', 'x', 'x', 'x', 'x', 'x'
union select '44047,7395833333', '44088', 'Safra', 'XNNS002310', 'CS', 'M', 'BL não encontrado, workflow adicionado novamente -  embarque cadastrado há mais de 1 mês e ainda não tem CE, talvez esteja incorreto o BL', 'Não ', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', '', 'X', 'x', 'x', 'x', 'x', 'x', 'x', 'x'
union select '44047,7458333333', '44088', 'Safra', 'XMNS002310', '--', 'M', 'Liberado para carregamento ', 'Sim', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', '', 'X', 'x', 'x', 'x', 'x', 'x', 'x', 'x'
union select '44047,75625', '44088', 'Safra', 'FCLBOM19201610', '--', 'M', 'Liberado para carregamento ', 'Sim', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'x'
union select '44047,7513888889', '44096', 'Safra', '78413098046-SA200502041', 'CS', 'A', 'Aéreo - cadastrado somente MAWB e não tem informação do mesmo no Isiscomex', 'ok', '--', 'X', '', '', '', '', '', '', '', '', 'X', '', '', '', '', '', '', 'x'
union select '44047,7513888889', '44096', 'Safra', '04705407264-GOT00118362', 'CS', 'A', 'Aéreo - inserida info de Voo e Chegada do master. Inserida info "HAWB não encontrado, conferir número informado" - consultado HAWB no Isiscomex como GOT00118362 (sem informações) e 00118362 (embarque atualizado) - caso que o cliente deveria ter cadastrado o HAWB das duas formas para testar', 'ok', '--', 'X', '', '', '', '', '', '', '', '', 'X', '', '', '', '', '', '', 'x'
union select '44047,7513888889', '44090', 'Safra', 'MRKU5690345', 'CS', 'M', 'BL incorreto - é o número do container', 'ok', '', 'X', '', '', '', '', '', '', '', '', 'X', '', '', '', '', '', '', 'x'
union select '44047,7694444444', '44088', 'Safra', 'SZ20070306A', '--', 'M', 'BL não encontrado - foi cadastrado o House - (liberado p/ carregamento 14/09)  ', 'Sim', '', 'X', '', '', '', '', '', '', '', '', 'X', '', '', '', '', '', '', 'x'
union select '44047,7736111111', '44090', 'Safra', 'MNS2006009', 'CS', 'M', 'BL não encontrado - anteriormente cliente Safra informou que o armador é Yang Ming, porém no site do mesmo não há informações (BL não encontrado, workflow adicionado novamente 16/09) - embarque cadastrado há mais de 1 mês e ainda não tem CE, talvez esteja incorreto o BL', 'Não ', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'x'
union select '44047,7736111111', '44089', 'Safra', 'SZ0060681A', 'CS', 'M', 'BL não encontrado, workflow adicionado novamente - embarque cadastrado há mais de 1 mês e ainda não tem CE, talvez esteja incorreto o BL', 'Não ', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'x'
union select '44048,6541666667', '44088', 'Safra', 'INABLU0005320', '--', 'M', 'Liberado para carregamento ', 'Sim', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', '', 'X', 'X', 'X', 'X', 'X', 'X', 'x'
union select '44048,7215277778', '44089', 'Safra', 'MSCMRMNS6816', 'CS', 'M', 'BL não encontrado, workflow adicionado novamente - embarque cadastrado há mais de 1 mês e ainda não tem CE, talvez esteja incorreto o BL', 'Não ', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'x'
union select '44048,7215277778', '44088', 'Safra', 'ONEYCMBA10485600', '--', 'M', 'Armador "outros" incorreto. Ajustado para "ONE". Embarque atualizado Manifestado', 'Sim', '', '', '', '', '', '', '', '', '', '', '', '', 'X', '', '', '', '', 'x'
union select '44049,7284722222', '44090', 'Safra ', '04540377890-400670382', '--', 'A', 'Aéreo cadastrado antes do embarque, atualizado posteriormente.', 'Sim', '--', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'x'
union select '44050,7486111111', '44089', 'Safra', '0170030619801', 'CS', 'M', 'BL não encontrado, workflow adicionado novamente - embarque cadastrado há mais de 1 mês e ainda não tem CE, talvez esteja incorreto o BL', 'Não ', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'x'
union select '44050,7486111111', '44089', 'Safra', 'ARMNGSBNGBIX4992', 'CS', 'M', 'BL não encontrado, workflow adicionado novamente - embarque cadastrado há mais de 1 mês e ainda não tem CE, talvez esteja incorreto o BL', 'Não ', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'x'
union select '44050,7666666667', '44089', 'Safra', 'XIAVIX017001609', 'CS', 'M', 'BL não encontrado, workflow adicionado novamente - embarque cadastrado há mais de 1 mês e ainda não tem CE, talvez esteja incorreto o BL', 'Não ', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'x'
union select '44050,7701388889', '44089', 'Safra', 'XIAVIX017001611', 'CS', 'M', 'BL não encontrado, workflow adicionado novamente - embarque cadastrado há mais de 1 mês e ainda não tem CE, talvez esteja incorreto o BL', 'Não ', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'x'
union select '44050,7743055556', '44089', 'Safra', 'GHZRIO017007900', 'CS', 'M', 'BL não encontrado, workflow adicionado novamente - embarque cadastrado há mais de 1 mês e ainda não tem CE, talvez esteja incorreto o BL', 'Não ', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'x'
union select '44050,7777777778', '44089', 'Safra', 'CHNRIO020122', 'CS', 'M ', 'BL não encontrado, workflow adicionado novamente - embarque cadastrado há mais de 1 mês e ainda não tem CE, talvez esteja incorreto o BL', 'Não ', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'x'
union select '44053,5486111111', '44095', 'Safra', 'WKEL0070013', '--', 'M', 'manifestada 13/08 (liberado p/ carregamento 14/09)', 'Sim', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'x'
union select '44053,5555555556', '44089', 'Safra', '202007145868606', 'CS', 'M', 'BL não encontrado, workflow adicionado novamente - embarque cadastrado há mais de 1 mês e ainda não tem CE, talvez esteja incorreto o BL', 'Não ', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'x'
union select '44054,4034722222', '44095', 'Safra', 'EGLV003091140123', '--', 'M', 'Registro presença de carga ', 'Sim', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'x'
union select '44054,6576388889', '44089', 'Safra', 'ZYA0NGB040426', 'CS', 'M', 'BL não encontrado, workflow adicionado novamente - embarque cadastrado há mais de 1 mês e ainda não tem CE, talvez esteja incorreto o BL', 'Não ', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'x'
union select '44054,6625', '44090', 'Safra ', 'XMN20070107', '--', 'M', 'Liberado para carregamento ', 'ok', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'x'
union select '44054,7180555556', '44095', 'Safra', 'SYNTAO20SE070261', '--', 'M', 'Manifestada 26/08 (Liberado p/ carregamento)', 'Sim', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44055,6055555556', '44095', 'Safra', 'SZX20070587C', '--', 'M', 'Liberação Aduana', 'Sim', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44055,6125', '44095', 'Safra', 'SZX20070587A', '--', 'M', 'Liberação Aduana', 'Sim', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44055,6208333333', '44090', 'Safra', 'SZX20070587B', '--', 'M', 'Liberado para carregamento ', 'ok', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44055,6243055556', '44095', 'Safra', 'CSBRMAO0F019', '--', 'M', 'Liberação Aduana', 'Sim', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44055,6291666667', '44089', 'Safra', 'HKGGVIX80019', 'CS', 'M', 'BL não encontrado, workflow adicionado novamente - embarque cadastrado há mais de 1 mês e ainda não tem CE, talvez esteja incorreto o BL', 'Não ', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44055,6319444444', '44089', 'Safra', 'HKGGVIX800019', 'CS', 'M', 'BL não encontrado, workflow adicionado novamente - embarque cadastrado há mais de 1 mês e ainda não tem CE, talvez esteja incorreto o BL', 'Não ', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44055,6361111111', '44089', 'Safra', 'GSBHKGVI17652220991', 'CS', 'M', 'BL não encontrado, workflow adicionado novamente - embarque cadastrado há mais de 1 mês e ainda não tem CE, talvez esteja incorreto o BL', 'Não ', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44056,5409722222', '44095', 'Safra', 'SZXS012321', '--', 'M', 'Liberação Aduana', 'Sim', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44056,6236111111', '44089', 'Safra', '91440300661046989N', 'CS', 'M', 'BL não encontrado, workflow adicionado novamente - embarque cadastrado há mais de 1 mês e ainda não tem CE, talvez esteja incorreto o BL', 'Não ', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44056,625', '44088', 'Safra', 'SZXS012159', '--', 'M', 'Liberado para carregamento ', 'ok', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44056,6291666667', '44089', 'Safra', 'SHAS013468', 'CS', 'M', 'BL não encontrado, workflow adicionado novamente - embarque cadastrado há mais de 1 mês e ainda não tem CE, talvez esteja incorreto o BL', 'Não ', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44056,6319444444', '44090', 'Safra', '0564653/SH', '--', 'M', 'Liberado para carregamento ', 'ok', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44056,6354166667', '44088', 'Safra', '8/2020-0564653/SH', 'CS', 'M', 'BL não encontrado, workflow adicionado novamente - embarque cadastrado há mais de 1 mês e ainda não tem CE, talvez esteja incorreto o BL', 'Não ', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44056,6402777778', '44095', 'Safra', 'NGX60303596', '--', 'M', 'Liberação Aduana', 'Sim', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', '', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44056,6402777778', '44095', 'Safra', 'SRNVG2007006', '--', 'M', 'Dei o chain e atualizou para Liberação Aduana', 'Sim', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
union select '44054,7180555556', '44095', 'Safra ', 'HLCUTA12003ASWT4', '--', 'M', 'Manifestada 26/08 (Registro presença de carga)', 'Sim', '', '', '', '', '', '', '', 'X', '', '', '', '', '', '', '', '', '', ''
union select '44056,6666666667', '44090', 'Safra', 'SUDUN0459ASP1080', '--', 'M', 'Encontrado na HSUD, ja estava ajustado no CS. Embarque não atualizado pelo Robô na plataforma, adicionados workflows de transporte internacional manualmente. Status atualizado para Em Trânsito Internacional. Verificar se atualizou para manifestado. (manifestado)', 'Sim', '', 'X', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
union select '44056,6819444444', '44095', 'Safra', 'SUDUN0722ASRVU18', '--', 'M', 'Armador "outros" incorreto. Ajustado para "Hamburg Sud". Embarque atualizado corretamente.', 'Sim', '', 'X', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
union select '44056,6888888889', '44090', 'Safra', 'SUDUN0537ATJF195', '--', 'M', 'Armador Hamburg Sud, ja estava ajustado no CS. 29/08 - Data Estimada de Saída do Navio - Xangai - embarque não atualizado pelo Robô na plataforma, adicionados workflows de transporte internacional manualmente. Status atualizado para Em Trânsito Internacional. Verificar se atualizou para manifestado. ', 'Sim', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
union select '44057,4388888889', '44088', 'Safra', 'SYNTSN20SE070045', '--', 'M', 'Liberado para carregamento ', 'ok', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44057,4583333333', '44090', 'Safra', 'HLCUTS12006AVAE5', '--', 'M', 'Armador "outros" incorreto. Ajustado para "HPL". embarque não atualizado pelo Robô na plataforma, adicionados workflows de transporte internacional manualmente. Carga chega 27/08 - Manifestada 20/08 (registro presença de carga)', 'Sim', '', '', '', '', '', '', '', 'X', '', '', '', '', '', '', '', '', '', ''
union select '44057,6930555556', '44090', 'Safra', 'SDB87S009230', '--', 'M', 'Liberado para carregamento ', 'ok', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44057,7013888889', '44095', 'Safra', 'PSLNBOSTS00746', '--', 'M', 'Manifestado (04/09)', 'Sim', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44057,7291666667', '44090', 'Safra', '3292354P0346', 'CS', 'M', 'BL não encontrado, workflow adicionados novamente - - embarque cadastrado há mais de 1 mês e ainda não tem CE, talvez esteja incorreto o BL ou ainda não processado pelo robo da db_maritimo', 'Não ', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44057,7361111111', '44090', 'Safra', 'ZIMUXIA8114531', '--', 'M', 'Inserir info Armador ""ZIM"" identificado, ja estava ajustado no CS.Data 14/08. Embarque não atualizado pelo Robô na plataforma, adicionados workflows de transporte internacional manualmente. Status atualizado para Em Trânsito Internacional. Carga chega 05/10. Verificar se atualizou para manifestado. ', 'Sim', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44057,7847222222', '44090', 'Safra', '3292354P0347', 'CS', 'M', 'BL não encontrado, workflow adicionados novamente - - embarque cadastrado há mais de 1 mês e ainda não tem CE, talvez esteja incorreto o BL ou ainda não processado pelo robo da db_maritimo', 'Não ', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44060,5', '44088', 'Safra', 'SUDUN0465ATKH762', '--', 'M', 'Armador "outros" incorreto. Ajustado para "Hamburg Sud". embarque não atualizado pelo Robô na plataforma, adicionados workflows de transporte internacional manualmente. Status atualizado para Em Trânsito Internacional. Carga chega 13/09. Verificar se atualizou para manifestado. (Manifestado)', 'Sim', '', '', '', '', '', '', '', '', 'X', '', '', '', '', '', '', '', '', ''
union select '44061,4166666667', '44088', 'Safra', 'MEDUTL381166', '--', 'M', 'Armador "outros" incorreto. Ajustado para "MSC". Atualizou para em trânsito internacional, mas não populou informações de logística internacional. Status atualizado para manifestado. (Registro presença de carga)', 'Sim', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', '', 'X', 'x', 'x', 'x', 'x', 'x', 'x', ''
union select '44061,6965277778', '44088', 'Safra', 'TSE20070051', '--', 'M', 'Liberado para carregamento ', 'ok', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44061,7006944444', '44091', 'Safra', '0B02007132', 'CS', 'M', 'BL não encontrado, workflow adicionados novamente - embarque cadastrado há bastante tempo e ainda não tem CE, talvez esteja incorreto o BL ou ainda não processado pelo robo da db_maritimo', 'Não ', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44061,7381944444', '44088', 'Itau ', 'NBOIOA20070614', '--', 'M', 'Liberação Aduana', 'Sim', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44062,625', '44088', 'Safra', 'KORBLU0021267', '--', 'M', 'Liberado para carregamento ', 'ok', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44063,6736111111', '44091', 'Safra', 'DELP995023W17', 'CS', 'M', 'BL não encontrado, workflow adicionados novamente - embarque cadastrado há bastante tempo e ainda não tem CE, talvez esteja incorreto o BL ou ainda não processado pelo robo da db_maritimo', 'Não ', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44063,6736111111', '44091', 'Safra', 'DLK794451163', 'CS', 'M', 'BL não encontrado, workflow adicionados novamente - embarque cadastrado há bastante tempo e ainda não tem CE, talvez esteja incorreto o BL ou ainda não processado pelo robo da db_maritimo', 'Não ', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44063,6770833333', '44091', 'Safra', 'DKL870358021', 'CS', 'M', 'BL não encontrado, workflow adicionados novamente - embarque cadastrado há bastante tempo e ainda não tem CE, talvez esteja incorreto o BL ou ainda não processado pelo robo da db_maritimo', 'Não ', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44063,6875', '44091', 'Safra', 'NEX8006123W17', 'CS', 'M', 'BL não encontrado, workflow adicionados novamente - embarque cadastrado há bastante tempo e ainda não tem CE, talvez esteja incorreto o BL ou ainda não processado pelo robo da db_maritimo', 'Não ', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44063,6944444444', '44095', 'Safra', 'MSCUKM975521', 'CS', 'M', 'BL não encontrado, workflow adicionados novamente - embarque cadastrado há bastante tempo e ainda não tem CE, talvez esteja incorreto o BL ou ainda não processado pelo robo da db_maritimo', 'Não ', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44063,7013888889', '44095', 'Safra', 'PUSS13121032', 'CS', 'M', 'BL não encontrado, workflow adicionados novamente - embarque cadastrado há bastante tempo e ainda não tem CE, talvez esteja incorreto o BL ou ainda não processado pelo robo da db_maritimo', 'Não ', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44064,3944444444', '44095', 'Safra', '23205968', 'CS', 'M', 'BL não encontrado, workflow adicionados novamente - embarque cadastrado há bastante tempo e ainda não tem CE, talvez esteja incorreto o BL ou ainda não processado pelo robo da db_maritimo', 'Não ', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44064,39375', '44095', 'Safra', 'MAEU608020746', '--', 'M', 'Amador Maersk identificado, ja cadastrado no cs Adicionados workflows de transporte internacional manualmente. Status atualizado para Em Trânsito Internacional. Carga chega 29/08. Verifcar se atualizou para manifestado.', 'Sim', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44064,4027777778', '44095', 'Safra', 'GHZRIO017006342', 'CS', 'M', 'BL não encontrado, workflow adicionados novamente - embarque cadastrado há bastante tempo e ainda não tem CE, talvez esteja incorreto o BL ou ainda não processado pelo robo da db_maritimo', 'Não ', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44064,4076388889', '44095', 'Safra', 'CHNRIO01944', 'CS', 'M', 'BL não encontrado, workflow adicionados novamente - embarque cadastrado há bastante tempo e ainda não tem CE, talvez esteja incorreto o BL ou ainda não processado pelo robo da db_maritimo', 'Não ', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44064,4444444444', '44095', 'Safra', 'GHZRIO017006341', 'CS', 'M', 'BL não encontrado, workflow adicionados novamente - embarque cadastrado há bastante tempo e ainda não tem CE, talvez esteja incorreto o BL ou ainda não processado pelo robo da db_maritimo', 'Não ', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44064,4513888889', '44095', 'Safra', 'CHNRIO01943', 'CS', 'M', 'BL não encontrado, workflow adicionados novamente - embarque cadastrado há bastante tempo e ainda não tem CE, talvez esteja incorreto o BL ou ainda não processado pelo robo da db_maritimo', 'Não ', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44064,4583333333', '44095', 'Safra', 'DELP996562W17', 'CS', 'M', 'BL não encontrado, workflow adicionados novamente - embarque cadastrado há bastante tempo e ainda não tem CE, talvez esteja incorreto o BL ou ainda não processado pelo robo da db_maritimo', 'Não ', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44064,5104166667', '44095', 'Safra', 'OAKTOL5798', 'CS', 'M', 'BL não encontrado, workflow adicionados novamente - embarque cadastrado há bastante tempo e ainda não tem CE, talvez esteja incorreto o BL ou ainda não processado pelo robo da db_maritimo', 'Não ', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44068,4347222222', '44095', 'Safra', 'NSTS2006108704', '--', 'M', 'Liberação Aduana ', 'Sim', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44068,4416666667', '44095', 'Safra', 'NE20061087', 'CS', 'M', 'BL não encontrado, workflow adicionados novamente - embarque cadastrado há bastante tempo e ainda não tem CE, talvez esteja incorreto o BL ou ainda não processado pelo robo da db_maritimo', 'Não ', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44068,4472222222', '44095', 'Safra', 'PUSS13120898', 'CS', 'M', 'BL não encontrado, workflow adicionados novamente - embarque cadastrado há bastante tempo e ainda não tem CE, talvez esteja incorreto o BL ou ainda não processado pelo robo da db_maritimo', 'Não ', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44068,4513888889', '44095', 'Safra', 'DELP996585W17', 'CS', 'M', 'BL não encontrado, workflow adicionados novamente - embarque cadastrado há bastante tempo e ainda não tem CE, talvez esteja incorreto o BL ou ainda não processado pelo robo da db_maritimo', 'Não ', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44068,4527777778', '44095', 'Safra', 'SZXS012434', '--', 'M', 'Liberado para carregamento ', 'Sim', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44068,4548611111', '44095', 'Safra', 'NEX8006098W17', 'CS', 'M', 'BL não encontrado, workflow adicionados novamente - embarque cadastrado há bastante tempo e ainda não tem CE, talvez esteja incorreto o BL ou ainda não processado pelo robo da db_maritimo', 'Não ', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44068,4583333333', '44095', 'Safra', 'DELP9979268W17', 'CS', 'M', 'BL não encontrado, workflow adicionados novamente - embarque cadastrado há bastante tempo e ainda não tem CE, talvez esteja incorreto o BL ou ainda não processado pelo robo da db_maritimo', 'Não ', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44068,4604166667', '44095', 'Safra', 'NGBS010906', '--', 'M', 'Liberação Aduana ', 'Sim', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44068,4631944444', '44095', 'Safra', 'NGBS011269', '--', 'M', 'Liberação Aduana ', 'Sim', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44068,46875', '44095', 'Safra', 'BNBFL20070924', '--', 'M', 'Liberação Aduana', 'Sim', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44068,4722222222', '44095', 'Safra', 'BSHFL20080177', '--', 'M', 'Registro Aduana ', 'Sim', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44068,4791666667', '44095', 'Safra', 'NAM3947754', '--', 'M', 'puxou resultado no armador CMA-CGM,verificar com a Vitoria. Armador "outros" incorreto. Ajustado para "CMA-CGM". Liberação Aduana', 'Sim', '', '', 'X', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
union select '44068,4881944444', '44092', 'Safra', 'SHBV00186100', '--', 'M', 'Armador PIL identificado, ja estava ajustado no CS.Adicionados workflows de transporte internacional manualmente. Status atualizado para Em Trânsito Internacional. Carga chega 17/09. Verificar se atualizou para manifestado. Atualizar os 2 status faltantes quando tiver a data.', 'Sim', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44068,6875', '44095', 'Safra', 'JBOMOE2000338', 'CS', 'M', 'BL não encontrado, workflow adicionados novamente - embarque cadastrado há bastante tempo e ainda não tem CE, talvez esteja incorreto o BL ou ainda não processado pelo robo da db_maritimo', 'Não ', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44068,6944444444', '44092', 'Safra', 'SHAS012788', '--', 'M', 'Liberado para carregamento ', 'ok', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44068,7013888889', '44092', 'Safra', 'SHAS012787', '--', 'M', 'Liberado para carregamento ', 'ok', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44069,4069444445', '44095', 'Safra', 'DELHBL20085', '--', 'M', 'manifestado ', 'Sim', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44069,4097222222', '44095', 'Safra', 'YSGSHAITJG2013151', 'CS', 'M', 'BL não encontrado, workflow adicionados novamente - embarque cadastrado há bastante tempo e ainda não tem CE, talvez esteja incorreto o BL ou ainda não processado pelo robo da db_maritimo', 'Não ', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44069,4166666667', '44095', 'Safra', 'JC202007152', 'CS', 'M', 'BL não encontrado, workflow adicionados novamente - embarque cadastrado há bastante tempo e ainda não tem CE, talvez esteja incorreto o BL ou ainda não processado pelo robo da db_maritimo', 'Não ', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44069,4263888889', '44095', 'Safra', 'NGBS011220', '--', 'M', 'Liberado para carregamento ', 'Sim', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44069,4305555556', '44092', 'Safra', 'ZIMUHKG83078249', '--', 'M', 'Armador ZIM identificado. ajustado no CS Adicionados workflows de transporte internacional manualmente. Status atualizado para Em Trânsito Internacional. Carga chega 08/09. Vatualizou para manifestado.', 'Sim', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44069,6736111111', '44095', 'Safra', 'MAEU608020748', '--', 'M', 'Armador Maersk identificado. ja cadastrado no cs Adicionados workflows de transporte internacional manualmente. Status atualizado para Em Trânsito Internacional. Carga chega 17/09. Verificar se atualizou para manifestado. ', 'Sim', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44069,6770833333', '44074', 'Safra', 'MEDUS2665991', '--', 'M', 'Armador "outros" incorreto. Ajustado para "MSC".Verificar se atualizou para manifestado. (status Liberado para carregamento)', 'ok', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
union select '44069,6805555556', '44074', 'Safra', 'MEDUS2669175', '--', 'M', 'Armador "outros" incorreto. Ajustado para "MSC".Verificar se atualizou para manifestado. (status Liberado para carregamento)', 'ok', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
union select '44074,3902777778', '44092', 'Safra', 'BNBFL20071345', '--', 'M', 'Liberado para carregamento ', 'ok', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44074,4097222222', '44095', 'Safra', 'ZYA0NGB044717', 'CS', 'M', 'BL não encontrado, workflow adicionados novamente - embarque cadastrado há bastante tempo e ainda não tem CE, talvez esteja incorreto o BL ou ainda não processado pelo robo da db_maritimo', 'Não ', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44074,4097222222', '44047', 'Safra', 'BXMFL20070147', '--', 'M', 'Liberado para carregamento ', 'ok', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44074,4097222222', '44095', 'Safra', 'NGZC00147900', '--', 'M', 'Armador PIL identificado. ajustado no CS Adicionados workflows de transporte internacional manualmente. Status atualizado para Em Trânsito Internacional. Carga chega 17/09. Verificar se atualizou para manifestado. Atualizar os 2 status faltantes quando tiver a data. ETA é 03/10.', 'Sim', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44074,4097222222', '44095', 'Safra', 'SZ20080327D', 'CS', 'M', 'BL não encontrado, workflow adicionados novamente - embarque cadastrado há bastante tempo e ainda não tem CE, talvez esteja incorreto o BL ou ainda não processado pelo robo da db_maritimo', 'Não ', '', '', '', '', '', '', '', '', '', '', 'X', '', '', '', 'x', '', '', ''
union select '44074,4097222222', '44085', 'Safra', 'IGLMU23177JNSNT', '--', 'M', 'Manifestado ', 'Sim', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44074,4097222222', '44095', 'Safra', 'STYO8144547', 'CS', 'M', 'BL não encontrado, workflow adicionados novamente - embarque cadastrado há bastante tempo e ainda não tem CE, talvez esteja incorreto o BL ou ainda não processado pelo robo da db_maritimo', 'Não ', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44074,4097222222', '44095', 'Safra', 'STYO8143885', 'CS', 'M', 'BL não encontrado, workflow adicionados novamente - embarque cadastrado há bastante tempo e ainda não tem CE, talvez esteja incorreto o BL ou ainda não processado pelo robo da db_maritimo', 'Não ', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44074,4097222222', '44077', 'Safra', 'BXMFL20070026B', '--', 'M', 'Manifestada ', 'Sim', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44074,4097222222', '44095', 'Safra', 'SUDU2413197121', 'CS', 'M', 'BL não encontrado, hamburg sud não puxou nenhum dado', 'Não ', '', '', '', '', '', '', '', '', 'X', '', 'X', '', '', '', '', '', '', ''
union select '44074,4097222222', '44085', 'Safra', '145810000886', 'CS', 'M', 'BL não encontrado, atualizado para liberado para carregamento', 'Sim', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44074,4097222222', '44095', 'Safra', '14510000886', 'CS', 'A', 'Aéreo - AWB não encontrado, conferir número informado. Solicitar documento ao cliente para análise', 'ok', '--', '', '', '', '', '', '', '', '', '', 'X', '', '', '', '', '', '', 'x'
union select '44075,4236111111', '-----', 'Safra', '1', 'CS', 'M', 'Carga granel, chamado - Após a Irene Lima passar as informações de CE do embarque, atualizei o mesmo na mão no banco e rodei a chain. O embarque foi então atualizado para o status de Liberado p/ carregamento.', 'Sim', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
union select '44075,4375', '44092', 'Safra', 'CJB0024025002', '--', 'M', 'Liberado para carregamento ', 'ok', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44075,4479166667', '44095', 'Safra', 'S20066222S', 'CS', 'M', 'BL não encontrado, workflow adicionados novamente - embarque cadastrado há bastante tempo e ainda não tem CE, talvez esteja incorreto o BL ou ainda não processado pelo robo da db_maritimo', 'Não ', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44075,4548611111', '44092', 'Safra', 'VNM20080002', '--', 'M', 'Registro presença de carga ', 'Sim', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44075,46875', '44095', 'Safra', '0BUE018706', 'CS', 'M', 'BL não encontrado, workflow adicionados novamente - embarque cadastrado há bastante tempo e ainda não tem CE, talvez esteja incorreto o BL ou ainda não processado pelo robo da db_maritimo', 'Não ', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44075,7222222222', '44095', 'Safra', 'PUSS13120886', 'CS', 'M', 'BL não encontrado, workflow adicionados novamente - embarque cadastrado há bastante tempo e ainda não tem CE, talvez esteja incorreto o BL ou ainda não processado pelo robo da db_maritimo', 'Não ', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44075,7222222222', '44095', 'Safra', 'HWSC20080155', '--', 'M', 'Registro de transito ', 'Sim', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44075,7222222222', '44095', 'Safra', 'SHASEL20070240', 'CS', 'M', 'BL não encontrado, workflow adicionados novamente - embarque cadastrado há bastante tempo e ainda não tem CE, talvez esteja incorreto o BL ou ainda não processado pelo robo da db_maritimo', 'Não ', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44075,7222222222', '44095', 'Safra', 'NBO0271502001', 'CS', 'M', 'BL não encontrado, Manifestada ', 'Sim', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44075,7222222222', '44095', 'Safra', 'NB381881H2', 'CS', 'M', 'BL não encontrado, workflow adicionados novamente - embarque cadastrado há bastante tempo e ainda não tem CE, talvez esteja incorreto o BL ou ainda não processado pelo robo da db_maritimo', 'Não ', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44075,7222222222', '44095', 'Safra', 'ESHLL20080028', 'CS', 'M', 'BL não encontrado, workflow adicionados novamente - embarque cadastrado há bastante tempo e ainda não tem CE, talvez esteja incorreto o BL ou ainda não processado pelo robo da db_maritimo', 'Não ', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44075,7222222222', '44095', 'Safra', 'SD20082794', 'CS', 'M', 'BL não encontrado, workflow adicionados novamente - embarque cadastrado há bastante tempo e ainda não tem CE, talvez esteja incorreto o BL ou ainda não processado pelo robo da db_maritimo', 'Não ', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44075,7222222222', '44095', 'Safra', 'MEDUHG131368', 'CS', 'M', 'Liberação aduana ', 'Sim', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44075,7222222222', '44095', 'Safra', 'JBOMOE2000307', 'CS', 'M', 'BL não encontrado, workflow adicionados novamente - embarque cadastrado há bastante tempo e ainda não tem CE, talvez esteja incorreto o BL ou ainda não processado pelo robo da db_maritimo', 'Não ', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44075,7222222222', '44095', 'Safra', 'BOMHBL20174', 'CS', 'M', 'BL não encontrado, Manifestada ', 'Sim', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44075,7222222222', '44095', 'Safra', 'SZXWD021965', 'CS', 'M', 'BL não encontrado, workflow adicionados novamente - embarque cadastrado há bastante tempo e ainda não tem CE, talvez esteja incorreto o BL ou ainda não processado pelo robo da db_maritimo', 'Não ', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44075,7222222222', '44088', 'Safra', '2645188020', '--', 'M', 'Armador Oriente Overseas identificado, ajustado no CS. Adicionados workflows de transporte internacional manualmente. Status atualizado para Em Trânsito Internacional. Carga chega 20/09. Verificar se atualizou para manifestado. Verificar se armador colocou novos status.', 'Sim', '', '', '', '', '', '', '', '', '', '', '', '', '', 'X', '', '', '', ''
union select '44075,7222222222', '44095', 'Safra', 'NBOIOA20080782', 'CS', 'M', 'BL não encontrado, workflow adicionados novamente - embarque cadastrado há bastante tempo e ainda não tem CE, talvez esteja incorreto o BL ou ainda não processado pelo robo da db_maritimo', 'Não ', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44075,7222222222', '44095', 'Safra', 'S20068831S', 'CS', 'M', 'BL não encontrado, workflow adicionados novamente - embarque cadastrado há bastante tempo e ainda não tem CE, talvez esteja incorreto o BL ou ainda não processado pelo robo da db_maritimo', 'Não ', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44076,5416666667', '44095', 'Safra', 'SUDU251546914', 'CS', 'M', 'BL não encontrado, hamburg sud não puxou nenhum dado', 'Não ', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44076,5416666667', '44095', 'Safra', '4JAXIA7992', 'CS', 'M', 'BL não encontrado, workflow adicionados novamente - embarque cadastrado há bastante tempo e ainda não tem CE, talvez esteja incorreto o BL ou ainda não processado pelo robo da db_maritimo', 'Não ', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44076,5416666667', '44095', 'Safra', 'OTHK957312003', 'CS', 'M', 'BL não encontrado, workflow adicionados novamente - embarque cadastrado há bastante tempo e ainda não tem CE, talvez esteja incorreto o BL ou ainda não processado pelo robo da db_maritimo', 'Não ', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44076,5416666667', '44095', 'Safra', 'NBOMAU20080975', 'CS', 'M', 'BL não encontrado, workflow adicionados novamente - embarque cadastrado há bastante tempo e ainda não tem CE, talvez esteja incorreto o BL ou ainda não processado pelo robo da db_maritimo', 'Não ', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44076,5416666667', '44096', 'Safra', 'TCNB2008153A', 'CS', 'M', 'BL não encontrado, workflow adicionados novamente - embarque cadastrado há bastante tempo e ainda não tem CE, talvez esteja incorreto o BL ou ainda não processado pelo robo da db_maritimo', 'Não ', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44077,4097222222', '44096', 'Safra', 'ZYA0NGB049429', 'CS', 'M', 'BL não encontrado, workflow adicionados novamente - embarque cadastrado há bastante tempo e ainda não tem CE, talvez esteja incorreto o BL ou ainda não processado pelo robo da db_maritimo', 'Não ', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44077,4097222222', '44096', 'Safra', 'DLK870358021', 'CS', 'M', 'BL não encontrado, workflow adicionados novamente - embarque cadastrado há bastante tempo e ainda não tem CE, talvez esteja incorreto o BL ou ainda não processado pelo robo da db_maritimo', 'Não ', '', '', '', '', '', '', '', '', '', '', 'X', '', '', '', '', '', '', ''
union select '44077,4097222222', '44096', 'Safra', 'SUDUN0465ATKH429', '--', 'M', 'Armador Hamburg Sud identificado, ja ajustado no CS. Embarque não atualizado pelo Robô na plataforma, adicionados workflows de transporte internacional manualmente. Status atualizado para Em Trânsito Internacional. Carga chega 17/09. Verificar se atualizou para manifestado.', 'Sim', '', '', '', '', '', '', '', '', 'X', '', '', '', '', '', '', '', '', ''
union select '44077,4097222222', '44088', 'Safra', 'TCNB2008153B', 'CS', 'M', 'BL não encontrado, Manifestado 18/09', 'Sim', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44077,4097222222', '44083', 'Safra', 'BFZFL20070078', 'CS', 'M', 'Consignatário divergente, se pesquisar por validando embarque ele aparece, mas o status dele interno é "consignatário divergente", na listagem aparece desta forma - consultado no banco e o consignatário real para este CE é 09396439000150 - LEVEL IMPORTACAO, EXPORTACAO E COMERCIO S/A, o usuário informou MOAS IND COM IMP EXP LTDA 05388725000112', 'ok', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44077,4097222222', '44088', 'Safra', 'BNBFL20080259', 'CS', 'M', 'Consignatário divergente, se pesquisar por validando embarque ele aparece, mas o status dele interno é "consignatário divergente", na listagem aparece desta forma', 'ok', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44077,5', '44097', 'Safra', 'NBOIOA20080755', '--', 'M', 'BL não encontrado, workflow adicionados novamente - embarque cadastrado há bastante tempo e ainda não tem CE, talvez esteja incorreto o BL ou ainda não processado pelo robo da db_maritimo', 'Não ', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44077,5', '44097', 'Safra', 'S20067827S', '--', 'M', 'BL não encontrado, workflow adicionados novamente - embarque cadastrado há bastante tempo e ainda não tem CE, talvez esteja incorreto o BL ou ainda não processado pelo robo da db_maritimo', 'Não ', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44085,7305555556', '44088', 'Safra', 'HLCUNG12007CPWY0', '--', 'M', 'Armador ""outros"" incorreto. Ajustado para ""Hapag-Lloyd"". Ja estava ajustado no CS Embarque não atualizado pelo Robô na plataforma, adicionados workflows de transporte internacional manualmente. Status atualizado para Em Trânsito Internacional. Carga chega 22/09. Verificar se atualizou para manifestado.', 'Sim', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44077,5', '44088', 'Safra', 'OOLU2645188020', '--', 'M', 'Armador Orient Overseas identificado, ajustado no CS. Adicionados workflows de transporte internacional manualmente. Status atualizado para Em Trânsito Internacional. Verificar se atualizou para manifestado.', 'Sim', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', '', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44077,5', '44088', 'Safra', 'SUDU24131912925', 'CS', 'M', 'BL não encontrado, hamburg sud não puxou nenhum dado', 'Não ', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44077,5', '44095', 'Safra', 'EURFLB2072477SSZ', '--', 'M', 'Registro presença de carga ', 'Sim', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', '', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44077,5', '44095', 'Safra', 'EDP0121852A', '--', 'M', 'Trocado armador em edição de embarque e atualizado logísitca internacional Armador ""CMA"" identificado.', 'Sim', '', '', 'X', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
union select '44077,5416666667', '44090', 'Safra', 'MAEU608046010', '--', 'M', 'Encontrado na Maersk sem as letras MAEU - robô não encontrou sozinho, ajustado manualmente - acompanhar', 'Sim', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44077,6666666667', '44097', 'Safra', 'WTAO0081823', 'CS', 'M', 'BL não encontrado, workflow adicionados novamente - embarque cadastrado há bastante tempo e ainda não tem CE, talvez esteja incorreto o BL ou ainda não processado pelo robo da db_maritimo', 'Não ', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44077,6666666667', '44088', 'Safra', 'HDMUNXBR7004876', '--', 'M', 'Armador Hyundai identificado, ajustado no CS. Adicionados workflows de transporte internacional manualmente. Status atualizado para Em Trânsito Internacional. Verificar se atualizou para manifestado. ', 'Sim', '', '', '', '', '', '', 'X', '', '', '', '', '', '', '', '', '', '', ''
union select '44077,6666666667', '44097', 'Safra', 'SHA20080637', 'CS', 'M', 'BL não encontrado, workflow adicionados novamente - embarque cadastrado há bastante tempo e ainda não tem CE, talvez esteja incorreto o BL ou ainda não processado pelo robo da db_maritimo', 'Não ', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44047,4645833333', '44097', 'Safra', '1210', 'CS', 'M', 'BL não encontrado (caso da msc, esse poderia colocar bl incorreto?)', 'Não ', '', '', '', '', '', '', '', '', '', '', 'X', '', '', '', '', '', '', ''
union select '44047,4861111111', '44088', 'Safra', 'NXBR7004876', '--', 'M', 'Armador Hyundai identificado, ajustado no CS. Adicionados workflows de transporte internacional manualmente. Status atualizado para Em Trânsito Internacional. Verificar se atualizou para manifestado. ', 'Sim', '', '', '', '', '', '', 'X', '', '', '', '', '', '', '', '', '', '', ''
union select '44085,73125', '44097', 'Safra', 'SUDU20297AORCFMG', '--', 'M', 'Armador Hamburg Sud identificado, ja ajustado no CS. Embarque não atualizado pelo Robô na plataforma, adicionados workflows de transporte internacional manualmente. Status atualizado para Em Trânsito Internacional. Carga chega 15/09. Verificar se atualizou para manifestado.', 'Sim', '44076', 'X', '', '', '', '', '', '', '', '', 'X', '', '', '', '', '', '', ''
union select '44047,5416666667', '44097', 'Safra', '850150011797', 'CS', 'M', 'BL não encontrado, workflow adicionados novamente - embarque cadastrado há bastante tempo e ainda não tem CE, talvez esteja incorreto o BL ou ainda não processado pelo robo da db_maritimo', 'Não ', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44047,5416666667', '44097', 'Safra', 'AFS/20-21/0241', 'CS', 'M', 'BL não encontrado, workflow adicionados novamente - embarque cadastrado há bastante tempo e ainda não tem CE, talvez esteja incorreto o BL ou ainda não processado pelo robo da db_maritimo', 'Não ', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44047,5416666667', '44095', 'Safra', 'COSU6270441950', '--', 'M', 'manifestado ', 'Sim', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44047,5416666667', '44097', 'Safra', 'SNBLU0013826', 'CS', 'M', 'BL não encontrado, Manifestado 21/09', 'Não ', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44085,7375', '44083', 'Safra', 'ONEYMAAA26456900', '--', 'M', 'Armador "outros" incorreto. Ajustado para "ONE". Embarque atualizado automaticamente.', 'Sim', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44083,3958333333', '44097', 'Safra', 'SYNSHA20SE080952', 'CS', 'M', 'BL não encontrado, Manifestado 21/09', 'Não ', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', 'X', '', 'X', 'X', 'X', 'X', 'X', 'X', 'X', ''
union select '44085,7402777778', '44057', 'Safra', 'SHSP00134200', '--', 'M', 'Armador PIL identificado, ajustado no CS. Adicionados workflows de transporte internacional manualmente. Status atualizado para Em Trânsito Internacional. Carga chega 27/09. Verificar se atualizou para manifestado. Verificar se armador colocou novos status.', 'Sim', '44088', 'X', '', '', '', '', '', '', '', '', 'X', '', '', '', '', '', '', ''
union select '44083,3958333333', '44088', 'Safra', '0MUM014048', '--', 'M', 'Armador Hamburg Sud identificado. Adicionados workflows de transporte internacional manualmente. Status atualizado para Em Trânsito Internacional. Carga chega 02/10. Verificar se atualizou para manifestado. ', 'Sim', '44088', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', '', 'X', 'x', 'x', 'x', 'x', 'x', 'x', ''
union select '44083,3958333333', '44095', '', 'BFZFL20070080', '--', 'M', 'Liberado para carregamento ', 'Sim', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', '', 'X', 'x', 'x', 'x', 'x', 'x', 'x', ''
union select '44083,3958333333', '44095', 'Safra', 'SUDUI0MUM014151X', '--', 'M', 'Armador Hamburg Sud identificado, ja ajustado no CS Adicionados workflows de transporte internacional manualmente. Status atualizado para Em Trânsito Internacional. Carga chega 19/09. Verificar se atualizou para manifestado. (manifestado 11/09)', 'Sim', '44085', 'x', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
union select '44083,6458333333', '44097', 'Safra', 'XMBRITJ0G005', 'CS', 'M', 'Liberado para carregamento ', 'Sim', '--', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', '', 'X', 'x', 'x', 'x', 'x', 'x', 'x', ''
union select '44083,6458333333', '44095', 'Safra', '23551535293-22830039922', 'CS', 'A ', 'Documento de carga não registrado no sistema - Necessária análise do CS', 'ok', '--', '', '', '', '', '', '', '', '', '', 'X', '', '', '', '', '', '', 'x'
union select '44083,7291666667', '44097', 'Safra', 'VGNBOAP02008339', 'CS', 'M', 'BL não encontrado, workflow adicionados novamente.', 'Não ', '--', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', '', 'X', 'x', 'x', 'x', 'x', 'x', 'x', ''
union select '44083,7291666667', '44097', 'Safra', 'SSZSHA2003023', 'CS', 'M', 'BL não encontrado, workflow adicionados novamente.', 'Não ', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', '', 'X', 'x', 'x', 'x', 'x', 'x', 'x', ''
union select '44083,7291666667', '44097', 'Safra', 'SSZSHA1910014', 'CS', 'M', 'BL não encontrado, workflow adicionados novamente.', 'Não ', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', '', 'X', 'x', 'x', 'x', 'x', 'x', 'x', ''
union select '44083,7291666667', '44097', 'Safra', 'SSZSGA1912033', 'CS', 'M', 'BL não encontrado, workflow adicionados novamente.', 'Não ', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', '', 'X', 'x', 'x', 'x', 'x', 'x', 'x', ''
union select '44083,7291666667', '44097', 'Safra', 'SSZSGA2001016', 'CS', 'M', 'BL não encontrado, workflow adicionados novamente.', 'Não ', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', '', 'X', 'x', 'x', 'x', 'x', 'x', 'x', ''
union select '44083,7291666667', '44095', 'Safra', '02038671334-22830041930', 'CS', 'A ', 'Documento de carga não registrado no sistema - Necessária análise do CS', 'ok', '--', 'x', '', '', '', '', '', '', '', '', 'X', '', '', '', '', '', '', 'x'
union select '44083,7291666667', '44095', 'Safra', '02038696862-22830042335', 'CS', 'A ', 'Documento de carga não registrado no sistema - Necessária análise do CS', 'ok', '--', 'x', '', '', '', '', '', '', '', '', 'X', '', '', '', '', '', '', 'x'
union select '44083,7291666667', '44095', 'Safra', '15759091675-22830041226', 'CS', 'A ', 'Documento de carga não registrado no sistema - Necessária análise do CS', 'ok', '--', 'x', '', '', '', '', '', '', '', '', 'X', '', '', '', '', '', '', 'x'
union select '44083,7291666667', '44097', 'Safra', 'NBOMAU200080974', 'CS', 'M', 'BL não encontrado, workflow adicionados novamente.', 'Não ', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', '', 'X', 'x', 'x', 'x', 'x', 'x', 'x', ''
union select '44083,7291666667', '44097', 'Safra', 'S20071076S', 'CS', 'M', 'BL não encontrado, workflow adicionados novamente.', 'Não ', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', '', 'X', 'x', 'x', 'x', 'x', 'x', 'x', ''
union select '44083,7291666667', '44095', 'Safra', '15759091701-22830042206', 'CS', 'A ', 'Documento de carga não registrado no sistema - Necessária análise do CS', 'ok', '--', 'x', '', '', '', '', '', '', '', '', 'X', '', '', '', '', '', '', 'x'
union select '44083,7291666667', '44097', 'Safra', 'SHYY20080352', 'CS', 'M', 'BL não encontrado, workflow adicionados novamente.', 'Não ', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', '', 'X', 'x', 'x', 'x', 'x', 'x', 'x', ''
union select '44083,7291666667', '44097', 'Safra', 'NBBLU0021764', 'CS', 'M', 'BL não encontrado, workflow adicionados novamente.', 'Não ', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', '', 'X', 'x', 'x', 'x', 'x', 'x', 'x', ''
union select '44083,7291666667', '44097', 'Safra', 'HKG28010493', 'CS', 'M', 'BL não encontrado, workflow adicionados novamente.', 'Não ', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', '', 'X', 'x', 'x', 'x', 'x', 'x', 'x', ''
union select '44084,625', '44097', 'Safra', 'SZ20080509A', 'CS', 'M', 'BL não encontrado, workflow adicionados novamente.', 'Não ', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', '', 'X', 'x', 'x', 'x', 'x', 'x', 'x', ''
union select '44085,7465277778', '44088', 'Safra', '181AU20C0711316K1', '--', 'M', 'Armador "outros" incorreto. Ajustado para "MSC". Embarque atualizado automaticamente.(Manifestado)', 'Sim', '', 'x', '', '', '', '', '', '', '', '', 'X', '', '', '', '', '', '', ''
union select '44084,625', '44088', 'Safra', 'SZ20081281', 'CS', 'M', 'BL não encontrado ', 'Não ', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', ''
union select '44084,625', '44088', 'Safra', 'XMCX00444900', 'CS', 'M', 'BL não encontrado ', 'Não ', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', ''
union select '44084,625', '44088', 'Safra', 'SZ20081112B', 'CS', 'M', 'BL não encontrado ', 'Não ', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', ''
union select '44084,625', '44088', 'Safra', 'OFMBOM20211857', 'CS', 'M', 'BL não encontrado ', 'Não ', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', ''
union select '44084,625', '44088', 'Safra', 'NBOMAU20080974', 'CS', 'M', 'BL não encontrado ', 'Não ', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', ''
union select '44085,75', '44088', 'Safra', '0JAX048758', 'CS', 'M', 'BL incorreto. Cliente cadastrou o número da reserva da HSUD.', 'ok', '', 'x', '', '', '', '', '', '', 'x', '', '', '', '', '', '', '', '', ''
union select '44084,625', '44088', 'Safra', 'NGBS011901', 'CS', 'M', 'BL não encontrado ', 'Não ', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', ''
union select '44085,625', '44088', 'Safra', 'VGNGDAP02009023', 'CS', 'M', 'BL não encontrado ', 'Não ', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', ''
union select '44085,625', '44088', 'Safra', 'SUDU20297AOU4CKE', '--', 'M', 'Armador Hamburg Sud identificado, ja ajustado no CS. Adicionados workflows de transporte internacional manualmente. Status atualizado para Em Trânsito Internacional. Carga chega 29/09. Verificar se atualizou para manifestado. Verificar se armador colocou novos status.', 'Sim', '', 'x', '', '', '', '', '', '', 'x', '', '', '', '', '', '', '', '', ''
union select '44085,625', '44095', 'Safra', '17674625880-ACAN11905', 'CS', 'A', 'Aéreo - inserida info de Voo e Chegada do master. Inserida info "HAWB não encontrado, conferir número informado" - Cliente cadastrou house 11905 e processo atualizou certinho.', 'ok', '--', 'x', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'x'
union select '44088,5972222222', '44091', 'Safra', 'SSZ0788716', 'CS', 'M', 'BL não encontrado, workflow adicionados novamente ', 'Não ', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', ''
union select '44088,5972222222', '44091', 'Safra', 'SHAITP51733', 'CS', 'M', 'BL não encontrado, workflow adicionados novamente ', 'Não ', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', ''
union select '44088,5972222222', '44091', 'Safra', 'NGBITP51732', 'CS', 'M', 'BL não encontrado, workflow adicionados novamente ', 'Não ', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', ''
union select '44088,5972222222', '44091', 'Safra', 'OKLC003693', 'CS', 'M', 'BL não encontrado, workflow adicionados novamente ', 'Não ', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', ''
union select '44088,5972222222', '44091', 'Safra', 'SZ20080543', 'CS', 'M', 'BL não encontrado, workflow adicionados novamente ', 'Não ', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', ''
union select '44088,5972222222', '44091', 'Safra', 'WNGB0081950', 'CS', 'M', 'BL não encontrado, workflow adicionados novamente ', 'Não ', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', ''
union select '44088,5972222222', '44091', 'Safra', 'JKMAO2008003', 'CS', 'M', 'BL não encontrado, workflow adicionados novamente ', 'Não ', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', ''
union select '44088,5972222222', '44091', 'Safra', 'TPES2004941', 'CS', 'M', 'BL não encontrado, workflow adicionados novamente ', 'Não ', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', ''
union select '44088,5972222222', '-----', 'Safra', 'MEDUUA192399', '--', 'M', 'Em transito internacional, não analisei em nenhum armador (esse é aquele que vc comento comigo) - atrasou para mudar o status', 'Sim', '', '', '', '', '', '', '', '', '', '', 'x', '', '', '', '', '', '', ''
union select '44088,5972222222', '44097', 'Safra', 'BSZFL20080185', 'CS', 'M', 'Manifestado (exckui os workflow de bl não encontrado)', 'Sim', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', ''
union select '44088,5972222222', '44097', 'Safra', 'BSZFL20080029', 'CS', 'M', 'BL não encontrado, workflow adicionados novamente ', 'Não ', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', ''
union select '44088,5972222222', '44097', 'Safra', 'BKK00013227', '--', 'M', 'Liberado para carregamento ', 'Sim', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
union select '44088,5972222222', '44097', 'Safra', 'SHYY20070201B', 'CS', 'M', 'Liberação Aduana ', 'Sim', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', ''
union select '44089,4583333333', '44095', 'Safra', 'SUDUN0KLC003693X', '--', 'M', 'Armador Hamburg Sud identificado, ja ajustado no CS. Adicionados workflows de transporte internacional manualmente. Status atualizado para Em Trânsito Internacional. Carga chega 08/10. Verificar se atualizou para manifestado.', 'Sim', '', 'x', '', '', '', '', '', '', 'x', '', '', '', '', '', '', '', '', ''
union select '44089,4583333333', '44095', 'Safra', '78413098046-SA200502041', 'CS', 'A', 'Documento de carga não registrado no sistema - Necessária análise do CS', 'ok', '--', 'x', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'x'
union select '44089,4583333333', '44097', 'Safra', 'XMN20080127', 'CS', 'M', 'BL não encontrado, workflow adicionados novamente ', 'Não ', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', ''
union select '44089,4583333333', '44097', 'Safra', 'FHK20080249P', 'CS', 'M', 'BL não encontrado, workflow adicionados novamente ', 'Não ', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', ''
union select '44089,4583333333', '44097', 'Safra', 'HBRITJ0H018', 'CS', 'M', 'Manifestado', 'Sim', '44092', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', ''
union select '44089,4583333333', '44097', 'Safra', 'SHAS013541', 'CS', 'M', 'Manifestado', 'Sim', '44091', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', ''
union select '44090,3958333333', '44095', 'Safra', 'SUDU20159AORCAAY', '--', 'M', 'Liberado para carregamento ', 'Sim', '', 'x', '', '', '', '', '', '', 'x', '', '', '', '', '', '', '', '', ''
union select '44090,3958333333', '44091', 'Safra', '0HF6QN1MA', 'CS', 'M', 'BL não encontrado, workflow adicionados novamente ', 'Não ', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', ''
union select '44090,3958333333', '44091', 'Safra', 'NBOIOA20081563', 'CS', 'M', 'BL não encontrado, workflow adicionados novamente ', 'Não ', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', ''
union select '44090,6430555556', '44091', 'Safra', 'NBOIOA20081531', 'CS', 'M', 'BL não encontrado, workflow adicionados novamente ', 'Não ', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', ''
union select '44090,6430555556', '44091', 'Safra', 'WSHA0083591', 'CS', 'M', 'BL não encontrado ', 'Não ', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', ''
union select '44090,6430555556', '44091', 'Safra', 'WSHA0082369', 'CS', 'M', 'BL não encontrado ', 'Não ', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', ''
union select '44090,6430555556', '44091', 'Safra', 'WSHA0082801A', 'CS', 'M', 'BL não encontrado ', 'Não ', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', ''
union select '44090,6430555556', '44091', 'Safra', 'WSHA0082818A', 'CS', 'M', 'BL não encontrado ', 'Não ', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', ''
union select '44090,6430555556', '44091', 'Safra', 'WFOC0070160', 'CS', 'M', 'BL não encontrado ', 'Não ', '', 'x', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
union select '44090,6430555556', '44095', 'Safra', '6272737540', '--', 'M', 'Armador identificado cosco. alterei o armador na plataforma para cosco e rodei o chain.. status atualizaram para Em transito internacional (ultimo worflow está: Loaded at First POL - Yantian Int l Container Tml,Yantian,Guangdong,China - Vessel - ETA: 26/09/2020) info 30/08', 'Sim', '', 'x', '', 'x', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
union select '44091,4166666667', '44095', 'Safra', 'SSZSHA1912033', 'CS', 'M', 'BL não encontrado ', 'Não ', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', ''
union select '44091,4166666667', '44095', 'Safra', 'BQDFL20080263A', 'CS', 'M', 'BL não encontrado ', 'Não ', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', ''
union select '44091,4166666667', '44095', 'Safra', 'VGNBOAP02009472', 'CS', 'M', 'BL não encontrado ', 'Não ', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', ''
union select '44092,4166666667', '44095', 'Safra', 'JPEC2008006', 'CS', 'M', 'BL não encontrado ', 'Não ', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', ''
union select '44092,4166666667', '44095', 'Safra', 'JPEC-2008008', 'CS', 'M', 'BL não encontrado ', 'Não ', '', 'x', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
union select '44092,4166666667', '44095', 'Safra', 'SCL08-000106-2020', 'CS', 'M', 'BL não encontrado ', 'Não ', '', 'x', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
union select '44092,4166666667', '44095', 'Safra', 'BFZFL20080053', 'CS', 'M', 'BL não encontrado ', 'Não ', '', 'x', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
union select '44092,4166666667', '44092', 'Safra', 'BSZFL20080682', '--', 'M', 'Analisei nos armadores antes de dar o chain e nao encontrei, rodei o chain para colocar o " BL não encontrado " e atualizou para manifestado (08/09)', 'Sim', '', 'x', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
union select '44092,625', '44095', 'Safra', 'WNGB0080975', 'CS', 'M', 'BL não encontrado ', 'Não ', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', ''
union select '44092,625', '44095', 'Safra', 'ONE ', 'CS', 'M', 'Consignatário divergente, temos vários BLs ONE na base, tem que pedir o documento para o cliente para vincularmos ao correto.', 'ok', '', 'x', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''
union select '44092,625', '44095', 'Safra', '01655654804-TPE2000549', 'CS', 'A', 'Aéreo - inserida info de Voo e Chegada do master. Inserida info ""HAWB não encontrado, conferir número informado Quando colocamos no IsisComex o HAWB somente 2000549 o embarque é válido.', 'ok', '--', 'x', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'x'
union select '44095,7916666667', '-----', 'Safra', 'RIV407666', '--', 'M', 'BL não encontrado ', 'Não ', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', ''
union select '44095,7916666667', '-----', 'Safra', 'MVD004481RCN', '--', 'M', 'BL não encontrado ', 'Não ', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', ''
union select '44095,7916666667', '-----', 'Safra', '0PC67N1RCN', '--', 'M', 'BL não encontrado ', 'Não ', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', ''
union select '44096,6111111111', '-----', 'Safra', 'GLSWW20081646', '--', 'M', 'BL não encontrado ', 'Não ', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', ''
union select '44096,6111111111', '-----', 'Safra', 'HWSC20080770', '--', 'M', 'BL não encontrado ', 'Não ', '', 'x', 'x', '', 'x', 'x', 'x', 'x', 'x', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', ''
union select '44096,6111111111', '-----', 'Safra', 'EVSTSSHA20080249', '--', 'M', 'BL não encontrado ', 'Não ', '', 'x', 'x', '', 'x', 'x', 'x', 'x', 'x', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', ''
union select '44096,6111111111', '-----', 'Safra', '2020SA002199', '--', 'M', 'BL não encontrado ', 'Não ', '', 'x', 'x', '', 'x', 'x', 'x', 'x', 'x', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', ''
union select '44096,6111111111', '-----', 'Safra', 'CZ0H005', '--', 'M', 'BL não encontrado ', 'Não ', '', 'x', 'x', '', 'x', 'x', 'x', 'x', 'x', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', ''
union select '44096,6111111111', '-----', 'Safra', 'FHK20080401PT', '--', 'M', 'BL não encontrado ', 'Não ', '', 'x', 'x', '', 'x', 'x', 'x', 'x', 'x', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', ''
union select '44096,6111111111', '-----', 'Safra', 'WNGB0080980', '--', 'M', 'BL não encontrado ', 'Não ', '', 'x', 'x', '', 'x', 'x', 'x', 'x', 'x', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', ''
union select '44096,625', '-----', 'Safra', 'WNGB0080982', '--', 'M', 'BL não encontrado ', 'Não ', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', ''
union select '44096,625', '44095', 'Safra', '04509886833-SZX2001514', 'CS', 'A', '""Aéreo - inserida info de Voo e Chegada do master. Inserida info ""HAWB não encontrado, conferir número informado Quando colocamos no IsisComex o HAWB somente 2001514 o embarque é válido', 'ok', '--', 'x', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'x'
union select '44096,625', '-----', 'Safra', 'HLCUHKG2007AYIL8', '--', 'M', 'Armador Hapag identificado. 17/08/2020 08:38 Gate out empty - Truck - HONG KONG 18/08/2020 13:04 Arrival in - Truck - HONG KONG 22/08/2020 02:45 Loaded - MAERSK LABREA 033W - HONG KONG 22/08/2020 18:18 Vessel departed - MAERSK LABREA 033W - HONG KONG 24/09/2020 09:06 Vessel arrival - MAERSK LABREA 033W - ITAPOA 24/09/2020 22:00 Discharge  - MAERSK LABREA 033W - ITAPOA caso entrou em manifesto ', 'Não ', '44085', '', '', '', '', '', '', 'x', '', '', '', '', '', '', '', '', '', ''
union select '44097,4340277778', '-----', 'Safra', 'SE2008010A', '--', 'M', 'BL não encontrado ', 'Não ', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', ''
union select '44097,4583333333', '-----', 'Safra', '110110001205', '--', 'M', 'BL não encontrado ', 'Não ', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', ''
union select '44097,4583333333', '-----', 'Safra', 'SHYY20070634', '--', 'M', 'BL não encontrado ', 'Não ', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', ''
union select '44097,4583333333', '-----', 'Safra', 'SHYY20080412', '--', 'M', 'BL não encontrado ', 'Não ', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', ''
union select '44098,3930555556', '-----', 'Safra', 'SEPGS20001773', '--', 'M', 'BL não encontrado ', 'Não ', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', ''
union select '44098,3930555556', '-----', 'Safra', 'CSBRMAO0H021', '--', 'M', 'BL não encontrado ', 'Não ', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', ''
union select '44098,3930555556', '-----', 'Safra', 'SHA20080738', '--', 'M', 'BL não encontrado ', 'Não ', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', ''
union select '44098,3930555556', '-----', 'Safra', 'NBO0273631', '--', 'M', 'BL não encontrado ', 'Não ', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', 'x', '', 'x', 'x', 'x', 'x', 'x', 'x', 'x', ''
  ;;

}

  dimension: DataHora {
    type: string
    sql: ${TABLE}.DataHora ;;
  }

  dimension: Revisao {
    type: string
    sql: ${TABLE}.Revisao ;;
  }

  dimension: Cliente {
    type: string
    sql: ${TABLE}.Cliente ;;
  }

  dimension: BL {
    type: string
    sql: ${TABLE}.BL ;;
  }

  dimension: CS {
    type: string
    sql: ${TABLE}.CS ;;
  }

  dimension: Modal {
    type: string
    sql: ${TABLE}.Modal ;;
  }

  dimension: Observacao {
    type: string
    sql: ${TABLE}.Observacao ;;
  }

  dimension: Atualizado {
    type: string
    sql: ${TABLE}.Atualizado ;;
  }

  dimension: DataAtualizacao {
    type: string
    sql: ${TABLE}.DataAtualizacao ;;
  }

  dimension: TrackTrace {
    type: string
    sql: ${TABLE}.TrackTrace ;;
  }

  dimension: CMACGM {
    type: string
    sql: ${TABLE}.CMACGM ;;
  }

  dimension: COSCO {
    type: string
    sql: ${TABLE}.COSCO ;;
  }

  dimension: EVERGREEN {
    type: string
    sql: ${TABLE}.EVERGREEN ;;
  }

  dimension: GRIMALDI {
    type: string
    sql: ${TABLE}.GRIMALDI ;;
  }

  dimension: HYUNDAI {
    type: string
    sql: ${TABLE}.HYUNDAI ;;
  }

  dimension: HAPAG {
    type: string
    sql: ${TABLE}.HAPAG ;;
  }

  dimension: HSUD {
    type: string
    sql: ${TABLE}.HSUD ;;
  }

  dimension: MAERSK {
    type: string
    sql: ${TABLE}.MAERSK ;;
  }

  dimension: MSC {
    type: string
    sql: ${TABLE}.MSC ;;
  }

  dimension: NYK {
    type: string
    sql: ${TABLE}.NYK ;;
  }

  dimension: ONE {
    type: string
    sql: ${TABLE}.ONE ;;
  }

  dimension: OVERSEAS {
    type: string
    sql: ${TABLE}.OVERSEAS ;;
  }

  dimension: PIL {
    type: string
    sql: ${TABLE}.PIL ;;
  }

  dimension: YANG {
    type: string
    sql: ${TABLE}.YANG ;;
  }

  dimension: ZIM {
    type: string
    sql: ${TABLE}.ZIM ;;
  }

  dimension: LOOKERCE {
    type: string
    sql: ${TABLE}.LOOKERCE ;;
  }


}
