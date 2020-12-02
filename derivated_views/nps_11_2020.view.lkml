view: nps_11_2020 {

  derived_table: {
    sql:
select (ROW_NUMBER () OVER ()) as id, *
from(
SELECT
  CAST('2020-11-16 12:05:45' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'marly@atias.com.br' AS name, 'marly@atias.com.br' AS email, 10 AS nota, 'rapidez' AS observacao, 'Muito impactado' AS impacto, null::int AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 12:05:49' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'valmor.comim@asibras.com' AS name, 'valmor.comim@asibras.com' AS email, 8 AS nota, '.' AS observacao, 'Muito impactado' AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 12:06:18' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'marcelo.pace@citi.com' AS name, 'marcelo.pace@citi.com' AS email, 9 AS nota, 'Fácil interação no sistema e ampla variedade de informações.' AS observacao, 'Pouco impactado' AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 12:06:41' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'seiji.nomura@donaldson.com' AS name, 'seiji.nomura@donaldson.com' AS email, 6 AS nota, 'eu nem cheguei a utilizar a plataforma e vcs já pedem feedback, sem a alternativa para ignorar a pesquisa' AS observacao, NULL AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 12:07:41' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'pauloraphael@aqm.com.br' AS name, 'pauloraphael@aqm.com.br' AS email, 8 AS nota, 'ok' AS observacao, 'Pouco impactado' AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 12:08:55' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Isabela Rafaela Alves dos Santos' AS name, 'isabela.santos@multilog.com.br' AS email, 10 AS nota, '10' AS observacao, 'Nada impactado' AS impacto, 7930 AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 12:17:24' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'gabriela.barbosa@kao.com' AS name, 'gabriela.barbosa@kao.com' AS email, 9 AS nota, 'O sistema é ótimo e fácil de mexer, só poderiam disponibilizar os dados mais rapidamente. ' AS observacao, 'Pouco impactado' AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 12:22:19' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'marcela.rolim@ettica.com.br' AS name, 'marcela.rolim@ettica.com.br' AS email, 8 AS nota, NULL AS observacao, NULL AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 12:23:22' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Eduardo Joia' AS name, 'eduardo.joia@duxforwarding.com' AS email, 9 AS nota, 'ótima plataforma' AS observacao, 'Muito impactado' AS impacto, 6112 AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 12:24:27' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'diego@motopecas.com.br' AS name, 'diego@motopecas.com.br' AS email, 10 AS nota, 'Programa excelente' AS observacao, 'Muito impactado' AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 12:28:16' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/aereo' AS page, 'Amanda Caldas' AS name, 'amanda.caldas@bmlog.com.br' AS email, 7 AS nota, 'Sempre da o erro "Network Error"' AS observacao, 'Muito impactado' AS impacto, 7793 AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 12:32:12' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'carlos.gouvea@citi.com' AS name, 'carlos.gouvea@citi.com' AS email, 8 AS nota, 'falta explorar mais' AS observacao, 'Muito impactado' AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 12:39:36' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'andreia.garcia@trustlog.com.br' AS name, 'andreia.garcia@trustlog.com.br' AS email, 9 AS nota, 'Os mesmos motivos informados na pesquisa anterior.  ' AS observacao, 'Muito impactado' AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 12:40:05' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'comercial@kgline.srv.br' AS name, 'comercial@kgline.srv.br' AS email, 10 AS nota, 'Excelente ferramenta' AS observacao, 'Muito impactado' AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 12:40:49' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'vulcano@capitaltrade.srv.br' AS name, 'vulcano@capitaltrade.srv.br' AS email, 10 AS nota, 'Informações' AS observacao, 'Pouco impactado' AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 12:42:33' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'paula@openmarket.com.br' AS name, 'paula@openmarket.com.br' AS email, 10 AS nota, 'ferramenta muito interessante para busca de fornecedores' AS observacao, 'Muito impactado' AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 12:44:54' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Amanda Rossi' AS name, 'amanda.rossi@dmslog.com' AS email, 10 AS nota, 'Serviço' AS observacao, 'Muito impactado' AS impacto, 6272 AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 12:44:57' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao?tab=resumo&silent=true&groupBy=nmconsignatario&subGroup=&filter=end_date%3D2020-11-16%26grouper%3Dnmconsignatario%26start_date%3D2020-10-17&page=1&per_page=15' AS page, 'Gustavo Valmorbida' AS name, 'gustavo.valmorbida@dclogisticsbrasil.com' AS email, 10 AS nota, '.' AS observacao, 'Nada impactado' AS impacto, 1954 AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 12:45:40' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'José Marcos' AS name, 'jsilva@transbrasa.com.br' AS email, 8 AS nota, 'Gama muito grande de informações.' AS observacao, 'Pouco impactado' AS impacto, 6055 AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 12:47:19' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'denis@prentiss.com.br' AS name, 'denis@prentiss.com.br' AS email, 8 AS nota, 'as vezes o sistema trava e tem de reiniciar o aplicativo' AS observacao, 'Muito impactado' AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 12:51:55' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'operacional3@vsimportacao.com.br' AS name, 'operacional3@vsimportacao.com.br' AS email, 10 AS nota, 'facil de utilizar' AS observacao, 'Muito impactado' AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 12:56:36' AS DATE) AS date, 'https://sistema.logcomex.io/#/leads' AS page, 'Tatiana Helena' AS name, 'tatiana@asaptransportes.com.br' AS email, 5 AS nota, '60% das vezes que no filtro selecionamos uma empresa para puxar informações , aparece uma empresa totalmente diferente .' AS observacao, 'Pouco impactado' AS impacto, 5675 AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 12:56:38' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'fernando@uniagrow.com.br' AS name, 'fernando@uniagrow.com.br' AS email, 10 AS nota, 'informações bastante relevantes para os negócios da empresa.' AS observacao, 'Pouco impactado' AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 12:58:44' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'marieli.lima@komport.com.br' AS name, 'marieli.lima@komport.com.br' AS email, 3 AS nota, 'pesquisas foram bloqueadas porque "utilizamos o limite" porém ocorreu algum erro, pois não acessamos nosso limite ' AS observacao, 'Muito impactado' AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 12:59:12' AS DATE) AS date, 'https://search.logcomex.io/' AS page, '99c736c56f@mailboxy.fun' AS name, '99c736c56f@mailboxy.fun' AS email, 10 AS nota, NULL AS observacao, NULL AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 13:01:11' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'emilio@multivisi.com.br' AS name, 'emilio@multivisi.com.br' AS email, 7 AS nota, 'uyiyi' AS observacao, 'Pouco impactado' AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 13:02:50' AS DATE) AS date, 'https://search.logcomex.io/dashboard/?period=2019-09&period=2020-08&possibleImporter=ANCORA%20CHUMBADORES&source=filter' AS page, 't.santana@destinochina.com' AS name, 't.santana@destinochina.com' AS email, 7 AS nota, '10' AS observacao, 'Nada impactado' AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 13:03:37' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/exportacao' AS page, 'André' AS name, 'andre.dorta@geobox.net.br' AS email, 5 AS nota, NULL AS observacao, NULL AS impacto, 609 AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 13:03:46' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'fite@aqm.com.br' AS name, 'fite@aqm.com.br' AS email, 8 AS nota, NULL AS observacao, NULL AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 13:08:44' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'carlos.-alexandre@hotmail.com' AS name, 'carlos.-alexandre@hotmail.com' AS email, 10 AS nota, 'teste' AS observacao, 'Muito impactado' AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 13:10:42' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'silvana.santana@adar.com.br' AS name, 'silvana.santana@adar.com.br' AS email, 10 AS nota, 'clareza dos dados' AS observacao, 'Pouco impactado' AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 13:14:51' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Gustavo Correa' AS name, 'gustavo@famcargo.com.br' AS email, 10 AS nota, '.' AS observacao, NULL AS impacto, 2749 AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 13:17:02' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/exportacao' AS page, 'Juliano Jesus' AS name, 'juliano@bmlog.com.br' AS email, 10 AS nota, 'Dentro do esperado.' AS observacao, 'Pouco impactado' AS impacto, 1058 AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 13:23:22' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'thays.santos@buschle.com.br' AS name, 'thays.santos@buschle.com.br' AS email, 8 AS nota, '..' AS observacao, 'Pouco impactado' AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 13:30:02' AS DATE) AS date, 'https://sistema.logcomex.io/#/leads' AS page, 'Claudio' AS name, 'importacao@belmicro.com.br' AS email, 10 AS nota, 'atende 100%' AS observacao, 'Muito impactado' AS impacto, 6362 AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 13:30:22' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Monica Viccentini' AS name, 'mcardoso@ventanaserra.com.br' AS email, 5 AS nota, 'ainda estou avaliando' AS observacao, 'Muito impactado' AS impacto, 7575 AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 13:38:19' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/aereo' AS page, 'BR-SALES-ITJ' AS name, 'br-sales-itj@jas.com' AS email, 6 AS nota, '(Y)' AS observacao, 'Pouco impactado' AS impacto, 7894 AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 13:44:53' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/aereo' AS page, 'BR-SALES-CPQ' AS name, 'br-sales-cpq@jas.com' AS email, 8 AS nota, 'OK' AS observacao, 'Pouco impactado' AS impacto, 7896 AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 13:44:55' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao?tab=resumo&silent=true&groupBy=nmconsignatario&subGroup=&filter=end_date%3D2020-11-16%26filterImportacaoNmconsignatario%3Dlindal%26grouper%3Dnmconsignatario%26start_date%3D2020-01-01&page=1&per_page=15' AS page, 'Nathalia Bonito' AS name, 'nathalia.bonito@cevalogistics.com' AS email, 9 AS nota, '....' AS observacao, 'Pouco impactado' AS impacto, 5969 AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 13:45:28' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Felipe Perrotti' AS name, 'import.pricing@csslog.com.br' AS email, 8 AS nota, NULL AS observacao, NULL AS impacto, 444 AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 13:51:54' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Comercial' AS name, 'comercial@pinho.com.br' AS email, 10 AS nota, 'ótimo' AS observacao, 'Muito impactado' AS impacto, 6214 AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 13:55:17' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'PATRICIA LEAL RODRIGUES' AS name, 'patricia.rodrigues@delphiforwarding.com' AS email, 10 AS nota, NULL AS observacao, NULL AS impacto, 5638 AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 13:56:29' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'alex.gomes@aditex.com.br' AS name, 'alex.gomes@aditex.com.br' AS email, 9 AS nota, 'Performance' AS observacao, 'Nada impactado' AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 13:56:50' AS DATE) AS date, 'https://sistema.logcomex.io/#/leads?tab=itens&silent=true&filter=dashboard%3Did%26end_date%3D2020-11-16%26filter_date%3Doperation_date%26grouper%3Dconsignatario_nome%26nmconsignatario%3Dtigre%26start_date%3D2020-10-21%26type%3Dleads&groupBy=consignatario_nome&subGroup=&page=1&per_page=15' AS page, 'Cristiano Ribas' AS name, 'cristiano.ribas@rodonery.com.br' AS email, 8 AS nota, 'estou satisfeito' AS observacao, 'Muito impactado' AS impacto, 4141 AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 13:58:21' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Mariana Morauer' AS name, 'mariana@kpmlogistica.com.br' AS email, 10 AS nota, NULL AS observacao, NULL AS impacto, 759 AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 14:01:05' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'leonardo@trichem.com.br' AS name, 'leonardo@trichem.com.br' AS email, 10 AS nota, 'informação precisa' AS observacao, 'Pouco impactado' AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 14:07:07' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Eliel Breve' AS name, 'eliel.silva@localfrio.com.br' AS email, 8 AS nota, 'Sempre podemos melhorar' AS observacao, 'Muito impactado' AS impacto, 2659 AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 14:15:06' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'marcos@importglobal.com.br' AS name, 'marcos@importglobal.com.br' AS email, 8 AS nota, 'tem me atendido satisfatoriamente' AS observacao, 'Muito impactado' AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 14:15:09' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'camila.anversa@sertrading.com' AS name, 'camila.anversa@sertrading.com' AS email, 6 AS nota, '.' AS observacao, 'Muito impactado' AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 14:19:39' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'felipe.maia@sertrading.com' AS name, 'felipe.maia@sertrading.com' AS email, 9 AS nota, 'Praticidade, nível de detalhes de informações e atendimento muito bons!' AS observacao, 'Nada impactado' AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 14:28:10' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'luciana.daunis@trilux.com.br' AS name, 'luciana.daunis@trilux.com.br' AS email, 10 AS nota, 'está atendendo às expectativas' AS observacao, 'Pouco impactado' AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 14:29:15' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'duilio@piracicabaeletrodiesel.com.br' AS name, 'duilio@piracicabaeletrodiesel.com.br' AS email, 9 AS nota, 'Satisfeito' AS observacao, 'Pouco impactado' AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 14:36:16' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Carlos Elias' AS name, 'cee@ckpvision.com' AS email, 5 AS nota, NULL AS observacao, NULL AS impacto, 5987 AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 14:45:04' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'vandrade@sisintelligence.com.br' AS name, 'vandrade@sisintelligence.com.br' AS email, 10 AS nota, NULL AS observacao, 'Muito impactado' AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 14:45:11' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/aereo' AS page, 'Jorge Maribondo' AS name, 'jmaribondo@agility.com' AS email, 10 AS nota, 'praticidade' AS observacao, 'Muito impactado' AS impacto, 125 AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 14:45:19' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'patrick@grossl.com.br' AS name, 'patrick@grossl.com.br' AS email, 7 AS nota, 'n/a' AS observacao, 'Pouco impactado' AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 14:45:32' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Rafael Falchi' AS name, 'rafael.falchi@skymarine.com.br' AS email, 8 AS nota, 'Excelente ferramenta para obter leads, contudo para trabalhar os dados com mais precisão e eficácia seria muito interessante ter a possibilidade de customizar tabelas com base em critérios pre definidos e poder selecionar mais de um critério de filtro para exportar ao excel.' AS observacao, 'Muito impactado' AS impacto, 6340 AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 14:47:24' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'diego.cunha@ncfarma.com.br' AS name, 'diego.cunha@ncfarma.com.br' AS email, 10 AS nota, 'a' AS observacao, 'Pouco impactado' AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 14:47:42' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/exportacao?silent=true' AS page, 'MAURO SPIRANDEO' AS name, 'mspirandeo@interoceanica.com.br' AS email, 10 AS nota, 'xxxxxxxxxxxx' AS observacao, 'Pouco impactado' AS impacto, 7482 AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 14:50:07' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Letícia Saroli' AS name, 'leticia.saroli@nextshipping.com.br' AS email, 5 AS nota, null AS observacao, 'Muito impactado' AS impacto, 3029 AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 14:58:15' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'dcsantana@erzkontor-br.com' AS name, 'dcsantana@erzkontor-br.com' AS email, 8 AS nota, 'gostaria de ter mais relatórios em excel' AS observacao, 'Pouco impactado' AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 15:03:46' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'corradi@movement.com.br' AS name, 'corradi@movement.com.br' AS email, 10 AS nota, 'teste' AS observacao, 'Muito impactado' AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 15:14:22' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao?tab=resumo&silent=true&groupBy=nmconsignatario&subGroup=&filter=end_date%3D2020-11-16%26filterImportacaoNmconsignatario%3DVETORE%26filterImportacaoPaisorigem%3D159565%26grouper%3Dnmconsignatario%26start_date%3D2020-06-02' AS page, 'Leandro Cardoso' AS name, 'lcardoso@agility.com' AS email, 4 AS nota, 'A' AS observacao, 'Muito impactado' AS impacto, 122 AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 15:17:39' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Silvana Castro' AS name, 'silvana.castro@fglglobal.com' AS email, 7 AS nota, NULL AS observacao, NULL AS impacto, 2790 AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 15:33:57' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Bruno Toscano' AS name, 'btoscano@interoceanica.com.br' AS email, 10 AS nota, NULL AS observacao, NULL AS impacto, 5804 AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 15:36:18' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Patricia Martinez' AS name, 'export@csslog.com.br' AS email, 10 AS nota, NULL AS observacao, 'Muito impactado' AS impacto, 83 AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 15:59:11' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'emerson.bossa@anastaciooverseas.com' AS name, 'emerson.bossa@anastaciooverseas.com' AS email, 8 AS nota, 'faltam mais opções de ordenação' AS observacao, 'Muito impactado' AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 16:13:52' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'KAREN' AS name, 'karen.quintanilla@tasklogistics.com.br' AS email, 8 AS nota, 'alguns pontos que venho encontrando divergentes no programa.' AS observacao, 'Muito impactado' AS impacto, 6020 AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 16:27:20' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'andre.barbosa@asibras.com' AS name, 'andre.barbosa@asibras.com' AS email, 8 AS nota, 'É uma incrível ferramenta de pesquisa, porém ainda apresenta algumas limitações e certos bugs.' AS observacao, 'Muito impactado' AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 16:29:48' AS DATE) AS date, 'https://sistema.logcomex.io/#/leads' AS page, 'Mayron Pereira' AS name, 'mayron@seletocomex.com.br' AS email, 10 AS nota, 'satisfeito' AS observacao, 'Muito impactado' AS impacto, 6471 AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 16:35:57' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Gabriel Pimenta' AS name, 'goliveira@agility.com' AS email, 8 AS nota, '-' AS observacao, 'Muito impactado' AS impacto, 116 AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 16:39:11' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/aereo' AS page, 'Ricardo Filho' AS name, 'rfilho@agility.com' AS email, 10 AS nota, 'khjfjufkuyjh' AS observacao, 'Muito impactado' AS impacto, 121 AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 16:39:47' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'caroline.reis@bh-airport.com.br' AS name, 'caroline.reis@bh-airport.com.br' AS email, 6 AS nota, 'Limitações das versões. Tudo é um pacote diferente, tudo é um preço a mais.' AS observacao, 'Pouco impactado' AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 16:40:16' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/aereo' AS page, 'Eric Alves' AS name, 'eric.alves@servimex.com.br' AS email, 10 AS nota, 'muito bom' AS observacao, 'Nada impactado' AS impacto, 4688 AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 16:41:20' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Carlos Staniscia' AS name, 'carlos@kpmlogistica.com.br' AS email, 10 AS nota, NULL AS observacao, NULL AS impacto, 2113 AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 16:44:30' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Danielle' AS name, 'insidesales05@rentalog.com.br' AS email, 10 AS nota, NULL AS observacao, NULL AS impacto, 3505 AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 16:48:51' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Sabrina Caldas' AS name, 'sabrina@kpmlogistica.com.br' AS email, 10 AS nota, 'satisfeita com a infos disponibilizadas' AS observacao, 'Muito impactado' AS impacto, 6284 AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 16:56:15' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'alejandro@corttex.com.br' AS name, 'alejandro@corttex.com.br' AS email, 6 AS nota, 'A atualização do mês anterior (nesse caso OUT) demora muito. Também falta a opção de pesquisa por CNPJ' AS observacao, 'Pouco impactado' AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 16:56:50' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Andrea Barbosa' AS name, 'abarbosa@actioncargo.com.br' AS email, 9 AS nota, NULL AS observacao, NULL AS impacto, 1356 AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 16:58:53' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'comex@brasilux.com.br' AS name, 'comex@brasilux.com.br' AS email, 8 AS nota, 'excelente produto' AS observacao, 'Pouco impactado' AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 17:01:35' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'cni5@ns.com.br' AS name, 'cni5@ns.com.br' AS email, 6 AS nota, 'Plataforma está apresentando problemas no layout.' AS observacao, 'Pouco impactado' AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 17:01:47' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Pamela Gaspar' AS name, 'cs1@pluscargo.com.br' AS email, 9 AS nota, 'um pouco de lentidão nas buscas ' AS observacao, 'Pouco impactado' AS impacto, 4812 AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 17:06:45' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'tarik.lacerda@komport.com.br' AS name, 'tarik.lacerda@komport.com.br' AS email, 9 AS nota, NULL AS observacao, NULL AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 17:08:13' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Rafael' AS name, 'rafael.silva@exlcomex.com' AS email, 10 AS nota, 'ok' AS observacao, 'Pouco impactado' AS impacto, 2088 AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 17:09:52' AS DATE) AS date, 'https://sistema.logcomex.io/#/leads?tab=itens&silent=true&filter=dashboard%3Did%26end_date%3D2020-11-16%26filter_date%3Doperation_date%26start_date%3D2020-11-11%26type%3Dleads&groupBy=consignatario_nome&subGroup=&page=1&per_page=15' AS page, 'Elenice Teixeira' AS name, 'elenice@asaptransportes.com.br' AS email, 7 AS nota, 'Trava muito.' AS observacao, 'Muito impactado' AS impacto, 7321 AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 17:19:17' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'comercial@prexx.com.br' AS name, 'comercial@prexx.com.br' AS email, 5 AS nota, 'sem motivo' AS observacao, 'Pouco impactado' AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 17:19:17' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Rodrigo Costa' AS name, 'rodrigo.costa@bollore.com' AS email, 5 AS nota, NULL AS observacao, NULL AS impacto, 7095 AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 17:20:11' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'copini@copinigroup.com' AS name, 'copini@copinigroup.com' AS email, 10 AS nota, NULL AS observacao, NULL AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 17:21:22' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Lucas Felipe' AS name, 'lucasf@nelsonheusi.com' AS email, 8 AS nota, '...' AS observacao, 'Muito impactado' AS impacto, 6391 AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 17:25:39' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Theodoro' AS name, 'theodoro.monteiro@exlcomex.com' AS email, 8 AS nota, 'x' AS observacao, NULL AS impacto, 2723 AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 17:31:17' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/exportacao' AS page, 'Eduardo Saraiva' AS name, 'pricing@csslog.com.br' AS email, 8 AS nota, '.' AS observacao, 'Pouco impactado' AS impacto, 86 AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 17:34:13' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Thais Silva' AS name, 'thais.silva@nunofracht.com.br' AS email, 10 AS nota, 't' AS observacao, NULL AS impacto, 6139 AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 17:34:27' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Paola Galuppi' AS name, 'paola.galuppi@enterlog.com.br' AS email, 7 AS nota, 'DEMORA PRA CARREGAR AS INFORMACOES' AS observacao, 'Pouco impactado' AS impacto, 3846 AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 17:35:31' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'gabriel@einsteinintel.com' AS name, 'gabriel@einsteinintel.com' AS email, 10 AS nota, 'Plataforma bastante completa' AS observacao, 'Muito impactado' AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 17:37:44' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'daniele@adex.com.br' AS name, 'daniele@adex.com.br' AS email, 6 AS nota, NULL AS observacao, NULL AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 17:39:37' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Tiago' AS name, 'tiago.santos@curtisinternational.com.br' AS email, 8 AS nota, NULL AS observacao, NULL AS impacto, 5935 AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 17:41:25' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Caio Cordeiro' AS name, 'ccordeiro@skymarine.com.br' AS email, 0 AS nota, NULL AS observacao, NULL AS impacto, 1796 AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 17:42:30' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/exportacao' AS page, 'Glauco Andrade' AS name, 'glauco@bmlog.com.br' AS email, 8 AS nota, '.' AS observacao, 'Pouco impactado' AS impacto, 1042 AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 17:45:42' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'amadeu@braschemical.com.br' AS name, 'amadeu@braschemical.com.br' AS email, 9 AS nota, NULL AS observacao, NULL AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 17:48:30' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'diretoria@maltacomex.com' AS name, 'diretoria@maltacomex.com' AS email, 8 AS nota, 'Algumas visualizações poderiam ser melhoradas' AS observacao, 'Muito impactado' AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 17:50:03' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Marcelo Machado' AS name, 'sales07@csslog.com.br' AS email, 8 AS nota, NULL AS observacao, NULL AS impacto, 79 AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 17:52:37' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Jessyca Oliveira' AS name, 'joliveira@loglinelogistica.com.br' AS email, 7 AS nota, 'Não está precisando 100% das informações' AS observacao, 'Pouco impactado' AS impacto, 4206 AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 17:57:10' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Lucas Freitas' AS name, 'lucas.freitas@dbschenker.com' AS email, 8 AS nota, 'Atende as expectativas' AS observacao, 'Pouco impactado' AS impacto, 6105 AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 17:58:00' AS DATE) AS date, 'https://sistema.logcomex.io/#/relatorio-consumo' AS page, 'Caique Masuko' AS name, 'caique.masuko@csslog.com.br' AS email, 8 AS nota, 'estou satisfeito, porém devido algumas inconsistências entendo que podemos melhorar ' AS observacao, 'Muito impactado' AS impacto, 82 AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 17:59:59' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'karen.rosa@anastacio.com' AS name, 'karen.rosa@anastacio.com' AS email, 10 AS nota, 'muito bom' AS observacao, 'Muito impactado' AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 18:02:06' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'janice@grupovannucci.com.br' AS name, 'janice@grupovannucci.com.br' AS email, 8 AS nota, 'tem algumas limitações mas é bom' AS observacao, 'Pouco impactado' AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 18:02:12' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'andrea.sampaio@nakata.com.br' AS name, 'andrea.sampaio@nakata.com.br' AS email, 8 AS nota, NULL AS observacao, NULL AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 18:06:26' AS DATE) AS date, 'https://sistema.logcomex.io/#/leads' AS page, 'Alberto' AS name, 'alberto@cargointer.com.br' AS email, 5 AS nota, 'o historico nao esta funcionando' AS observacao, 'Pouco impactado' AS impacto, 7414 AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 18:07:00' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Steve Kleindienst' AS name, 'steve@intertransbrasil.com.br' AS email, 7 AS nota, 'Alguns dados sao incompletos' AS observacao, 'Pouco impactado' AS impacto, 5287 AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 18:07:35' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Daniela RIo' AS name, 'daniela.rio@cevalogistics.com' AS email, 9 AS nota, 'satisfatorio' AS observacao, 'Muito impactado' AS impacto, 5700 AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 18:08:14' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'eduardo.silva@anastacio.com' AS name, 'eduardo.silva@anastacio.com' AS email, 7 AS nota, 'O serviço é bom. Oponto negativo é a demora no lançamento das atualizações.' AS observacao, 'Muito impactado' AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 18:08:29' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Leandro Cirillo' AS name, 'leandro.cirillo@kuehne-nagel.com' AS email, 9 AS nota, 'Só não levaram 10 porque agora no resultado das pesquisas, aparece no campo pagamento "não informado" ao invés de collect ou prepaid.' AS observacao, 'Muito impactado' AS impacto, 2354 AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 18:08:45' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'leonardo@ascensus.com.br' AS name, 'leonardo@ascensus.com.br' AS email, 10 AS nota, '.' AS observacao, 'Nada impactado' AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 18:15:28' AS DATE) AS date, 'https://search.logcomex.io/dashboard/?period=2020-07&period=2020-09&ncm=7306400&ncm=73066100&source=recent_search' AS page, 'tlarrosa@castellarmetals.com.br' AS name, 'tlarrosa@castellarmetals.com.br' AS email, 10 AS nota, 'Otimo ! ' AS observacao, 'Muito impactado' AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 18:16:07' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'mariana.correa@adisseo.com' AS name, 'mariana.correa@adisseo.com' AS email, 10 AS nota, 'Ainda vou começar a usar, mas me parece excelente' AS observacao, 'Pouco impactado' AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 18:19:46' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'alaa.alfrehat@geolab.com.br' AS name, 'alaa.alfrehat@geolab.com.br' AS email, 9 AS nota, 'ok' AS observacao, 'Pouco impactado' AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 18:25:49' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'asm@chr-olesen.dk' AS name, 'asm@chr-olesen.dk' AS email, 10 AS nota, 'CHR-OLESEN' AS observacao, 'Muito impactado' AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 18:27:33' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'GISELE FURLANI' AS name, 'gisele.furlani@cevalogistics.com' AS email, 10 AS nota, 'Consigo as informaçoes que perciso' AS observacao, 'Muito impactado' AS impacto, 6162 AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 18:28:45' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Adilson Silva' AS name, 'adilson.silva@connectlatam.com' AS email, 6 AS nota, '6' AS observacao, 'Pouco impactado' AS impacto, 7796 AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 18:30:36' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Andre Stein' AS name, 'andre.stein@windlog.com.br' AS email, 5 AS nota, '.' AS observacao, 'Pouco impactado' AS impacto, 6219 AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 18:31:31' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'rafael.mugnaini@comexport.com.br' AS name, 'rafael.mugnaini@comexport.com.br' AS email, 10 AS nota, 'Muito boa!' AS observacao, 'Muito impactado' AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 18:33:52' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'compras@rudnik.com.br' AS name, 'compras@rudnik.com.br' AS email, 7 AS nota, 'Boa ferramenta' AS observacao, 'Pouco impactado' AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 18:41:24' AS DATE) AS date, 'https://sistema.logcomex.io/#/leads' AS page, 'Gilberto' AS name, 'gilberto.olm@owinlog.com.br' AS email, 10 AS nota, 'programa bem didático!!' AS observacao, 'Muito impactado' AS impacto, 7085 AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 18:48:53' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Tiago Piovesani' AS name, 'tiago.piovesani@dbschenker.com' AS email, 10 AS nota, 'Me ajuda muito!' AS observacao, 'Muito impactado' AS impacto, 6109 AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 18:48:58' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'f.rios@igmresins.com.br' AS name, 'f.rios@igmresins.com.br' AS email, 6 AS nota, 'Falta um controle de itens visualizados' AS observacao, 'Muito impactado' AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 18:49:45' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Daniela' AS name, 'daniela.vicentino@curtisinternational.com.br' AS email, 10 AS nota, 'Pq gosto' AS observacao, 'Muito impactado' AS impacto, 7083 AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 18:52:29' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/aereo' AS page, 'Arthur Kunath' AS name, 'arthur.kunath@br.rhenus.com' AS email, 8 AS nota, 'Falta a opção de extração de excel por lanes, onde apareceriam os nomes de todos os importadores juntos' AS observacao, 'Muito impactado' AS impacto, 1699 AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 18:54:33' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Leandro Carmona' AS name, 'leandroc@nelsonheusi.com' AS email, 10 AS nota, NULL AS observacao, NULL AS impacto, 2395 AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 18:57:41' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'beatriz.tavares@ojipapeis.com.br' AS name, 'beatriz.tavares@ojipapeis.com.br' AS email, 6 AS nota, 'Data da divulgação dos dados.' AS observacao, 'Muito impactado' AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 18:57:48' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'p.rodrigues@igmresins.com' AS name, 'p.rodrigues@igmresins.com' AS email, 9 AS nota, 'A plataforma ajuda muito, o ponto a melhorar é o grande número de negociantes não identificados.' AS observacao, 'Muito impactado' AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 18:57:48' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Gustavo Crispim' AS name, 'gustavo@portco.com.br' AS email, 9 AS nota, 'É excelente, Mas não da pra confiar nos números de telefone e e-mail na Logcomex das empresas.' AS observacao, 'Muito impactado' AS impacto, 7844 AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 19:03:45' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Leocádio Cesar Ribeiro Cunha' AS name, 'leocadio.cunha@band-deicmar.com.br' AS email, 10 AS nota, 'Todas as informações necessárias para as minhas prospecções, estão disponíveis aqui.' AS observacao, 'Muito impactado' AS impacto, 6793 AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 19:04:02' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Leandro Oliveira' AS name, 'leandrooliveira@ecuworldwide.com' AS email, 6 AS nota, 'A modalidade de frete precisa voltar a ser apurada.Ao volta a ser 10.' AS observacao, 'Muito impactado' AS impacto, 2532 AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 19:06:09' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'renata.menezes@pbusiness.com.ar' AS name, 'renata.menezes@pbusiness.com.ar' AS email, 10 AS nota, null AS observacao, 'Muito impactado' AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 19:10:00' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Antonio Raposo' AS name, 'antonio@handline.com.br' AS email, 7 AS nota, '1' AS observacao, 'Muito impactado' AS impacto, 530 AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 19:10:14' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Amabilli Garcia' AS name, 'amabilli.garcia@nextshipping.com.br' AS email, 10 AS nota, 'Tudo certo' AS observacao, 'Muito impactado' AS impacto, 2454 AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 19:12:36' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'f.zopello@samsung.com' AS name, 'f.zopello@samsung.com' AS email, 7 AS nota, 'muito bom, mas creio que poderia haver uma tabela dinamica online. Acho também que poderíamos baixar direto do site o excel, sem a necessidade de receber por e-mail.' AS observacao, 'Pouco impactado' AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 19:18:04' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'rodrigo.souza@comexport.com.br' AS name, 'rodrigo.souza@comexport.com.br' AS email, 9 AS nota, '.' AS observacao, 'Pouco impactado' AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 19:18:39' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Marcelo Saranz' AS name, 'msaranz@actioncargo.com.br' AS email, 9 AS nota, 'informações precisas' AS observacao, 'Muito impactado' AS impacto, 5982 AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 19:20:47' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Filipe' AS name, 'bmfilipe@timelognet.com' AS email, 10 AS nota, 'Tenho encontratdo todas as informações que busco' AS observacao, 'Muito impactado' AS impacto, 1523 AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 19:23:08' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao?tab=resumo&silent=true&groupBy=nmconsignatario&subGroup=&filter=end_date%3D2020-11-16%26filterImportacaoNmconsignatario%3DSOUZA%2520CARVALHO%2520%26grouper%3Dnmconsignatario%26start_date%3D2020-10-16' AS page, 'Augusto' AS name, 'augusto@oprimolog.com.br' AS email, 10 AS nota, NULL AS observacao, NULL AS impacto, 517 AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 19:24:02' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Diniz, Bruna' AS name, 'bruna.diniz@dbschenker.com' AS email, 10 AS nota, '.' AS observacao, 'Muito impactado' AS impacto, 5426 AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 19:32:29' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'SDB SP' AS name, 'saopaulo@savinodelbene.com' AS email, 10 AS nota, 'SEMPRE ENCONTRO O QUE NECESSITE PARA PROSPECÇÃO DE NOVOS CLIENTES ' AS observacao, 'Muito impactado' AS impacto, 3832 AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 19:34:48' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'alex@shemag.com.br' AS name, 'alex@shemag.com.br' AS email, 9 AS nota, '.' AS observacao, 'Muito impactado' AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 19:39:23' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Andrea Thomaz' AS name, 'andrea.thomaz@cevalogistics.com' AS email, 7 AS nota, 'nao estao saindo os volumes embarcados desde setembro' AS observacao, 'Muito impactado' AS impacto, 3597 AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 19:44:02' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'anderson@amgcomercial.com' AS name, 'anderson@amgcomercial.com' AS email, 6 AS nota, 'relativa dificuldade em alguns acessos ou informações' AS observacao, 'Muito impactado' AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 19:45:08' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/exportacao' AS page, 'Reinaldo Carvalho' AS name, 'reinaldo.carvalho@kuehne-nagel.com' AS email, 10 AS nota, '.' AS observacao, 'Muito impactado' AS impacto, 4066 AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 19:50:33' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Daniela Alves' AS name, 'daniela.alves@cevalogistics.com' AS email, 3 AS nota, 'LAYOUT' AS observacao, 'Nada impactado' AS impacto, 4533 AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 19:51:09' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Camila Cosensa' AS name, 'camila.cosensa@dbschenker.com' AS email, 10 AS nota, '.' AS observacao, 'Muito impactado' AS impacto, 5487 AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 19:58:19' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Fernando' AS name, 'versa@timelognet.com' AS email, 10 AS nota, 'rapidez' AS observacao, 'Muito impactado' AS impacto, 1353 AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 20:01:11' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'josehenrique@atatensoativos.com' AS name, 'josehenrique@atatensoativos.com' AS email, 9 AS nota, 'ok' AS observacao, 'Pouco impactado' AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 20:04:09' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Mariana Soares' AS name, 'mariana.soares@fcalog.com' AS email, 5 AS nota, 'As vezes o acesso dá uma travada.' AS observacao, 'Muito impactado' AS impacto, 4753 AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 20:04:17' AS DATE) AS date, 'https://sistema.logcomex.io/#/leads' AS page, 'Paula Gomes' AS name, 'paula@lyke.com.br' AS email, 10 AS nota, NULL AS observacao, NULL AS impacto, 6529 AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 20:07:49' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Rogerio Barbosa' AS name, 'rogerio.barbosa@csslog.com.br' AS email, 10 AS nota, 'f' AS observacao, 'Pouco impactado' AS impacto, 85 AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 20:10:14' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Susan Horst' AS name, 'susan.horst@nelsonheusi.com' AS email, 8 AS nota, NULL AS observacao, NULL AS impacto, 6375 AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 20:15:02' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/captacao' AS page, 'Alexsandro Gama' AS name, 'a.goliveira@btp.com.br' AS email, 10 AS nota, NULL AS observacao, NULL AS impacto, 2898 AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 20:17:23' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Leeferson' AS name, 'leeferson@fastshipping.com.br' AS email, 10 AS nota, 'asedASA' AS observacao, 'Pouco impactado' AS impacto, 2981 AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 20:17:46' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'gabrielfiss@frigelar.com' AS name, 'gabrielfiss@frigelar.com' AS email, 8 AS nota, 'Serviço em geral muito bom, mas os dados d mês anterior poderiam ser disponibilizados antes do estipulado' AS observacao, 'Muito impactado' AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 20:22:13' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/aereo?tab=resumo&silent=true&groupBy=consignatario&subGroup=&filter=end_date%3D2020-11-01%26filterAereoAeroportodestino%3DGRU%26filterAereoAeroportodestino%3DVCP%26filterAereoConsignatario%3Dicon%26grouper%3Dconsignatario%26start_date%3D2020-09-01&page=1&per_page=15' AS page, 'Celso' AS name, 'celso.moreira@duxforwarding.com' AS email, 10 AS nota, NULL AS observacao, NULL AS impacto, 6661 AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 20:31:23' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao?tab=resumo&silent=true&groupBy=nmconsignatario&subGroup=&filter=end_date%3D2020-11-16%26filterImportacaoNmconsignatario%3Dnautika%26grouper%3Dnmconsignatario%26start_date%3D2020-08-01' AS page, 'Ana Kriegel' AS name, 'ana.kriegel@chrobinson.com' AS email, 8 AS nota, NULL AS observacao, NULL AS impacto, 7209 AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 20:43:25' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Iluina Rubia Silva' AS name, 'iluina@nextshipping.com.br' AS email, 8 AS nota, NULL AS observacao, NULL AS impacto, 5 AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 21:07:14' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Leandro Albuquerque' AS name, 'leandroalbuquerque@ecuworldwide.com' AS email, 8 AS nota, NULL AS observacao, NULL AS impacto, 7581 AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 21:16:54' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Igmar RDJ' AS name, 'igmar.costa@pluscargo.com.br' AS email, 7 AS nota, 'a demora para a busca.. e nao podermos transformar em excel, planilhar , etc .. mas o restante é muito bom! a consulta por 180dias e as informações são fantastica ' AS observacao, 'Muito impactado' AS impacto, 4347 AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 21:26:16' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Junior' AS name, 'junior.ferreira@eslogistics.com.br' AS email, 10 AS nota, 'informações completas, facil navegação... intuitivo. Tudo muito útil.' AS observacao, 'Muito impactado' AS impacto, 7437 AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 21:43:43' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Mario Barreiro' AS name, 'mario.barreiro@grupocraft.com.br' AS email, 10 AS nota, 'Praticidade' AS observacao, 'Pouco impactado' AS impacto, 1615 AS id_user
UNION ALL
SELECT
  CAST('2020-11-17 11:55:14' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'flavio.novaes@yara.com' AS name, 'flavio.novaes@yara.com' AS email, 9 AS nota, 'considero as informações muito boa e a plataforma simples de usar' AS observacao, 'Muito impactado' AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-17 12:13:22' AS DATE) AS date, 'https://search.logcomex.io/dashboard/?period=2019-10&period=2020-09&possibleImporter=GOEDERT&source=home' AS page, 'alan.milanio@komport.com.br' AS name, 'alan.milanio@komport.com.br' AS email, 8 AS nota, '-' AS observacao, NULL AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-17 12:30:45' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'renato.pardo@condupar.com.br' AS name, 'renato.pardo@condupar.com.br' AS email, 10 AS nota, NULL AS observacao, NULL AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-17 12:32:50' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/aereo?tab=dynamicTable&silent=true&groupBy=consignatario&subGroup=&filter=end_date%3D2020-11-17%26filterAereoConsignatario%3Dmodine%26grouper%3Dconsignatario%26start_date%3D2020-05-20&page=1&per_page=15&grouper_value=MODINE%20TERMICOS' AS page, 'Aline Boeira da Silva' AS name, 'aline.boeira@br.dsv.com' AS email, 8 AS nota, NULL AS observacao, NULL AS impacto, 5545 AS id_user
UNION ALL
SELECT
  CAST('2020-11-17 12:36:11' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Tatyane Regianini Montibeller' AS name, 'tatyane.montibeller@cevalogistics.com' AS email, 8 AS nota, NULL AS observacao, NULL AS impacto, 5187 AS id_user
UNION ALL
SELECT
  CAST('2020-11-17 12:50:09' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/exportacao' AS page, 'Augusto Ribeiro' AS name, 'augusto.ribeiro@fglglobal.com' AS email, 8 AS nota, 'utilizacao' AS observacao, 'Muito impactado' AS impacto, 6455 AS id_user
UNION ALL
SELECT
  CAST('2020-11-17 13:44:57' AS DATE) AS date, 'https://sistema.logcomex.io/#/leads' AS page, 'Ronnie de Carvalho' AS name, 'ronnie@capitaltrade.srv.br' AS email, 8 AS nota, 'falta opção de filtros de classificação dos importadores por volume ou por ordem alfabética, etc.' AS observacao, 'Pouco impactado' AS impacto, 732 AS id_user
UNION ALL
SELECT
  CAST('2020-11-17 15:33:34' AS DATE) AS date, 'https://search.logcomex.io/dashboard/?period=2020-08&period=2020-10&ncm=89395000&source=home' AS page, 'patricia.borges@elgin.com.br' AS name, 'patricia.borges@elgin.com.br' AS email, 7 AS nota, 'comecei a usar agora' AS observacao, 'Muito impactado' AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-17 16:53:29' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/exportacao' AS page, 'Fabio LIma' AS name, 'fabio.lima@craneww.com' AS email, 9 AS nota, NULL AS observacao, NULL AS impacto, 4258 AS id_user
UNION ALL
SELECT
  CAST('2020-11-17 17:04:04' AS DATE) AS date, 'https://search.logcomex.io/dashboard/details/?period=2020-07&period=2020-09&possibleImporter=insetimax&source=home' AS page, 'felipe@kelldrin.com.br' AS name, 'felipe@kelldrin.com.br' AS email, 6 AS nota, NULL AS observacao, NULL AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-17 17:13:48' AS DATE) AS date, 'https://search.logcomex.io/dashboard/?period=2020-10&period=2020-10&ncm=8539&source=home' AS page, 'rubens.moreira@avantlux.com.br' AS name, 'rubens.moreira@avantlux.com.br' AS email, 7 AS nota, '8' AS observacao, 'Muito impactado' AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-17 17:48:22' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Miria' AS name, 'miria@threelogintl.com.br' AS email, 10 AS nota, 'sistema com informaçao ampla' AS observacao, 'Muito impactado' AS impacto, 7467 AS id_user
UNION ALL
SELECT
  CAST('2020-11-17 17:51:11' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Soraya Almeida' AS name, 'soraya.almeida@eudmarco.com.br' AS email, 9 AS nota, NULL AS observacao, NULL AS impacto, 2197 AS id_user
UNION ALL
SELECT
  CAST('2020-11-17 17:53:08' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao?silent=true' AS page, 'Andre da Mata' AS name, 'andre.mata@dmslog.com' AS email, 9 AS nota, '.' AS observacao, 'Muito impactado' AS impacto, 2484 AS id_user
UNION ALL
SELECT
  CAST('2020-11-17 18:03:32' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'm.portwood@kpfilms.com' AS name, 'm.portwood@kpfilms.com' AS email, 7 AS nota, 'ND' AS observacao, 'Pouco impactado' AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-17 18:29:09' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Pedro Trindade' AS name, 'pedro.trindade@cerklog.com' AS email, 9 AS nota, 'Muito bom!' AS observacao, 'Muito impactado' AS impacto, 6193 AS id_user
UNION ALL
SELECT
  CAST('2020-11-17 18:38:05' AS DATE) AS date, 'https://search.logcomex.io/dashboard/?period=2020-01&period=2020-09&possibleImporter=colorcon&source=home' AS page, 'eduardo.mancini@sertrading.com' AS name, 'eduardo.mancini@sertrading.com' AS email, 7 AS nota, NULL AS observacao, NULL AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-17 19:00:21' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'SONIA' AS name, 'comercial11@carpolog.com.br' AS email, 10 AS nota, '10' AS observacao, 'Muito impactado' AS impacto, 7826 AS id_user
UNION ALL
SELECT
  CAST('2020-11-17 19:03:01' AS DATE) AS date, 'https://search.logcomex.io/dashboard/?period=2020-07&period=2020-09&ncm=27101990&source=home' AS page, 'rose@mondialbusiness.com.br' AS name, 'rose@mondialbusiness.com.br' AS email, 6 AS nota, 'limitação de pesquisa' AS observacao, 'Muito impactado' AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-17 20:15:44' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'comercial@akon.com.br' AS name, 'comercial@akon.com.br' AS email, 9 AS nota, 'Número limitado de pesquisas de Importador e Exportador' AS observacao, 'Pouco impactado' AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-17 20:26:57' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Franciele POA' AS name, 'franciele.machado@pluscargo.com.br' AS email, 8 AS nota, NULL AS observacao, NULL AS impacto, 4346 AS id_user
UNION ALL
SELECT
  CAST('2020-11-17 20:42:55' AS DATE) AS date, 'https://sistema.logcomex.io/#/tracking/relatorio' AS page, 'Ambev / Arosuco' AS name, 'ambev@pinho.com.br' AS email, 10 AS nota, NULL AS observacao, NULL AS impacto, 3627 AS id_user
UNION ALL
SELECT
  CAST('2020-11-17 20:45:14' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Nilson Datoguia' AS name, 'nilson@eudmarco.com.br' AS email, 8 AS nota, 'vocês são feras' AS observacao, 'Pouco impactado' AS impacto, 562 AS id_user
UNION ALL
SELECT
  CAST('2020-11-17 20:49:56' AS DATE) AS date, 'https://search.logcomex.io/dashboard/details/?period=2020-07&period=2020-09&ncm=31043010&productDescriptionContains%3Aor=potassio&source=home' AS page, 'suprimentos.mp@araguaia.com.br' AS name, 'suprimentos.mp@araguaia.com.br' AS email, 10 AS nota, NULL AS observacao, NULL AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-17 21:01:22' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Adriana Zabulionis' AS name, 'azabulionis@agility.com' AS email, 10 AS nota, NULL AS observacao, NULL AS impacto, 132 AS id_user
UNION ALL
SELECT
  CAST('2020-11-17 21:04:05' AS DATE) AS date, 'https://sistema.logcomex.io/#/leads' AS page, 'Ralph' AS name, 'ralph.oliveira@transbirday.com.br' AS email, 10 AS nota, 'muito bom' AS observacao, 'Muito impactado' AS impacto, 6904 AS id_user
UNION ALL
SELECT
  CAST('2020-11-17 22:31:38' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Rodrigo' AS name, 'rodrigo.domingos@exlcomex.com.br' AS email, 10 AS nota, 'Otima ferramenta estrategica.' AS observacao, 'Muito impactado' AS impacto, 7819 AS id_user
UNION ALL
SELECT
  CAST('2020-11-17 23:12:37' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Simone Pricing Imp Sea' AS name, 'simone.rodrigues@pluscargo.com.br' AS email, 10 AS nota, NULL AS observacao, NULL AS impacto, 4339 AS id_user
UNION ALL
SELECT
  CAST('2020-11-18 01:04:04' AS DATE) AS date, 'https://search.logcomex.io/dashboard/details/?period=2019-10&period=2020-09&productDescriptionContains%3Aor=sildenafila&source=home' AS page, 'carla.queiros@globequimica.com.br' AS name, 'carla.queiros@globequimica.com.br' AS email, 8 AS nota, 's' AS observacao, 'Pouco impactado' AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-18 03:19:11' AS DATE) AS date, 'https://search.logcomex.io/dashboard/?period=2020-09&ncm=39204300&source=home' AS page, 'renato@tdtrading.com.br' AS name, 'renato@tdtrading.com.br' AS email, 10 AS nota, 'Funciona muito bem' AS observacao, 'Muito impactado' AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-18 12:16:20' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Andreia Nascimento' AS name, 'andreia.nascimento@suntrans.com.br' AS email, 8 AS nota, NULL AS observacao, NULL AS impacto, 7690 AS id_user
UNION ALL
SELECT
  CAST('2020-11-18 12:48:04' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'gbertolami@carvalhaes.net' AS name, 'gbertolami@carvalhaes.net' AS email, 0 AS nota, NULL AS observacao, NULL AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-18 12:58:50' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Correa, Priscila' AS name, 'priscila.correa@dbschenker.com' AS email, 7 AS nota, NULL AS observacao, NULL AS impacto, 5411 AS id_user
UNION ALL
SELECT
  CAST('2020-11-18 13:14:19' AS DATE) AS date, 'https://search.logcomex.io/dashboard/?period=2020-09&period=2020-09&ncm=32041210&productDescriptionContains%3Aor=CORANTE%20AMARELO%20TARTRAZINA&incoterm=CIF&source=home' AS page, 'compras@oxquim.com.br' AS name, 'compras@oxquim.com.br' AS email, 8 AS nota, NULL AS observacao, NULL AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-18 13:24:17' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'gabriel@3scorporate.com' AS name, 'gabriel@3scorporate.com' AS email, 10 AS nota, NULL AS observacao, NULL AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-18 13:28:56' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Veronica' AS name, 'veronica@acelogistica.com' AS email, 10 AS nota, NULL AS observacao, NULL AS impacto, 4042 AS id_user
UNION ALL
SELECT
  CAST('2020-11-18 13:33:50' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Claudia Fernandes' AS name, 'claudia.fernandes@cevalogistics.com' AS email, 9 AS nota, NULL AS observacao, NULL AS impacto, 5702 AS id_user
UNION ALL
SELECT
  CAST('2020-11-18 13:42:52' AS DATE) AS date, 'https://search.logcomex.io/dashboard/?period=2020-07&period=2020-09&ncm=3902&source=home' AS page, 'felipe.chinato@aditex.com.br' AS name, 'felipe.chinato@aditex.com.br' AS email, 8 AS nota, NULL AS observacao, NULL AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-18 13:59:09' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'giovanni@boxersoldas.com.br' AS name, 'giovanni@boxersoldas.com.br' AS email, 8 AS nota, NULL AS observacao, NULL AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-18 14:06:48' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Luiz Almeida' AS name, 'luiz.almeida@ctl-latam.com' AS email, 10 AS nota, NULL AS observacao, NULL AS impacto, 5650 AS id_user
UNION ALL
SELECT
  CAST('2020-11-18 14:50:30' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao?tab=details&silent=true&groupBy=nmconsignatario&subGroup=&filter=end_date%3D2020-11-01%26filterImportacaoNmconsignatario%3DSETTA%26grouper%3Dnmconsignatario%26start_date%3D2020-10-01&page=1&per_page=15&grouper_value=LINHAS%20SETTA%20LTDA' AS page, 'Duilio Francisco' AS name, 'comex.duilio@gmail.com' AS email, 10 AS nota, 'eficiencia' AS observacao, 'Pouco impactado' AS impacto, 3216 AS id_user
UNION ALL
SELECT
  CAST('2020-11-18 15:05:43' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'rafaell.souza@cticargo.com.br' AS name, 'rafaell.souza@cticargo.com.br' AS email, 8 AS nota, NULL AS observacao, NULL AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-18 15:08:07' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'adellini.segal@coldmix.com.br' AS name, 'adellini.segal@coldmix.com.br' AS email, 9 AS nota, 'Ainda estamos no início da avaliação da plataforma, mas já parece muito boa' AS observacao, 'Pouco impactado' AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-18 15:28:21' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Paulo André Games' AS name, 'paulo.games@deicmar.com' AS email, 10 AS nota, 'informações dinâmicas' AS observacao, 'Muito impactado' AS impacto, 513 AS id_user
UNION ALL
SELECT
  CAST('2020-11-18 16:31:05' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'bruna.sampaio@furukawaelectric.com' AS name, 'bruna.sampaio@furukawaelectric.com' AS email, 9 AS nota, NULL AS observacao, NULL AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-18 16:31:41' AS DATE) AS date, 'https://search.logcomex.io/dashboard/?period=2020-01&period=2020-10&ncm=29309034&ncm=29304090&source=home' AS page, 'adriana.martins@sumitomochemical.com' AS name, 'adriana.martins@sumitomochemical.com' AS email, 7 AS nota, NULL AS observacao, NULL AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-18 17:00:53' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Leonardo' AS name, 'leonardo@fastshipping.com.br' AS email, 8 AS nota, NULL AS observacao, NULL AS impacto, 7639 AS id_user
UNION ALL
SELECT
  CAST('2020-11-18 17:34:30' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'paola@dakota.com.br' AS name, 'paola@dakota.com.br' AS email, 10 AS nota, NULL AS observacao, NULL AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-18 17:46:58' AS DATE) AS date, 'https://search.logcomex.io/dashboard/?period=2020-07&period=2020-09&ncm=32151100&source=home' AS page, 'nayarasouza@betimquimica.com.br' AS name, 'nayarasouza@betimquimica.com.br' AS email, 8 AS nota, NULL AS observacao, NULL AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-18 17:52:06' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Amauri Garcia' AS name, 'amauri.garcia@nextshipping.com.br' AS email, 10 AS nota, NULL AS observacao, NULL AS impacto, 7964 AS id_user
UNION ALL
SELECT
  CAST('2020-11-18 18:03:13' AS DATE) AS date, 'https://search.logcomex.io/dashboard/?period=2019-10&period=2020-09&possibleImporter=M-Was%20Comercial%20Ltda&source=home' AS page, 'roberto.ferreira@oiw.com.br' AS name, 'roberto.ferreira@oiw.com.br' AS email, 10 AS nota, 'Excelente' AS observacao, NULL AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-18 18:11:08' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Jonathan' AS name, 'jonathan.groehs@save-log.com' AS email, 10 AS nota, NULL AS observacao, NULL AS impacto, 7054 AS id_user
UNION ALL
SELECT
  CAST('2020-11-18 19:13:08' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Hector' AS name, 'hector.resende@nunofracht.com.br' AS email, 9 AS nota, NULL AS observacao, NULL AS impacto, 6128 AS id_user
UNION ALL
SELECT
  CAST('2020-11-18 19:22:21' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Claudia Almeida' AS name, 'calmeida@ventanaserra.com.br' AS email, 10 AS nota, '10' AS observacao, NULL AS impacto, 1266 AS id_user
UNION ALL
SELECT
  CAST('2020-11-18 19:29:11' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'dabiane@tdtrading.com.br' AS name, 'dabiane@tdtrading.com.br' AS email, 10 AS nota, NULL AS observacao, NULL AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-18 19:34:11' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao?tab=resumo&silent=true&groupBy=nmconsignatario&subGroup=&filter=end_date%3D2020-11-18%26filterImportacaoNmconsignatario%3Droma%2520importadora%26grouper%3Dnmconsignatario%26start_date%3D2020-10-01' AS page, 'Luis Henrique' AS name, 'luish@nelsonheusi.com' AS email, 10 AS nota, 'top' AS observacao, 'Muito impactado' AS impacto, 6373 AS id_user
UNION ALL
SELECT
  CAST('2020-11-18 19:50:26' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/aereo' AS page, 'Isadora Silva Soares' AS name, 'isadora.soares@bh-airport.com.br' AS email, 5 AS nota, NULL AS observacao, NULL AS impacto, 7810 AS id_user
UNION ALL
SELECT
  CAST('2020-11-18 20:08:04' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/captacao?tab=resumo&silent=true&groupBy=nrcemercante&subGroup=&filter=dashboard%3Did%26end_date%3D2020-11-24%26filter_date%3Doperation_date%26grouper%3Dnrcemercante%26lista_fcl%3DRFCU4112540%26start_date%3D2020-11-13&page=1&per_page=15' AS page, 'Wilson Silva Junior' AS name, 'wilson.junior@dpworld.com' AS email, 8 AS nota, NULL AS observacao, NULL AS impacto, 4715 AS id_user
UNION ALL
SELECT
  CAST('2020-11-18 20:10:10' AS DATE) AS date, 'https://search.logcomex.io/dashboard/?period=2020-04&period=2020-09&ncm=48084000&source=recent_search' AS page, 'polli@adelbras.com' AS name, 'polli@adelbras.com' AS email, 9 AS nota, NULL AS observacao, NULL AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-19 08:31:00' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Egidio Tarantino' AS name, 'etarantino@ventanaserra.com' AS email, 5 AS nota, 'meio complicado encontrar dados ' AS observacao, 'Nada impactado' AS impacto, 1842 AS id_user
UNION ALL
SELECT
  CAST('2020-11-19 10:26:20' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Cinthia Viana' AS name, 'cviana@agility.com' AS email, 9 AS nota, 'Há alguns casos que solicito um país e acaba vindo outro país, acho que isso deveria ser corrigido, no mais, sou bastante satisfeita' AS observacao, 'Muito impactado' AS impacto, 405 AS id_user
UNION ALL
SELECT
  CAST('2020-11-19 13:08:14' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'marlon.moura@rechtratores.com.br' AS name, 'marlon.moura@rechtratores.com.br' AS email, 10 AS nota, 'dados e navegação excelente' AS observacao, 'Pouco impactado' AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-19 13:10:24' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/exportacao' AS page, 'Bruno Vieira' AS name, 'sales09@csslog.com.br' AS email, 7 AS nota, NULL AS observacao, NULL AS impacto, 6721 AS id_user
UNION ALL
SELECT
  CAST('2020-11-19 13:24:31' AS DATE) AS date, 'https://search.logcomex.io/dashboard/?period=2020-07&period=2020-09&ncm=29094931&source=home' AS page, 'marcos.mattos@corium.com.br' AS name, 'marcos.mattos@corium.com.br' AS email, 7 AS nota, 'Os dados poderiam ser liberados com mais agilidade, acho dia 20 de cada mês um pouco tarde.' AS observacao, 'Muito impactado' AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-19 14:08:33' AS DATE) AS date, 'https://search.logcomex.io/dashboard/?period=2019-11&period=2020-10&productDescriptionContains%3Aor=%22vinos%20bodegas%22&source=home' AS page, 'diego.marcos@portoaporto.com.br' AS name, 'diego.marcos@portoaporto.com.br' AS email, 10 AS nota, '.' AS observacao, 'Muito impactado' AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-19 14:26:45' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao?tab=resumo&silent=true&groupBy=nmconsignatario&subGroup=&filter=end_date%3D2020-11-19%26filterImportacaoNmconsignatario%3DBEARING%26grouper%3Dnmconsignatario%26start_date%3D2020-10-19' AS page, 'Ricardo Salomão' AS name, 'ricardo.salomao@windlog.com.br' AS email, 9 AS nota, NULL AS observacao, NULL AS impacto, 7569 AS id_user
UNION ALL
SELECT
  CAST('2020-11-19 14:28:22' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Lucas' AS name, 'lucas@cfreight.com.br' AS email, 10 AS nota, 'Informações excelentes' AS observacao, 'Pouco impactado' AS impacto, 4199 AS id_user
UNION ALL
SELECT
  CAST('2020-11-19 14:48:06' AS DATE) AS date, 'https://search.logcomex.io/dashboard/?period=2020-01&period=2020-09&ncm=39072031&source=home' AS page, 'adriana.fischer@additiva.com.br' AS name, 'adriana.fischer@additiva.com.br' AS email, 9 AS nota, NULL AS observacao, NULL AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-19 15:38:23' AS DATE) AS date, 'https://search.logcomex.io/dashboard/?period=2020-08&period=2020-10&ncm=58042100&source=home' AS page, 'beni@parnassa.com.br' AS name, 'beni@parnassa.com.br' AS email, 8 AS nota, NULL AS observacao, NULL AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-19 16:38:14' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao?tab=resumo&filter=end_date%3D2020-10-30%26filterImportacaoNmconsignatario%3Darvedi%26grouper%3Dnmconsignatario%26start_date%3D2020-10-01&silent=true&page=1&per_page=15' AS page, 'Erika Williamson' AS name, 'erika.williamson@kerrylogistics.com' AS email, 8 AS nota, NULL AS observacao, NULL AS impacto, 4664 AS id_user
UNION ALL
SELECT
  CAST('2020-11-19 17:10:55' AS DATE) AS date, 'https://sistema.logcomex.io/#/leads?tab=itens&silent=true&filter=product_description%3Dmomentive%26year_month%3Dlast_3_months&subGroup=' AS page, 'Rafael Santos' AS name, 'rafael.santos@sqquimica.com' AS email, 10 AS nota, NULL AS observacao, 'Pouco impactado' AS impacto, 3595 AS id_user
UNION ALL
SELECT
  CAST('2020-11-19 18:18:07' AS DATE) AS date, 'https://search.logcomex.io/dashboard/?period=2020-08&period=2020-09&ncm=38249979&productDescriptionContains%3Aor=mofo&source=home' AS page, 'joice.silva@lanossi.com.br' AS name, 'joice.silva@lanossi.com.br' AS email, 10 AS nota, NULL AS observacao, NULL AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-19 18:24:32' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao?tab=resumo&silent=true&groupBy=nmconsignatario&subGroup=&filter=end_date%3D2020-11-19%26filterImportacaoNmconsignatario%3Dvoltz%26grouper%3Dnmconsignatario%26start_date%3D2020-08-04' AS page, 'Sergio' AS name, 'sergio.andrade@geobox.net.br' AS email, 7 AS nota, 'alguns bugs' AS observacao, 'Pouco impactado' AS impacto, 585 AS id_user
UNION ALL
SELECT
  CAST('2020-11-19 18:42:53' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Karine vendas SPO' AS name, 'karinne.rosas@pluscargo.com.br' AS email, 9 AS nota, 'otimo para montar estrategias comerciais.' AS observacao, 'Muito impactado' AS impacto, 4806 AS id_user
UNION ALL
SELECT
  CAST('2020-11-19 18:43:00' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Cristiano Gaeta' AS name, 'cristiano.gaeta@chrobinson.com' AS email, 10 AS nota, NULL AS observacao, NULL AS impacto, 7217 AS id_user
UNION ALL
SELECT
  CAST('2020-11-19 18:46:10' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Bruna Freitas' AS name, 'bruna.freitas@pglbr.com.br' AS email, 8 AS nota, NULL AS observacao, NULL AS impacto, 1405 AS id_user
UNION ALL
SELECT
  CAST('2020-11-19 18:54:27' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/aereo?tab=details&silent=true&groupBy=consignatario&subGroup=&filter=end_date%3D2020-10-31%26filterAereoConsignatario%3DSIDEL%26grouper%3Dconsignatario%26start_date%3D2020-10-01&page=1&per_page=15&grouper_value=SIDEL' AS page, 'Danilo Damprelli' AS name, 'danilo.damprelli@geodis.com' AS email, 10 AS nota, 'Otimo controle' AS observacao, 'Nada impactado' AS impacto, 3688 AS id_user
UNION ALL
SELECT
  CAST('2020-11-19 18:55:52' AS DATE) AS date, 'https://search.logcomex.io/dashboard/?period=2020-01&period=2020-09&ncm=40112090&source=home' AS page, 'jonatas.vieira@mondaxcomercio.com.br' AS name, 'jonatas.vieira@mondaxcomercio.com.br' AS email, 7 AS nota, NULL AS observacao, NULL AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-19 19:36:36' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Fabiana' AS name, 'frosa@loglinelogistica.com.br' AS email, 10 AS nota, NULL AS observacao, NULL AS impacto, 7591 AS id_user
UNION ALL
SELECT
  CAST('2020-11-19 20:03:46' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/exportacao?tab=resumo&silent=true&groupBy=txshipper&subGroup=&filter=end_date%3D2020-11-19%26filterExportacaoTxshipper%3DPATENSE%26grouper%3Dtxshipper%26start_date%3D2020-10-19' AS page, 'Leticia' AS name, 'lsebastiao@carpolog.com.br' AS email, 10 AS nota, NULL AS observacao, NULL AS impacto, 2052 AS id_user
UNION ALL
SELECT
  CAST('2020-11-19 20:16:22' AS DATE) AS date, 'https://search.logcomex.io/dashboard/?period=2020-07&period=2020-09&ncm=72172090&source=home' AS page, 'elisandro.carlesjr@alcast.com.br' AS name, 'elisandro.carlesjr@alcast.com.br' AS email, 10 AS nota, NULL AS observacao, NULL AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-19 20:17:06' AS DATE) AS date, 'https://sistema.logcomex.io/#/leads' AS page, 'karol' AS name, 'karol@fctrading.com.br' AS email, 10 AS nota, 'ok' AS observacao, 'Muito impactado' AS impacto, 4724 AS id_user
UNION ALL
SELECT
  CAST('2020-11-19 20:45:37' AS DATE) AS date, 'https://search.logcomex.io/dashboard/?period=2020-07&period=2020-09&ncm=70132800&ncm=70133700&ncm=70139900&source=home' AS page, 'rafael@premierdespachos.com.br' AS name, 'rafael@premierdespachos.com.br' AS email, 10 AS nota, NULL AS observacao, NULL AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-19 21:28:47' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/aereo?tab=resumo&silent=true&groupBy=consignatario&subGroup=&filter=end_date%3D2020-11-01%26filterAereoConsignatario%3Dflex%2520aereo%26grouper%3Dconsignatario%26start_date%3D2020-10-01' AS page, 'Ana Siqueira' AS name, 'ana.siqueira@servimex.com.br' AS email, 10 AS nota, 'kk' AS observacao, 'Muito impactado' AS impacto, 4691 AS id_user
UNION ALL
SELECT
  CAST('2020-11-19 22:59:50' AS DATE) AS date, 'https://search.logcomex.io/dashboard/?period=2019-10&period=2020-09&possibleImporter=leda%20de%20souza&source=home' AS page, 'apadias@travelexbank.com.br' AS name, 'apadias@travelexbank.com.br' AS email, 10 AS nota, NULL AS observacao, NULL AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-20 11:08:08' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'juliana@netpon.com.br' AS name, 'juliana@netpon.com.br' AS email, 9 AS nota, NULL AS observacao, NULL AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-20 12:32:03' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'bruno.perona@anastacio.com' AS name, 'bruno.perona@anastacio.com' AS email, 9 AS nota, NULL AS observacao, NULL AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-20 12:46:41' AS DATE) AS date, 'https://search.logcomex.io/dashboard/details/?period=2020-10&ncm=47032100&source=home' AS page, 'ariel@kruna.com.br' AS name, 'ariel@kruna.com.br' AS email, 6 AS nota, 'Só sai dia 20 as informações Interface poderia ser melhor ou mais adaptável para cada cliente' AS observacao, 'Pouco impactado' AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-20 13:25:19' AS DATE) AS date, 'https://search.logcomex.io/dashboard/?period=2019-11&period=2020-10&ncm=39252000&source=home' AS page, 'compras01@bellvalley.com.br' AS name, 'compras01@bellvalley.com.br' AS email, 10 AS nota, 'Ótimo para consultas' AS observacao, 'Muito impactado' AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-20 13:35:37' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'diretoria@frigelar.com' AS name, 'diretoria@frigelar.com' AS email, 8 AS nota, 'poderia sair antes do dia 20' AS observacao, 'Pouco impactado' AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-20 14:14:59' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/exportacao' AS page, 'Ketlyn' AS name, 'ketlyn@seaexpress.com.br' AS email, 10 AS nota, NULL AS observacao, NULL AS impacto, 4048 AS id_user
UNION ALL
SELECT
  CAST('2020-11-20 14:26:25' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'mporfirio@brenntagla.com' AS name, 'mporfirio@brenntagla.com' AS email, 10 AS nota, NULL AS observacao, NULL AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-20 14:41:15' AS DATE) AS date, 'https://search.logcomex.io/dashboard/?period=2020-04&period=2020-10&ncm=58089090&productDescriptionContains%3Aor=RENDA&source=home' AS page, 'andre@mundialcomex.com.br' AS name, 'andre@mundialcomex.com.br' AS email, 5 AS nota, NULL AS observacao, NULL AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-20 16:32:33' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/aereo' AS page, 'Cesar Reffer' AS name, 'cesar.reffer@latam.com' AS email, 7 AS nota, 'Los datos de semana N-1 no son confiables, tenemos que estar analizando datos N-3 para confiar en la data.' AS observacao, 'Muito impactado' AS impacto, 4181 AS id_user
UNION ALL
SELECT
  CAST('2020-11-20 16:38:41' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Leandro Xavier' AS name, 'leandro.xavier@windlog.com.br' AS email, 9 AS nota, NULL AS observacao, NULL AS impacto, 3642 AS id_user
UNION ALL
SELECT
  CAST('2020-11-20 17:05:20' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/aereo' AS page, 'Lorena Jorge' AS name, 'lorena.jorge@grupocraft.com.br' AS email, 10 AS nota, NULL AS observacao, NULL AS impacto, 335 AS id_user
UNION ALL
SELECT
  CAST('2020-11-20 17:16:50' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Douglas Piagentini' AS name, 'douglas.piagentini@cevalogistics.com' AS email, 9 AS nota, NULL AS observacao, NULL AS impacto, 3657 AS id_user
UNION ALL
SELECT
  CAST('2020-11-20 18:43:22' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Anna Luisa' AS name, 'annaluisaprado@axisshipping.com.br' AS email, 8 AS nota, NULL AS observacao, NULL AS impacto, 7533 AS id_user
UNION ALL
SELECT
  CAST('2020-11-20 18:52:46' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Stephanie Rubinho' AS name, 'financeiro@suloxidos.com.br' AS email, 10 AS nota, NULL AS observacao, NULL AS impacto, 7417 AS id_user
UNION ALL
SELECT
  CAST('2020-11-20 19:01:59' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Carlos' AS name, 'carlos.silva@transitex.com.br' AS email, 5 AS nota, NULL AS observacao, NULL AS impacto, 6028 AS id_user
UNION ALL
SELECT
  CAST('2020-11-20 19:35:48' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'benthien@gauss.com.br' AS name, 'benthien@gauss.com.br' AS email, 10 AS nota, NULL AS observacao, NULL AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-20 20:04:23' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Luiz Caetano' AS name, 'luiz@kpmlogistica.com.br' AS email, 10 AS nota, NULL AS observacao, NULL AS impacto, 880 AS id_user
UNION ALL
SELECT
  CAST('2020-11-20 20:58:19' AS DATE) AS date, 'https://sistema.logcomex.io/#/leads' AS page, 'João SCALOPPE' AS name, 'joao.scaloppe@imerys.com' AS email, 6 AS nota, 'ferramenta atual pouco intuitiva, muito difícil de mexer, não permite consolidação ou exportação do dados. Ferramenta nova é boa, mas tem muita restrição de utilização, número de relatórios limitado.' AS observacao, 'Muito impactado' AS impacto, 6062 AS id_user
UNION ALL
SELECT
  CAST('2020-11-20 21:58:34' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'flavio@ascensus.com.br' AS name, 'flavio@ascensus.com.br' AS email, 8 AS nota, '.' AS observacao, NULL AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-21 01:13:58' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Roberta Irene' AS name, 'roberta.irene@cevalogistics.com' AS email, 9 AS nota, NULL AS observacao, NULL AS impacto, 3604 AS id_user
UNION ALL
SELECT
  CAST('2020-11-21 02:55:08' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'amanda.azevedo@sumitomochemical.com' AS name, 'amanda.azevedo@sumitomochemical.com' AS email, 7 AS nota, NULL AS observacao, NULL AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-21 11:50:23' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'sharif@sunset-tires.com' AS name, 'sharif@sunset-tires.com' AS email, 7 AS nota, NULL AS observacao, NULL AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-21 13:14:19' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'diretoria@hylik.com.br' AS name, 'diretoria@hylik.com.br' AS email, 10 AS nota, NULL AS observacao, NULL AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-22 19:36:25' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Daniel Amaral' AS name, 'daniel.amaral@kuehne-nagel.com' AS email, 10 AS nota, 'muito bom' AS observacao, 'Muito impactado' AS impacto, 3948 AS id_user
UNION ALL
SELECT
  CAST('2020-11-22 20:13:43' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'inteligenciademercado@nunofracht.com.br' AS name, 'inteligenciademercado@nunofracht.com.br' AS email, 8 AS nota, NULL AS observacao, NULL AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-22 21:57:17' AS DATE) AS date, 'https://sistema.logcomex.io/#/signin' AS page, 'Thuane Cristine de Moraes' AS name, 'tmoraes@vendemmia.com.br' AS email, 10 AS nota, NULL AS observacao, NULL AS impacto, 7290 AS id_user
UNION ALL
SELECT
  CAST('2020-11-23 11:22:33' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'GUSTAVO POCHAMANN' AS name, 'gustavo.pochmann@craft.com.br' AS email, 8 AS nota, 'excelente para impo, porem expo falta informaçoes e informacoes distorcidas.' AS observacao, 'Pouco impactado' AS impacto, 3365 AS id_user
UNION ALL
SELECT
  CAST('2020-11-23 11:28:34' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/exportacao' AS page, 'Willian' AS name, 'willian.oliveira@transitex.com.br' AS email, 8 AS nota, 'l' AS observacao, 'Pouco impactado' AS impacto, 6026 AS id_user
UNION ALL
SELECT
  CAST('2020-11-23 11:53:25' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Vanessa Moraes' AS name, 'vanessa@sbtrade.com.br' AS email, 2 AS nota, 'o site não está carregando ' AS observacao, NULL AS impacto, 7479 AS id_user
UNION ALL
SELECT
  CAST('2020-11-23 12:02:22' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Adriana Cunha' AS name, 'adriana@transbrasa.com.br' AS email, 10 AS nota, NULL AS observacao, NULL AS impacto, 1655 AS id_user
UNION ALL
SELECT
  CAST('2020-11-23 12:06:05' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Alexandre Lemos' AS name, 'alexandre.lemos@ecoportosantos.com.br' AS email, 7 AS nota, NULL AS observacao, NULL AS impacto, 1905 AS id_user
UNION ALL
SELECT
  CAST('2020-11-23 12:16:44' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Marcio' AS name, 'mvieira@loglinelogistica.com.br' AS email, 5 AS nota, NULL AS observacao, NULL AS impacto, 2709 AS id_user
UNION ALL
SELECT
  CAST('2020-11-23 12:18:49' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Denis Garcia' AS name, 'denis.garcia@dpworld.com' AS email, 10 AS nota, '8' AS observacao, 'Pouco impactado' AS impacto, 275 AS id_user
UNION ALL
SELECT
  CAST('2020-11-23 12:24:08' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/exportacao' AS page, 'Felipe Cabral' AS name, 'fcabral@actioncargo.com.br' AS email, 6 AS nota, 'Faltam muitos dados de exportação.' AS observacao, 'Pouco impactado' AS impacto, 5107 AS id_user
UNION ALL
SELECT
  CAST('2020-11-23 12:28:01' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Leonardo Rocha Guglierme' AS name, 'lguglierme@agility.com' AS email, 9 AS nota, NULL AS observacao, NULL AS impacto, 142 AS id_user
UNION ALL
SELECT
  CAST('2020-11-23 12:38:57' AS DATE) AS date, 'https://sistema.logcomex.io/#/signin' AS page, 'Carol Duque' AS name, 'carol@amslog.com.br' AS email, 10 AS nota, 'atende bem a finalidade na importação ' AS observacao, NULL AS impacto, 2184 AS id_user
UNION ALL
SELECT
  CAST('2020-11-23 12:47:17' AS DATE) AS date, 'https://sistema.logcomex.io/#/signin' AS page, 'Luciano Gomes' AS name, 'luciano.gomes@fcalog.com' AS email, 5 AS nota, NULL AS observacao, NULL AS impacto, 7649 AS id_user
UNION ALL
SELECT
  CAST('2020-11-23 12:58:08' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/aereo' AS page, 'Kaue Martinez' AS name, 'kaue.martinez@pglbr.com.br' AS email, 10 AS nota, 'muito bom o nivel de informação' AS observacao, 'Muito impactado' AS impacto, 4253 AS id_user
UNION ALL
SELECT
  CAST('2020-11-23 12:58:53' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/aereo' AS page, 'Fábio Rodrigo borborema' AS name, 'sales@delphiforwarding.com' AS email, 2 AS nota, NULL AS observacao, NULL AS impacto, 5625 AS id_user
UNION ALL
SELECT
  CAST('2020-11-23 13:09:11' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Vivian Brunialti' AS name, 'vivian.leitebrunialti@br.dsv.com' AS email, 0 AS nota, 'Está muito lento' AS observacao, NULL AS impacto, 5549 AS id_user
UNION ALL
SELECT
  CAST('2020-11-23 13:09:32' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'l.monteiro@zttcable.com.br' AS name, 'l.monteiro@zttcable.com.br' AS email, 7 AS nota, NULL AS observacao, NULL AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-23 13:16:44' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/exportacao' AS page, 'Lucas Lapido' AS name, 'lucas.lapido@generalnoli.com' AS email, 9 AS nota, NULL AS observacao, NULL AS impacto, 545 AS id_user
UNION ALL
SELECT
  CAST('2020-11-23 13:31:44' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Erika Hamada' AS name, 'erika.hamada@newtrafic.com.br' AS email, 9 AS nota, 'xx' AS observacao, 'Muito impactado' AS impacto, 5744 AS id_user
UNION ALL
SELECT
  CAST('2020-11-23 13:44:23' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'graziela.ribeiro@cremer.com.br' AS name, 'graziela.ribeiro@cremer.com.br' AS email, 7 AS nota, 'N/A' AS observacao, NULL AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-23 14:00:48' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'caio.barbieri@mafrahospitalar.com.br' AS name, 'caio.barbieri@mafrahospitalar.com.br' AS email, 7 AS nota, 'Ainda alguns aspectos tenho que pegar a informaçao manualmente para montar gráficos em Excel.' AS observacao, 'Pouco impactado' AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-23 14:00:58' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'luciano@awacomercial.com.br' AS name, 'luciano@awacomercial.com.br' AS email, 7 AS nota, NULL AS observacao, NULL AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-23 14:11:45' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'ANA PRIANTI' AS name, 'ana.prianti@gefco.com.br' AS email, 10 AS nota, NULL AS observacao, NULL AS impacto, 3436 AS id_user
UNION ALL
SELECT
  CAST('2020-11-23 14:43:21' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/aereo' AS page, 'Pedro Oliveira' AS name, 'poliveira@unigroup.com.br' AS email, 10 AS nota, NULL AS observacao, NULL AS impacto, 7998 AS id_user
UNION ALL
SELECT
  CAST('2020-11-23 14:51:50' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao?tab=resumo&silent=true&groupBy=nmconsignatario&subGroup=&filter=end_date%3D2020-11-23%26filterImportacaoCnpjconsignatario%3D01983318000100%26grouper%3Dnmconsignatario%26start_date%3D2020-01-01&page=1&per_page=15' AS page, 'Vanessa Saraiva' AS name, 'vanessa.saraiva@br.rhenus.com' AS email, 10 AS nota, 'O site é bem rápido, puxa várias informações. Está sendo muito útil no trabalho. Parabéns!' AS observacao, 'Muito impactado' AS impacto, 1585 AS id_user
UNION ALL
SELECT
  CAST('2020-11-23 15:23:34' AS DATE) AS date, 'https://search.logcomex.io/dashboard/?period=2020-08&period=2020-10&possibleImporter=Pial%20Legrand&source=home' AS page, 'islopes@gmail.com' AS name, 'islopes@gmail.com' AS email, 7 AS nota, NULL AS observacao, NULL AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-23 15:29:11' AS DATE) AS date, 'https://search.logcomex.io/dashboard/?period=2019-11&period=2020-10&possibleImporter=full%20comercial&source=home' AS page, 'henriquecamargoliberoquim@gmail.com' AS name, 'henriquecamargoliberoquim@gmail.com' AS email, 9 AS nota, NULL AS observacao, NULL AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-23 16:59:40' AS DATE) AS date, 'https://search.logcomex.io/dashboard/?period=2020-09&period=2020-10&possibleImporter=EURORICAMBI&possibleImporter=EUROTECNICA&source=home' AS page, 'export2@motopecas.com.br' AS name, 'export2@motopecas.com.br' AS email, 8 AS nota, 'É um programa muito bom, com uma interface de fácil compreensão. ' AS observacao, 'Muito impactado' AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-23 18:23:02' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'wgk@wgkindustria.com.br' AS name, 'wgk@wgkindustria.com.br' AS email, 9 AS nota, NULL AS observacao, NULL AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-23 19:00:24' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/exportacao' AS page, 'Mayara Pastori' AS name, 'mayara.pastori@windlog.com.br' AS email, 10 AS nota, NULL AS observacao, NULL AS impacto, 6218 AS id_user
UNION ALL
SELECT
  CAST('2020-11-23 19:11:09' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'BR-SALES-SAO' AS name, 'br-sales-sao@jas.com' AS email, 10 AS nota, 'otima ferramenta' AS observacao, 'Muito impactado' AS impacto, 7893 AS id_user
UNION ALL
SELECT
  CAST('2020-11-23 19:42:58' AS DATE) AS date, 'https://sistema.logcomex.io/#/searchx/importacao' AS page, 'Bianca' AS name, 'comercial@asiasource.com.br' AS email, 5 AS nota, NULL AS observacao, NULL AS impacto, 6319 AS id_user
UNION ALL
SELECT
  CAST('2020-11-23 20:16:01' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Alexandre Argentati' AS name, 'alexandre.argentati@jb-logistics.com.br' AS email, 7 AS nota, NULL AS observacao, NULL AS impacto, 3962 AS id_user
UNION ALL
SELECT
  CAST('2020-11-23 20:26:20' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao?tab=resumo&silent=true&groupBy=nmconsignatario&subGroup=&filter=end_date%3D2020-11-23%26filterImportacaoNmconsignatario%3Dcondor%26grouper%3Dnmconsignatario%26start_date%3D2020-08-25&page=1&per_page=15' AS page, 'Lissa Souza' AS name, 'lissa.souza@kuehne-nagel.com' AS email, 9 AS nota, 'exp aérea não tem infos completas' AS observacao, NULL AS impacto, 2847 AS id_user
UNION ALL
SELECT
  CAST('2020-11-23 20:31:51' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'overseas@lmglasers.com.br' AS name, 'overseas@lmglasers.com.br' AS email, 10 AS nota, NULL AS observacao, NULL AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-23 22:10:58' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Roberta Fritsche' AS name, 'roberta.fritsche@grupocraft.com.br' AS email, 9 AS nota, NULL AS observacao, NULL AS impacto, 4090 AS id_user
UNION ALL
SELECT
  CAST('2020-11-24 11:12:22' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Guilherme Kreischer' AS name, 'guilherme.kreischer@dmslog.com' AS email, 10 AS nota, NULL AS observacao, NULL AS impacto, 7344 AS id_user
UNION ALL
SELECT
  CAST('2020-11-24 11:46:22' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Thiago Santos' AS name, 'tsantos@unigroup.com.br' AS email, 6 AS nota, NULL AS observacao, NULL AS impacto, 4133 AS id_user
UNION ALL
SELECT
  CAST('2020-11-24 12:16:12' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Pedro Arruda' AS name, 'pedro.arruda@baggioltda.com' AS email, 8 AS nota, NULL AS observacao, NULL AS impacto, 2461 AS id_user
UNION ALL
SELECT
  CAST('2020-11-24 12:36:28' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'dardania.leite@bh-airport.com.br' AS name, 'dardania.leite@bh-airport.com.br' AS email, 2 AS nota, NULL AS observacao, NULL AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-24 13:10:45' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'WANESSA' AS name, 'wanessa@cargoland.com.br' AS email, 2 AS nota, NULL AS observacao, NULL AS impacto, 5047 AS id_user
UNION ALL
SELECT
  CAST('2020-11-24 13:13:19' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/exportacao' AS page, 'Daniel' AS name, 'dcastro@loglinelogistica.com.br' AS email, 10 AS nota, NULL AS observacao, NULL AS impacto, 7666 AS id_user
UNION ALL
SELECT
  CAST('2020-11-24 13:13:59' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Waldan Ferreira' AS name, 'waldan.ferreira@grupocraft.com.br' AS email, 10 AS nota, NULL AS observacao, NULL AS impacto, 4837 AS id_user
UNION ALL
SELECT
  CAST('2020-11-24 13:41:39' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Fabricio' AS name, 'fabricio.liza@logwin-logistics.com' AS email, 10 AS nota, NULL AS observacao, NULL AS impacto, 720 AS id_user
UNION ALL
SELECT
  CAST('2020-11-24 13:43:13' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Renan Soares Nascimento Pereira' AS name, 'renan.pereira@ealoggroup.com' AS email, 9 AS nota, 'gosto da plataforma' AS observacao, NULL AS impacto, 4243 AS id_user
UNION ALL
SELECT
  CAST('2020-11-24 13:51:36' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/exportacao' AS page, 'Márcio Souza' AS name, 'marcio.souza@unitradinglog.com.br' AS email, 7 AS nota, 'dificuldades em manusear o site' AS observacao, 'Pouco impactado' AS impacto, 5955 AS id_user
UNION ALL
SELECT
  CAST('2020-11-24 14:07:56' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Thiago Rezende' AS name, 'thiagofr@transbrasa.com.br' AS email, 9 AS nota, 'Clareza nas informações' AS observacao, 'Pouco impactado' AS impacto, 1659 AS id_user
UNION ALL
SELECT
  CAST('2020-11-24 14:17:58' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'diego.dutra@citi.com' AS name, 'diego.dutra@citi.com' AS email, 10 AS nota, 'nh' AS observacao, 'Muito impactado' AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-24 14:22:10' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Anne Krammel' AS name, 'annekrammel@polycargo.com.br' AS email, 10 AS nota, '..........' AS observacao, 'Muito impactado' AS impacto, 5782 AS id_user
UNION ALL
SELECT
  CAST('2020-11-24 14:50:22' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/exportacao' AS page, 'Noelle' AS name, 'noelle.costa@unitradinglog.com.br' AS email, 10 AS nota, NULL AS observacao, NULL AS impacto, 6818 AS id_user
UNION ALL
SELECT
  CAST('2020-11-24 14:52:58' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Thomas Bento' AS name, 'tbento@portonave.com.br' AS email, 7 AS nota, '.' AS observacao, 'Pouco impactado' AS impacto, 158 AS id_user
UNION ALL
SELECT
  CAST('2020-11-24 17:18:12' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'João CWB' AS name, 'joao.freitas@pluscargo.com.br' AS email, 9 AS nota, 'Quase perfeito, porém temos perebido muitas vezes agente (NULL) , pagamento (NUll)' AS observacao, 'Muito impactado' AS impacto, 4345 AS id_user
UNION ALL
SELECT
  CAST('2020-11-24 17:18:24' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Carlos' AS name, 'carlos.hauck@csslog.com.br' AS email, 10 AS nota, NULL AS observacao, NULL AS impacto, 75 AS id_user
UNION ALL
SELECT
  CAST('2020-11-24 17:29:52' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Alinne Santos' AS name, 'alinne.santos@kuehne-nagel.com' AS email, 8 AS nota, 'muito bom' AS observacao, 'Muito impactado' AS impacto, 2346 AS id_user
UNION ALL
SELECT
  CAST('2020-11-24 17:47:11' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Marcos Henrique' AS name, 'sales01@csslog.com.br' AS email, 8 AS nota, NULL AS observacao, NULL AS impacto, 73 AS id_user
UNION ALL
SELECT
  CAST('2020-11-24 17:54:17' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'alexandre@easychef.com.br' AS name, 'alexandre@easychef.com.br' AS email, 10 AS nota, NULL AS observacao, NULL AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-24 17:57:06' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Tayna Cristine Fernandes' AS name, 'tayna.fernandes@cevalogistics.com' AS email, 3 AS nota, NULL AS observacao, NULL AS impacto, 5073 AS id_user
UNION ALL
SELECT
  CAST('2020-11-24 18:01:44' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Rachel Streicher' AS name, 'rachelstreicher@polyterminais.com.br' AS email, 10 AS nota, 'boas informações' AS observacao, 'Muito impactado' AS impacto, 7036 AS id_user
UNION ALL
SELECT
  CAST('2020-11-24 18:10:41' AS DATE) AS date, 'https://sistema.logcomex.io/#/leads' AS page, 'myrella' AS name, 'comercial@fctrading.com.br' AS email, 8 AS nota, NULL AS observacao, NULL AS impacto, 4714 AS id_user
UNION ALL
SELECT
  CAST('2020-11-24 18:19:38' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/aereo' AS page, 'Luciana Pianta' AS name, 'luciana.pianta@pglbr.com.br' AS email, 8 AS nota, 'as x nao consigo conectar' AS observacao, 'Muito impactado' AS impacto, 3420 AS id_user
UNION ALL
SELECT
  CAST('2020-11-24 18:21:45' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/aereo' AS page, 'Marcos Jose Marins Vasconcellos' AS name, 'marcos.vasconcellos@expeditedamericabrasil.com' AS email, 4 AS nota, 'muito caro para o que oferece' AS observacao, 'Pouco impactado' AS impacto, 2205 AS id_user
UNION ALL
SELECT
  CAST('2020-11-24 18:25:27' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Glaucus Motta' AS name, 'glaucus.motta@ealoggroup.com' AS email, 9 AS nota, 'Excelente' AS observacao, 'Muito impactado' AS impacto, 4487 AS id_user
UNION ALL
SELECT
  CAST('2020-11-24 18:48:38' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Adriano Gavazzoni' AS name, 'adriano.gavazzoni@dachser.com' AS email, 7 AS nota, NULL AS observacao, NULL AS impacto, 5818 AS id_user
UNION ALL
SELECT
  CAST('2020-11-24 18:51:54' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'tiago.goncalves@kyb.com.br' AS name, 'tiago.goncalves@kyb.com.br' AS email, 9 AS nota, NULL AS observacao, NULL AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-24 19:06:45' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Cristhina Yuri' AS name, 'cristhina.yuri@geobox.net.br' AS email, 5 AS nota, 'pode ser melhorado' AS observacao, 'Muito impactado' AS impacto, 6738 AS id_user
UNION ALL
SELECT
  CAST('2020-11-24 19:23:22' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Vinicius Cunha' AS name, 'vcunha@mslcorporate.com.br' AS email, 10 AS nota, NULL AS observacao, NULL AS impacto, 3983 AS id_user
UNION ALL
SELECT
  CAST('2020-11-24 19:32:40' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/aereo?silent=true' AS page, 'GIanpaolo Hickey' AS name, 'gianpaolo.hickey@pglbr.com.br' AS email, 10 AS nota, 'muito bom ' AS observacao, 'Muito impactado' AS impacto, 6574 AS id_user
UNION ALL
SELECT
  CAST('2020-11-24 19:35:36' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/aereo' AS page, 'Vanessa Ramponi' AS name, 'vanessa.ramponi@kuehne-nagel.com' AS email, 10 AS nota, NULL AS observacao, NULL AS impacto, 2734 AS id_user
UNION ALL
SELECT
  CAST('2020-11-24 20:19:52' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Felipe Mattos' AS name, 'felipe.mattos@bmlog.com.br' AS email, 10 AS nota, NULL AS observacao, NULL AS impacto, 5044 AS id_user
UNION ALL
SELECT
  CAST('2020-11-24 20:19:57' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/aereo' AS page, 'Elisabete' AS name, 'edaltro@zlogistik.com' AS email, 9 AS nota, 'Equipe muito atenciosa e sistema muito util' AS observacao, 'Muito impactado' AS impacto, 7550 AS id_user
UNION ALL
SELECT
  CAST('2020-11-24 20:34:28' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'alumifix@alumifix.com.br' AS name, 'alumifix@alumifix.com.br' AS email, 10 AS nota, 'ainda não testei o sistema' AS observacao, 'Muito impactado' AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-24 20:43:28' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'GISELE ALVES DE SOUZA' AS name, 'inside.cpq2@pluscargo.com.br' AS email, 10 AS nota, 'boas informacoes' AS observacao, 'Pouco impactado' AS impacto, 5917 AS id_user
UNION ALL
SELECT
  CAST('2020-11-24 23:00:46' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/aereo?tab=resumo&silent=true&groupBy=consignatario&subGroup=&filter=end_date%3D2020-11-24%26filterAereoConsignatario%3Dnexa%2520%26grouper%3Dconsignatario%26start_date%3D2020-11-19' AS page, 'Raquel' AS name, 'raquel.rolim@tasklogistics.com.br' AS email, 9 AS nota, NULL AS observacao, NULL AS impacto, 1838 AS id_user
UNION ALL
SELECT
  CAST('2020-11-25 00:03:41' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Daniely de Almeida Soares' AS name, 'daniely.soares@cevalogistics.com' AS email, 9 AS nota, NULL AS observacao, NULL AS impacto, 5186 AS id_user
UNION ALL
SELECT
  CAST('2020-11-25 09:52:26' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Lars Makowski' AS name, 'lars.makowski@de.rhenus.com' AS email, 8 AS nota, 'Praticamente tudo funciona bem, as vezes lento, as vezes sem resultado, mas 90% funciona bem...' AS observacao, 'Pouco impactado' AS impacto, 1586 AS id_user
UNION ALL
SELECT
  CAST('2020-11-25 11:10:56' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'aoliveira@swmintl.com' AS name, 'aoliveira@swmintl.com' AS email, 10 AS nota, 'Qualidade do serviço e das informações superando as expectativas' AS observacao, 'Pouco impactado' AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-25 11:46:19' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'mtorres@fortlev.com.br' AS name, 'mtorres@fortlev.com.br' AS email, 8 AS nota, 'Pesquisas mais especificas' AS observacao, 'Muito impactado' AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-25 12:47:11' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Thiago Parente' AS name, 'thiagoparente@paclog.com.br' AS email, 10 AS nota, NULL AS observacao, NULL AS impacto, 190 AS id_user
UNION ALL
SELECT
  CAST('2020-11-25 12:57:55' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Daniela Matos' AS name, 'dmatos@capitalsp.com.br' AS email, 10 AS nota, 'Sistema bem completo ' AS observacao, 'Pouco impactado' AS impacto, 7787 AS id_user
UNION ALL
SELECT
  CAST('2020-11-25 13:22:54' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'douglas.silva@kian.com.br' AS name, 'douglas.silva@kian.com.br' AS email, 10 AS nota, 'ótimas informações.' AS observacao, 'Muito impactado' AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-25 13:26:16' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'financeiro@mondialbusiness.com.br' AS name, 'financeiro@mondialbusiness.com.br' AS email, 5 AS nota, 'Limitação de pesquisas' AS observacao, 'Muito impactado' AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-25 13:37:27' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Thais insidesales SPO' AS name, 'cs4@pluscargo.com.br' AS email, 10 AS nota, NULL AS observacao, NULL AS impacto, 4814 AS id_user
UNION ALL
SELECT
  CAST('2020-11-25 13:44:44' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'fabio.ricardi@alfalaval.com' AS name, 'fabio.ricardi@alfalaval.com' AS email, 9 AS nota, NULL AS observacao, NULL AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-25 13:53:22' AS DATE) AS date, 'https://sistema.logcomex.io/#/signin' AS page, 'Tamara Aranha' AS name, 'tamara@handline.com.br' AS email, 9 AS nota, NULL AS observacao, NULL AS impacto, 4910 AS id_user
UNION ALL
SELECT
  CAST('2020-11-25 15:01:26' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Fernanda Valentin' AS name, 'insidesales@efficienza.com.br' AS email, 9 AS nota, 'As informações estão atualizadas e de acordo com a expectativa' AS observacao, 'Muito impactado' AS impacto, 7821 AS id_user
UNION ALL
SELECT
  CAST('2020-11-25 16:32:25' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/aereo' AS page, 'João Fernandes' AS name, 'joao.fernandes@expeditedamericabrasil.com' AS email, 8 AS nota, 'falta exportacao!' AS observacao, 'Pouco impactado' AS impacto, 2692 AS id_user
UNION ALL
SELECT
  CAST('2020-11-25 16:35:05' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Marcos Silva' AS name, 'marcossilva@rentalog.com.br' AS email, 5 AS nota, 'ok' AS observacao, 'Muito impactado' AS impacto, 7675 AS id_user
UNION ALL
SELECT
  CAST('2020-11-25 17:00:45' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'maria.gaedke@oiw.com.br' AS name, 'maria.gaedke@oiw.com.br' AS email, 9 AS nota, NULL AS observacao, NULL AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-25 17:11:51' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Carla Martinez' AS name, 'comercial03@carpolog.com.br' AS email, 10 AS nota, NULL AS observacao, NULL AS impacto, 3471 AS id_user
UNION ALL
SELECT
  CAST('2020-11-25 18:15:53' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Gilmar Costa' AS name, 'gilmar.costa@leschaco.com' AS email, 8 AS nota, 'bom' AS observacao, 'Pouco impactado' AS impacto, 4472 AS id_user
UNION ALL
SELECT
  CAST('2020-11-25 19:04:45' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Marco Melo' AS name, 'mmelo@actioncargo.com.br' AS email, 10 AS nota, NULL AS observacao, NULL AS impacto, 5981 AS id_user
UNION ALL
SELECT
  CAST('2020-11-25 19:36:29' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'gustavo@ciatextrade.com.br' AS name, 'gustavo@ciatextrade.com.br' AS email, 9 AS nota, 'ddd' AS observacao, NULL AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-25 19:48:00' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/exportacao' AS page, 'Andreval' AS name, 'andreval.santos@generalnoli.com' AS email, 10 AS nota, NULL AS observacao, NULL AS impacto, 566 AS id_user
UNION ALL
SELECT
  CAST('2020-11-25 20:33:02' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Vinicius Katsuo' AS name, 'vinicius.katsuo@blulogistics.com.br' AS email, 9 AS nota, NULL AS observacao, NULL AS impacto, 7017 AS id_user
UNION ALL
SELECT
  CAST('2020-11-25 20:59:25' AS DATE) AS date, 'https://sistema.logcomex.io/#/leads' AS page, 'Dienifer Bueno' AS name, 'comercial02@idcargo.com.br' AS email, 10 AS nota, NULL AS observacao, NULL AS impacto, 3677 AS id_user
UNION ALL
SELECT
  CAST('2020-11-25 22:12:47' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'mikaelfideles@riogaleao.com' AS name, 'mikaelfideles@riogaleao.com' AS email, 10 AS nota, NULL AS observacao, NULL AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-26 02:48:22' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'fabio.munacata@elgin.com.br' AS name, 'fabio.munacata@elgin.com.br' AS email, 8 AS nota, NULL AS observacao, NULL AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-26 11:24:06' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Helen' AS name, 'helen@bmlog.com.br' AS email, 8 AS nota, 'muito bom' AS observacao, 'Muito impactado' AS impacto, 1073 AS id_user
UNION ALL
SELECT
  CAST('2020-11-26 12:50:17' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'projetos@winningtrading.com.br' AS name, 'projetos@winningtrading.com.br' AS email, 8 AS nota, NULL AS observacao, 'Muito impactado' AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-26 13:30:08' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'lclima@erzkontor-br.com' AS name, 'lclima@erzkontor-br.com' AS email, 7 AS nota, NULL AS observacao, NULL AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-26 14:30:55' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Marcus' AS name, 'marcus.harwardt@jas.com' AS email, 10 AS nota, NULL AS observacao, NULL AS impacto, 7883 AS id_user
UNION ALL
SELECT
  CAST('2020-11-26 14:31:04' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'ALINE FERREIRA SOUSA' AS name, 'aline.sousa@auroraeadi.com.br' AS email, 8 AS nota, 'sim' AS observacao, 'Muito impactado' AS impacto, 2022 AS id_user
UNION ALL
SELECT
  CAST('2020-11-26 16:12:34' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'contato@tntferramentas.com.br' AS name, 'contato@tntferramentas.com.br' AS email, 10 AS nota, 'Encontro todas as informações que preciso' AS observacao, 'Muito impactado' AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-26 16:34:13' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Andre Tavares' AS name, 'andre.tavares@ictsirio.com' AS email, 7 AS nota, NULL AS observacao, NULL AS impacto, 7421 AS id_user
UNION ALL
SELECT
  CAST('2020-11-26 16:44:08' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Gabriela' AS name, 'gabriela.p@efficienza.com.br' AS email, 10 AS nota, NULL AS observacao, NULL AS impacto, 6785 AS id_user
UNION ALL
SELECT
  CAST('2020-11-26 17:31:23' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/exportacao' AS page, 'Edson Santana' AS name, 'esantana@prolinlog.com.br' AS email, 10 AS nota, NULL AS observacao, NULL AS impacto, 3092 AS id_user
UNION ALL
SELECT
  CAST('2020-11-26 17:31:54' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Rafael Ribeiro' AS name, 'rafael.ribeiro@kerrylogistics.com' AS email, 7 AS nota, NULL AS observacao, NULL AS impacto, 1401 AS id_user
UNION ALL
SELECT
  CAST('2020-11-26 17:38:22' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Patricia Trevisan' AS name, 'ptrevisan@skymarine.com.br' AS email, 9 AS nota, 'Talvez eu esteja fazendo algo errado, mas anteriormente a informação do cnpj do consignatário aparecia, porém agora não mais. ' AS observacao, 'Muito impactado' AS impacto, 4647 AS id_user
UNION ALL
SELECT
  CAST('2020-11-26 18:08:11' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Bruna Rosa' AS name, 'brunarosa@oclif.com.br' AS email, 9 AS nota, NULL AS observacao, NULL AS impacto, 1561 AS id_user
UNION ALL
SELECT
  CAST('2020-11-26 18:23:44' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'BR-SALES-POA' AS name, 'br-sales-poa@jas.com' AS email, 8 AS nota, NULL AS observacao, NULL AS impacto, 7898 AS id_user
UNION ALL
SELECT
  CAST('2020-11-26 18:25:22' AS DATE) AS date, 'https://sistema.logcomex.io/#/searchx/importacao' AS page, 'Luis' AS name, 'luis@asiasource.com.br' AS email, 10 AS nota, 'Um site rápido que proporciona resultados em pouco tempo' AS observacao, 'Muito impactado' AS impacto, 3843 AS id_user
UNION ALL
SELECT
  CAST('2020-11-26 18:44:37' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'macedo87@hotmail.com' AS name, 'macedo87@hotmail.com' AS email, 9 AS nota, 'muito bom ' AS observacao, 'Pouco impactado' AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-26 19:18:34' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Raphael insidesales SPO' AS name, 'cs5@pluscargo.com.br' AS email, 6 AS nota, NULL AS observacao, NULL AS impacto, 4813 AS id_user
UNION ALL
SELECT
  CAST('2020-11-26 19:23:34' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Intel Pricing SEA AIR' AS name, 'intel@actioncargo.com.br' AS email, 7 AS nota, NULL AS observacao, NULL AS impacto, 5980 AS id_user
UNION ALL
SELECT
  CAST('2020-11-26 19:25:33' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'aline.zagato@samsung.com' AS name, 'aline.zagato@samsung.com' AS email, 2 AS nota, 'Produtos não estão nos atendendo ' AS observacao, 'Muito impactado' AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-26 20:16:07' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Pricing' AS name, 'pricing@marimex.com.br' AS email, 7 AS nota, NULL AS observacao, NULL AS impacto, 3654 AS id_user
UNION ALL
SELECT
  CAST('2020-11-26 20:25:59' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'l.arantes@samsung.com' AS name, 'l.arantes@samsung.com' AS email, 5 AS nota, 'primeira utilizacao' AS observacao, 'Pouco impactado' AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-26 20:52:39' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'compras@dicomp.com.br' AS name, 'compras@dicomp.com.br' AS email, 8 AS nota, NULL AS observacao, NULL AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-26 20:55:16' AS DATE) AS date, 'https://sistema.logcomex.io/#/leads' AS page, 'Fernando' AS name, 'fernando.marques@vsantos.com.br' AS email, 9 AS nota, 'EXCELENTE FERRAMENTA.' AS observacao, 'Pouco impactado' AS impacto, 1103 AS id_user
UNION ALL
SELECT
  CAST('2020-11-26 21:01:39' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Rafael' AS name, 'rafael@bflogistics.com.br' AS email, 10 AS nota, 'sistema funciona bem' AS observacao, 'Muito impactado' AS impacto, 6296 AS id_user
UNION ALL
SELECT
  CAST('2020-11-26 21:30:27' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Carlos Bastos' AS name, 'carlos.bastos@dachser.com' AS email, 8 AS nota, 'bom trabalho' AS observacao, 'Muito impactado' AS impacto, 5823 AS id_user
UNION ALL
SELECT
  CAST('2020-11-27 00:22:27' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Sami Hermas' AS name, 'sami@newtrafic.com.br' AS email, 10 AS nota, NULL AS observacao, NULL AS impacto, 375 AS id_user
UNION ALL
SELECT
  CAST('2020-11-27 11:43:09' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'mariane.netpon@gmail.com' AS name, 'mariane.netpon@gmail.com' AS email, 8 AS nota, NULL AS observacao, NULL AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-27 11:58:06' AS DATE) AS date, 'https://sistema.logcomex.io/#/leads' AS page, 'Horácio' AS name, 'horacio@assuncaobr.com.br' AS email, 10 AS nota, 'Satisfeito' AS observacao, NULL AS impacto, 2296 AS id_user
UNION ALL
SELECT
  CAST('2020-11-27 12:21:10' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/aereo' AS page, 'JOSÉ ROBERTO' AS name, 'jose@kpmlogistica.com.br' AS email, 10 AS nota, NULL AS observacao, NULL AS impacto, 2450 AS id_user
UNION ALL
SELECT
  CAST('2020-11-27 12:40:05' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'FERNANDO' AS name, 'fernandop@transbrasa.com.br' AS email, 6 AS nota, NULL AS observacao, NULL AS impacto, 189 AS id_user
UNION ALL
SELECT
  CAST('2020-11-27 12:57:10' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Vinicius Andrade' AS name, 'vinicius.andrade@nextshipping.com.br' AS email, 10 AS nota, NULL AS observacao, NULL AS impacto, 5723 AS id_user
UNION ALL
SELECT
  CAST('2020-11-27 12:59:41' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Flosi, Debora' AS name, 'debora.flosi@dbschenker.com' AS email, 9 AS nota, NULL AS observacao, NULL AS impacto, 5419 AS id_user
UNION ALL
SELECT
  CAST('2020-11-27 13:19:15' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Vinicios Abreu' AS name, 'vinicios.abreu@kuehne-nagel.com' AS email, 8 AS nota, NULL AS observacao, NULL AS impacto, 7995 AS id_user
UNION ALL
SELECT
  CAST('2020-11-27 13:41:57' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'daniel@attiplex.com' AS name, 'daniel@attiplex.com' AS email, 10 AS nota, NULL AS observacao, NULL AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-27 13:51:19' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/importacao' AS page, 'Michele Monteiro' AS name, 'michele.monteiro@multilog.com.br' AS email, 7 AS nota, NULL AS observacao, NULL AS impacto, 6081 AS id_user
UNION ALL
SELECT
  CAST('2020-11-27 13:57:37' AS DATE) AS date, 'https://search.logcomex.io/dashboard/?period=2019-11&period=2020-10&ncm=85177029&possibleImporter=comba&possibleImporter=RFS&source=recent_search' AS page, 'adriana.ottoboni@rdt.com.br' AS name, 'adriana.ottoboni@rdt.com.br' AS email, 10 AS nota, NULL AS observacao, NULL AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-27 14:26:02' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'j.soares@zttcable.com.br' AS name, 'j.soares@zttcable.com.br' AS email, 10 AS nota, 'acesso as informações necessárias para uma boa análise de mercado.' AS observacao, 'Pouco impactado' AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-27 14:31:41' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/exportacao' AS page, 'Debora' AS name, 'debora.zorzetto@generalnoli.com' AS email, 10 AS nota, NULL AS observacao, NULL AS impacto, 565 AS id_user
UNION ALL
SELECT
  CAST('2020-11-27 14:41:22' AS DATE) AS date, 'https://sistema.logcomex.io/#/leads' AS page, 'Giovanni' AS name, 'giovanni@opexinternational.com.br' AS email, 10 AS nota, NULL AS observacao, NULL AS impacto, 6417 AS id_user
UNION ALL
SELECT
  CAST('2020-11-27 14:45:46' AS DATE) AS date, 'https://search.logcomex.io/' AS page, 'diogo.lira@lavioletera.com.br' AS name, 'diogo.lira@lavioletera.com.br' AS email, 8 AS nota, NULL AS observacao, NULL AS impacto, NULL AS id_user
UNION ALL
SELECT
  CAST('2020-11-27 14:49:30' AS DATE) AS date, 'https://sistema.logcomex.io/#/inteligencia/aereo' AS page, 'Cláudia Ferreira Neto' AS name, 'claudia.neto@dbschenker.com' AS email, 8 AS nota, '8' AS observacao, 'Pouco impactado' AS impacto, 7969 AS id_user
UNION ALL
SELECT
  CAST('2020-11-16 12:14:30' AS DATE) AS date, 'https://survey.survicate.com/3635b128a2e9258b/?p=hubspot&first_name=C%C3%A9lio%20Matos&last_name=Matos&email=cmatos%40transbrasa.com.br&aid=8&utm_medium=email&_hsmi=99967737&_hsenc=p2ANqtz-81QFmGT6kMPEuRDy0gSoDGAYsiw7MSrm0V9joBJmHfw9UkqkE7CDArdLgI23SyGcjmxid1BBEJjPSZ--FY4JFwLSXX5w&utm_content=99967737&utm_source=hs_email' AS page, 'Célio Matos' AS name, 'cmatos@transbrasa.com.br' AS email, 8 AS nota, NULL AS observacao, NULL AS impacto, null as id_user
UNION ALL
SELECT
  CAST('2020-11-16 12:14:32' AS DATE) AS date, 'https://survey.survicate.com/3635b128a2e9258b/?p=hubspot&first_name=Vanessa%20Zajankauskas&last_name=Zajankauskas&email=vanessazajanka%40polyterminais.com.br&aid=9&utm_medium=email&_hsmi=99967737&_hsenc=p2ANqtz-9BvNgzjWbyZsR-I56Pn8k1f3BzSk8cOSh9YrynUnmUD_QpOCCSlWNaqxcSIHgkD-GiUCfU1GNng9NccberrbPY5RwGTjguMJiiAJSyM2k1LvY74SU&utm_content=99967737&utm_source=hs_email' AS page, 'Vanessa Zajankauskas' AS name, 'vanessazajanka@polyterminais.com.br' AS email, 9 AS nota, NULL AS observacao, NULL AS impacto, null as id_user
UNION ALL
SELECT
  CAST('2020-11-16 12:14:47' AS DATE) AS date, 'https://survey.survicate.com/3635b128a2e9258b/?p=hubspot&first_name=Ana%20Cristina%20da%20Silva%20Vieira%20Araujo&last_name=Araujo&email=ana.araujo%40grupocbo.com.br&aid=8&utm_medium=email&_hsmi=99967737&_hsenc=p2ANqtz-_w7PAcbKiR1bUG1G9WNjARtWGRJlKf3DbjXG-2A21T89YpIKi5AtF0s5uznTTQ9V56wIQ8g401UD7_XrvRW-3JmkU2WprZTIRNhdOBevjD3fZVQ3s&utm_content=99967737&utm_source=hs_email' AS page, 'Ana Cristina da Silva Vieira Araujo' AS name, 'ana.araujo@grupocbo.com.br' AS email, 8 AS nota, 'Alguns problemas na atualização dos embarques e relatórios gerados.' AS observacao, 'Muito impactado' AS impacto, null as id_user
UNION ALL
SELECT
  CAST('2020-11-16 12:14:54' AS DATE) AS date, 'https://survey.survicate.com/3635b128a2e9258b/?p=hubspot&first_name=Adelson%20Jos%C3%A9%20de%20Carvalho&last_name=%7B%7Bcontact.lastname%7D%7D&email=adelsonc%40nelsonheusi.com&aid=0&utm_medium=email&_hsmi=99967737&_hsenc=p2ANqtz-_cTqLInKHzewpuC6uj8-QbOJIc20wHWetMz0lPUtECb8w3KecCuc2TG3girDZhtWXhkJqIkatWmdu54V_AqbmFU9Uwkg&utm_content=99967737&utm_source=hs_email' AS page, 'Adelson José de Carvalho' AS name, 'adelsonc@nelsonheusi.com' AS email, 0 AS nota, 'Atendimento ao cliente nível baixíssimo, muita demora na resolução de problemas. ' AS observacao, 'Nada impactado' AS impacto, null as id_user
UNION ALL
SELECT
  CAST('2020-11-16 12:16:24' AS DATE) AS date, 'https://survey.survicate.com/3635b128a2e9258b/?p=hubspot&first_name=CARLOS.OLIVEIRA&last_name=Henrique%20de%20Oliveira&email=carlos.oliveira%40bandeiranteslog.com.br&aid=4&utm_medium=email&_hsmi=99967737&_hsenc=p2ANqtz-_xvyNynqEnpQsnRr5mLDaDunkREsrMCq79VT-8cEpIF4VtqZJRQUx1O4xhM6y-59F6td9R3nUkY23QsZspTOJiBOXIRncraBWxUmiKxJqnJv68djE&utm_content=99967737&utm_source=hs_email' AS page, 'CARLOS.OLIVEIRA' AS name, 'carlos.oliveira@bandeiranteslog.com.br' AS email, 4 AS nota, NULL AS observacao, NULL AS impacto, null as id_user
UNION ALL
SELECT
  CAST('2020-11-16 12:17:23' AS DATE) AS date, 'https://survey.survicate.com/3635b128a2e9258b/?p=hubspot&first_name=Milton%20de%20Jesus%20Souza&last_name=Souza&email=milton.souza%40veritas-agency.com.br&aid=8&utm_medium=email&_hsmi=99967737&_hsenc=p2ANqtz-8X3RZqe_p0nPIEZ9RUVoVH8KH4Z7XdLGPWwQqe6_y2YMZHUD4A0GXYj_Anw-7MfRwyYw0Ro6Kd_OauFHYKoDyaNw9g2HZmrAYHsjMefGqBLmELzRg&utm_content=99967737&utm_source=hs_email' AS page, 'Milton de Jesus Souza' AS name, 'milton.souza@veritas-agency.com.br' AS email, 8 AS nota, NULL AS observacao, NULL AS impacto, null as id_user
UNION ALL
SELECT
  CAST('2020-11-16 12:19:06' AS DATE) AS date, 'https://survey.survicate.com/3635b128a2e9258b/?p=hubspot&first_name=Fran%20Borba&last_name=Borba&email=francoiseborba%40polyterminais.com.br&aid=7&utm_medium=email&_hsmi=99967737&_hsenc=p2ANqtz-_XuN0RjxuamlaBc3VuiXtfNSC2NbnIF5KJi7egJdpmEnZMoliovfcAt0xs6KQOXMjeB0-tNOyQ1BLetaGCXJXGhaRhEiReb2koK2ZX4EhPTlIRjTc&utm_content=99967737&utm_source=hs_email' AS page, 'Fran Borba' AS name, 'francoiseborba@polyterminais.com.br' AS email, 7 AS nota, NULL AS observacao, NULL AS impacto, null as id_user
UNION ALL
SELECT
  CAST('2020-11-16 12:19:45' AS DATE) AS date, 'https://survey.survicate.com/3635b128a2e9258b/?p=hubspot&first_name=F%C3%A1bio&last_name=%7B%7Bcontact.lastname%7D%7D&email=export3%40plennacomex.com.br&aid=10&utm_medium=email&_hsmi=99967737&_hsenc=p2ANqtz-_AcTUkpIu1CBWc7c4ZGFN0FvSToHdbqtFFi-ibOh3V5RIM0-wufA-_KBc8g32ricJV4hjyZSHx5j9qgosHd52jTVM24xRr3kZ5vMRTlkiQcdcbb6A&utm_content=99967737&utm_source=hs_email' AS page, 'Fábio' AS name, 'export3@plennacomex.com.br' AS email, 10 AS nota, NULL AS observacao, NULL AS impacto, null as id_user
UNION ALL
SELECT
  CAST('2020-11-16 12:20:04' AS DATE) AS date, 'https://survey.survicate.com/3635b128a2e9258b/?p=hubspot&first_name=Leoc%C3%A1dio%20Cesar%20Ribeiro%20Cunha&last_name=Cesar%20Ribeiro%20Cunha&email=leocadio.cunha%40band-deicmar.com.br&aid=10&utm_medium=email&_hsmi=99967737&_hsenc=p2ANqtz--iN-V7Dr36HyPg_MT9ubnCbzVBQ-ryLihE9yphQ30lCki4akX0fPT68j6NrW2Kx2HfJBfk0u5fD8jZBgStaVPGWjlQAgnpoDyhZjiXFyFTHo7hZ0w&utm_content=99967737&utm_source=hs_email' AS page, 'Leocádio Cesar Ribeiro Cunha' AS name, 'leocadio.cunha@band-deicmar.com.br' AS email, 10 AS nota, 'Todas as informações necessárias para a minha atividade, estão disponíveis.' AS observacao, 'Muito impactado' AS impacto, null as id_user
UNION ALL
SELECT
  CAST('2020-11-16 12:39:25' AS DATE) AS date, 'https://survey.survicate.com/3635b128a2e9258b/?p=hubspot&first_name=GUBLIO%20HEBER%20HELIO%20SILVA&last_name=Silva&email=gublio.silva%40nunofracht.com.br&aid=9&utm_medium=email&_hsmi=99967737&_hsenc=p2ANqtz-9dKUpKj_zTBNa8mKHH5-CkrvcSsyCQ-1Utsrl0IL8fVlze3AxESkXN9ROcy8cCjd_b2bibBPh32R6zKyUF6xX4wtEmktDW6vcUXvNAkS--lgjlahg&utm_content=99967737&utm_source=hs_email' AS page, 'GUBLIO HEBER HELIO SILVA' AS name, 'gublio.silva@nunofracht.com.br' AS email, 9 AS nota, 'Boa ferramenta e bom atendimento' AS observacao, 'Pouco impactado' AS impacto, null as id_user
UNION ALL
SELECT
  CAST('2020-11-16 12:42:14' AS DATE) AS date, 'https://survey.survicate.com/3635b128a2e9258b/?p=hubspot&first_name=Ramon%20Canova&last_name=Canova&email=ramon.canova%40tcp.com.br&aid=9&utm_medium=email&_hsmi=99967737&_hsenc=p2ANqtz--7bgTrzOg3xKOxyzI1Yy9tS8tuHMMJ3aBCciceHhZJ2GtjHZcvyYdkg74aTVOhTmVU3meXjp6pbNH9FJDtkfqMSDfpPw&utm_content=99967737&utm_source=hs_email' AS page, 'Ramon Canova' AS name, 'ramon.canova@tcp.com.br' AS email, 9 AS nota, 'O que preciso utilizar da plataforma me atende, tanto quanto atendimento.' AS observacao, 'Muito impactado' AS impacto, null as id_user
UNION ALL
SELECT
  CAST('2020-11-16 13:27:41' AS DATE) AS date, 'https://survey.survicate.com/3635b128a2e9258b/?p=hubspot&first_name=%C3%81lvaro%20Goto&last_name=Bastos%20Goto&email=alvaro.goto%40brado.com.br&aid=3&utm_medium=email&_hsmi=99967737&_hsenc=p2ANqtz-8Qg24mlGbhnpsRI50l2hzRUj5jA9ktorY4tVTvRB0NDdcX9xGinvDgSJgml0XVqA56abkQLRbok-DOosTiCVN69UCgrw&utm_content=99967737&utm_source=hs_email' AS page, 'Álvaro Goto' AS name, 'alvaro.goto@brado.com.br' AS email, 3 AS nota, 'dados imprecisos, reprocessamento de dados do passado, demora no retorno do atendimento.' AS observacao, 'Muito impactado' AS impacto, null as id_user
UNION ALL
SELECT
  CAST('2020-11-16 13:32:23' AS DATE) AS date, 'https://survey.survicate.com/3635b128a2e9258b/?p=hubspot&first_name=Caroline%20Regalin&last_name=Regalin&email=caroline.regalin%40gett.com.br&aid=5&utm_medium=email&_hsmi=99967737&_hsenc=p2ANqtz-9ZmQkibbOkgCzabOWWVuKn7jhnGN4_CjnS5uDDhriRVv7xPWN8SMkWn2fHArx5GLLv-rxkre9t4OTiFrkeguxrDTVdAEMiCIxPhjfXkKuR17OTUfU&utm_content=99967737&utm_source=hs_email' AS page, 'Caroline Regalin' AS name, 'caroline.regalin@gett.com.br' AS email, 5 AS nota, 'Não estou utilizando logcomex no momento' AS observacao, 'Pouco impactado' AS impacto, null as id_user
UNION ALL
SELECT
  CAST('2020-11-16 14:56:43' AS DATE) AS date, 'https://survey.survicate.com/3635b128a2e9258b/?p=hubspot&first_name=Natalia%20Garrido%20Mariano&last_name=Garrido&email=natalia.garrido%40florestareal.com&aid=9&utm_medium=email&_hsmi=99967737&_hsenc=p2ANqtz--O4XgmHSezVxKBptxuK8TOE7JV8PRKOOec1ws2w3Yr3aF7H8wR9e3Qh7CQNzaUwg5iHe5xNXi8JUth29Fj5GkSSm0HZjP7kDagmKN5zO993FEwjOY&utm_content=99967737&utm_source=hs_email' AS page, 'Natalia Garrido Mariano' AS name, 'natalia.garrido@florestareal.com' AS email, 9 AS nota, NULL AS observacao, NULL AS impacto, null as id_user
UNION ALL
SELECT
  CAST('2020-11-16 16:22:12' AS DATE) AS date, 'https://survey.survicate.com/3635b128a2e9258b/?p=hubspot&first_name=Luiz%20Policarpo&last_name=Policarpo&email=luiz.policarpo%40cticargo.com.br&aid=9&utm_medium=email&_hsmi=99967737&_hsenc=p2ANqtz-_HjpswJEU2fMaOH4RzghYKUL5YXZQkxunr8vajQoAJvhMIb8nAmYcPgUdHlyyWMgwfvY_jvlRRsZXdQIMj7KiOzlWItQp4keHky72hHYES48tGlcs&utm_content=99967737&utm_source=hs_email' AS page, 'Luiz Policarpo' AS name, 'luiz.policarpo@cticargo.com.br' AS email, 9 AS nota, 'Satisfação com os produtos ofertados pela Logcomex e atendimento e suporte da equipe.' AS observacao, 'Muito impactado' AS impacto, null as id_user
UNION ALL
SELECT
  CAST('2020-11-16 16:37:33' AS DATE) AS date, 'https://survey.survicate.com/3635b128a2e9258b/?p=hubspot&first_name=Fernanda&last_name=%7B%7Bcontact.lastname%7D%7D&email=fernanda.meucci%40florestareal.com&aid=9&utm_medium=email&_hsmi=99967737&_hsenc=p2ANqtz-96MgVR8Qh50mSiFGi313SYO-91OCtlFLsudTr5J52EECyON7s-EUJvEyXNyjFcUMDmpWKGQzH2gi0F5xxST0k4qgBhLI8iM-K5YTS649e1mA-KHSg&utm_content=99967737&utm_source=hs_email' AS page, 'Fernanda' AS name, 'fernanda.meucci@florestareal.com' AS email, 9 AS nota, 'Estou satisfeito porém as vezes demora para receber um retorno mais ágil da equipe.' AS observacao, 'Muito impactado' AS impacto, null as id_user
UNION ALL
SELECT
  CAST('2020-11-16 16:38:11' AS DATE) AS date, 'https://survey.survicate.com/3635b128a2e9258b/?p=hubspot&first_name=Ricardo%20Estevam&last_name=Estevam&email=ricardo.estevam%40gett.com.br&aid=10&utm_medium=email&_hsmi=99967737&_hsenc=p2ANqtz-_e8gZtI8TC2PzgNeI1UDzAeZ7EteedGL0LLx267bcGBA9Mevotkv-HHKTzMFoN9ofp8nU1d5FeNKUfo8jjsUDYqN8ILsGgjjsQbtoTZNfDV3-0yG8&utm_content=99967737&utm_source=hs_email' AS page, 'Ricardo Estevam' AS name, 'ricardo.estevam@gett.com.br' AS email, 10 AS nota, NULL AS observacao, NULL AS impacto, null as id_user
UNION ALL
SELECT
  CAST('2020-11-16 17:28:32' AS DATE) AS date, 'https://survey.survicate.com/3635b128a2e9258b/?p=hubspot&first_name=Edleuza%20Nogueira&last_name=%7B%7Bcontact.lastname%7D%7D&email=operacional%40maltacomex.com&aid=10&utm_medium=email&_hsmi=99967737&_hsenc=p2ANqtz-8qWaQmsFFbxvpwJlDHiASp-oFwsK1oerd5Y_AJTEnx3rhMExHb3yxqj1KDXVad1QKj5BggrMv-RJfAfcC9qiLKboQYFh2hXyTVpcqLvuSMoiY51ck&utm_content=99967737&utm_source=hs_email' AS page, 'Edleuza Nogueira' AS name, 'operacional@maltacomex.com' AS email, 10 AS nota, NULL AS observacao, NULL AS impacto, null as id_user
UNION ALL
SELECT
  CAST('2020-11-17 13:22:26' AS DATE) AS date, 'https://survey.survicate.com/3635b128a2e9258b/?p=hubspot&first_name=Angelina&last_name=%7B%7Bcontact.lastname%7D%7D&email=a.marques%40btp.com.br&aid=9&utm_medium=email&_hsmi=99967737&_hsenc=p2ANqtz-_Vp6b0enbEaPiRi3f4rE69THwXQvgpl1fwXbb3CbDkpi8ktASnFfVuyHYtJpgM0QJn8ZuEG7DbEegky9TczmJuACOCHw&utm_content=99967737&utm_source=hs_email' AS page, 'Angelina' AS name, 'a.marques@btp.com.br' AS email, 9 AS nota, NULL AS observacao, NULL AS impacto, null as id_user
UNION ALL
SELECT
  CAST('2020-11-20 16:22:56' AS DATE) AS date, 'https://survey.survicate.com/3635b128a2e9258b/?p=hubspot&first_name=Cesar%20Reffer&last_name=Reffer&email=cesar.reffer%40latam.com&aid=7&utm_medium=email&_hsmi=99967737&_hsenc=p2ANqtz-8ywo8XqTxrtRQMy1k9w-JK2Be_zSCPYQuxbpEDwvDO45086OV9b9nlSKLyyh7kNaOuQVeb43gzo-UbnYdIyQ8CUPN65g&utm_content=99967737&utm_source=hs_email' AS page, 'Cesar Reffer' AS name, 'cesar.reffer@latam.com' AS email, 7 AS nota, NULL AS observacao, NULL AS impacto, null as id_user
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
