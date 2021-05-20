view: nps_02_2021 {

  derived_table: {
    sql:
    select(ROW_NUMBER () OVER ()) as id,*
from
  (
    SELECT
      'Luis Muller' AS name, 'luis@asiasource.com.br' AS email, 10 AS nota, NULL AS observacao, 'https://search.logcomex.io/' AS page, CAST('2021-03-10 14:55:34' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Cesar Reffer Reffer' AS name, 'cesar.reffer@latam.com' AS email, 6 AS nota, NULL AS observacao, 'https://sistema.logcomex.io/#/inteligencia/aereo' AS page, CAST('2021-03-01 10:02:30' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Andrea Barbosa Barbosa' AS name, 'abarbosa@actioncargo.com.br' AS email, 10 AS nota, NULL AS observacao, 'https://sistema.logcomex.io/#/inteligencia/exportacao' AS page, CAST('2021-02-26 16:58:26' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Super User Pricing' AS name, 'intel@actioncargo.com.br' AS email, 8 AS nota, NULL AS observacao, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, CAST('2021-03-09 09:29:55' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Luciana' AS name, 'luciana.daunis@trilux.com.br' AS email, 10 AS nota, NULL AS observacao, 'https://search.logcomex.io/' AS page, CAST('2021-03-03 14:56:42' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Isadora Bortoloti Bortoloti' AS name, 'ibortoloti@agility.com' AS email, 10 AS nota, NULL AS observacao, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, CAST('2021-03-11 10:09:01' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Andre Amato' AS name, 'asoares@agility.com' AS email, 8 AS nota, NULL AS observacao, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, CAST('2021-03-11 09:44:00' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Anderson Retti Retti' AS name, 'aretti@agility.com' AS email, 8 AS nota, NULL AS observacao, 'https://sistema.logcomex.io/#/inteligencia/aereo' AS page, CAST('2021-03-09 14:05:14' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Cleber' AS name, 'cleber.campana@agroceres.com' AS email, 10 AS nota, NULL AS observacao, NULL AS page, CAST('2021-03-10 13:09:40' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Fabio Ricardi Ricardi' AS name, 'fabio.ricardi@alfalaval.com' AS email, 9 AS nota, NULL AS observacao, 'https://search.logcomex.io/' AS page, CAST('2021-02-26 16:30:42' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Albert Varadi' AS name, 'albert.varadi@alfalaval.com' AS email, 8 AS nota, NULL AS observacao, NULL AS page, CAST('2021-03-10 13:14:32' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'carla Vieira' AS name, 'carla.vieira@allink.com.br' AS email, 8 AS nota, NULL AS observacao, 'https://biexportacao.logcomex.io/' AS page, CAST('2021-03-10 10:30:22' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'CAROLINA DE oliveira duque' AS name, 'carol@amslog.com.br' AS email, 10 AS nota, 'boas estatisticas' AS observacao, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, CAST('2021-03-04 16:29:14' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Leonardo Vinicios de Lima Vinicios de Lima' AS name, 'leonardo@ascensus.com.br' AS email, 10 AS nota, NULL AS observacao, 'https://search.logcomex.io/' AS page, CAST('2021-03-10 14:15:39' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Camila Oliveira Oliveira' AS name, 'camila.oliveira@ascensus.com.br' AS email, 10 AS nota, NULL AS observacao, 'https://search.logcomex.io/' AS page, CAST('2021-03-10 14:01:52' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Valeria Di Giunta di giunta' AS name, 'valeria.digiunta@astra-sa.com' AS email, 8 AS nota, NULL AS observacao, 'https://search.logcomex.io/' AS page, CAST('2021-03-03 10:04:13' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Marly' AS name, 'marly@atias.com.br' AS email, 10 AS nota, 'muito boa a plataforma' AS observacao, 'https://search.logcomex.io/' AS page, CAST('2021-03-01 11:11:46' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Cintia' AS name, 'recepcao@atlantisdespachos.com.br' AS email, 10 AS nota, NULL AS observacao, 'https://search.logcomex.io/' AS page, CAST('2021-03-02 08:11:33' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'FRANCISCO OLIVEIRA Oliveira' AS name, 'francisco.oliveira@auroraeadi.com.br' AS email, 9 AS nota, 'Data de desembaraço dos Embarques' AS observacao, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, CAST('2021-03-02 14:54:02' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Raphael Cremer Albiero Cremer Albiero' AS name, 'raphael.albiero@eadiaurora.com.br' AS email, 9 AS nota, NULL AS observacao, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, CAST('2021-03-03 08:07:19' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Lucas Fornasari Szpoganicz' AS name, 'engenharia01@awacomercial.com.br' AS email, 4 AS nota, NULL AS observacao, 'https://search.logcomex.io/' AS page, CAST('2021-03-04 17:22:21' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Comercial' AS name, 'comercial@axisshipping.com.br' AS email, 10 AS nota, NULL AS observacao, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, CAST('2021-02-26 16:01:00' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Danielle Lopes' AS name, 'danielle.lopes@bmlog.com.br' AS email, 10 AS nota, NULL AS observacao, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, CAST('2021-03-08 16:24:49' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Aldemir Marques Marques' AS name, 'aldemir.marques@band-deicmar.com.br' AS email, 9 AS nota, 'Muito bom' AS observacao, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, CAST('2021-03-05 11:46:41' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Marcelo Machado Machado' AS name, 'marcelo.machado@band-deicmar.com.br' AS email, 7 AS nota, NULL AS observacao, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, CAST('2021-03-04 16:45:27' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Leocádio Cesar Ribeiro Cunha Cesar Ribeiro Cunha' AS name, 'leocadio.cunha@band-deicmar.com.br' AS email, 9 AS nota, 'Muitas informações importantes para prospecção de novos negócios.É um ótimo programa para pesquisas sobre comércio exterior. Atende as minhas necessidades.' AS observacao, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, CAST('2021-03-02 08:36:47' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Bruno Conceicao Conceicao' AS name, 'bruno.conceicao@band-deicmar.com.br' AS email, 10 AS nota, 'Relatórios são super dinâmicos e fácil de entender, bem como as informações que são visualizadas em tela.' AS observacao, 'https://sistema.logcomex.io/#/inteligencia/captacao' AS page, CAST('2021-03-08 10:18:06' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Fernando Alcantara Alcantara' AS name, 'fernando.alcantara@bawlogistics.global' AS email, 10 AS nota, NULL AS observacao, NULL AS page, CAST('2021-02-26 16:25:59' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Renan' AS name, 'compras01@bellvalley.com.br' AS email, 10 AS nota, NULL AS observacao, 'https://search.logcomex.io/' AS page, CAST('2021-02-26 16:14:04' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Greicy Peixer Peixer' AS name, 'greicy.peixer@bermo.com.br' AS email, 8 AS nota, NULL AS observacao, 'https://search.logcomex.io/' AS page, CAST('2021-03-01 16:17:08' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Nayara Souza' AS name, 'nayarasouza@betimquimica.com.br' AS email, 9 AS nota, NULL AS observacao, 'https://search.logcomex.io/' AS page, CAST('2021-03-01 14:33:51' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Renan Cavalcanti' AS name, 'renan.cavalcanti@blulogistics.com.br' AS email, 7 AS nota, NULL AS observacao, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, CAST('2021-03-03 10:30:43' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Daniela Popp Popp' AS name, 'daniela.popp@blulogistics.com.br' AS email, 9 AS nota, NULL AS observacao, NULL AS page, CAST('2021-03-10 13:25:39' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Vinicius Katsuo Katsuo' AS name, 'vinicius.katsuo@blulogistics.com.br' AS email, 9 AS nota, NULL AS observacao, NULL AS page, CAST('2021-03-10 12:38:33' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Álvaro Goto Bastos Goto' AS name, 'alvaro.goto@brado.com.br' AS email, 6 AS nota, NULL AS observacao, NULL AS page, CAST('2021-03-10 13:45:58' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Amadeu' AS name, 'amadeu@braschemical.com.br' AS email, 10 AS nota, 'funciona muito bem. Fácil de consultar' AS observacao, 'https://search.logcomex.io/' AS page, CAST('2021-02-28 23:05:30' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Karina Rodrigues' AS name, 'comex@brasilux.com.br' AS email, 7 AS nota, NULL AS observacao, 'https://search.logcomex.io/' AS page, CAST('2021-03-10 15:41:15' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Viviane Sarkis Sarkis' AS name, 'viviane@windlog.com.br' AS email, 8 AS nota, 'informaçao' AS observacao, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, CAST('2021-03-08 10:55:25' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Joelma Saraiva' AS name, 'jsaraiva@bentonit.com.br' AS email, 7 AS nota, 'Estou trabalhando com a ferramenta a pouco tempo. Já notei que vocês estão trabalhando em melhorias. E acredito que haja oportunidades de melhorias e tornar a navegação mais amigável.
    Obrigada!' AS observacao, NULL AS page, CAST('2021-03-10 12:36:41' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Vania Donato Donato' AS name, 'vania.donato@chrobinson.com' AS email, 9 AS nota, NULL AS observacao, 'https://sistema.logcomex.io/#/inteligencia/importacao?silent=true' AS page, CAST('2021-03-02 14:41:18' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Ana Kriegel Kriegel' AS name, 'ana.kriegel@chrobinson.com' AS email, 9 AS nota, NULL AS observacao, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, CAST('2021-03-01 08:18:24' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Yramaia' AS name, 'ycastilho@capitalsp.com.br' AS email, 8 AS nota, NULL AS observacao, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, CAST('2021-03-04 15:58:49' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Bruno Vieira' AS name, 'sales09@csslog.com.br' AS email, 9 AS nota, NULL AS observacao, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, CAST('2021-03-03 09:46:08' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Patricia Martinez' AS name, 'export@csslog.com.br' AS email, 10 AS nota, NULL AS observacao, 'https://biexportacao.logcomex.io/' AS page, CAST('2021-03-01 09:10:59' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Gisseh' AS name, 'gbertolami@carvalhaes.net' AS email, 10 AS nota, 'Simplicidade e facilidade de uso.' AS observacao, NULL AS page, CAST('2021-03-10 13:38:46' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Thiago Reis' AS name, 'tlarrosa@castellarmetals.com.br' AS email, 10 AS nota, NULL AS observacao, 'https://search.logcomex.io/' AS page, CAST('2021-03-10 20:19:55' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Ana Cristina da Silva Vieira Araujo Araujo' AS name, 'ana.araujo@grupocbo.com.br' AS email, 7 AS nota, 'Muitos erros de atualização dos embarques.' AS observacao, NULL AS page, CAST('2021-02-26 15:46:14' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Michelle Molero' AS name, 'michelle@cfreight.com.br' AS email, 10 AS nota, NULL AS observacao, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, CAST('2021-02-26 16:45:48' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Laura Soto' AS name, 'laura.soto@cfreight.com.br' AS email, 10 AS nota, NULL AS observacao, 'https://sistema.logcomex.io/#/inteligencia/exportacao?silent=true' AS page, CAST('2021-03-09 16:12:53' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Jefferson' AS name, 'jefferson.costa@cfreight.com.br' AS email, 5 AS nota, NULL AS observacao, NULL AS page, CAST('2021-03-10 12:47:30' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Alexandre Crespo' AS name, 'alexandre@cimexcuritiba.com' AS email, 10 AS nota, NULL AS observacao, 'https://search.logcomex.io/' AS page, CAST('2021-03-03 13:20:31' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'João Moraes Morais' AS name, 'joao@clefdobrasil.com' AS email, 10 AS nota, 'Atendimento excelente' AS observacao, 'https://sistema.logcomex.io/#/inteligencia/exportacao' AS page, CAST('2021-03-01 11:05:15' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Rebecca Amorim Amorim' AS name, 'rebecca.amorim@comexport.com.br' AS email, 10 AS nota, NULL AS observacao, 'https://search.logcomex.io/' AS page, CAST('2021-03-08 11:32:37' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Rodrigo Souza de Sant Ana Souza' AS name, 'rodrigo.souza@comexport.com.br' AS email, 10 AS nota, 'trata-se de uma ferramenta extremamente util, para pesquisas de mercados e produtos.' AS observacao, NULL AS page, CAST('2021-03-11 14:41:53' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Waldan Ferreira Ferreira' AS name, 'waldan.ferreira@grupocraft.com.br' AS email, 10 AS nota, NULL AS observacao, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, CAST('2021-03-05 11:08:22' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Thiago Almeida Almeida' AS name, 'thiago.almeida@grupocraft.com.br' AS email, 10 AS nota, NULL AS observacao, 'https://biexportacao.logcomex.io/' AS page, CAST('2021-03-03 16:07:10' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Luis Melo Melo' AS name, 'luis.melo@grupocraft.com.br' AS email, 7 AS nota, NULL AS observacao, 'https://sistema.logcomex.io/#/inteligencia/aereo' AS page, CAST('2021-03-01 08:40:37' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Antonio Dantas' AS name, 'antonio.dantas@craneww.com' AS email, 6 AS nota, NULL AS observacao, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, CAST('2021-03-09 16:21:01' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Grazi' AS name, 'graziela.ribeiro@cremer.com.br' AS email, 10 AS nota, NULL AS observacao, 'https://search.logcomex.io/dashboard/?period=2020-12&ncm=63079010&source=recent_search' AS page, CAST('2021-03-02 00:12:07' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'GUBLIO SILVA Silva' AS name, 'gublio.silva@nunofracht.com.br' AS email, 10 AS nota, NULL AS observacao, 'https://sistema.logcomex.io/#/inteligencia/exportacao' AS page, CAST('2021-03-02 11:30:49' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Luiz Policarpo Policarpo' AS name, 'luiz.policarpo@cticargo.com.br' AS email, 10 AS nota, 'Atendimento de excelência. Profissionais muito atenciosos e sempre dispostos a ouvir nossa necessidade. Ferramentas proporcional análise eficaz para a tomada de decisão de gestores na área de Comex e Shipping. ' AS observacao, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, CAST('2021-03-01 09:43:07' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Bruna Martins' AS name, 'bruna.martins@curtisinternational.com.br' AS email, 8 AS nota, NULL AS observacao, 'https://sistema.logcomex.io/#/inteligencia/aereo' AS page, CAST('2021-03-01 10:27:50' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Graziella Lima' AS name, 'graziella.lima@dachser.com' AS email, 10 AS nota, NULL AS observacao, 'https://sistema.logcomex.io/#/inteligencia/aereo' AS page, CAST('2021-02-28 19:45:16' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Leonardo Santos Santos' AS name, 'leonardo.santos@dachser.com' AS email, 10 AS nota, 'Facilidade no momento da busca e qualidade 100 % nos dados obtidos pelo logcomex. ' AS observacao, NULL AS page, CAST('2021-03-11 00:19:53' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Fabricio Fasssani Fasssani' AS name, 'fabricio.fassani@dachser.com' AS email, 9 AS nota, NULL AS observacao, NULL AS page, CAST('2021-03-10 13:56:21' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Juliana Yamamoto' AS name, 'juliana.yamamoto@dachser.com' AS email, 9 AS nota, 'É um grande aliado para busca de informações sobre o mercado, mas poderia permitir um período de pesquisa um pouco maior, como por exemplo seis meses.' AS observacao, NULL AS page, CAST('2021-03-10 12:41:54' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Davide Szencsar Szencsar' AS name, 'davide@dafarra.com' AS email, 8 AS nota, NULL AS observacao, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, CAST('2021-02-28 13:48:18' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'William Araujo' AS name, 'waraujo@daymsa.com' AS email, 10 AS nota, 'Acesso a informação de qualidade' AS observacao, 'https://search.logcomex.io/' AS page, CAST('2021-03-03 12:17:51' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Gustavo Valmorbida Valmorbida' AS name, 'gustavo.valmorbida@dclogisticsbrasil.com' AS email, 8 AS nota, NULL AS observacao, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, CAST('2021-03-10 12:49:21' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Paulo Espíndola' AS name, 'paulo.espindola@dclogisticsbrasil.com' AS email, 8 AS nota, NULL AS observacao, NULL AS page, CAST('2021-03-10 13:30:12' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Priscila Barreto Bastos' AS name, 'priscila.barreto@delphiforwarding.com' AS email, 10 AS nota, NULL AS observacao, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, CAST('2021-03-01 11:52:07' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Fábio Rodrigo borborema Rodrigo Borborema' AS name, 'sales@delphiforwarding.com' AS email, 10 AS nota, NULL AS observacao, 'https://sistema.logcomex.io/#/inteligencia/importacao?tab=resumo&silent=true&groupBy=nmconsignatario&subGroup=&filter=end_date%3D2021-03-08%26filterImportacaoEmbarque%3D10%26filterImportacaoEmbarque%3D12%26filterImportacaoNmconsignatario%3DALL%2520NATIONS%26grouper%3Dnmconsignatario%26start_date%3D2021-01-01' AS page, CAST('2021-03-08 14:45:27' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Cassiano Silva Gustavo Martinho da Silva' AS name, 'cassiano.silva@dipecarr.com.br' AS email, 10 AS nota, 'Análise de mercado dos meus concorrentes' AS observacao, 'https://search.logcomex.io/' AS page, CAST('2021-03-08 14:48:24' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Dandara Santos' AS name, 'dandara.santos@dmslog.com' AS email, 10 AS nota, NULL AS observacao, 'https://sistema.logcomex.io/#/inteligencia/aereo' AS page, CAST('2021-03-01 16:12:48' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Guilherme Kreischer Kreischer' AS name, 'guilherme.kreischer@dmslog.com' AS email, 10 AS nota, NULL AS observacao, 'https://sistema.logcomex.io/#/inteligencia/aereo' AS page, CAST('2021-03-01 10:50:13' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Lucy Maia Maia' AS name, 'lucy.maia@dmslog.com' AS email, 10 AS nota, 'Rastreamento completo de informações. Muita precisão ' AS observacao, 'https://sistema.logcomex.io/#/inteligencia/aereo' AS page, CAST('2021-02-26 18:41:13' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Bruna Vicente' AS name, 'bruna.vicente@dmslog.com' AS email, 9 AS nota, NULL AS observacao, NULL AS page, CAST('2021-03-10 14:28:48' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Andre da Mata da Mata' AS name, 'andre.mata@dmslog.com' AS email, 10 AS nota, NULL AS observacao, NULL AS page, CAST('2021-03-10 13:43:04' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'João' AS name, 'joao@domazzi.com.br' AS email, 10 AS nota, NULL AS observacao, 'https://search.logcomex.io/' AS page, CAST('2021-03-03 10:33:55' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Felipe' AS name, 'felipe@domazzi.com.br' AS email, 10 AS nota, NULL AS observacao, 'https://search.logcomex.io/' AS page, CAST('2021-03-08 16:45:21' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Bernardo Dozza Pedroso Dozza Pedroso' AS name, 'bernardo@domazzi.com.br' AS email, 10 AS nota, NULL AS observacao, NULL AS page, CAST('2021-03-10 14:25:42' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Raphael Sposito Sposito' AS name, 'raphael.sposito@br.dsv.com' AS email, 9 AS nota, NULL AS observacao, NULL AS page, CAST('2021-03-11 15:39:24' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Captacao Caldas Zapelloni' AS name, 'captacao@egasolutions.com.br' AS email, 10 AS nota, NULL AS observacao, 'https://sistema.logcomex.io/#/tracking/lista' AS page, CAST('2021-03-10 15:55:28' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Comercial' AS name, 'comercial@easywaycargas.com' AS email, 10 AS nota, 'Melhorar o contato dos clientes, telefone, email, etc...' AS observacao, 'https://biexportacao.logcomex.io/' AS page, CAST('2021-03-09 14:14:52' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Katia Kasuco - Katia (katia.kajimoto@ckpvision.com)' AS name, 'katia.kajimoto@ckpvision.com' AS email, 10 AS nota, NULL AS observacao, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, CAST('2021-03-11 15:57:54' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Larissa Meirelles' AS name, 'larissa.meirelles@elekeiroz.com.br' AS email, 10 AS nota, 'Muito facil de usar, informações claras' AS observacao, 'https://search.logcomex.io/' AS page, CAST('2021-03-02 15:41:55' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Thiago' AS name, 'thiago.camargo@elgin.com.br' AS email, 9 AS nota, NULL AS observacao, 'https://search.logcomex.io/' AS page, CAST('2021-03-01 17:03:14' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'jose ricardo abreu pinto' AS name, 'ricardo.abreu@endutex.com.br' AS email, 10 AS nota, NULL AS observacao, 'https://search.logcomex.io/' AS page, CAST('2021-03-02 09:51:49' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Vasco Silva' AS name, 'vasco.silva@endutex.com.br' AS email, 9 AS nota, NULL AS observacao, 'https://search.logcomex.io/' AS page, CAST('2021-03-09 16:34:19' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Ana Karoline' AS name, 'ana.karoline@enterlog.com.br' AS email, 10 AS nota, NULL AS observacao, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, CAST('2021-03-02 08:08:51' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Karine Ferretti' AS name, 'karine.ferretti@esglobal.com.br' AS email, 10 AS nota, NULL AS observacao, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, CAST('2021-03-01 11:48:16' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Soraya Almeida Almeida' AS name, 'soraya.almeida@eudmarco.com.br' AS email, 10 AS nota, 'informações para consulta' AS observacao, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, CAST('2021-03-01 07:15:21' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Janaina Muniz Muniz' AS name, 'janaina.muniz@expeditors.com' AS email, 8 AS nota, 'exportação completa aérea e marítima com a mesma visibilidade da importação' AS observacao, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, CAST('2021-03-04 19:08:10' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Monica' AS name, 'monica.paes@expeditors.com' AS email, 7 AS nota, 'vejo que não é 100% acurado .
    2-poderia ter acesso a exportação aerea' AS observacao, 'https://sistema.logcomex.io/#/inteligencia/aereo' AS page, CAST('2021-03-03 17:39:18' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Gabriela Fattori Fattori' AS name, 'gabriela.fattori@expeditors.com' AS email, 10 AS nota, NULL AS observacao, 'https://sistema.logcomex.io/#/inteligencia/aereo?silent=true' AS page, CAST('2021-03-01 15:13:35' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Giovana Gaska' AS name, 'giovana.gaska@expeditors.com' AS email, 8 AS nota, NULL AS observacao, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, CAST('2021-03-08 20:44:38' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'karol' AS name, 'karol@fctrading.com.br' AS email, 10 AS nota, NULL AS observacao, 'https://sistema.logcomex.io/#/leads' AS page, CAST('2021-03-03 10:49:01' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Camila de Cássia Garbelotti Garbelotti' AS name, 'camilag@famcargo.com.br' AS email, 8 AS nota, NULL AS observacao, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, CAST('2021-03-05 08:41:45' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Fernanda Meucci' AS name, 'fernanda.meucci@florestareal.com' AS email, 9 AS nota, 'Um atendimento personalizado nos deixa feliz, porém precisamos de mais agilidade para facilitar os processos.' AS observacao, NULL AS page, CAST('2021-03-10 12:19:21' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Helton' AS name, 'helton.filho@fortlevsolar.com.br' AS email, 9 AS nota, NULL AS observacao, 'https://search.logcomex.io/' AS page, CAST('2021-03-02 14:41:32' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Bruna' AS name, 'bruna.sampaio@furukawaelectric.com' AS email, 9 AS nota, NULL AS observacao, NULL AS page, CAST('2021-03-10 13:27:03' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Rodrigo Kill Kill' AS name, 'rodrigo.kill@gac.com' AS email, 8 AS nota, NULL AS observacao, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, CAST('2021-03-02 09:35:41' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'ANA PRIANTI Prianti' AS name, 'ana.prianti@gefco.com.br' AS email, 10 AS nota, NULL AS observacao, 'https://biexportacao.logcomex.io/' AS page, CAST('2021-03-01 15:49:53' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Alexandre Bertolini' AS name, 'alexandre.bertolini@gefco.com.br' AS email, 10 AS nota, 'O nível de detalhamento das informações quando disponiveis é bastante preciso e assertivo.' AS observacao, 'https://sistema.logcomex.io/#/inteligencia/exportacao' AS page, CAST('2021-03-01 12:20:35' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Danilo Damprelli Damprelli' AS name, 'danilo.damprelli@geodis.com' AS email, 10 AS nota, NULL AS observacao, 'https://sistema.logcomex.io/#/inteligencia/aereo?silent=true' AS page, CAST('2021-03-09 11:57:50' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Ricardo Cubica Cubica' AS name, 'ricardo.cubica@geodis.com' AS email, 10 AS nota, NULL AS observacao, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, CAST('2021-03-08 15:39:07' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Caroline Regalin Regalin' AS name, 'caroline.regalin@gett.com.br' AS email, 9 AS nota, NULL AS observacao, 'https://sistema.logcomex.io/#/tracking/lista' AS page, CAST('2021-03-02 10:05:14' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Roberta Leismann Leismann' AS name, 'roberta.leismann@gett.com.br' AS email, 8 AS nota, NULL AS observacao, 'https://sistema.logcomex.io/#/tracking/lista' AS page, CAST('2021-03-11 15:33:18' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Alexandre Ara' AS name, 'alexandre@lyc.com.br' AS email, 9 AS nota, NULL AS observacao, 'https://search.logcomex.io/' AS page, CAST('2021-03-05 03:17:06' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Tiago' AS name, 'tiago.geraldi@globequimica.com.br' AS email, 10 AS nota, NULL AS observacao, 'https://search.logcomex.io/' AS page, CAST('2021-03-08 15:28:13' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Darlan Sordi Sordi' AS name, 'comercialnh@goldenchemie.com.br' AS email, 10 AS nota, NULL AS observacao, 'https://search.logcomex.io/' AS page, CAST('2021-03-02 10:18:30' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Raphael Rique' AS name, 'raphael.rique@grano.com.br' AS email, 10 AS nota, NULL AS observacao, 'https://search.logcomex.io/' AS page, CAST('2021-02-28 20:10:56' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Lucas Giollo' AS name, 'lucas.g@grupok1.com.br' AS email, 7 AS nota, NULL AS observacao, 'https://search.logcomex.io/' AS page, CAST('2021-03-09 08:43:54' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Giuliano Mazzantini Mazzantini' AS name, 'giuliano.mazzantini@hellmann.com' AS email, 5 AS nota, NULL AS observacao, 'https://sistema.logcomex.io/#/inteligencia/aereo' AS page, CAST('2021-03-08 12:06:13' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Elenora Bohrer Bohrer' AS name, 'comercial01@idcargo.com.br' AS email, 9 AS nota, NULL AS observacao, 'https://sistema.logcomex.io/#/leads' AS page, CAST('2021-03-06 16:00:17' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Dienifer Bueno' AS name, 'comercial02@idcargo.com.br' AS email, 10 AS nota, NULL AS observacao, 'https://sistema.logcomex.io/#/leads' AS page, CAST('2021-03-09 09:00:09' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Martin Bordasch' AS name, 'martin.bordasch@imdepa.com.br' AS email, 10 AS nota, 'Facilidade de acesso à informação e interface user-friendly.' AS observacao, 'https://search.logcomex.io/' AS page, CAST('2021-02-26 17:17:51' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Alexandre Fernandes Fernandes' AS name, 'alexandre.fernandes@imerys.com' AS email, 10 AS nota, 'Ótimas informações. ' AS observacao, 'https://search.logcomex.io/' AS page, CAST('2021-03-03 06:50:16' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Ramon Barbosa' AS name, 'ramon@imprav.com.br' AS email, 8 AS nota, NULL AS observacao, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, CAST('2021-03-08 10:00:42' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Bruna Marra' AS name, 'bruna.marra@sanremo.com.br' AS email, 10 AS nota, NULL AS observacao, 'https://search.logcomex.io/' AS page, CAST('2021-03-04 08:29:00' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Fernando' AS name, 'fernando.vilela@indukern.com.br' AS email, 10 AS nota, NULL AS observacao, 'https://search.logcomex.io/' AS page, CAST('2021-03-09 11:57:35' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Gabriela Sales Sales' AS name, 'gabriela.sales@anastacio.com' AS email, 10 AS nota, NULL AS observacao, 'https://search.logcomex.io/' AS page, CAST('2021-03-10 10:31:06' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Sergio Kind Kind' AS name, 'sergio.kind@interfreight.com.br' AS email, 9 AS nota, NULL AS observacao, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, CAST('2021-03-05 12:09:02' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Anderson Neves' AS name, 'aneves@interglobo.com' AS email, 10 AS nota, NULL AS observacao, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, CAST('2021-02-26 17:27:25' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Rene Steinmann Steinmann' AS name, 'rsteinmann@interoceanica.com.br' AS email, 10 AS nota, NULL AS observacao, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, CAST('2021-03-01 10:35:39' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Marilia Camara' AS name, 'mcamara@bbcdobrasil.com.br' AS email, 9 AS nota, NULL AS observacao, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, CAST('2021-02-26 16:16:24' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Leonardo Kaneko Kaneko' AS name, 'lkaneko@interoceanica.com.br' AS email, 9 AS nota, 'Os dados são claros e organizados, porém as vezes o relatório não está completamente correto e para melhorar eu incluiria custos (os valores praticados no frete).' AS observacao, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, CAST('2021-03-11 15:05:41' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'BR-U-SALES-CWB' AS name, 'br-u-sales-cwb@jas.com' AS email, 10 AS nota, NULL AS observacao, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, CAST('2021-03-10 14:20:27' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Felipe Donato Donato' AS name, 'felipe.donato@jaxmachinery.com' AS email, 0 AS nota, 'Utilizava a plataforma antiga (sistema.logcomex.com.br) para adicionar todos os detalhes, arquivos e documentos dos meus processos de exportação, porém não consigo utilizar da mesma maneira na plataforma nova, pois a mesma está desenhada para importação, portanto os campos, work-flow e demais ferramentas não acompanham os mesmo termos e fluxos da exportação' AS observacao, 'https://sistema.logcomex.io/#/tracking/lista' AS page, CAST('2021-03-08 14:03:38' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Daniela de Castro Araujo' AS name, 'daniela.araujo@rodonery.com.br' AS email, 10 AS nota, NULL AS observacao, 'https://sistema.logcomex.io/#/leads' AS page, CAST('2021-03-04 17:04:43' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Bianca' AS name, 'bianca.zerbinatti@kao.com' AS email, 10 AS nota, NULL AS observacao, 'https://search.logcomex.io/' AS page, CAST('2021-03-09 11:05:12' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Erika Williamson Williamson' AS name, 'erika.williamson@kerrylogistics.com' AS email, 10 AS nota, 'Estou batante satisfeita' AS observacao, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, CAST('2021-03-03 14:47:12' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Daniella' AS name, 'daniella@kgline.srv.br' AS email, 10 AS nota, NULL AS observacao, 'https://search.logcomex.io/' AS page, CAST('2021-03-10 10:03:39' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'André' AS name, 'comercial@kgline.srv.br' AS email, 10 AS nota, NULL AS observacao, 'https://search.logcomex.io/' AS page, CAST('2021-03-09 15:37:00' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Ricardo' AS name, 'vulcano@capitaltrade.srv.br' AS email, 2 AS nota, NULL AS observacao, 'https://search.logcomex.io/' AS page, CAST('2021-03-08 13:07:17' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Douglas Silva' AS name, 'douglas.silva@kian.com.br' AS email, 3 AS nota, NULL AS observacao, 'https://search.logcomex.io/' AS page, CAST('2021-03-04 09:44:29' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Tarik Lacerda Lacerda' AS name, 'tarik.lacerda@komport.com.br' AS email, 10 AS nota, NULL AS observacao, 'https://search.logcomex.io/' AS page, CAST('2021-03-09 20:14:52' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Gustavo Albernaz Albernaz' AS name, 'gustavo.albernaz@kuehne-nagel.com' AS email, 8 AS nota, NULL AS observacao, 'https://sistema.logcomex.io/#/inteligencia/aereo' AS page, CAST('2021-03-05 14:42:24' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Breno Graciano Graciano' AS name, 'breno.graciano@kuehne-nagel.com' AS email, 10 AS nota, NULL AS observacao, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, CAST('2021-03-03 09:36:21' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Lissa Souza Souza' AS name, 'lissa.souza@kuehne-nagel.com' AS email, 10 AS nota, NULL AS observacao, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, CAST('2021-03-01 11:20:44' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Sheila Pereira Pereira' AS name, 'sheila.pereira@kuehne-nagel.com' AS email, 10 AS nota, NULL AS observacao, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, CAST('2021-02-27 06:23:42' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Mariana Albrecht Albrecht' AS name, 'mariana.albrecht@kuehne-nagel.com' AS email, 10 AS nota, 'z' AS observacao, 'https://sistema.logcomex.io/#/inteligencia/aereo?grouper_value=PROAUTO%20ELECTRIC%20LTDA&tab=charts&filter=end_date%3D2021-02-26%26filterImportacaoNmconsignatario%3Dproauto%26grouper%3Dnmconsignatario%26start_date%3D2020-11-27&silent=true' AS page, CAST('2021-02-26 19:31:53' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Saymon Bezerra Bezerra' AS name, 'saymon.bezerra@kuehne-nagel.com' AS email, 10 AS nota, NULL AS observacao, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, CAST('2021-03-10 12:00:29' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Anke Weinmann Weinmann' AS name, 'anke.weinmann@kuehne-nagel.com' AS email, 7 AS nota, 'Na exportação as informações não são muito precisas. ' AS observacao, 'https://sistema.logcomex.io/#/inteligencia/exportacao' AS page, CAST('2021-03-10 10:27:17' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Ana Conti Conti' AS name, 'ana.conti@kuehne-nagel.com' AS email, 8 AS nota, 'Mai dados sobre exportação aérea.' AS observacao, NULL AS page, CAST('2021-03-10 13:21:00' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Andre Rezende' AS name, 'andre.rezende@leschaco.com' AS email, 10 AS nota, NULL AS observacao, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, CAST('2021-03-01 14:48:36' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Gilmar Costa Ferreira Costa' AS name, 'gilmar.costa@leschaco.com' AS email, 8 AS nota, NULL AS observacao, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, CAST('2021-03-01 10:07:41' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Alexandre Antonelli Antonelli' AS name, 'alexandre.antonelli@leschaco.com' AS email, 10 AS nota, NULL AS observacao, NULL AS page, CAST('2021-03-11 08:50:27' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Thiago Negri Negri Crozzati' AS name, 'thiago@grupolevel.com.br' AS email, 8 AS nota, NULL AS observacao, 'https://sistema.logcomex.io/#/leads' AS page, CAST('2021-03-09 09:59:52' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Marcela Oliveira' AS name, 'marcela.oliveira@localfrio.com.br' AS email, 10 AS nota, NULL AS observacao, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, CAST('2021-03-03 09:16:45' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Fabiana' AS name, 'frosa@loglinelogistica.com.br' AS email, 10 AS nota, NULL AS observacao, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, CAST('2021-03-01 11:30:54' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Henrique' AS name, 'hpoggiali@loglinelogistica.com.br' AS email, 10 AS nota, NULL AS observacao, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, CAST('2021-03-08 16:01:37' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Aline Brum Bisol Brum' AS name, 'aline.brum@manuchar.com.br' AS email, 10 AS nota, NULL AS observacao, 'https://search.logcomex.io/?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjIxOTE3YTRiMjI3ZTI4YTU4YjAzY2Y0N2EwMzFkMjg2ZDBhMjg3MWYwOGY0YzRkYTRkMjdiMjY5MjY4NjVjMjMwODE5MjM3YTcwOTkyNGZmIn0.eyJhdWQiOiIxIiwianRpIjoiMjE5MTdhNGIyMjdlMjhhNThiMDNjZjQ3YTAzMWQyODZkMGEyODcxZjA4ZjRjNGRhNGQyN2IyNjkyNjg2NWMyMzA4MTkyMzdhNzA5OTI0ZmYiLCJpYXQiOjE2MTUyMzQ0MDQsIm5iZiI6MTYxNTIzNDQwNCwiZXhwIjoxNjE2NTMwNDAzLCJzdWIiOiI1MDkzIiwic2NvcGVzIjpbIioiXX0.tuQXOZZskhrI_QzCMgxfUkFk2gFHy6bWfiZiLpVGWuPV_sVfcEjsqa-jiSFEHcV6tOK6aYBhzOZs2Crc3Mr0L33g-fql2wORN_8OuZHTq_BqdwLH5EySE6M1wtX89lN_puu5GBfCyDQn-gaZBYs1bN34qHZYR_wDWNbDQHNUOJgBTvw-Z1hHGM-Vr__aP7luPO5wAXAIC6j8Es3Foh5_nuOom_fo7-kc6N_VdGE6e90LTlgz9NvKe4WDe1e0E-8njPZYrLn1XBspfntYFRBUBAAu50s-ONX5N--2uyxPoBGVBFuKuErk1pu4aJnozgAjmYd7iizONMe5xCAP2CZjVNsz9DhM_GaH1tMSAhOMwcRLFWiE-f-c1ri7DmLQrqeINPGdPjETAA98VTCIiHk7PFIusQGU7VsGrstXY2qmdme8yk_mGntOFOs4neCH_XZX7HXD_CKcxCBPLkb3X7d8lKvvbqRsDt8yJ3QeiaHao76RGK7mjv8NifB8PFXQX2yRgDKMK9o3_hEoXhPOkRScUVPIpQ66MlA7xuNz613D6dQ8SE8o-Vt5P7mIGz3toskEiRp70gjuAcD1WnEPgYW2y6TQ1X7aXjU05mqL78O6kirJxqLt0mKGDYTzXDs0_HtNkJjK0r6WN8c4IHzcR3QtC3sC85AFG-jh_fZnYRfoIeA&email=aline.brum@manuchar.com.br' AS page, CAST('2021-03-08 17:13:41' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Pricing' AS name, 'pricing@marimex.com.br' AS email, 7 AS nota, NULL AS observacao, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, CAST('2021-03-02 12:10:46' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Ricardo Horn' AS name, 'import@menegotti.ind.br' AS email, 10 AS nota, NULL AS observacao, 'https://search.logcomex.io/' AS page, CAST('2021-02-26 16:39:36' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Charles Schroeder schroeder' AS name, 'charles.schroeder@vestolit.com' AS email, 10 AS nota, NULL AS observacao, 'https://search.logcomex.io/dashboard/?period=2020-10&period=2020-12&ncm=39041010&source=recent_search' AS page, CAST('2021-03-11 17:07:01' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Adilson' AS name, 'adilson@avanti.ind.br' AS email, 8 AS nota, NULL AS observacao, 'https://search.logcomex.io/' AS page, CAST('2021-02-28 19:04:20' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'DIEGO AUGUSTO DE BARROS AUGUSTO DE BARROS' AS name, 'diego@motopecas.com.br' AS email, 10 AS nota, 'Atendimento incrível' AS observacao, 'https://search.logcomex.io/' AS page, CAST('2021-03-10 14:51:32' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Valdemir Macedo Macedo' AS name, 'export2@motopecas.com.br' AS email, 7 AS nota, NULL AS observacao, 'https://search.logcomex.io/' AS page, CAST('2021-03-08 11:28:07' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'MICHELE TONIOL MONTEIRO Monteiro' AS name, 'michele.monteiro@multilog.com.br' AS email, 10 AS nota, NULL AS observacao, 'https://search.logcomex.io/' AS page, CAST('2021-03-01 10:30:23' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'ANDREA SILVEIRA SAMPAIO' AS name, 'andrea.sampaio@nakata.com.br' AS email, 10 AS nota, NULL AS observacao, 'https://search.logcomex.io/' AS page, CAST('2021-03-04 10:33:24' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Rennan' AS name, 'rennan@newhubnvocc.com.br' AS email, 8 AS nota, NULL AS observacao, NULL AS page, CAST('2021-03-10 12:20:16' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Mario L. Croffi Luiz Croffi' AS name, 'mario.croffi@nutriplant.com.br' AS email, 10 AS nota, 'bastante útil' AS observacao, 'https://search.logcomex.io/' AS page, CAST('2021-03-01 16:22:55' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Augusto Ferraiol' AS name, 'augusto@oprimolog.com.br' AS email, 10 AS nota, NULL AS observacao, 'https://sistema.logcomex.io/#/inteligencia/exportacao' AS page, CAST('2021-03-11 08:14:32' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Luciana Cordeiro' AS name, 'luciana.cordeiro@vonder.com.br' AS email, 10 AS nota, NULL AS observacao, 'https://search.logcomex.io/' AS page, CAST('2021-03-09 11:15:00' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Rodrigo Andreotti Andreotti' AS name, 'rodrigo.andreotti@pglbr.com.br' AS email, 10 AS nota, NULL AS observacao, 'https://sistema.logcomex.io/#/inteligencia/exportacao' AS page, CAST('2021-03-01 09:04:40' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Ana Paula Teixeira' AS name, 'anapaula.teixeira@pglbr.com.br' AS email, 10 AS nota, NULL AS observacao, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, CAST('2021-03-08 11:11:37' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Nilton Lopes' AS name, 'nilton.filho@pinho.com.br' AS email, 10 AS nota, 'Esse sistema é muito show!!' AS observacao, NULL AS page, CAST('2021-02-26 15:29:12' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Comercial' AS name, 'comercial@pinho.com.br' AS email, 10 AS nota, 'ótimo' AS observacao, 'https://sistema.logcomex.io/#/inteligencia/aereo' AS page, CAST('2021-03-01 08:41:43' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Pedro Rodrigo FS' AS name, 'pedro@pinho.com.br' AS email, 10 AS nota, NULL AS observacao, '44263,4125129745' AS page, CAST('2021-03-08 09:54:01' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Veronica insidesales SPO insidesales' AS name, 'cs7@pluscargo.com.br' AS email, 8 AS nota, NULL AS observacao, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, CAST('2021-03-03 09:08:13' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'João CWB CWB' AS name, 'joao.freitas@pluscargo.com.br' AS email, 10 AS nota, 'Acho que com o andar do tempo a plataforma está melhorando muito!
    Diariamente acesso:) ' AS observacao, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, CAST('2021-03-02 08:48:11' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Rachel Streicher Streicher' AS name, 'rachelstreicher@polyterminais.com.br' AS email, 10 AS nota, NULL AS observacao, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, CAST('2021-03-03 14:06:00' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Thomaz Borella Borella' AS name, 'thomaz@portco.com.br' AS email, 10 AS nota, NULL AS observacao, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, CAST('2021-03-01 12:32:28' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Denis Guerra' AS name, 'denis@prentiss.com.br' AS email, 9 AS nota, NULL AS observacao, 'https://search.logcomex.io/' AS page, CAST('2021-03-01 09:56:53' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Comercial' AS name, 'comercial@prolinlog.com.br' AS email, 10 AS nota, NULL AS observacao, 'https://sistema.logcomex.io/#/inteligencia/exportacao' AS page, CAST('2021-03-01 12:39:20' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Renata Aguiar Iwamura de Menezes Menezes' AS name, 'renata.menezes@pbusiness.com.ar' AS email, 10 AS nota, NULL AS observacao, NULL AS page, CAST('2021-03-10 12:36:24' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Backoffice' AS name, 'backoffice@quattror.com.br' AS email, 6 AS nota, NULL AS observacao, 'https://search.logcomex.io/' AS page, CAST('2021-03-04 14:25:44' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Pedro Rodrigues' AS name, 'p.rodrigues@igmresins.com' AS email, 7 AS nota, 'De vez em quando a plataforma dá algumas falhas de carregamento, de modo que já cheguei a identificar dados faltantes ou repetidos.' AS observacao, 'https://search.logcomex.io/' AS page, CAST('2021-03-01 14:54:29' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Marlon Moura' AS name, 'marlon.moura@rechtratores.com.br' AS email, 9 AS nota, NULL AS observacao, NULL AS page, CAST('2021-03-10 13:27:45' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Marcos Silva Silva' AS name, 'marcossilva@rentalog.com.br' AS email, 9 AS nota, 'Dados importantes sobre comex' AS observacao, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, CAST('2021-03-03 08:51:11' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'César Nicolau Nicolau' AS name, 'cesar.nicolau@br.rhenus.com' AS email, 10 AS nota, NULL AS observacao, 'https://sistema.logcomex.io/#/inteligencia/aereo' AS page, CAST('2021-03-02 11:02:19' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Lars Makowski Makowski' AS name, 'lars.makowski@de.rhenus.com' AS email, 8 AS nota, NULL AS observacao, 'https://sistema.logcomex.io/#/inteligencia/aereo' AS page, CAST('2021-03-02 06:34:09' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Adriana Feitosa feitosa' AS name, 'adriana.feitosa@salcologistics.com.br' AS email, 9 AS nota, 'O valor seria informação que falta para ficar incrivel' AS observacao, NULL AS page, CAST('2021-03-10 13:15:03' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Vanessa Moraes Moraes' AS name, 'vanessa@sbtrade.com.br' AS email, 8 AS nota, NULL AS observacao, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, CAST('2021-03-02 08:46:31' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Diego Truppel de Barros' AS name, 'diegotruppel@sbtrade.com.br' AS email, 10 AS nota, 'Na minha opinião vocês podem vir a criar o produto, ou material de impo ou expo.
    ex: Aço, segmento agrícola, areia, etc.' AS observacao, NULL AS page, CAST('2021-03-10 12:22:55' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Correa, Priscila Correa' AS name, 'priscila.correa@dbschenker.com' AS email, 8 AS nota, 'Algumas correções de funcionalidade de ordenação e extração de relatórios' AS observacao, 'https://biexportacao.logcomex.io/' AS page, CAST('2021-03-02 15:15:18' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Glaucia Liberato' AS name, 'glaucia.liberato@dbschenker.com' AS email, 8 AS nota, NULL AS observacao, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, CAST('2021-03-01 20:14:36' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Cláudia Ferreira Neto Neto' AS name, 'claudia.neto@dbschenker.com' AS email, 10 AS nota, NULL AS observacao, 'https://sistema.logcomex.io/#/inteligencia/aereo' AS page, CAST('2021-03-01 12:28:23' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Tiago Piovesani Piovesani' AS name, 'tiago.piovesani@dbschenker.com' AS email, 10 AS nota, 'Assim está ótimo' AS observacao, 'https://sistema.logcomex.io/#/inteligencia/aereo' AS page, CAST('2021-03-08 10:21:14' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Aline Oliveira' AS name, 'aoliveira@swmintl.com' AS email, 10 AS nota, NULL AS observacao, 'https://search.logcomex.io/' AS page, CAST('2021-03-02 12:30:38' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Julio Santos Santos' AS name, 'julio.santos@sao.senator-international.com' AS email, 10 AS nota, NULL AS observacao, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, CAST('2021-03-01 08:14:57' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Guilherme Moura Moura' AS name, 'guilherme.moura@sertrading.com' AS email, 10 AS nota, 'Valores, media de frete, nome dos importadores nos ajudam muito na prospeccção!' AS observacao, 'https://search.logcomex.io/' AS page, CAST('2021-02-26 16:08:30' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Mariana Pereira Pereira' AS name, 'compras2@oxquim.com.br' AS email, 8 AS nota, NULL AS observacao, NULL AS page, CAST('2021-03-10 13:40:48' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'José Francisco teixeira neto' AS name, 'jteixeira@grupoexicon.com.br' AS email, 9 AS nota, NULL AS observacao, NULL AS page, CAST('2021-03-10 12:19:52' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Amauri Doreto da Rocha' AS name, 'amauri.rocha@sumitomochemical.com' AS email, 10 AS nota, NULL AS observacao, 'https://search.logcomex.io/' AS page, CAST('2021-03-02 15:30:50' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Jaime Oliveira' AS name, 'jaime.oliveira@suntrans.com.br' AS email, 9 AS nota, NULL AS observacao, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, CAST('2021-03-04 09:08:01' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Andreia Nascimento Nascimento' AS name, 'andreia.nascimento@suntrans.com.br' AS email, 8 AS nota, NULL AS observacao, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, CAST('2021-03-02 10:33:38' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Willians PEREIRA PEREIRA' AS name, 'willians.pereira@tasklogistics.com.br' AS email, 10 AS nota, NULL AS observacao, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, CAST('2021-03-03 08:12:30' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Matheus Vinharski Vinharski' AS name, 'matheus.vinharski@tasklogistics.com.br' AS email, 8 AS nota, NULL AS observacao, 'https://biexportacao.logcomex.io/' AS page, CAST('2021-03-02 14:36:25' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Bruna Lydia' AS name, 'bruna.pasti@tasklogistics.com.br' AS email, 10 AS nota, NULL AS observacao, 'https://sistema.logcomex.io/#/inteligencia/aereo' AS page, CAST('2021-03-09 11:18:57' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Pedro Garcia Garcia da Costa de Almeida' AS name, 'pedro.almeida@tcp.com.br' AS email, 10 AS nota, NULL AS observacao, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, CAST('2021-03-02 16:04:19' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Eduardo Santos Santos' AS name, 'eduardo.bernardi@tcp.com.br' AS email, 9 AS nota, NULL AS observacao, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, CAST('2021-03-08 14:43:08' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Fabio Mattos Mattos' AS name, 'fabio.mattos@tcp.com.br' AS email, 10 AS nota, NULL AS observacao, NULL AS page, CAST('2021-03-10 13:56:09' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Sidiclei' AS name, 'adm@tenbrasil.com.br' AS email, 10 AS nota, NULL AS observacao, NULL AS page, CAST('2021-03-10 12:51:36' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Daniel Caprara Caprara' AS name, 'dancaprara@tnova.com.br' AS email, 7 AS nota, NULL AS observacao, 'https://sistema.logcomex.io/#/leads' AS page, CAST('2021-03-09 17:38:51' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Miria Moreira' AS name, 'miria@threelogintl.com.br' AS email, 10 AS nota, NULL AS observacao, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, CAST('2021-03-07 23:52:21' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Gustavo Diógenes' AS name, 'gustavo@pvctrade.com.br' AS email, 9 AS nota, NULL AS observacao, NULL AS page, CAST('2021-03-11 08:53:33' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Elisangela Zilio' AS name, 'elisangela.zilio@tramontina.com' AS email, 9 AS nota, NULL AS observacao, NULL AS page, CAST('2021-03-10 15:20:49' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Tiago' AS name, 'tiago.beal@tramontina.com' AS email, 8 AS nota, NULL AS observacao, NULL AS page, CAST('2021-03-10 13:18:33' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Enéias SCHNEIDER Schneider' AS name, 'eneias.sch@tramontina.com' AS email, 8 AS nota, 'A experiência é recente, o tempo irá nos responder se a nota deve ser maior ou menor.' AS observacao, NULL AS page, CAST('2021-03-10 13:14:30' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Jorge Neves' AS name, 'jorge.neves@transbrasa.com.br' AS email, 10 AS nota, NULL AS observacao, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, CAST('2021-03-10 11:35:32' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Carlos .' AS name, 'carlos@transmarear.com.br' AS email, 8 AS nota, 'o acompanhamento dos processos aéreos.
    ' AS observacao, 'https://sistema.logcomex.io/#/tracking/lista' AS page, CAST('2021-03-11 11:50:43' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Ralph Oliveira' AS name, 'ralph.oliveira@transbirday.com.br' AS email, 10 AS nota, NULL AS observacao, 'https://sistema.logcomex.io/#/leads' AS page, CAST('2021-03-10 15:56:22' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Juliano Victorino .' AS name, 'juliano@trustlog.com.br' AS email, 10 AS nota, NULL AS observacao, 'https://search.logcomex.io/' AS page, CAST('2021-03-02 14:36:09' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Laura Pasa Pasa' AS name, 'laura.pasa@ttlbrazil.com.br' AS email, 10 AS nota, NULL AS observacao, 'https://search.logcomex.io/' AS page, CAST('2021-03-11 11:11:08' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Fernando Assaiante' AS name, 'fernando@uniagrow.com.br' AS email, 10 AS nota, NULL AS observacao, 'https://search.logcomex.io/' AS page, CAST('2021-03-01 17:11:11' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Sayar' AS name, 'sayar@unionsistemas.com.br' AS email, 10 AS nota, NULL AS observacao, 'https://search.logcomex.io/' AS page, CAST('2021-03-02 17:53:03' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Usuario1' AS name, 'j.gomez@upstarslogistics.com' AS email, 6 AS nota, NULL AS observacao, 'https://sistema.logcomex.io/#/leads' AS page, CAST('2021-03-11 14:11:15' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Angelo Zen' AS name, 'angelo.zen@valeo.com' AS email, 10 AS nota, 'Os relatórios possuem informações muito boas' AS observacao, NULL AS page, CAST('2021-03-10 15:18:31' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Maria Fernanda Tinti Fernanda Tinti' AS name, 'mtinti@ventanaserra.com.br' AS email, 9 AS nota, NULL AS observacao, NULL AS page, CAST('2021-03-10 12:20:57' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Marcelo' AS name, 'marcelo@linkcomercial.com.br' AS email, 10 AS nota, NULL AS observacao, 'https://search.logcomex.io/' AS page, CAST('2021-03-07 15:11:02' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'EDUARDO BRUSCO BRUSCO' AS name, 'eduardo.comex@linkcomercial.com.br' AS email, 3 AS nota, NULL AS observacao, 'https://search.logcomex.io/' AS page, CAST('2021-03-08 15:15:03' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Thiago' AS name, 'thiago.z@welttec.com.br' AS email, 9 AS nota, NULL AS observacao, 'https://search.logcomex.io/' AS page, CAST('2021-03-08 10:28:54' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Felipe Razera' AS name, 'felipe@wgkindustria.com.br' AS email, 10 AS nota, 'Informações de mercado' AS observacao, 'https://search.logcomex.io/' AS page, CAST('2021-03-02 17:58:49' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Walter Britto' AS name, 'walter.britto@wurth.com.br' AS email, 10 AS nota, NULL AS observacao, 'https://search.logcomex.io/' AS page, CAST('2021-03-06 11:59:23' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Wesley Liu Liu' AS name, 'tao-market09@trans-china.com' AS email, 10 AS nota, NULL AS observacao, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, CAST('2021-03-01 03:35:30' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Marina Almeida Almeida' AS name, 'marina.almeida@yara.com' AS email, 7 AS nota, NULL AS observacao, NULL AS page, CAST('2021-03-10 12:33:59' AS DATE) AS date, NULL AS id_user
    UNION ALL
    SELECT
      'Larissa' AS name, 'l.monteiro@zttcable.com.br' AS email, 9 AS nota, NULL AS observacao, NULL AS page, CAST('2021-03-10 14:59:27' AS DATE) AS date, NULL AS id_user
  ) as qq1;;

    }


    dimension: id {
      type: number
      primary_key: yes
      sql: ${TABLE}.id ;;
    }

    dimension: date {
      type: date
      datatype: date
      sql: ${TABLE}.date ;;
    }

    dimension: page {
      type: string
      sql: ${TABLE}.page ;;
    }

    dimension: name {
      type: string
      sql: ${TABLE}.name ;;
    }

    dimension: email {
      type: string
      sql: ${TABLE}.email ;;
    }

    dimension: nota {
      type: number
      sql: ${TABLE}.nota ;;
    }

    dimension: observacao {
      type: string
      sql: ${TABLE}.observacao ;;
    }

    dimension: impacto {
      type: string
      sql: ${TABLE}.impacto ;;
    }

    dimension: id_user {
      type: number
      sql: ${TABLE}.id_user ;;
    }

    measure: count {
      type: count
    }

    measure: media_nota {
      type: average
      sql: ${nota} ;;
    }

  }
