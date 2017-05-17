-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Tempo de gera��o: 17/05/2017 �s 14:50
-- Versão do servidor: 5.6.32-78.1
-- Versão do PHP: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Estrutura para tabela `categorias`
--

CREATE TABLE IF NOT EXISTS `categorias` (
  `id` int(10) unsigned NOT NULL,
  `categoria_id` int(10) NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '0',
  `destaque` enum('0','1') NOT NULL DEFAULT '0',
  `ordenacao` decimal(10,0) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `descricao` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `categorias`
--

INSERT INTO `categorias` (`id`, `categoria_id`, `status`, `destaque`, `ordenacao`, `titulo`, `descricao`) VALUES
(11, 23, '1', '1', '0', 'Lingerie', 'A categoria Fashion faz parte do Conjunto Lingerie e são procuradas como roupas de moda'),
(12, 23, '1', '1', '0', 'Blusas', 'blusas femeninas'),
(13, 23, '1', '1', '0', 'Body', 'body feminino'),
(14, 23, '1', '1', '0', 'Top', 'Top feminino'),
(15, 23, '1', '1', '0', 'Bolero', 'Bolero feminimo'),
(16, 23, '1', '1', '0', 'Calças', 'Calças femininas'),
(17, 23, '1', '0', '0', 'Shorts', 'Shorts femininos'),
(18, 23, '1', '1', '0', 'Vestidos', 'Vestidos femeninos'),
(23, 23, '1', '0', '21', 'Moda Feminina', 'teste de nova categoria'),
(24, 24, '1', '0', '0', 'Roupas', 'camiseta de futebol'),
(25, 24, '1', '1', '1', 'Camisetas Times Nacionais', 'camisetas de times nacionais'),
(26, 24, '1', '0', '1', 'Camisetas Times Internacionais', 'camisetas de times internacionais');

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos`
--

CREATE TABLE IF NOT EXISTS `produtos` (
  `id` int(10) unsigned NOT NULL,
  `codigo` varchar(45) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `descricao` text NOT NULL,
  `preco` decimal(10,2) NOT NULL,
  `largura_caixa_mm` int(10) unsigned NOT NULL,
  `altura_caixa_mm` int(10) unsigned NOT NULL,
  `comprimento_caixa_mm` int(10) unsigned NOT NULL,
  `peso_gramas` int(10) unsigned NOT NULL,
  `data_adicionado` datetime NOT NULL DEFAULT '2016-02-11 00:00:00',
  `ativo` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `produtos`
--

INSERT INTO `produtos` (`id`, `codigo`, `titulo`, `descricao`, `preco`, `largura_caixa_mm`, `altura_caixa_mm`, `comprimento_caixa_mm`, `peso_gramas`, `data_adicionado`, `ativo`) VALUES
(109, '333r', 'Lingerie Amarela', 'Lingerie Amarela', '10.00', 100, 100, 100, 100, '2016-02-11 00:00:00', 1),
(110, 'eee3', 'Body Farm Preto Estonado Calango', 'Body Farm Preto Estonado Calango', '129.00', 100, 100, 100, 100, '2016-02-11 00:00:00', 1),
(111, 'ee33', 'Casaco Farm Marrom Amarração Chilena', 'Casaco Farm Marrom Amarração Chilena', '10.00', 100, 100, 100, 100, '2016-02-11 00:00:00', 1),
(112, 'ee44r', 'Body Stretch Manga Longa Preto', 'Body Stretch Manga Longa Preto', '39.90', 100, 100, 100, 100, '2016-02-11 00:00:00', 1),
(113, 'dsdsd3', 'Blusa Manga Longa Detalhe Amarração Off-White', 'Blusa, confeccionada em meia malha de algodão. Modelo de mangas longas, decote redondo com tira para transpassar e amarrar. Cor: Off-White.', '39.99', 100, 100, 100, 100, '2016-02-11 00:00:00', 1),
(114, 'dd33', 'Blusa Manga Longa Vazada Branca', 'Blusa Manga Longa Vazada, confeccionada em helanca com recortes em malha arrastão nas mangas. Cor: Branca.', '29.99', 100, 100, 100, 100, '2016-02-11 00:00:00', 1),
(115, 'ddse3', 'Blusa Manga Longa Cinza Estampada', 'Blusa confeccionada em malha de poliviscose. Modelo mullet, com manga longa e com estampa frontal. Cor: Cinza.', '29.99', 100, 100, 100, 100, '2016-02-11 00:00:00', 1),
(116, 'edee3', 'Blusa Renda nos Ombros Cinza', 'Blusa Renda nos Ombros, confeccionada em malha botonê. Modelo com renda nos ombros. Cor: Cinza.', '24.99', 100, 100, 100, 100, '2016-02-11 00:00:00', 1),
(117, '322', 'Blusa Cropped Cobertura Preto', 'Blusa Cropped Cobertura Preto', '19.99', 100, 100, 100, 100, '2016-02-11 00:00:00', 1),
(118, 'jj77', 'Top Cropped Algodão Rosa Up Close', 'Top cropped Up Close confortável e moderno. Os tops com tiras continuam em alta para esse verão com certeza você irá arrasar. Composição: 94% Algodão e 6% Elastano', '17.90', 100, 100, 100, 100, '2016-02-11 00:00:00', 1),
(119, 'fghg43', 'Top com Alças Transpassadas no Decote Preto', 'Top confeccionado em malha de poliéster. Modelo com alças transpassadas no decote e recortes frontais no busto', '24.99', 100, 100, 100, 100, '2016-02-11 00:00:00', 1),
(120, 'tt5t6', 'Top Branco com Tiras no Decote', 'Top confeccionado em malha de poliéster. Modelo com tiras no decote e recortes frontais no busto.', '24.99', 100, 100, 100, 100, '2016-02-11 00:00:00', 1),
(121, 'yy55', 'Top Cropped Ponto Roma Branco Up Close', 'Top cropped Up Close. Desenvolvido em ponto roma, por ser mais grosso não é transparente, mesmo assim, possui elasticidade e conforto para a hora de vestir. Composição: 50% Viscose, 45% Poliéster e 5% Elastano', '19.90', 100, 100, 100, 100, '2016-02-11 00:00:00', 1),
(122, '7765y', 'Blusa de Alça Estampada', 'Blusa confeccionada em helanca. Modelo com alças e decote frontal redondo', '19.99', 100, 100, 100, 100, '2016-02-11 00:00:00', 1),
(123, 'rrr33', 'Blusa com Aplique na Manga Branca', 'Blusa confeccionada em malha de poliviscose. Leve transparência. Modelo com decote redondo, mangas curtas e detalhe de passamanaria pompom nas mangas.', '29.99', 100, 100, 100, 100, '2016-02-11 00:00:00', 1),
(124, 'ukjf333', 'Blusa de Lã Bege com Desenho Coruja Manga Longa', 'Blusa confeccionada em lã acrilica. Modelo de mangas longas, decote canoa e com desenho frontal', '69.99', 100, 100, 100, 100, '2016-02-11 00:00:00', 1),
(125, 'klj7', 'Regata Estampa Geométrica Laranja', 'Regata confeccionada em ribana de algodão. Modelo sem mangas e com estampa frontal. Cor: Laranja. Tamanhos: P, M, G, GG', '9.99', 100, 100, 100, 100, '2016-02-11 00:00:00', 1),
(126, 'rf9987r_RRR_', 'Bata Bordô sem Mangas', 'Bata confeccionada em meia malha de algodão. Modelo sem mangas, com decote redondo e recorte abaixo do busto.', '10.00', 100, 100, 100, 100, '2016-02-11 00:00:00', 1),
(127, 'fdr434', 'Bolero com Recortes Estampado Moda Evangélic', 'Bolero confeccionado em malha de poliéster. Modelo sem fechamento frontal, com mangas curtas e detalhe de recorte nos ombros', '24.99', 100, 100, 100, 100, '2016-02-11 00:00:00', 1),
(128, '55ttt', 'Calça Preta em Helanca com Botões', 'Calça em helanca com detalhe de botões ne frente. Não precisa passar à ferro. Cor preta. Cintura alta', '29.99', 100, 100, 100, 100, '2016-02-11 00:00:00', 1),
(129, 'oo86', 'Legging Marinho com Cintura Alta', 'Legging confeccionada em helanca. Modelo com elástico no cós e recortes dianteiros e traseiros. Cintura: Alta.', '24.99', 100, 100, 100, 100, '2016-02-11 00:00:00', 1),
(130, 'ppooii87', 'Legging Cirré com Zíper Preto', 'Legging Cirré com Zíper Quintess, confeccinada em cirré. Modelo de cós largo, com elástico na cintura e detalhe de zíper funcional na barra. Cintura: Média. Cor: Preto', '89.99', 100, 100, 100, 100, '2016-02-11 00:00:00', 1),
(131, 'm6776', 'Short Risca de Giz com Botões Frontais', 'Short confeccionado em helanca. Modelo com cós, fechamento por botões no cós e bolso decorativo dianteiro.', '29.99', 100, 100, 100, 100, '2016-02-11 00:00:00', 1),
(132, 'cc564', 'Short Feminino com Elástico Floral', 'Short, confeccionado em helanca. Modelo com elástico embutido no cós e com detalhe de cordão. Cintura: Média. Cor: Floral', '19.99', 100, 100, 100, 100, '2016-02-11 00:00:00', 1),
(133, 'xxc34545', 'Short Étnico com Bolsos', 'Short confeccionado em helanca. Modelo com elástico no cós, cordão decorativo frontal e bolsos frontais funcionais. Cintura: Média.', '24.99', 100, 100, 100, 100, '2016-02-11 00:00:00', 1),
(134, 'nnmj657', 'Vestido Esportivo Preto e Branco', 'Vestido confeccionado em helanca, modelo camiseta alongada com estampa frontal de número. Comprimento: Curto.', '34.99', 100, 100, 100, 100, '2016-02-11 00:00:00', 1),
(135, 'nnm64', 'Vestido Acinturado Floral com Manga Copinho', 'Vestido confeccionado em helanca. Modelo com decote redondo, mangas copinho, recortes no busto e recorte na cintura. Comprimento: Curto', '19.99', 100, 100, 100, 100, '2016-02-11 00:00:00', 1),
(136, 'nn5', 'Vestido Preto com Recorte em Tule na Barra', 'Vestido confeccionado em helanca. Modelo com recortes em tule na barra, modelo com mangas curtas, decote redondo e recorte na cintura. Comprimento: Básico.', '29.99', 100, 100, 100, 100, '2016-02-11 00:00:00', 1),
(137, 'gg4_RRR', 'Vestido Mescla com Renda na Barra', 'Vestido confeccionado em moletom peluciado. Modelo com decote redondo, mangas longas e recortes na barra com renda.', '59.99', 100, 100, 100, 100, '2016-02-11 00:00:00', 1),
(138, 'bbg4', 'Vestido de Alça Estampa de Laço', 'Vestido confeccionado em helanca. Modelo de alças, costas nadador, elástico na cintura e detalhe de babado. Cor: Estampa de laço. Comprimento: Curto.', '34.99', 100, 100, 100, 100, '2016-02-11 00:00:00', 1),
(139, '66rr', 'Vestido Marinho com Prega no Decote', 'Vestido confeccionado em helanca. Modelo de mangas curtas com franzido, decote redondo, prega no decote, elástico na cintura e evasê. Comprimento: curto.', '19.99', 100, 100, 100, 100, '2016-02-11 00:00:00', 1),
(140, 'hhh67', 'Vestido Decote Canoa Preto e Estampado', 'Vestido confeccionado em helanca. Modelo sem mangas, com decote canoa e recorte abaixo do busto. Saia costas com recorte no centro.Comprimento: Clássico.', '29.99', 100, 100, 100, 100, '2016-02-11 00:00:00', 1),
(141, 'yyt565', 'Vestido Floral Dark com Saia Evasê', 'Vestido confeccionado em helanca. Modelo com alças, recortes frente e costas e saia levemente evasê. Comprimento: curto.', '34.99', 100, 100, 100, 100, '2016-02-11 00:00:00', 1),
(142, 'BDD4566', 'Vestido com Saia Evasê Bordô', 'Vestido confeccionado em helanca. Modelo sem mangas, com decote redondo, recorte forrado no busto, recortes na cintura e saia evasê. Comprimento Curto.', '34.99', 100, 100, 100, 100, '2016-02-11 00:00:00', 0),
(143, '55ff', 'Camisa Feminina Adidas Sport Recife', 'Camisa Feminina Adidas Sport Recife', '79.90', 553, 453, 103, 10, '2016-02-11 00:00:00', 1),
(144, '5ds5d', 'Camisa Under Armour São Paulo III', 'Camisa Under Armour São Paulo III', '199.99', 100, 100, 100, 100, '2016-02-11 00:00:00', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos_categorias`
--

CREATE TABLE IF NOT EXISTS `produtos_categorias` (
  `produto` int(10) unsigned NOT NULL,
  `categoria` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `produtos_categorias`
--

INSERT INTO `produtos_categorias` (`produto`, `categoria`) VALUES
(109, 11),
(126, 11),
(112, 12),
(113, 12),
(114, 12),
(115, 12),
(116, 12),
(117, 12),
(120, 12),
(121, 12),
(122, 12),
(123, 12),
(124, 12),
(125, 12),
(126, 12),
(110, 13),
(111, 13),
(126, 13),
(118, 14),
(119, 14),
(126, 15),
(127, 15),
(126, 16),
(128, 16),
(129, 16),
(130, 16),
(126, 17),
(131, 17),
(132, 17),
(133, 17),
(134, 18),
(135, 18),
(136, 18),
(137, 18),
(138, 18),
(139, 18),
(140, 18),
(141, 18),
(142, 18),
(143, 25),
(144, 25);

--
-- �ndices de tabelas apagadas
--

--
-- �ndices de tabela `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- �ndices de tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `codigo_unico` (`codigo`);

--
-- �ndices de tabela `produtos_categorias`
--
ALTER TABLE `produtos_categorias`
  ADD UNIQUE KEY `unique_produto_categoria` (`produto`,`categoria`), ADD KEY `FK_produtos_categorias_categoria` (`categoria`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=145;
--
-- Restri��es para dumps de tabelas
--

--
-- Restri��es para tabelas `produtos_categorias`
--
ALTER TABLE `produtos_categorias`
ADD CONSTRAINT `produtos_categorias_ibfk_1` FOREIGN KEY (`produto`) REFERENCES `produtos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `produtos_categorias_ibfk_2` FOREIGN KEY (`categoria`) REFERENCES `categorias` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;