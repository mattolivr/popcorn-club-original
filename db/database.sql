-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Tempo de geração: 21-Dez-2020 às 13:39
-- Versão do servidor: 8.0.18
-- versão do PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `popcorn`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `clube`
--

DROP TABLE IF EXISTS `clube`;
CREATE TABLE IF NOT EXISTS `clube` (
  `Cod_Id_Club` int(11) NOT NULL AUTO_INCREMENT,
  `Tema_Club` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `Nome_Club` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Foto_Club` varchar(40) CHARACTER SET utf8 COLLATE utf8_swedish_ci NOT NULL,
  `Banner_Club` varchar(40) CHARACTER SET utf8 COLLATE utf8_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`Cod_Id_Club`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `comentarios`
--

DROP TABLE IF EXISTS `comentarios`;
CREATE TABLE IF NOT EXISTS `comentarios` (
  `Cod_Id_Com` int(11) NOT NULL AUTO_INCREMENT,
  `Cod_Id_Memb_fk` int(11) NOT NULL,
  `Cod_Id_Post_fk` int(11) NOT NULL,
  `Texto_Com` varchar(300) COLLATE utf8_swedish_ci NOT NULL,
  `Midia_Com` varchar(40) CHARACTER SET utf8 COLLATE utf8_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`Cod_Id_Com`),
  KEY `Cod_Id_Memb_fk` (`Cod_Id_Memb_fk`),
  KEY `Cod_Id_Post_fk` (`Cod_Id_Post_fk`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `filme`
--

DROP TABLE IF EXISTS `filme`;
CREATE TABLE IF NOT EXISTS `filme` (
  `Cod_Id_Filme` int(11) NOT NULL AUTO_INCREMENT,
  `Nome_Filme` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `Foto_Filme` varchar(40) COLLATE utf8_swedish_ci NOT NULL,
  `Banner_Filme` varchar(40) COLLATE utf8_swedish_ci NOT NULL,
  `Descricao_Filme` varchar(1000) COLLATE utf8_swedish_ci NOT NULL,
  `Autor_Filme` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `Data_Lancamento_Filme` datetime NOT NULL,
  `Duracao_Filme` int(5) NOT NULL,
  `Cod_Id_Genero_fk` int(11) NOT NULL,
  `Data_Insercao_Filme` datetime NOT NULL,
  PRIMARY KEY (`Cod_Id_Filme`),
  KEY `Cod_Id_Genero_fk` (`Cod_Id_Genero_fk`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Extraindo dados da tabela `filme`
--

INSERT INTO `filme` (`Cod_Id_Filme`, `Nome_Filme`, `Foto_Filme`, `Banner_Filme`, `Descricao_Filme`, `Autor_Filme`, `Data_Lancamento_Filme`, `Duracao_Filme`, `Cod_Id_Genero_fk`, `Data_Insercao_Filme`) VALUES
(1, 'Um Sonho de Liberdade', '34a9109028a718fa2125377d8cecf40e.jpg', '13a9298e3b1f4aff60b07b199040e96c.jpg', 'Em 1946, Andy Dufresne, um jovem e bem sucedido banqueiro, tem a sua vida radicalmente modificada ao ser condenado por um crime que nunca cometeu, o homicídio de sua esposa e do amante dela. Ele é mandado para uma prisão que é o pesadelo de qualquer detento, a Penitenciária Estadual de Shawshank, no Maine. Lá ele irá cumprir a pena perpétua. Andy logo será apresentado a Warden Norton, o corrupto e cruel agente penitenciário, que usa a Bíblia como arma de controle e ao Capitão Byron Hadley que trata os internos como animais. Andy faz amizade com Ellis Boyd Redding, um prisioneiro que cumpre pena há 20 anos e controla o mercado negro da instituição.', 'Stephen King', '1995-03-17 00:00:00', 142, 4, '2020-10-20 00:00:00'),
(2, 'Vingadores: Guerra Infinita', '7c6048407a65df961fe39ac3a7dc378f.jpg', 'b6d81257efec6379ca48d9ca8dc15cff.jpg', 'Em Vingadores: Guerra Infinita, Thanos enfim chega à Terra, disposto a reunir as Joias do Infinito. Para enfrentá-lo, os Vingadores precisam unir forças com os Guardiões da Galáxia, ao mesmo tempo em que lidam com desavenças entre alguns de seus integrantes.', 'Joe Russo e Anthony Russo', '2018-04-26 00:00:00', 160, 1, '2020-11-09 00:00:00'),
(3, 'Vingadores: Ultimato', '297bdbe47d25b28f4684ddb4013659da.jpg', '372d27f145a47d74f850f80e433c1efd.jpeg', 'Em Vingadores: Ultimato, após Thanos eliminar metade das criaturas vivas em Vingadores: Guerra Infinita, os heróis precisam lidar com a dor da perda de amigos e seus entes queridos. Com Tony Stark vagando perdido no espaço sem água nem comida, o Capitão América e a Viúva Negra precisam liderar a resistência contra o titã louco.', 'Joe Russo e Anthony Russo', '2019-04-25 00:00:00', 182, 1, '2020-08-22 00:00:00'),
(4, 'A Barraca do Beijo', '9ddf6467d5929415d360885a7d0a4855.jpg', '5ae2ea8a72f31c829c075b9042b115e3.jpg', 'Melhores amigos desde sempre, Elle e Lee têm a inventiva ideia de gerenciar uma barraca do beijo durante um evento da escola. Para fazer da proposta um sucesso, a garota tenta convencer o galã Noah, seu crush e irmão mais velho de Lee, a participar da brincadeira. Ele mostra-se irredutível, mas os dois acabam se aproximando como nunca, o que estremece a amizade de Elle e Lee.', 'Vince Marcello', '2018-05-11 00:00:00', 110, 6, '0000-00-00 00:00:00'),
(5, 'A Barraca do Beijo 2', '4b7429eee2be2d5114f2803098e339cc.jpg', '9cb386d7d22eb037d45c834cc7732dce.jpg', 'Melhores amigos desde sempre, Elle e Lee têm a inventiva ideia de gerenciar uma barraca do beijo durante um evento da escola. Para fazer da proposta um sucesso, a garota tenta convencer o galã Noah, seu crush e irmão mais velho de Lee, a participar da brincadeira. Ele mostra-se irredutível, mas os dois acabam se aproximando como nunca, o que estremece a amizade de Elle e Lee.', 'Vince Marcello', '2020-07-24 00:00:00', 131, 6, '2020-09-19 00:00:00'),
(6, 'Como Treinar o seu Dragão', '8bf15b643ab4128810b8ec6f3a63cdf1.jpg', '76bb40b43d369c5995cd44d07f10ef29.jpg', 'Na ilha de Berk, os vikings dedicam a vida a combater e matar dragões. Soluço, filho do chefe Stoico, não é diferente. Ele sonha em matar um dragão e provar seu valor ao pai, apesar da descrença geral. Um dia, por acaso, ele acerta um dragão que jamais foi visto, chamado Fúria da Noite. Ao procurá-lo, no dia seguinte, Soluço não consegue matá-lo e acaba soltando-o. Só que ele perdeu parte da cauda e, com isso, não consegue mais voar. Soluço passa a trabalhar em um artefato que possa substituir a parte perdida e, aos poucos, se aproxima do dragão. Só que, paralelamente, Stoico autoriza que o filho participe do treino para dragões, cuja prova final é justamente matar um dos animais.', 'Chris Sanders e Dean DeBlois', '2010-03-26 00:00:00', 98, 11, '2020-10-26 00:00:00'),
(7, 'Como Treinar o seu Dragão 2', '69d54a18a4e22ba6e521d8d722b01127.jpg', '94a915bb2597d2193e3b9a9338f78e61.jpg', 'Cinco anos após convencer os habitantes de seu vilarejo que os dragões não devem ser combatidos, Soluço convive com seu dragão Fúria da Noite, e estes animais integraram pacificamente a rotina dos moradores da ilha de Berk. Entre viagens pelos céus e corridas de dragões, Soluço descobre uma caverna secreta, onde centenas de novos dragões vivem. O local é protegido por Valka, mãe de Soluço, que foi afastada do filho quando ele ainda era um bebê. Juntos, eles precisarão proteger o mundo que conhecem do perigoso Drago Bludvist, que deseja controlar todos os dragões existentes.', 'Dean DeBlois', '2014-06-19 00:00:00', 102, 11, '2020-06-13 00:00:00'),
(8, 'Como Treinar o seu Dragão 3', '96f1230c88f2608804411b5198ee7897.jpg', '9f1ec81abf1de2c91b3a4f14bd506221.jpg', 'Decidido a fazer de Berk um verdadeiro libelo ao ideal da convivência pacífica entre homens e dragões, Soluço e seus amigos seguem atrás de caçadores, para não só libertar suas presas, mas também impedir a matança desenfreada dos animais. O esforço do grupo desperta a atenção de Grimmel ao descobrir que entre eles está Banguela, um legítimo Fúria da Noite. O vilão então desenvolve um plano para capturá-lo a todo custo, usando como arma uma fêmea capturada, da mesma espécie.', 'Dean DeBlois', '2019-01-17 00:00:00', 105, 11, '2020-08-27 00:00:00'),
(9, 'Como Eu Era Antes de Você', 'a2428ca4b56cd746e5349432f96ad941.jpg', '06a1178f169b805179bade533d7b85b0.jpg', 'Em Como Eu Era Antes de Você, o rico e bem sucedido Will leva uma vida repleta de conquistas, viagens e esportes radicais até ser atingido por uma moto. O acidente o torna tetraplégico, obrigando-o a permanecer em uma cadeira de rodas. A situação o torna depressivo e extremamente cínico, para a preocupação de seus pais. É neste contexto que Louisa Clark é contratada para cuidar de Will. De origem modesta, com dificuldades financeiras e sem grandes aspirações na vida, ela faz o possível para melhorar o estado de espírito de Will e, aos poucos, acaba se envolvendo com ele.', 'Jojo Moyes', '2016-06-16 00:00:00', 111, 6, '2020-11-01 00:00:00'),
(10, 'Meu Malvado Favorito', 'fdd0bf4b820e4de0321ca3640d255bae.jpg', '1f4794fa794ca57ed40438e2458b1fd4.jpg', 'A pirâmide de Gizé foi roubada, sendo substituída por uma imensa réplica a gás. O feito é considerado o roubo do século, o que mexe com o orgulho de Gru. Desejando realizar algo ainda mais impressionante, ele planeja o roubo da Lua. Para tanto conta com a ajuda dos mínions, seres amarelados que trabalham como seus ajudantes, e do dr. Nefario, um cientista. Só que para realizar o roubo terá que tomar de Vetor, o ladrão da pirâmide, um raio que consegue diminuir o tamanho de tudo que atinge. Sem conseguir invadir a fortaleza de Vetor, Gru encontra o plano perfeito quando vê as três órfãs Margo, Agnes e Edith entrarem no local para vender biscoitos. Ele então vai ao orfanato e resolve adotá-las. Só não esperava que, aos poucos, fosse se afeiçoar às irmãs.', 'Chris Renaud e Pierre Coffin', '2010-08-06 00:00:00', 95, 2, '2020-11-14 00:00:00'),
(11, 'Meu Malvado Favorito 2', '2254b4d75e26b3c6562be352ef057750.jpg', '00e0e73b994028103e29f39337d9fc6c.jpg', 'Gru mudou radicalmente sua vida e agora seu negócio é se dedicar às filhotas Agnes, Edith e Margo, deixando de lado os tempos de vilão. Ele só não contava que seu passado de \"ladrão da Lua\" pudesse falar mais alto e ser responsável pelo seu recrutamento, através da AVL, para salvar o mundo na companhia da agente Lucy. Juntos, eles precisam localizar o criminoso que roubou a fórmula PX41, e Gru desconfia que um antigo \"concorrente\", chamado El Macho, possa ser o responsável por essa maldade. Para completar os problemas, o parceiro Dr. Nefário resolveu abandoná-lo e Margo está vivendo seu primeiro amor.', 'Chris Renaud e Pierre Coffin', '2013-07-05 00:00:00', 98, 22, '2020-11-24 00:00:00'),
(12, 'Meu Malvado Favorito 3', 'e290db689d8905845c92ddca9e6d296d.jpg', '58d977045378dee0e2e87d301f813b91.jpg', 'Em Meu Malvado Favorito 3, nos anos 1980, Balthazar Bratt fazia muito sucesso através de sua série de TV, onde interpretava um vilão chamado EvilBratt. Entretanto, o tempo passou, ele cresceu, a voz mudou e a fama se foi. Com a série cancelada, Balthazar tornou-se uma pessoa vingativa que, nas décadas seguintes, planejou seu retorno triunfal como vingança. Gru e Lucy são chamados para enfrentá-lo logo em sua reaparição, mas acabam sendo demitidos por não terem conseguido capturá-lo. Gru então descobre que possui um irmão gêmeo, Dru, e parte com a família para encontrá-lo no país em que vive.', 'Pierre Coffin e Kyle Balda', '2017-06-29 00:00:00', 96, 2, '2020-09-14 00:00:00'),
(13, 'Minions', 'c20e1d28596303b22fa5a2e65905168c.jpg', '8f4bf90557dde65eb679bbf9b85e90e3.jpg', 'Seres amarelos milenares, os minions têm uma missão: servir os maiores vilões. Em depressão desde a morte de seu antigo mestre, eles tentam encontrar um novo chefe. Três voluntários, Kevin, Stuart e Bob, vão até uma convenção de vilões nos Estados Unidos e lá se encantam com Scarlet Overkill, que ambiciona ser a primeira mulher a dominar o mundo.', 'Pierre Coffin e Kyle Balda', '2015-06-25 00:00:00', 91, 3, '2020-10-11 00:00:00'),
(14, 'Guardiões da Galáxia', '103902b9cfccdf634c5ac7178eba506c.jpg', 'b224b4492a2e898c12e7b85856140b59.jpg', 'Peter Quill foi abduzido da Terra quando ainda era criança. Adulto, fez carreira como saqueador e ganhou o nome de Senhor das Estrelas. Quando rouba uma esfera, na qual o poderoso vilão Ronan, da raça kree, está interessado, passa a ser procurado por vários caçadores de recompensas. Para escapar do perigo, Quill une forças com quatro personagens fora do sistema: Groot, uma árvore humanóide, a sombria e perigosa Gamora, o guaxinim rápido no gatilho Rocket Racoon e o vingativo Drax, o Destruidor. Mas o Senhor das Estrelas descobre que a esfera roubada possui um poder capaz de mudar os rumos do universo, e logo o grupo deverá proteger o objeto para salvar o futuro da galáxia.', 'James Gunn', '2014-07-31 00:00:00', 125, 12, '2020-09-12 00:00:00'),
(15, 'Guardiões da Galáxia 2', '1e4020af1ad8e3d98fc48ca381cbe2a7.jpg', 'b50525e70c157c4dd99e1a906ac4a49e.jpg', 'Agora já conhecidos como os Guardiões da Galáxia, os guerreiros viajam ao longo do cosmos e lutam para manter sua nova família unida. Enquanto isso tentam desvendar os mistérios da verdadeira paternidade de Peter Quill.', 'James Gunn', '2017-04-27 00:00:00', 138, 12, '2020-10-27 00:00:00'),
(16, 'Simplesmente Acontece', '10e98207321077b6d90fb1a4628594fe.jpg', '9d71b6c5d14de0889014ae0d013405d0.jpg', 'Os jovens britânicos Rosie e Alex são amigos inseparáveis desde a infância, experimentando juntos as dificuldades amorosas, familiares e escolares. Embora exista uma atração entre eles, os dois mantêm a amizade acima de tudo. Um dia, Alex decide aceitar um convite para estudar medicina em Harvard, nos Estados Unidos. A distância entre eles faz com que nasçam os primeiros segredos, enquanto cada um encontra outros namorados e namoradas. Mas o destino continua atraindo Rosie e Alex um ao outro.', 'Cecelia Ahern', '2014-11-06 00:00:00', 102, 6, '2020-11-08 00:00:00'),
(17, '12 Anos de Escravidão', '4f0dff7ab4bc9514be413054cf51a085.jpg', '5b546ba06b43683982015f96355dc6ee.png', '1841, Solomon Northup é um escravo liberto, que vive em paz ao lado da esposa e filhos. Um dia, após aceitar um trabalho que o leva a outra cidade, ele é sequestrado e acorrentado. Vendido como se fosse um escravo, Solomon precisa superar humilhações físicas e emocionais para sobreviver. Ao longo de doze anos ele passa por dois senhores, Ford e Edwin Epps, que, cada um à sua maneira, exploram seus serviços.', 'Steve McQueen (II)', '2014-02-21 00:00:00', 134, 4, '2020-06-24 00:00:00'),
(18, 'Pantera Negra', '278e3d222dcd34e240af20b0cc2f3460.jpg', 'aaca4f462200ef6808e2fc62b58d68b8.jpg', 'Em Pantera Negra, após a morte do rei T\Chaka, o príncipe T\Challa retorna a Wakanda para a cerimônia de coroação. Nela são reunidas as cinco tribos que compõem o reino, sendo que uma delas, os Jabari, não apoia o atual governo. T\Challa logo recebe o apoio de Okoye, a chefe da guarda de Wakanda, da irmã Shuri, que coordena a área tecnológica do reino, e também de Nakia, a grande paixão do atual Pantera Negra, que não quer se tornar rainha. Juntos, eles estão à procura de Ulysses Klaue, que roubou de Wakanda um punhado de vibranium, alguns anos atrás.', 'Ryan Coogler', '2018-02-15 00:00:00', 135, 1, '2020-07-22 00:00:00'),
(19, 'Toy Story', '71dd1829dd94a7ab5ceb5971b2dff5d8.jpg', '6a05172953b74ccadf6fdf6a90deecb6.jpeg', 'O aniversário de Andy está chegando e os brinquedos estão nervosos. Afinal de contas, eles temem que um novo brinquedo possa substituí-los. Liderados por Woody, um caubói que é também o brinquedo predileto de Andy, eles montam uma escuta que lhes permite saber dos presentes ganhos. Entre eles está Buzz Lightyear, o boneco de um patrulheiro espacial, que logo passa a receber mais atenção do garoto. Isto aos poucos gera ciúmes em Woody, que tenta fazer com que ele caia atrás da cama. Só que o plano dá errado e Buzz cai pela janela. É o início da aventura de Woody, que precisa resgatar Buzz também para limpar sua barra com os outros brinquedos.', 'John Lasseter', '1995-12-22 00:00:00', 81, 5, '2020-07-06 00:00:00'),
(20, 'Toy Story 2', 'fe51c31ee1a7081ca86914c96d322540.jpg', '7ddca70f20326de53073adba5f99fe9c.jpg', 'Em Toy Story 2, Woody tenta salvar um brinquedo que acaba indo parar num bazar de usados e termina por ser sequestrado por um colecionador de brinquedos, que pretende vendê-lo a um museu japonês. Na casa do sequestrador, descobre que foi o protagonista de um famoso seriado da TV de décadas atrás e conhece os demais integrantes de sua coleção. Enquanto isso, os demais brinquedos, liderador por Buzz Lightyear, partem numa atrapalhada operação de resgate.', 'John Lasseter, Ash Brannon, Lee Unkrich', '1999-12-17 00:00:00', 95, 5, '2020-07-19 00:00:00'),
(21, 'Toy Story 3', 'f3b70c6e8e2e8f0a6211e02edf068f39.jpg', 'ea7ed83d7b902a6e8c0bc78b8aa19ac5.jpg', 'Em Toy Story 3, Andy tem 17 anos e está prestes a ir para a faculdade. Desta forma, precisa arrumar o quarto e definir o que irá para o lixo e o que será guardado no sótão. Seus antigos brinquedos, entre eles Buzz Lightyear, Jessie e o Sr. Cabeça de Batata, são separados para serem guardados no sótão. Entretanto, uma confusão faz com que a mãe de Andy os coloque no lixo. Woody, que será levado por Andy para a faculdade, decide salvá-los. O grupo escapa, mas acaba no carro da mãe de Andy. Ela leva a uma creche diversos brinquedos, entre eles Barbie. Ao chegarem, os amigos encontram um universo até então inimaginável, onde os brinquedos sempre têm crianças para brincarem com eles.', 'Lee Unkrich', '2010-06-18 00:00:00', 108, 5, '2020-08-29 00:00:00'),
(22, 'Toy Story 4', 'e3850ed48f5ff7058db0b747825c25b1.jpg', 'ae826af2abb3f1291ffdffcec20b0958.jpg', 'Agora morando na casa da pequena Bonnie, Woody apresenta aos amigos o novo brinquedo construído por ela: Forky, baseado em um garfo de verdade. O novo posto de brinquedo não o agrada nem um pouco, o que faz com que Forky fuja de casa. Decidido a trazer de volta o atual brinquedo favorito de Bonnie, Woody parte em seu encalço e, no caminho, reencontra Bo Peep, que agora vive em um parque de diversões.', 'Josh Cooley', '2019-06-20 00:00:00', 100, 5, '2020-08-10 00:00:00'),
(23, 'Padre', '32f5371661db501c63d12e9e2e6eced7.jpg', '9c199e0b8f59fb22a49bac8de793f987.jpg', 'Há séculos humanos e vampiros estão em guerra, o que fez com que o planeta fosse devastado. Padre é um guerreiro lendário que participou da guerra com os vampiros. Hoje ele vive na obscuridade, numa das cidades controladas pela igreja. Ele volta à ativa quando Lucy Pace é sequestrada por um grupo de vampiros liderados por Black Hat. Ao lado do xerife Hicks e de Priestess, uma integrante da legião de matadores de vampiros, Padre parte para resgatá-la.', 'Scott Charles Stewart', '2011-05-06 00:00:00', 87, 8, '2020-09-28 00:00:00'),
(24, 'Megarrromântico', 'ce2b3fe063540143e75860fd11e019a9.jpg', 'c3942328773230e80381c1e2403562e9.jpg', 'Natalie é uma jovem arquiteta bastante cética em relação ao amor, que se empenha para ser reconhecida por seu trabalho. Um dia, ao saltar do metrô, ela é assaltada em plena estação e, ao reagir, acaba batendo com a cabeça em uma pilastra. Ao despertar em um hospital, ela descobre que, misteriosamente, foi parar dentro de um filme de comédia romântica.', 'Todd Strauss-Schulson', '2019-02-13 00:00:00', 89, 13, '2020-09-17 00:00:00'),
(25, 'Jumanji: Bem-Vindo à Selva', '4a06aa8badfaf6bbd9b0a1b5e1ff3e6e.jpg', 'e3ac23be4d8c246ec27699e03ea824e1.jpg', 'Em Jumanji: Bem-Vindo à Selva, quatro adolescentes encontram um videogame cuja ação se passa numa floresta tropical. Empolgados com o jogo, eles escolhem seus avatares para o desafio, mas um evento inesperado faz com que sejam transportados para dentro do universo fictício, transformando-se nos personagens da aventura.', 'Jake Kasdan', '2018-01-04 00:00:00', 119, 2, '2020-08-20 00:00:00'),
(26, 'Jumanji: Próxima Fase', '6a8db372b323c2279acd073d8ced8f7d.jpg', '6d456a8d233978cfeca910c9ed2c950d.jpg', 'Em Jumanji: Próxima Fase, tentado em revisitar o mundo de Jumanji, Spencer decide consertar o jogo de videogame que permite que os jogadores sejam transportados ao local. Logo o quarteto formado por Smolder Bravestone, Moose Finbar, Shelly Oberon e Ruby Roundhouse ressurge, agora comandado por outras pessoas: os avôs de Spencer e Fridge assumem as personas de Bravestone e Finbar, enquanto o próprio Fridge agora está sob a pele de Oberon.', 'Jake Kasdan', '2019-12-05 00:00:00', 123, 2, '2020-09-20 00:00:00'),
(27, 'Invocação do Mal', 'cc40f182dc4fbbb3664cf6842bbf2eef.jpg', 'f4a5ed871672b4da2139ecb3e33f47a7.jpg', 'Harrisville, Estados Unidos. Um casal muda para uma casa nova ao lado de suas cinco filhas. Inexplicavelmente, estranhos acontecimentos começam a assustar as crianças, o pai e, principalmente, a mãe. Preocupada com algumas manchas que aparecem em seu corpo e com uma sequência de sustos que levou, ela decide procurar um famoso casal de investigadores paranormais, mas eles não aceitam o convite, acreditando ser somente mais um engano de pessoas apavoradas com canos que fazem barulhos durante a noite ou coisas do gênero. Porém, quando eles aceitam fazer uma visita ao local, descobrem que algo muito poderoso e do mal reside ali. Agora, eles precisam descobrir o que é e o porquê daquilo tudo acontecendo com os membros daquela família. É quando o passado começa a revelar uma entidade demoníaca querendo continuar sua trajetória de maldades.', 'James Wan', '2013-09-13 00:00:00', 112, 8, '2020-10-30 00:00:00'),
(28, 'Invocação do Mal 2', '825fa68c6538a47cb300fb53b03d8b2c.jpg', 'd669db1063508fd2b6b369f676641528.jpg', '1977. Os investigadores paranormais Ed e Lorraine desembarcam em Londres, Inglaterra, para ajudar uma família atormentada. Peggy, uma mãe solteira, acredita que tenha algo maligno em sua casa.', 'James Wan', '2016-06-09 00:00:00', 134, 8, '2020-10-02 00:00:00'),
(29, 'The Silence', 'bc7cf7dc3ac55209dc94756b0bcb35d5.jpg', '1e1ac096d8defad84b0355d03bc13b46.jpg', 'Após a exploração de uma caverna desconhecida, um grupo de investigadores libera ao mundo uma espécie desconhecida de predadores. Chamados de \"vespas\", estes serem voadores e sem olhos se guiam pelo som, e rapidamente semeiam o caos nas maiores cidades mundiais, matando milhares de pessoas. A única maneira de ficar em segurança é não fazer nenhum barulho. Neste cenário pós-apocalíptico, uma jovem surda e seu pai fazem o possível para salvar toda a família do ataque iminente.', 'John R. Leonetti', '2019-05-16 00:00:00', 90, 7, '2020-11-05 00:00:00'),
(30, 'A Invenção de Hugo Cabret', 'c8900c6da9172279bd029716d9f66596.jpg', '9db83916fdf99652615bbcbbd240ed0b.jpg', 'Paris, anos 30. Hugo Cabret é um órfão que vive escondido nas paredes da estação de trem. Ele guarda consigo um robô quebrado, deixado por seu pai. Um dia, ao fugir do inspetor, ele conhece Isabelle, uma jovem com quem faz amizade. Logo Hugo descobre que ela tem uma chave com o fecho em forma de coração, exatamente do mesmo tamanho da fechadura existente no robô. O robô volta então a funcionar, levando a dupla a tentar resolver um mistério mágico.', 'Martin Scorsese', '2012-02-17 00:00:00', 129, 2, '2020-11-21 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `generos`
--

DROP TABLE IF EXISTS `generos`;
CREATE TABLE IF NOT EXISTS `generos` (
  `Cod_Id_Genero` int(11) NOT NULL AUTO_INCREMENT,
  `Nome_Genero` varchar(25) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`Cod_Id_Genero`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Extraindo dados da tabela `generos`
--

INSERT INTO `generos` (`Cod_Id_Genero`, `Nome_Genero`) VALUES
(1, 'Ação'),
(2, 'Aventura'),
(3, 'Comedia'),
(4, 'Drama'),
(5, 'Fantasia'),
(6, 'Romance'),
(7, 'Suspense'),
(8, 'Terror'),
(9, 'Musical'),
(10, 'Espionagem'),
(11, 'Animação'),
(12, 'Ficção científica'),
(13, 'Comédia romântica');

-- --------------------------------------------------------

--
-- Estrutura da tabela `lista_filme`
--

DROP TABLE IF EXISTS `lista_filme`;
CREATE TABLE IF NOT EXISTS `lista_filme` (
  `Cod_Id_Lista_Filme` int(11) NOT NULL AUTO_INCREMENT,
  `Cod_Id_Filme_fk` int(11) NOT NULL,
  `Favorito_Lista_Filme` tinyint(1) NOT NULL DEFAULT '0',
  `Status_Lista_Filme` varchar(3) COLLATE utf8_swedish_ci NOT NULL DEFAULT 'pre',
  `Comentarios_Lista_Filme` text COLLATE utf8_swedish_ci,
  `Notas_Lista_Filme` int(2) NOT NULL,
  `Cod_Id_Usu_fk` int(11) NOT NULL,
  PRIMARY KEY (`Cod_Id_Lista_Filme`),
  KEY `Cod_Id_Filme_fk` (`Cod_Id_Filme_fk`),
  KEY `Cod_Id_Usu_fk` (`Cod_Id_Usu_fk`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Extraindo dados da tabela `lista_filme`
--

INSERT INTO `lista_filme` (`Cod_Id_Lista_Filme`, `Cod_Id_Filme_fk`, `Favorito_Lista_Filme`, `Status_Lista_Filme`, `Comentarios_Lista_Filme`, `Notas_Lista_Filme`, `Cod_Id_Usu_fk`) VALUES
(1, 7, 0, 'jav', 'Achei muito legal, quero assistir novamente.', 10, 6),
(2, 18, 0, 'des', 'Não foi um filme de super herói que eu esperava, mas gostei dos efeitos.', 6, 13),
(3, 9, 0, 'pre', 'Dizem que é muito bom o filme, então pretendo assistir, além de gostar de romance.', 9, 7),
(4, 26, 0, 'jav', 'É melhor que o primeiro, além de ser muito engraçado.', 10, 17),
(5, 15, 0, 'des', NULL, 4, 14),
(6, 12, 0, 'jas', 'Gostei por saber que o Gru tem um irmão gêmeo, mas achei muito sem graça. ', 7, 11),
(7, 25, 0, 'pre', 'Pretendo assistir pois gosto bastante de jogos.', 0, 9),
(8, 21, 0, 'jav', 'Quando assisti o filme, achei bem legal, mas hoje não acho muito.', 8, 15),
(9, 8, 0, 'des', 'Desisti pois quero assistir os primeiros antes, mas já gostei do começo.', 9, 1),
(10, 29, 0, 'jas', 'Achei um filme de terror que não da muito medo, mas achei legal.', 7, 4),
(11, 2, 0, 'pre', 'Filme bala, não vejo a hora de assistir o próximo.', 10, 3),
(12, 24, 0, 'des', 'Não me interessei muito pelo filme, por ser algo muito meloso.', 5, 12),
(13, 13, 0, 'pre', 'gostei muito deles no Meu Malvado Favorito. ', 0, 16),
(14, 30, 0, 'jav', 'Achei bem interessante pelo fato do que tem que passar para ligar o robô. ', 9, 2),
(15, 6, 0, 'des', NULL, 6, 10),
(16, 10, 0, 'jav', 'Muito engraçado', 9, 8),
(17, 27, 0, 'pre', 'Dizem que é bem assustador.', 0, 5),
(18, 1, 0, 'jav', 'Esse, sem dúvida nenhuma, é um dos maiores e melhores filmes já feitos!', 10, 9),
(19, 3, 0, 'pre', 'Vingadores: Guerra Infinita foi um filme maravilhoso, espero que esse seja também.', 0, 12),
(20, 4, 0, 'des', 'O filme é bem simples, é um filme bem clichê e sem clímax.', 2, 17),
(21, 5, 0, 'jav', 'Esse segundo filme apresenta maior maturidade da personagem principal, que fica em situações onde suas ações possuem maior peso e apresenta de fato as consequências de nossos atos.', 8, 4),
(22, 11, 0, 'jav', 'Melhor animação que já vi. Agnes e os Minions são a graça do filme.', 9, 16),
(23, 14, 0, 'des', 'Um filme cuja história é Clichê. Não tem nada de original, mas é um pouco divertido.', 5, 6),
(24, 16, 0, 'pre', 'Pretendo assistir, me chamou bastante atenção a descrição do filme.', 0, 11),
(25, 17, 0, 'jav', 'É um filme bom que retrata bem a escravidão. ', 8, 13),
(26, 19, 0, 'jav', 'Uma das melhoras animações!!! Muito boa e criativa, boa tanto para crianças quanto para os adultos...', 9, 15),
(27, 20, 0, 'pre', 'Essa é minha sequência menos favorita da franquia. Só vale mesmo por criar a Jessie e o cavalo. ', 7, 10),
(28, 0, 22, 'pre', 'A franquia é muito boa, esperança esta grande.', 0, 8),
(29, 23, 0, 'des', 'O filme é divertido e claro que não é uma obra prima, mas tem cenas de ação bem feitas, mesmo cheio de clichês.', 6, 1),
(30, 28, 0, 'jav', 'Apesar de ter uma boa direção e ambientação, eu, particularmente, fico com a sensação que já vi isso antes, não existe nada de originalidade, nada que crie uma nova perspectiva.', 4, 14),
(31, 3, 0, 'jav', 'Melhor filme! Muito legal, engraçado, tem aventura, ação, emoção não parece que passam 3 horas e quando aparece o Thor bêbada muito engraçado!', 10, 5),
(32, 17, 0, 'pre', NULL, 0, 7),
(33, 13, 0, 'des', 'Filme bom mas não se compara aos dois primeiros Meu Malvado Favorito, geralmente os Minions se saem melhor quanto atuam no seu papel de apoio onde tiram suas sacadas e fazem suas improvisações com o Gru', 6, 2),
(34, 4, 0, 'jav', 'Amei, mostra um pouco como as coisas na vida real podem acontecer.', 10, 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `lista_serie`
--

DROP TABLE IF EXISTS `lista_serie`;
CREATE TABLE IF NOT EXISTS `lista_serie` (
  `Cod_Id_Lista_Serie` int(11) NOT NULL AUTO_INCREMENT,
  `Cod_Id_Serie_fk` int(11) NOT NULL,
  `Favorito_Lista_Serie` tinyint(1) NOT NULL DEFAULT '0',
  `Status_Lista_Serie` varchar(3) COLLATE utf8_swedish_ci NOT NULL DEFAULT 'pre',
  `Comentarios_Lista_Serie` text COLLATE utf8_swedish_ci,
  `Notas_Lista_Serie` int(2) NOT NULL,
  `Cod_Id_Usu_fk` int(11) NOT NULL,
  PRIMARY KEY (`Cod_Id_Lista_Serie`),
  KEY `Cod_Id_Serie_fk` (`Cod_Id_Serie_fk`),
  KEY `Cod_Id_Usu_fk` (`Cod_Id_Usu_fk`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Extraindo dados da tabela `lista_serie`
--

INSERT INTO `lista_serie` (`Cod_Id_Lista_Serie`, `Cod_Id_Serie_fk`, `Favorito_Lista_Serie`, `Status_Lista_Serie`, `Comentarios_Lista_Serie`, `Notas_Lista_Serie`, `Cod_Id_Usu_fk`) VALUES
(1, 11, 0, 'jav', 'Once foi uma das primeiras séries que comecei a acompanhar, sem dúvidas uma viagem incrível com personagens cativantes e interessantes, pena que tenha tomado o mesmo caminho de PLL por extender demais as temporadas colocando mais histórias e mais maldições...\r\n', 8, 17),
(2, 29, 0, 'des', 'Pior série que já assisti, vi tantas boas avaliações e fiquei bem decepcionada com a realidade, história fraca, personagens perdidos e com carisma forçado.', 1, 4),
(3, 2, 0, 'pre', 'Game of Thrones tem batalhas épicas e um elenco de peso. O enredo é muito bem escrito, com frases de efeito e personagens muito bem construídos. A série é muito bem produzida com uma fotografia impecável. Os episódios possuem uma riqueza de detalhes, beirando a perfeição, porém alguns episódios enrolam demais.', 6, 12),
(4, 3, 0, 'ass', 'Estou assistindo, e estou achando muito legal.', 8, 3),
(5, 19, 0, 'pre', 'Dizem que é uma serie bem criativa.', 0, 15),
(6, 20, 0, 'jav', 'Com toda a certeza, uma das melhores séries do mundo!!', 10, 6),
(7, 26, 0, 'ass', 'Uma serie que estou assistindo e achei bem interessante.', 7, 5),
(8, 5, 0, 'jav', 'Ótima série apesar de as 2 primeiras temporadas serem muito monótonas a partir da 3 temporada fica muito bom e imprevisível.', 9, 8),
(9, 10, 0, 'des', 'Chocada em como a terceira temporada é ruim. Sem nexo, sem pé nem cabeça . Do nada virou musical.', 1, 10),
(10, 15, 0, 'ass', 'O Seriado é excelente com diálogos bem construídos, segue uma história cativante e bem costurada, além de ser bem interpretada pelos atores, tem boa fotografia, a direção fez um excelente trabalho principalmente nos primeiros episódios onde praticamente todos os elementos em cena servem a narrativa.', 7, 14),
(11, 12, 0, 'jav', 'É perfeita, tem de tudo na medida certa... romance, suspense, ação, casos médicos. Acredito que por misturar a rotina da profissão com os conflitos pessoas de cada um Grey\s se torna tão envolvente... Faz agente se apegar aos personagens.', 0, 2),
(12, 28, 0, 'ass', 'A espera foi tanta e o hype gigantesco pra mim e posso dizer que valeu completamente a pena essa primeira temporada.', 8, 13),
(13, 1, 0, 'ass', 'Lúcifer a série, foi a melhor coisa que me aconteceu. Eu adoro essa série de coração e espero que não acabe.', 10, 7),
(14, 30, 0, 'pre', 'Segundo meus colegas a serie é maravilhosa. ', 0, 9),
(15, 27, 0, 'pre', 'Dizem que serie é perfeita, e eu que sou fã de terror acho que vou gostar.', 0, 1),
(16, 7, 0, 'des', 'Acho que perdeu muito do mistério com o diálogo direto com o mundo invertido... explicativo demais. Mas é legal.', 4, 11),
(17, 4, 0, 'ass', 'E uma boa série, mas alguns partes não tem quase nada de suspense ou mistério.', 6, 16),
(18, 6, 0, 'ass', 'Roteiro intrigante, dialogo inteligente, boa construção dos personagens.', 8, 14),
(19, 8, 0, 'jav', 'The Flash apresenta efeitos especiais excelentes, com grandes reviravoltas e chega a ser em alguns momentos fiel as HQs.', 9, 13),
(20, 9, 0, 'pre', 'O desenho é ótimo, espero que a serie seja também.', 0, 8),
(21, 13, 0, 'des', 'A série começa bem e consegue prender o espectador nos primeiros episódios, sem dúvida, mas depois começa a desandar e insultar a inteligência de quem assiste.', 5, 1),
(22, 14, 0, 'ass', 'Parece que vai ser só mais uma série clichê mais te prende muito por contas dos assassinatos e dos personagens que são únicos e cativantes.', 8, 4),
(23, 16, 0, 'jav', 'Uma das melhores series que eu já vi na vida inteira, amei principalmente a segunda temporada que trata vários assuntos importantes como o racismo. ', 10, 5),
(24, 17, 0, 'jav', 'É uma série ótima, mesmo com um pouco de dificuldade na 1 temporada.', 9, 11),
(25, 18, 0, 'des', 'Não consegui nem terminar a primeira temporada, a série é cansativa e repetitiva', 3, 2),
(26, 21, 0, 'ass', 'Parece uma simples mas a série é muito mais que isso. Ela analisa o ser humano e o que vem à tona nele em uma situação decadente como essa.', 8, 9),
(27, 22, 0, 'jav', 'Eu amoo Arrow! Eu acho que tem ação, suspense, é inovadora e muito interessante. Vale muito a pena assistir!!', 10, 12),
(28, 23, 0, 'pre', 'Dizem que a serie é excelente!! ', 0, 10),
(29, 24, 0, 'jav', 'De forma geral e simples, é um serie muito boa, tanto em roteiro, em personagens, em efeitos visuais e nas lutas.', 9, 16),
(30, 25, 0, 'pre', NULL, 0, 3),
(31, 30, 0, 'des', 'Entendo que é uma adaptação e que não será idêntico ao livro, mas achei que alguns elementos modificados mexeram demais com a essência da história.', 5, 6),
(32, 22, 0, 'ass', 'Passei a assistir Arrow, que pra mim é uma das melhores series. Arrow tem mais cenas de ação e uma história mais interessante. Prende mais a atenção do telespectador.', 9, 7),
(33, 10, 0, 'ass', 'Riverdale é uma série até que legal. Eu a evitei um pouco pq achei que fosse igual a aqueles filmes adolescentes sem sal, mas me enganei o roteiro é bem escrito.', 8, 17),
(34, 29, 0, 'jav', 'Tenho meu sentimento por essa história, passei por difíceis momentos na escola, é só isso posso dizer, a história sempre será real, não ache que é ficção.', 7, 15);

-- --------------------------------------------------------

--
-- Estrutura da tabela `membros`
--

DROP TABLE IF EXISTS `membros`;
CREATE TABLE IF NOT EXISTS `membros` (
  `Cod_Id_Memb` int(11) NOT NULL AUTO_INCREMENT,
  `Cod_Id_Usu_fk` int(11) NOT NULL,
  `Cod_Id_Club_fk` int(11) NOT NULL,
  `Cargo` varchar(3) COLLATE utf8_swedish_ci NOT NULL,
  PRIMARY KEY (`Cod_Id_Memb`),
  KEY `Cod_Id_Usu_fk` (`Cod_Id_Usu_fk`),
  KEY `Cod_Id_Club_fk` (`Cod_Id_Club_fk`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `postagens`
--

DROP TABLE IF EXISTS `postagens`;
CREATE TABLE IF NOT EXISTS `postagens` (
  `Cod_Id_Post` int(11) NOT NULL AUTO_INCREMENT,
  `Cod_Id_Club_fk` int(11) NOT NULL,
  `Cod_Id_Memb_fk` int(11) NOT NULL,
  `Texto_Post` varchar(350) COLLATE utf8_swedish_ci NOT NULL,
  `Midia1_Post` varchar(40) CHARACTER SET utf8 COLLATE utf8_swedish_ci DEFAULT NULL,
  `Midia2_Post` varchar(40) CHARACTER SET utf8 COLLATE utf8_swedish_ci DEFAULT NULL,
  `Data_Hora_Pub_Post` datetime NOT NULL,
  PRIMARY KEY (`Cod_Id_Post`),
  KEY `Cod_Id_Club_fk` (`Cod_Id_Club_fk`),
  KEY `Cod_Id_Memb_fk` (`Cod_Id_Memb_fk`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `serie`
--

DROP TABLE IF EXISTS `serie`;
CREATE TABLE IF NOT EXISTS `serie` (
  `Cod_Id_Serie` int(11) NOT NULL AUTO_INCREMENT,
  `Nome_Serie` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `Foto_Serie` varchar(40) COLLATE utf8_swedish_ci NOT NULL,
  `Banner_Serie` varchar(40) COLLATE utf8_swedish_ci NOT NULL,
  `Descricao_Serie` varchar(1000) COLLATE utf8_swedish_ci NOT NULL,
  `Autor_Serie` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `Data_Lanc_Primeiro_Ep_Serie` datetime NOT NULL,
  `Data_Lanc_Ultimo_Ep_Serie` datetime NOT NULL,
  `Quantidade_Ep_Serie` int(5) NOT NULL,
  `Cod_Id_Genero_fk` int(11) NOT NULL,
  `Data_Insercao_Serie` datetime NOT NULL,
  PRIMARY KEY (`Cod_Id_Serie`),
  KEY `Cod_Id_Genero_fk` (`Cod_Id_Genero_fk`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Extraindo dados da tabela `serie`
--

INSERT INTO `serie` (`Cod_Id_Serie`, `Nome_Serie`, `Foto_Serie`, `Banner_Serie`, `Descricao_Serie`, `Autor_Serie`, `Data_Lanc_Primeiro_Ep_Serie`, `Data_Lanc_Ultimo_Ep_Serie`, `Quantidade_Ep_Serie`, `Cod_Id_Genero_fk`, `Data_Insercao_Serie`) VALUES
(1, 'Lucifer', '5fa0f1966cb96f950db8fe7495ba96f1.jpg', '605de4663325ed29417b6556da4deab0.jpg', 'Lucifer Morningstar, o famigerado Senhor do Inferno, se cansa da vida demoníaca que leva no subterrâneo e abandona seu trono para tirar férias em Los Angeles. Lá, ele abre uma casa noturna chamada Lux e passa a desfrutar de tudo o que mais gosta: vinho, mulheres e excessos. Sua nova rotina se complica quando uma estrela do pop é brutalmente assassinada diante de seus olhos. Pela primeira vez em mais de 10 milhões de anos, Lucifer sente despertar em seu interior um desejo de justiça e resolve punir os responsáveis pelo crime. Ele conhece, então, a policial Chloe Decker e se junta a ela para desvendar o caso. Mas seus poderes de persuasão se mostram tão úteis que ele se torna uma espécie de consultor em outras investigações de homicídio, formando uma dupla improvável com Chloe.', 'Mike Carey', '2016-01-25 00:00:00', '2020-08-21 00:00:00', 75, 5, '2020-09-01 00:00:00'),
(2, 'Game of Thrones', 'ff478f589e196a23436d00968d310c25.jpg', 'cf4c86092821711dbed0a44ffd010546.jpg', 'Game of Thrones conta a históra de um lugar onde uma força destruiu o equilíbrio das estações, há muito tempo. Em uma terra onde os verões podem durar vários anos e o inverno toda uma vida, as reivindicações e as forças sobrenaturais correm as portas do Reino dos Sete Reinos. A irmandade da Patrulha da Noite busca proteger o reino de cada criatura que pode vir de lá da Muralha, mas já não tem os recursos necessários para garantir a segurança de todos. Depois de um verão de dez anos, um inverno rigoroso promete chegar com um futuro mais sombrio. Enquanto isso, conspirações e rivalidades correm no jogo político pela disputa do Trono de Ferro, o símbolo do poder absoluto.', 'David Benioff e D. B. Weiss', '2011-04-17 00:00:00', '2019-05-19 00:00:00', 73, 1, '2020-08-01 00:00:00'),
(3, 'Friends', 'f7d396f2514356503f0d104546537733.jpg', '993d527fc1a6d7d6f2f4b35ccbf7ed44.jpg', 'Seis jovens são unidos por laços familiares, românticos e, principalmente, de amizade, enquanto tentam vingar em Nova York. Rachel é a garota mimada que deixa o noivo no altar para viver com a amiga dos tempos de escola Monica, sistemática e apaixonada pela culinária. Monica é irmã de Ross, um paleontólogo que é abandonado pela esposa, que descobriu ser lésbica. Do outro lado do corredor do apartamento de Monica e Rachel, moram Joey, um ator frustrado, e Chandler, de profissão misteriosa. A turma é completa pela exótica Phoebe.', 'David Crane e Marta Kauffman', '1994-09-22 00:00:00', '2004-05-06 00:00:00', 236, 3, '2020-08-22 00:00:00'),
(4, 'Anne with an E', 'ec2f36ef489958d734e0e64051aafe5c.jpg', '519041a2123e32a9131cd3d3b445c7fd.jpg', 'Depois de treze anos sofrendo no sistema de assistência social, a orfã Anne é mandada para morar com uma solteirona e seu irmão. Munida de sua imaginação e de seu intelecto, a pequena Anne vai transformar a vida de sua família adotiva e da cidade que lhe abrigou, lutando pela sua aceitação e pelo seu lugar no mundo.', 'Moira Walley-Beckett', '2017-03-19 00:00:00', '2019-11-24 00:00:00', 27, 4, '2020-11-12 00:00:00'),
(5, 'Breaking Bad', '782168798b77182c580d826a7eb9e9dd.jpg', 'b5f5ac92159ffbb7767b3b9eb83533bb.jpg', 'Walter White é um professor de química na casa dos 50 anos que trabalha em uma escola secundária no Novo México. Para atender às necessidades de Skyler, sua esposa grávida, e Walt Junior, seu filho deficiente físico, ele tem que trabalhar duplamente. Sua vida fica ainda mais complicada quando descobre que está sofrendo de um câncer de pulmão incurável. Para aumentar rapidamente a quantidade de dinheiro que deixaria para sua família após sua morte, Walter usa seu conhecimento de química para fazer e vender metanfetamina, uma droga sintética. Ele conta com a ajuda do ex-aluno e pequeno traficante Jesse e enfrenta vários desafios, incluindo o fato de seu concunhado ser um importante nome dentro da Agência Anti-Drogas da região.', 'Vince Gilligan', '2008-01-20 00:00:00', '2013-08-18 00:00:00', 62, 7, '2020-09-27 00:00:00'),
(6, 'Sherlock', '382251275881be73176534193a1fa8fe.jpg', 'f19729d2c9d6f36ffe60732f1f2935a7.jpg', 'O dr. John Watson precisa de um lugar para morar em Londres. Ele é apresentado ao detetive Sherlock Holmes e os dois acabam desenvolvendo uma parceria intrigante, na qual a dupla vagará pela capital inglesa solucionando assassinatos e outros crimes brutais. Tudo isso em pleno século XXI.', 'Mark Gatiss, Steven Moffat e Stephen Thompson', '2010-07-25 00:00:00', '2017-01-15 00:00:00', 14, 2, '2020-11-22 00:00:00'),
(7, 'Stranger Things', '6212ea53b592c1465dad28f5cd766a41.jpg', '25f52527e7822bcec1fe5d3120f23917.jpg', 'Em Stranger Things, quando Will, um menino de 12 anos, desaparece misteriosamente, o xerife Jim Hopper inicia uma operação para encontrá-lo. Enquanto isso, Mike, Dustin e Lucas, melhores amigos de Will, decidem procurá-lo por conta própria. Mas as investigações acabam levando o grupo a experimentos secretos do governo e a uma peculiar menina perdida na floresta.', 'Matt Duffer e Ross Duffer', '2016-07-15 00:00:00', '2019-07-04 00:00:00', 28, 12, '2020-10-13 00:00:00'),
(8, 'The Flash', 'e1604acce13009fba97106438e21c651.jpg', 'c1ca968c8bfa5e42ec324667ef5978d7.jpg', 'O investigador forense Barry Allen sofre um acidente em seu laboratório: ele leva um banho de produtos químicos e, em seguida, é atingido por um raio. A partir disso, ele se torna capaz de canalizar os poderes do \"Campo de Velocidade\" e de se locomover com uma rapidez sobre-humana. De máscara e uniforme vermelhos, Barry assume a identidade do super-herói Flash e começa a usar suas habilidades para patrulhar Central City, contando com a ajuda dos cientistas da S.T.A.R. Labs. Ao mesmo tempo que detém vilões, ele procura descobrir quem está por trás do assassino de sua mãe.', 'Greg Berlanti e Andrew Kreisberg', '2014-10-07 00:00:00', '2020-05-12 00:00:00', 133, 1, '2020-09-14 00:00:00'),
(9, 'Rick and Morty', '864b4790b7c76240580354c8bd8828c9.jpg', '8b29fcd1406b343f10b330bf6aabd0b5.jpg', 'Uma série animada que acompanha as aventuras e os descobrimentos de um super cientista e seu neto não muito brilhante.', 'Dan Harmon e Justin Roiland', '2013-12-02 00:00:00', '2020-05-31 00:00:00', 41, 11, '2020-10-10 00:00:00'),
(10, 'Riverdale', '7e1815d5b02c6b2a9c42920efc11e90e.jpg', '3d574aacea50868c72807cda0977998a.jpg', 'Riverdale acompanha um grupo de adolescentes formado por Archie, Betty, Veronica, Jughead Jones e Josie, todos alunos do ensino médio. Depois de uma trágica perda, Archie embarca em uma jornada para realizar o seu sonho de se tornar um grande músico. Mas ele vai precisar da ajuda de seus amigos, que às vezes só atrapalham.', 'Roberto Aguirre-Sacasa', '2017-01-26 00:00:00', '2020-05-06 00:00:00', 76, 4, '2020-11-18 00:00:00'),
(11, 'Once Upon a Time', '6e5fdf8538cdca06fce9564a2211d087.jpg', '1508749132bc35024c46457577ebb558.jpg', 'Na cidade fictícia de Storybrooke, no Maine, Regina é uma rainha má que rouba memórias graças à maldição obtida por meio de Rumplestiltskin. Suas vítimas viveram, portanto, uma realidade imutável durante 28 anos, sem ter qualquer noção de sua idade. Todas as esperanças estão depositadas em Emma Swan, filha da Branca de Neve e do Príncipe Encantado. Ela é a única pessoa com a capacidade de quebrar a maldição e recuperar as lembranças perdidas, pois foi transportada do mundo de conto de fadas antes de ser atingida pelo feitiço.', 'Adam Horowitz e Edward Kitsis', '2011-10-23 00:00:00', '2018-05-18 00:00:00', 155, 3, '2020-09-30 00:00:00'),
(12, 'Greys Anatomy', 'd92c31263b64e22347ca491007fc87dd.jpg', '3a287d2afc724bd236123aa855666816.jpg', 'Em Greys Anatomy, os médicos do Grey Sloan Memorial Hospital lidam diariamente com casos e consequências de vida ou morte. É um no outro que eles encontram apoio, conforto, amizade e, às vezes, até mais que amizade... Juntos, eles descobrem o quanto a vida profissional e a pessoal podem ser complicadas e se misturarem no meio do caminho.', 'Shonda Rhimes, Betsy Beers e Krista Vernoff', '2005-03-27 00:00:00', '2020-12-03 00:00:00', 367, 6, '2020-09-17 00:00:00'),
(13, 'La Casa de Papel', 'd0b8da098aa20d3ce3f21b60ff533476.jpg', '6d1e037858ef8ba7a6319eb479a2b8c0.jpg', 'Em La Casa de Papel, nove habilidosos ladrões (Nairóbi, Berlim, Tókyo, Rio, Helsinki, Oslo, Professor, Denver e Moscou) se trancam na Casa da Moeda da Espanha com o ambicioso plano de realizar o maior roubo da história. Para isso, a gangue precisa lidar com as dezenas de pessoas que manteve como refém, além dos agentes da força de elite da polícia, que farão de tudo para que a investida dos criminosos fracasse.', 'Álex Pina', '2017-05-02 00:00:00', '2020-04-03 00:00:00', 31, 7, '2020-11-23 00:00:00'),
(14, 'Elite', '31a21a755ca36232a0af54677029acc8.jpg', '35af36c8b7736c46d6473df5b61f8f70.jpg', 'Em Elite, depois de um problema na escola que frequentam, três alunos do ensino público são transferidos para Las Encinas, a melhor e mais exclusiva escola na Espanha, onde os filhos da elite estudam. O choque entre os menos favorecidos e aqueles que têm tudo culmina em um assassinato. Agora resta saber: quem está por trás do crime?', 'Carlos Montero e Darío Madrona', '2018-10-05 00:00:00', '2020-03-13 00:00:00', 24, 7, '2020-10-21 00:00:00'),
(15, '13 Reasons Why', '7d73b7f921f77c4e64096a62ad77999e.jpg', '6ed8da55bdd92febc8106b437b921337.jpg', 'Uma caixa de sapatos é enviada para Clay por Hannah, sua amiga e paixão platônica secreta de escola. O jovem se surpreende ao ver o remetente, pois Hannah acabara de se suicidar. Dentro da caixa, há várias fitas cassete, onde a jovem lista os 13 motivos que a levaram a interromper sua vida - além de instruções para elas serem passadas entre os demais envolvidos.', 'Brian Yorkey', '2017-03-13 00:00:00', '2020-06-05 00:00:00', 49, 4, '2020-10-20 00:00:00'),
(16, 'The Umbrella Academy', '111f66c1afcea92e8787dffee6019288.jpg', '8600df35a97943007325ecd76b0c48c1.jpg', 'Antes de falecer, o milionário Sir Reginald Hargreeves adotou sete crianças a fim de treiná-las para combater o mal. Depois que ele morre misteriosamente, esses jovens habilidosos unem suas forças para seguir o caminho para o qual seu pai adotivo os criou e acabam se envolvendo em um mundo muito mais perigoso do que eles imaginavam ser possível.', 'Steve Blackman', '2019-02-15 00:00:00', '2020-07-31 00:00:00', 20, 1, '2020-07-23 00:00:00'),
(17, 'Teen Wolf', '92fd9dd564a5e78b7ce9c799fec4a0de.jpg', '8cb48fcdb5f5f896b2ee399d94cd2717.jpg', 'O jovem Scott McCall é estudante do ensino médio no colégio fictício de Beacon Hills e vive como um garoto comum, passando por problemas naturais da juventude. Ao ir caminhar na floresta em busca de um suposto corpo morto, o menino é mordido por um lobisomem. Nos dias seguintes, Scott logo nota as mudanças em seu corpo e nos seus sentidos, concluindo que tornou-se um lobisomem. Ele se esforça para esconder de seus colegas a nova característica, com exceção do melhor amigo Stiles Stilinski, da namorada Allison Argent e do companheiro Derek Hale, com quem conta para enfrentar a nova fase.', 'Jeff Davis', '2011-06-15 00:00:00', '2017-09-24 00:00:00', 100, 8, '2020-07-16 00:00:00'),
(18, 'Desventuras em Série', '50f62fab8ea41febe0918b0c89140566.jpg', '27aaf966acf6b7bf6a673ade47ffd3b4.jpg', 'Klaus, Violet e Sunny são três irmãos que repentinamente recebem a notícia de que seus pais morreram em um incêndio. Como são menores de idade eles não podem ainda herdar a fortuna de seus pais, o que apenas ocorrerá quando Violet, a mais velha, completar 18 anos. O trio passa então a morar com o Conde Olaf, um parente distante bastante ganancioso, que deseja tomar a fortuna das crianças para si. Para atingir sua meta Olaf não medirá consequências.', 'Brad Silberling', '2017-01-13 00:00:00', '2019-01-01 00:00:00', 25, 5, '2020-07-03 00:00:00'),
(19, 'Pretty Little Liars', 'fd5ac1fd6bf727ee0303b01db6a2d13f.jpg', '0a5a82b577a6c87aafe56d79eb17c7b9.jpg', 'Na pequena cidade de Rosewood, na Pensilvânia, as melhores amigas Spencer Hastings, Aria Montgomery, Hanna Marin e Emily Fields guardam complexos segredos. Alison, 5ª membra e líder do grupo, desapareceu há um ano e não deixou qualquer pista. As amigas recebem cartas misteriosas assinadas por uma letra e suspeitam que seja sua antiga companheira, mas a desconfiança que possuem em relação ao universo perverso no qual vivem provoca uma reflexão cada vez maior.', 'I. Marlene King', '2010-06-08 00:00:00', '2017-06-27 00:00:00', 160, 4, '2020-08-28 00:00:00'),
(20, 'Gossip Girl', '219fbebd18eaa576dc21b8635f7d67ca.jpg', '9451272c33c922be125608d2b25a53ff.jpg', 'Após passar um ano estudando fora por motivos misteriosos, Serena van der Woodsen está de volta em Nova York. Seu retorno agita o Upper East side, onde vivem os jovens mais privilegiados da cidade, como a sua melhor amiga, Blair Waldorf, o namorado de Blair, Nate Archibald, e ainda Chuck Bass. Enquanto lida com os problemas com a mãe, Lily van der Woodsen, e o irmão, Eric, Serena irá começar um relacionamento com Dan Humphrey, um garoto de um mundo completamente diferente.', 'Josh Schwartz e Stephanie Savage', '2007-09-19 00:00:00', '2012-12-17 00:00:00', 121, 6, '2020-08-15 00:00:00'),
(21, 'The Walking Dead', 'b298bd1b63a36ae239600087cacaa324.jpg', '1f86182e53835b498e6cf35e9f163852.jpg', 'Em The Walking Dead, um apocalipse provoca uma infestação de zumbis na cidade de Cynthiana, em Kentucky, nos Estados Unidos, e o oficial de polícia Rick Grimes descobre que os mortos-vivos estão se propagando progressivamente. Ele decide unir-se aos homens e mulheres sobreviventes para que tenham mais força para combater o fenômeno que os atinge. O grupo percorre diferentes lugares em busca de soluções para o problema.', 'Frank Darabont', '2010-10-31 00:00:00', '2020-10-04 00:00:00', 147, 8, '2020-08-02 00:00:00'),
(22, 'Arrow', '8e1accbed0c81efedbad7be691d32872.jpg', 'dd89b95fbae8acc321126256f9aa6229.jpg', 'Playboy, milionário e mulherengo, Oliver Queen está presumivelmente morto há 5 anos, quando um acidente de iate causou o desaparecimento dele, de seu pai, Robert, e Sara Lance, irmã de sua então namorada Laurel. Mas Ollie sobreviveu e, preso em uma ilha, ele aprendeu a lutar por sua vida. De volta à civilização em Starling City, ele é um homem mudado e está decidido a honrar a memória do pai e livrar a cidade da corrupção. Disfarçado, ele usa as habilidades que aprendeu durante seu tempo de reclusão para isso, e ao mesmo tempo precisa esconder sua nova identidade da mãe, Moira, da irmã, Thea e dos amigos.', 'Andrew Kreisberg, Greg Berlanti e Marc Guggenheim', '2012-10-10 00:00:00', '2020-01-28 00:00:00', 170, 12, '2020-09-27 00:00:00'),
(23, 'Vis a Vis', '4a933b2748f170052650409190427d37.jpg', '4ef2b1729573e76088d0228bd300a96d.jpg', 'Vis a Vis segue as desventuras de Macarena Ferreiro, uma jovem ingênua que se apaixonou pelo patrão e agora está presa por causa dele. Acusada de cometer quatro crimes fiscais, ela precisa enfrentar o choque emocional que é estar na cadeia, enquanto sua família procura um jeito de pagar a fiança e libertá-la da Penitenciária de Cruz del Sur.', 'Daniel Écija, Álex Pina e Iván Escobar', '2015-04-20 00:00:00', '2019-02-04 00:00:00', 40, 7, '2020-09-21 00:00:00'),
(24, 'Titans', 'bcfbef617ddd0539650909a006b1f659.jpg', '1c14f60729eae8f2a23ec46c52e0d618.jpg', 'As aventuras de um grupo de jovens aspirantes a heróis. Dick Grayson, provavelmente mais conhecido pelo seu alter-ego Robin, é o protagonista, que sai das sombras de Batman para se tornar o Nightwing, ou Asa Noturna, líder de um grupo de novos heróis que inclui Estelar, Ravena e Mutano.', 'Greg Berlanti, Akiva Goldsman e Geoff Johns', '2018-10-12 00:00:00', '2019-11-29 00:00:00', 24, 1, '2020-09-11 00:00:00'),
(25, 'Peaky Blinders', '2cd42da56da826b08d1ca7b2fb63bfb5.png', '457cf2390cf4e12534b3a7d70b99929b.jpg', 'Em Peaky Blinders, Thomas Shelby e seus irmãos retornam a Birmingham depois de servir no exército britânico durante a Primeira Guerra Mundial. Shelby e os Peaky Blinders, a gangue na qual ele é líder, controlam a cidade de Birmingham. Mas, como as ambições de Shelby se estendem para além de Birmingham, ele planeja construir o império de negócios que criou e impedir qualquer um que atrapalhar.', 'Steven Knight', '2013-09-12 00:00:00', '2019-09-22 00:00:00', 30, 4, '2020-11-27 00:00:00'),
(26, 'Sintonia', 'f67618c3d7017aa89b5d1bb4c49b8ab5.png', '07491eb2cbd227af522a7d2801b10709.jpg', 'Sintonia traz as histórias de Doni, Nando e Rita, todos moradores da mesma favela em São Paulo. Crescendo juntos pelas ruas da comunidade, eles descobriram aos poucos o mundo do tráfico de drogas, da religião e também da música. No entanto, as experiências da infância os levaram a trilhar caminhos bem diferentes, e agora esse trio sabe que quem pode salvá-los dos problemas com os quais se envolveram são eles mesmos.', 'KondZilla, Guilherme Quintella e Felipe Braga', '2019-08-09 00:00:00', '2019-08-09 00:00:00', 6, 4, '2020-10-31 00:00:00'),
(27, 'O Mundo Sombrio de Sabrina', 'a217b32cfe95a0e4e653a5d750828a8a.jpg', '726f254067354f8895ebdeaa30baa05c.png', 'Prestes a completar dezesseis anos, a jovem Sabrina Spellman é obrigada a tomar uma decisão crucial que mudará sua vida para sempre. Ela deve escolher entre o mundo das bruxas e o mundo dos mortais, enquanto luta para proteger a família e os amigos de forças sombrias que os ameaçam.', 'Roberto Aguirre-Sacasa', '2018-10-26 00:00:00', '2020-12-31 00:00:00', 36, 8, '2020-10-05 00:00:00'),
(28, 'The Witcher', '7e0519a3a7d69ae8eba0969fabd7f320.jpg', 'a15d44ad4131a7be985e4c8786960dde.jpg', 'Geralt de Rivia é um solitário caçador de monstros, que luta para encontrar seu lugar num mundo onde pessoas são mais crueis que criaturas. Mas seu caminho irá cruzar com duas figuras que mudarão sua vida: a feiticeira Yennefer de Vengerberg e a princesa poderosa Cintran Ciri.', 'Lauren Schmidt Hissrich', '2019-12-20 00:00:00', '2019-12-20 00:00:00', 8, 5, '2020-11-03 00:00:00'),
(29, 'Orange Is the New Black', 'f15f53b18a4825e08b932b5ef4c41687.jpg', 'f5a63dc7d3b022aa2448ec6f68f013ef.jpg', 'Piper Chapman é uma mulher por volta de seus 30 anos que é sentenciada a 15 meses de prisão após ter cometido crimes para sua ex-namorada, a traficante Alex, que não vê há mais de uma década. Piper troca a sua vida confortável de Nova York, com o noivo Larry, pelo macacão laranja, e cumpre sua sentença na Penitenciária Feminina de Litchfield. Para sobreviver, ela precisa aprender a conviver com as outras detentas, como Red, Nicky, Taystee e Crazy Eyes. O que Piper não espera é encontrar a ex cumprindo pena no mesmo lugar.', 'Jenji Kohan', '2013-07-11 00:00:00', '2019-07-26 00:00:00', 91, 4, '2020-11-30 00:00:00'),
(30, 'Shadowhunters', '4d3b3dbb9ef9529b0447d37882e8ecf2.jpg', '2aec9abd0585e677859237a3e80202ae.jpg', 'Em Shadowhunters, Clary Fray é uma jovem de 18 anos que vê sua vida mudar completamente quando descobre ser parte de uma raça de meio humanos e meio anjos responsáveis por caçar demônios. Ela se une aos jovens caçadores Jace, Alec e Isabelle e passa a proteger o mundo de vampiros, lobisomens e monstros malignos.', 'Todd Slavkin, Edward Decter e Darren Swimmer', '2016-01-12 00:00:00', '2019-05-06 00:00:00', 55, 6, '2020-10-22 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `Cod_Id_Usu` int(11) NOT NULL AUTO_INCREMENT,
  `Nome_Usu` varchar(20) COLLATE utf8_swedish_ci NOT NULL,
  `Data_Nasc_Usu` datetime NOT NULL,
  `Data_Criacao_Usu` datetime NOT NULL,
  `Cidade_Usu` varchar(50) COLLATE utf8_swedish_ci DEFAULT NULL,
  `Bio_Usu` varchar(150) COLLATE utf8_swedish_ci DEFAULT NULL,
  `Foto_Perfil_Usu` varchar(40) COLLATE utf8_swedish_ci DEFAULT NULL,
  `Pais_Usu` varchar(30) COLLATE utf8_swedish_ci DEFAULT NULL,
  `Tipo_Usu` varchar(3) COLLATE utf8_swedish_ci NOT NULL,
  `Senha_Usu` varchar(35) COLLATE utf8_swedish_ci NOT NULL,
  `Email_Usu` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  PRIMARY KEY (`Cod_Id_Usu`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`Cod_Id_Usu`, `Nome_Usu`, `Data_Nasc_Usu`, `Data_Criacao_Usu`, `Cidade_Usu`, `Bio_Usu`, `Foto_Perfil_Usu`, `Pais_Usu`, `Tipo_Usu`, `Senha_Usu`, `Email_Usu`) VALUES
(1, 'RayBeat', '2001-06-08 00:00:00', '2020-07-17 15:21:59', 'Brasília', NULL, '9bab8f63c887db1b1f761f272db59087.jpg', 'Brasil', 'adm', '097340d3159da2e7360a05217923fc4f', 'beatrizrayssaelainemoura@sobraer.com.br'),
(2, 'Joaella21', '1980-01-21 00:00:00', '2020-06-21 16:39:20', 'Ponta Grossa', NULL, '5395ab10256f74d76bbe37a52cd75aad.jpg', 'Brasil', 'vis', '34f850bbf9c5e2837f7e5e44bc34aa39', 'joanaisabelladapaz@iquattro.com.br'),
(3, 'MarlOlivia', '1999-07-17 00:00:00', '2020-08-18 16:44:41', 'Cachoeiro de Itapemirim', NULL, 'edcc1a2ada734976969299e723c606c2.jpg', 'Brasil', 'vis', '199cd111d6060603688b99180893d33a', 'oliviamarleneninarocha@fk1.com.br'),
(4, 'Victorul11', '1988-06-05 00:00:00', '2020-09-02 16:47:10', 'Rio Azul', NULL, '344fb762b497bb825c048fcee2282c0e.jpg', 'Brasil', 'adm', '5bae15059ec7aa01bf10d12bdca87cd7', 'victorraulseverinomonteiro@wredenborg.se'),
(5, 'Lielle23', '1990-05-01 00:00:00', '2020-08-22 16:51:36', 'Teresina', NULL, 'e59858f818989838d2c9fd8416b39369.jpg', 'Brasil', 'vis', '86e324d5aec87af8a74e52874581278e', 'liviaisabellegabriellyfernandes@pronta.com.br'),
(6, 'TiagoEdsS2', '1997-12-26 00:00:00', '2020-10-06 16:54:43', 'Campo Grande', NULL, '783043e38eda10b61d8afc51d4757128.png', 'Brasil', 'adm', '2c3becba3402d755a10f316436c4d5cc', 'tiagoedsonfigueiredo@silicotex.net'),
(7, 'FelipeVic7', '1989-10-25 00:00:00', '2020-10-31 16:56:52', 'Timon', NULL, 'd262a92ea819fd12d5628493cb5535e0.jpg', 'Brasil', 'adm', '2f089fff3686ba21cfbc43622a7581f6', 'felipevictorcaldeira_@unimedsjc.com.br'),
(8, 'Isabra', '1983-03-13 00:00:00', '2020-07-01 16:59:04', 'Londrina', NULL, 'cb9fa4821353667acffb09561588209f.jpg', 'Brasil', 'adm', '2b7137f830a7890ea57e791468dbf40e', 'isabellaclaralunadacosta@leandroreis.com'),
(9, 'Vini08', '1992-04-20 00:00:00', '2020-09-15 17:02:22', 'Cuiabá', NULL, 'ff90fc1be4c3f38ac93bfddcef7568ed.jpg', 'Brasil', 'vis', '7828ef2fdf611cf02b68f6bc8c36cbe3', 'vviniciusmarioduarte@brastek.com.br'),
(10, 'Murilocos', '2000-08-16 00:00:00', '2020-11-02 17:05:32', 'Rio Bananal', NULL, 'cd831b87b526a9dd4dffba4afa9b99a0.png', 'Brasil', 'vis', '3e26ef4833c3ef39d43223944623854b', 'murilomarcosribeiro@emerson.com'),
(11, 'Sever13', '1969-12-31 21:00:00', '2020-10-23 17:07:49', 'Macapá', NULL, 'd6ebcc1b7e40a47a342fedaa8b8b9dc4.jpg', 'Brasil', 'vis', 'c9f02ba41ed02c005951293587304256', 'fabioseverinoenricogoncalves@vianetfone.com.br'),
(12, 'Catarina16', '1999-08-18 00:00:00', '2020-06-17 17:09:47', 'Cacoal', NULL, 'f5e63d5270b09f328e128a4be6529d48.jpg', 'Brasil', 'adm', '261238f483d704af10fc5da5d138a5d4', 'sabrinacatarinaclarice@virage.com.br'),
(13, 'Biana', '1989-08-25 00:00:00', '2020-08-29 17:34:52', 'Caruaru', NULL, '58ecd449064c1fda20333f60bbd5f629.png', 'Brasil', 'vis', 'ed07842ce0851f8183a8ba5fa9b7c752', 'adrianasabrinagiovana@haldex.com'),
(14, 'Dudu24', '1992-12-20 00:00:00', '2020-09-30 17:37:58', 'Luziânia', NULL, '591297a886391a9fcd26acabb14ec510.jpg', 'Brasil', 'adm', 'debada3b0d546d3c699643e048a81e2c', 'carloseduardomanuelbernardes@directnet.com.br'),
(15, 'Gaviao', '1999-01-01 00:00:00', '2020-07-02 17:43:52', 'São Paulo', NULL, 'cac7ee6735e82e254a5279cbbda4d3b7.png', 'Brasil', 'vis', '652d35351e39c17abe682c149a50a17d', 'marcoshugogalvao@vitalliimoveis.com'),
(16, 'Nunes08', '2002-06-23 00:00:00', '2020-08-12 17:48:46', 'Bagé', NULL, 'f3cb2af4d79e77246676d89b7d40095e.jpg', 'Brasil', 'vis', '322aa02bdfceb9742fe4f311e0588c4e', 'luaniannunes88@estagiarios.com'),
(17, 'Oliver', '2003-10-30 00:00:00', '2020-05-18 17:53:32', 'Santa Bárbara dOeste', NULL, 'e1ba89b95c0273946a572dc10f9b28a4.jpg', 'Brasil', 'adm', '4eb48b5d933bde7603a52f1118c951a6', 'matheusoliver@outlook.com'),
(18, 'KennyKenpachi', '2004-08-21 00:00:00', '2020-03-19 22:49:28', 'Cascavel', NULL, '89a828af1d7fb2eadb9dfdf590a659ca.png', 'Brasil', 'vis', 'fa6e01d41b507b2a641e903de3fe4ef9', 'kennyd@iquattro.com.br'),
(19, 'FakeDoMuriloCouto', '1969-12-31 21:00:00', '2020-06-21 22:54:10', 'Praia Grande', NULL, '2dcdf4c548556d78dc189deac0379113.jpg', 'Brasil', 'vis', 'a1392612c4c9a7d713db7cbaf82ac769', 'mcouto@iquattro.com.br'),
(20, 'GentiliPalmito', '1985-01-11 00:00:00', '2020-06-05 22:56:11', 'Palmas', NULL, '0c4a998882be71b9defa8237f2683a75.jpg', 'Brasil', 'adm', '9cb1e740d2acb1954fa510628818ad96', 'gentilipalmito@iquattro.com.br'),
(21, 'MonkeyDLucas', '2005-03-13 00:00:00', '2020-04-10 22:57:44', 'Rio Verde', NULL, '7fb1f9a278e77e18eeebfd9caf27dd28.jpg', 'Brasil', 'vis', 'f9688ab038b82a0dcd2281309124c8bf', 'mdlucas@iquattro.com.br'),
(22, 'RoronoaEnzo', '2004-02-18 00:00:00', '2020-10-25 22:59:35', 'Colombo', NULL, '5942a7cb70886650d906de2c4a943989.jpg', 'Brasil', 'vis', 'bed76509d6247b281143539219d9abbd', 'roronoaenzo@iquattro.com.br'),
(23, 'Rosinante', '1990-06-19 00:00:00', '2020-02-19 23:01:13', 'Cotia', NULL, '206638b47b1277e5ac203927fcd3fe42.jpeg', 'Brasil', 'vis', '9b9b5d9d6bbdc90bba908289ca1b7e0e', 'rosinante@iquattro.com.br'),
(24, 'ViniORenegado', '2000-10-10 00:00:00', '2020-06-16 23:03:33', 'Suzano', NULL, '745f8fab03eba4abfd1a33238ba9cfab.jpg', 'Brasil', 'vis', '1157dd9de9271d7af5dc62ed32c77166', 'renegado@iquattro.com.br'),
(25, 'Chef', '1969-12-31 21:00:00', '2020-07-17 23:05:12', 'Uberaba', NULL, '4f901f2efe1e9dc7d98e831fa9aefd06.jpg', 'Brasil', 'adm', '1e5f06b0b199468ba1582bd68b9abd3a', 'thechef@iquattro.com.br'),
(26, 'TheGoodBoy', '1990-11-11 00:00:00', '2020-11-25 23:06:53', 'Barueri', NULL, '727181f4723870001c1b77008566b89a.jpg', 'Brasil', 'vis', 'f9688ab038b82a0dcd2281309124c8bf', 'tgboy@iquattro.com.br'),
(27, 'EmoSadBoy', '2001-11-03 00:00:00', '2020-11-30 23:08:31', 'Ipatinga', NULL, '24fcf4a3dd775ebd524ab587d958060d.jpg', 'Brasil', 'adm', '630b99c80690e4f00e8f80673635c8fa', 'sadboy@iquattro.com.br'),
(28, 'Kuranime', '1999-06-06 00:00:00', '2020-10-15 23:10:44', 'Volta Redonda', NULL, '0749c2d7d357a74eae2bac41bcf8dfac.jpeg', 'Brasil', 'vis', '56e3311122d6964ecbd2269ebb360301', 'kuranima@iquattro.com.br'),
(29, 'FakeDoMonark', '2001-08-19 00:00:00', '2020-09-10 23:12:59', 'Indaiatuba', NULL, 'bf9c56b46821b381c8cae5ad122872c0.jpg', 'Brasil', 'vis', '2d813cabe008d76e34e84a8fc067084f', 'monarquista@iquattro.com.br'),
(30, 'Opcam', '1969-12-31 21:00:00', '2020-09-27 23:14:35', 'Araraquara', NULL, '77cbc2c29da9cc0521e34917c4e906fe.jpeg', 'Brasil', 'adm', '495b1a483fc1c86347e496423271751c', 'opgg@iquattro.com.br'),
(31, 'Master', '1992-07-24 00:00:00', '2020-11-20 23:16:27', 'Itapevi', NULL, 'a242634d12e55e9e9028b480abe378dd.jpg', 'Brasil', 'vis', '320487fea17eda12fb6f9b334cd11fda', 'themestre@iquattro.com.br'),
(32, 'JasonTerceiro', '2000-01-29 00:00:00', '2020-10-20 23:18:29', 'Dourados', NULL, '6828776e110be447e56db030a820612f.png', 'Brasil', 'vis', 'ffb1c6c01a4edeb3d89dbff6712a608a', 'jasonterc@iquattro.com.br'),
(33, 'Nekoma', '2001-08-21 00:00:00', '2020-09-20 23:20:41', 'Juazeiro', NULL, 'abfa50b1079d4592c92a2cc676c84c9b.png', 'Brasil', 'adm', '69807e017db41b85b8994a29b3d1060a', 'holycat@iquattro.com.br'),
(34, 'JuanMotres', '2000-01-29 00:00:00', '2020-08-20 23:21:52', 'Santa Luiza', NULL, '43518317dae30f6d5ab5ad28f66c2e9c.jpeg', 'Brasil', 'vis', 'decf84241a09d6354d129e91178bbe88', 'juanzinmot@iquattro.com.br'),
(35, 'KageEnma', '1982-10-27 00:00:00', '2020-07-20 23:23:16', 'Alvorada', NULL, 'd5ef05a63df86821e1d2f55283454837.jpg', 'Brasil', 'vis', 'a18aacc742aa15d83612d4527d8bf1a1', 'kageyama@iquattro.com.br'),
(36, 'Matta', '1980-12-12 00:00:00', '2020-10-23 23:24:28', 'Sobral', NULL, 'a613ee44b791c57881420fb42bf2d8bd.jpg', 'Brasil', 'vis', '34330c97a8927f2e3a185f5d45ab5305', 'matinha@iquattro.com.br'),
(37, 'HypherionStyle', '1969-12-31 21:00:00', '2020-09-19 23:26:02', 'Itabuna', NULL, '415e2cc048e88d8a405ee1263b60f254.jpg', 'Brasil', 'adm', 'e8ab22ff7d9106ea1cb23d30230c3bdf', 'hyperstyle@iquattro.com.br');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
