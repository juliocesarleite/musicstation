-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 05-Abr-2019 às 01:47
-- Versão do servidor: 10.1.36-MariaDB
-- versão do PHP: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `musicstation`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbalbum`
--

CREATE TABLE `tbalbum` (
  `NomeAlbum` varchar(70) NOT NULL DEFAULT '',
  `DataCadAlbum` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `idAlbum` int(11) NOT NULL,
  `nomeCapa` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tbalbum`
--

INSERT INTO `tbalbum` (`NomeAlbum`, `DataCadAlbum`, `idAlbum`, `nomeCapa`) VALUES
('Aladdin Sane', '2019-04-03 19:09:36', 12, '19000.jpg'),
('Discovery', '2019-04-03 19:34:02', 13, '19429.jpg'),
('Random Access Memories', '2019-04-03 19:49:24', 14, '23919.jpg'),
('The Hit List', '2019-04-03 20:02:15', 15, '24971.jpg'),
('Bad Reputation', '2019-04-03 20:09:19', 16, '12377.JPG'),
('Juice', '2019-04-03 20:28:54', 17, '20964.jpg'),
('Shes So Unusual', '2019-04-03 20:29:14', 18, '1613.jpg'),
('The Beginning', '2019-04-03 20:43:37', 19, '13004.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbcantor`
--

CREATE TABLE `tbcantor` (
  `idCantor` int(11) NOT NULL,
  `NomeCantor` varchar(45) NOT NULL,
  `DataCadCantor` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `NomeFotoCantor` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tbcantor`
--

INSERT INTO `tbcantor` (`idCantor`, `NomeCantor`, `DataCadCantor`, `NomeFotoCantor`) VALUES
(11, 'David Bowie', '2019-04-03 19:07:18', '3079.jpg'),
(12, 'Daft Punk', '2019-04-03 19:34:19', '18106.jpg'),
(13, 'Joan Jett', '2019-04-03 20:01:56', '15194.jpg'),
(14, 'Cyndi Lauper', '2019-04-03 20:26:01', '14198.jpg'),
(15, 'Juice Newton', '2019-04-03 20:28:32', '16759.jpg'),
(16, 'The Black Eyed Peas', '2019-04-03 20:43:57', '30997.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbcliente`
--

CREATE TABLE `tbcliente` (
  `CPF` varchar(10) NOT NULL DEFAULT '',
  `Nome` varchar(45) NOT NULL,
  `Telefone` varchar(15) DEFAULT NULL,
  `EMail` varchar(45) NOT NULL,
  `Senha` varchar(45) NOT NULL,
  `UF` varchar(2) NOT NULL,
  `Cidade` varchar(45) NOT NULL,
  `CEP` varchar(9) NOT NULL,
  `Rua` varchar(45) NOT NULL,
  `Num` varchar(7) NOT NULL,
  `Complemento` varchar(45) DEFAULT NULL,
  `DataCadCliente` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `DataNasc` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tbcliente`
--

INSERT INTO `tbcliente` (`CPF`, `Nome`, `Telefone`, `EMail`, `Senha`, `UF`, `Cidade`, `CEP`, `Rua`, `Num`, `Complemento`, `DataCadCliente`, `DataNasc`) VALUES
('11111111', 'Gabriel Vinicius', '111111111111', 'gabriel.vga@r7.com', '123', 'SP', 'Hortolandia', '111111111', 'asasd', '111', '', '2019-04-03 16:40:12', '2017-11-08'),
('1111111111', 'Samy', '3232133213', 'samy634@gmail.com', 'abc', 'SP', 'Campinas', '12435876', 'xxx', '12', 'x', '2019-04-03 15:56:08', '2017-11-07'),
('123.213.12', 'Julio', '(12) 2121-12221', 'juliophp@gmail.com', 'abc', 'SP', 'Sumare', '13174-526', 'Rua Presidente Prudente de Moraes', '112', 'XXX', '2019-04-03 06:19:58', '11/08/2017'),
('1234567891', 'Joao Ruy', '32321312232', 'ruy.y&y@bol.com.br', '123', 'SP', 'Sao Paulo', '233213213', '3', '112', 'dsadas', '2019-04-04 01:07:39', '2017-11-22'),
('321.321.33', 'Jose', '(32) 3213-23333', 'jose@g.com', '123', 'SP', 'Sao Paulo', '13174-526', 'Rua Presidente Prudente de Moraes', '11', 'N/D', '2019-04-03 23:58:32', '11/08/2017'),
('342.132.21', 'Blurryface', '(00) 1232-13132', 'j@j.com', 'qwerty', 'SP', 'Shadow Town', '13174-526', 'Rua Presidente Prudente de Moraes', '999', 'N/D', '2019-04-03 18:17:26', '11/21/2017');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbcompositor`
--

CREATE TABLE `tbcompositor` (
  `idCompositor` int(11) NOT NULL,
  `NomeCompositor` varchar(45) NOT NULL,
  `DataCadCompositor` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tbcompositor`
--

INSERT INTO `tbcompositor` (`idCompositor`, `NomeCompositor`, `DataCadCompositor`) VALUES
(7, 'David Bowie', '2019-04-03 19:08:37'),
(8, 'Mick Jagger & Keith Richards', '2019-04-03 19:09:11'),
(9, ' Thomas Bangalter & Guy-Manuel de Homem-Chris', '2019-04-03 19:37:46'),
(10, '	Angus Young, Malcolm Young, Bon Scott', '2019-04-03 20:04:41'),
(11, 'Boudleaux Bryant', '2019-04-03 20:05:11'),
(12, 'Joan Jett', '2019-04-03 20:07:58'),
(13, 'Robert Hazard', '2019-04-03 20:29:55'),
(14, 'Cyndi Lauper', '2019-04-03 20:30:04'),
(15, 'Chip Taylor', '2019-04-03 20:33:51'),
(16, 'wiil.i.am', '2019-04-03 20:43:13');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbfornecedor`
--

CREATE TABLE `tbfornecedor` (
  `idFornecedor` int(11) NOT NULL,
  `DataCadGer` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `NomeFornecedor` varchar(45) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tbfornecedor`
--

INSERT INTO `tbfornecedor` (`idFornecedor`, `DataCadGer`, `NomeFornecedor`) VALUES
(6, '2019-04-03 19:11:22', 'RCA'),
(7, '2019-04-03 19:38:06', 'Virgin'),
(8, '2019-04-03 19:50:01', 'Columbia Records'),
(9, '2019-04-03 20:04:15', 'Sony'),
(10, '2019-04-03 20:08:06', 'Boardwalk'),
(11, '2019-04-03 20:30:56', 'Portrait'),
(12, '2019-04-03 20:34:42', 'Bell Records'),
(13, '2019-04-03 20:35:12', 'Capitol Records'),
(14, '2019-04-03 20:44:13', 'Interscope');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbgenero`
--

CREATE TABLE `tbgenero` (
  `idGenero` int(11) NOT NULL,
  `NomeGenero` varchar(45) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tbgenero`
--

INSERT INTO `tbgenero` (`idGenero`, `NomeGenero`) VALUES
(13, 'Rock'),
(14, 'Pop'),
(16, 'EletrÃ´nica'),
(17, 'Country'),
(18, 'Hip-Hop');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbgerenciador`
--

CREATE TABLE `tbgerenciador` (
  `Nome` varchar(45) NOT NULL,
  `EMail` varchar(45) NOT NULL,
  `Senha` varchar(45) NOT NULL,
  `idGer` int(11) NOT NULL,
  `DataCadGer` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tbgerenciador`
--

INSERT INTO `tbgerenciador` (`Nome`, `EMail`, `Senha`, `idGer`, `DataCadGer`) VALUES
('Gabriel', 'adm@adm.com', 'adm', 2, '2019-04-03 18:08:41');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbmusica`
--

CREATE TABLE `tbmusica` (
  `idMusica` int(11) NOT NULL,
  `Duracao` tinyint(8) NOT NULL,
  `NomeMusica` varchar(45) NOT NULL,
  `Lancamento` smallint(4) DEFAULT NULL,
  `Faixa` tinyint(2) DEFAULT NULL,
  `DataCadMusica` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `idmForn` int(11) NOT NULL,
  `idmGenero` int(11) NOT NULL,
  `idmAlbum` int(11) NOT NULL,
  `NomeAudio` varchar(45) NOT NULL,
  `idmCantor` int(11) NOT NULL,
  `idmCompositor` int(11) NOT NULL,
  `Gravadora` varchar(45) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tbmusica`
--

INSERT INTO `tbmusica` (`idMusica`, `Duracao`, `NomeMusica`, `Lancamento`, `Faixa`, `DataCadMusica`, `idmForn`, `idmGenero`, `idmAlbum`, `NomeAudio`, `idmCantor`, `idmCompositor`, `Gravadora`) VALUES
(7, 4, 'Watch That Man', 1973, 1, '2019-04-03 19:12:35', 6, 13, 12, '28980.mp3', 11, 7, 'rca'),
(8, 5, 'Aladdin Sane (1913-1938-197?)', 1973, 2, '2019-04-03 19:13:32', 6, 13, 12, '15197.mp3', 11, 7, 'RCA'),
(9, 4, 'Drive-In Saturday', 1973, 3, '2019-04-03 19:14:19', 6, 13, 12, '19666.mp3', 11, 7, 'RCA'),
(10, 4, 'Panic in Detroit', 1973, 4, '2019-04-03 19:19:01', 6, 13, 12, '26385.mp3', 11, 7, 'RCA'),
(11, 2, 'Cracked Actor', 1973, 5, '2019-04-03 19:19:28', 6, 13, 12, '16502.mp3', 11, 7, 'RCA'),
(12, 5, 'Time', 1973, 6, '2019-04-03 19:20:09', 6, 13, 12, '5751.mp3', 11, 7, 'RCA'),
(13, 3, 'The Prettiest Star', 1973, 7, '2019-04-03 19:21:57', 6, 13, 12, '740.mp3', 11, 7, 'RCA'),
(14, 3, 'Lets Spend the Night Together', 1973, 8, '2019-04-03 19:23:02', 6, 13, 12, '25421.mp3', 11, 8, 'RCA'),
(15, 4, 'The Jean Genie', 1973, 9, '2019-04-03 19:23:30', 6, 13, 12, '28162.mp3', 11, 7, 'RCA'),
(16, 3, 'Lady Grinning Soul', 1973, 10, '2019-04-03 19:24:03', 6, 13, 12, '8979.mp3', 11, 7, 'RCA'),
(17, 5, 'One More Time', 2001, 1, '2019-04-03 19:39:14', 7, 16, 13, '31083.mp3', 12, 9, 'Virgin'),
(18, 3, 'Aerodynamic', 2001, 2, '2019-04-03 19:42:37', 7, 16, 13, '26960.mp3', 12, 9, 'Virgin'),
(19, 4, 'Digital Love', 2001, 3, '2019-04-03 19:43:24', 7, 16, 13, '26441.mp3', 12, 9, 'Virgin'),
(20, 3, 'Harder, Better, Faster, Stronger', 2001, 4, '2019-04-03 19:44:18', 7, 16, 13, '26702.mp3', 12, 9, 'Virgin'),
(21, 4, 'Give Life Back to Music', 2013, 1, '2019-04-03 03:00:00', 8, 16, 14, '19068.mp3', 12, 9, 'Daft Life'),
(22, 5, 'The Game of Love ', 2013, 2, '2019-04-03 19:52:01', 8, 16, 14, '12037.mp3', 12, 9, 'Daft Life'),
(23, 3, 'Dirty Deeds', 1990, 1, '2019-04-03 20:05:57', 9, 13, 15, '24995.mp3', 13, 10, 'Blackheart Records'),
(24, 3, 'Love Hurts', 1990, 2, '2019-04-03 20:06:33', 9, 13, 15, '27808.mp3', 13, 11, 'Blackheart Records'),
(25, 2, 'Bad Reputation', 1980, 1, '2019-04-03 20:10:03', 10, 13, 16, '25630.mp3', 13, 12, 'Blackheart Records'),
(26, 3, 'Jezebel', 1980, 10, '2019-04-03 20:15:25', 10, 13, 16, '23057.mp3', 13, 12, 'Blackheart Records'),
(27, 3, 'Girls Just Want to Have Fun', 1983, 2, '2019-04-03 20:31:42', 11, 14, 18, '21762.mp3', 14, 13, 'Record Plant'),
(28, 4, 'Time After Time', 1983, 4, '2019-04-03 20:32:32', 11, 14, 18, '32275.mp3', 14, 14, 'Record Plant'),
(29, 4, 'Angel of The Morning', 1981, 1, '2019-04-03 20:36:10', 13, 17, 17, '29951.mp3', 15, 15, 'Capitol Records'),
(30, 4, 'Someday', 2010, 5, '2019-04-03 20:45:32', 14, 18, 19, '9258.mp3', 16, 16, 'Interscope');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbalbum`
--
ALTER TABLE `tbalbum`
  ADD PRIMARY KEY (`idAlbum`);

--
-- Indexes for table `tbcantor`
--
ALTER TABLE `tbcantor`
  ADD PRIMARY KEY (`idCantor`),
  ADD UNIQUE KEY `idCantor_UNIQUE` (`idCantor`);

--
-- Indexes for table `tbcliente`
--
ALTER TABLE `tbcliente`
  ADD PRIMARY KEY (`CPF`),
  ADD UNIQUE KEY `CPF_UNIQUE` (`CPF`),
  ADD UNIQUE KEY `E-Mail_UNIQUE` (`EMail`);

--
-- Indexes for table `tbcompositor`
--
ALTER TABLE `tbcompositor`
  ADD PRIMARY KEY (`idCompositor`),
  ADD UNIQUE KEY `idCompositor_UNIQUE` (`idCompositor`);

--
-- Indexes for table `tbfornecedor`
--
ALTER TABLE `tbfornecedor`
  ADD PRIMARY KEY (`idFornecedor`),
  ADD UNIQUE KEY `idFornecedor_UNIQUE` (`idFornecedor`) USING BTREE,
  ADD UNIQUE KEY `NomeFornecedor_UNIQUE` (`NomeFornecedor`) USING HASH;

--
-- Indexes for table `tbgenero`
--
ALTER TABLE `tbgenero`
  ADD PRIMARY KEY (`idGenero`);

--
-- Indexes for table `tbgerenciador`
--
ALTER TABLE `tbgerenciador`
  ADD PRIMARY KEY (`idGer`),
  ADD UNIQUE KEY `E-Mail_UNIQUE` (`EMail`),
  ADD UNIQUE KEY `idForn_UNIQUE` (`idGer`);

--
-- Indexes for table `tbmusica`
--
ALTER TABLE `tbmusica`
  ADD PRIMARY KEY (`idMusica`),
  ADD UNIQUE KEY `idMusica_UNIQUE` (`idMusica`),
  ADD KEY `fk_tbMusica_tbFornecedor1_idx` (`idmForn`),
  ADD KEY `fk_tbMusica_tbGênero1_idx` (`idmGenero`),
  ADD KEY `fk_tbMusica_tbAlbum1_idx` (`idmAlbum`),
  ADD KEY `fk_tbmusica_tbcantor1_idx` (`idmCantor`),
  ADD KEY `fk_tbmusica_tbcompositor1_idx` (`idmCompositor`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbalbum`
--
ALTER TABLE `tbalbum`
  MODIFY `idAlbum` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbcantor`
--
ALTER TABLE `tbcantor`
  MODIFY `idCantor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbcompositor`
--
ALTER TABLE `tbcompositor`
  MODIFY `idCompositor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbfornecedor`
--
ALTER TABLE `tbfornecedor`
  MODIFY `idFornecedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbgenero`
--
ALTER TABLE `tbgenero`
  MODIFY `idGenero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbgerenciador`
--
ALTER TABLE `tbgerenciador`
  MODIFY `idGer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbmusica`
--
ALTER TABLE `tbmusica`
  MODIFY `idMusica` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `tbmusica`
--
ALTER TABLE `tbmusica`
  ADD CONSTRAINT `fk_tbMusica_tbAlbum1` FOREIGN KEY (`idmAlbum`) REFERENCES `tbalbum` (`idAlbum`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tbMusica_tbFornecedor1` FOREIGN KEY (`idmForn`) REFERENCES `tbfornecedor` (`idFornecedor`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tbMusica_tbGênero1` FOREIGN KEY (`idmGenero`) REFERENCES `tbgenero` (`idGenero`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tbmusica_tbcantor1` FOREIGN KEY (`idmCantor`) REFERENCES `tbcantor` (`idCantor`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tbmusica_tbcompositor1` FOREIGN KEY (`idmCompositor`) REFERENCES `tbcompositor` (`idCompositor`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
