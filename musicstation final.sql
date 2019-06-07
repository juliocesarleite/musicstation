-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 07-Jun-2019 às 22:51
-- Versão do servidor: 10.1.38-MariaDB
-- versão do PHP: 7.3.4

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
-- Estrutura da tabela `tbadmin`
--

CREATE TABLE `tbadmin` (
  `idadmin` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `senha` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tbadmin`
--

INSERT INTO `tbadmin` (`idadmin`, `nome`, `email`, `senha`) VALUES
(1, 'Julio', 'administrador@admin.com', 'admin');

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
('Aladdin Sane', '2017-11-23 18:09:36', 12, '19000.jpg'),
('Discovery', '2017-11-23 18:34:02', 13, '19429.jpg'),
('Random Access Memories', '2017-11-23 18:49:24', 14, '23919.jpg'),
('The Hit List', '2017-11-23 19:02:15', 15, '24971.jpg'),
('Bad Reputation', '2017-11-23 19:09:19', 16, '12377.JPG'),
('Juice', '2017-11-23 19:28:54', 17, '20964.jpg'),
('Shes So Unusual', '2017-11-23 19:29:14', 18, '1613.jpg'),
('The Beginning', '2017-11-23 19:43:37', 19, '13004.jpg');

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
(11, 'David Bowie', '2017-11-23 18:07:18', '3079.jpg'),
(12, 'Daft Punk', '2017-11-23 18:34:19', '18106.jpg'),
(13, 'Joan Jett', '2017-11-23 19:01:56', '15194.jpg'),
(14, 'Cyndi Lauper', '2017-11-23 19:26:01', '14198.jpg'),
(15, 'Juice Newton', '2017-11-23 19:28:32', '16759.jpg'),
(16, 'The Black Eyed Peas', '2017-11-23 19:43:57', '30997.jpg');

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
(7, 'David Bowie', '2017-11-23 18:08:37'),
(8, 'Mick Jagger & Keith Richards', '2017-11-23 18:09:11'),
(9, ' Thomas Bangalter & Guy-Manuel de Homem-Chris', '2017-11-23 18:37:46'),
(10, '	Angus Young, Malcolm Young, Bon Scott', '2017-11-23 19:04:41'),
(11, 'Boudleaux Bryant', '2017-11-23 19:05:11'),
(12, 'Joan Jett', '2017-11-23 19:07:58'),
(13, 'Robert Hazard', '2017-11-23 19:29:55'),
(14, 'Cyndi Lauper', '2017-11-23 19:30:04'),
(15, 'Chip Taylor', '2017-11-23 19:33:51'),
(16, 'wiil.i.am', '2017-11-23 19:43:13');

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
(6, '2017-11-23 18:11:22', 'RCA'),
(7, '2017-11-23 18:38:06', 'Virgin'),
(8, '2017-11-23 18:50:01', 'Columbia Records'),
(9, '2017-11-23 19:04:15', 'Sony'),
(10, '2017-11-23 19:08:06', 'Boardwalk'),
(11, '2017-11-23 19:30:56', 'Portrait'),
(12, '2017-11-23 19:34:42', 'Bell Records'),
(13, '2017-11-23 19:35:12', 'Capitol Records'),
(14, '2017-11-23 19:44:13', 'Interscope');

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
(7, 4, 'Watch That Man', 1973, 1, '2017-11-23 18:12:35', 6, 13, 12, '28980.mp3', 11, 7, 'rca'),
(8, 5, 'Aladdin Sane (1913-1938-197?)', 1973, 2, '2017-11-23 18:13:32', 6, 13, 12, '15197.mp3', 11, 7, 'RCA'),
(9, 4, 'Drive-In Saturday', 1973, 3, '2017-11-23 18:14:19', 6, 13, 12, '19666.mp3', 11, 7, 'RCA'),
(10, 4, 'Panic in Detroit', 1973, 4, '2017-11-23 18:19:01', 6, 13, 12, '26385.mp3', 11, 7, 'RCA'),
(11, 2, 'Cracked Actor', 1973, 5, '2017-11-23 18:19:28', 6, 13, 12, '16502.mp3', 11, 7, 'RCA'),
(12, 5, 'Time', 1973, 6, '2017-11-23 18:20:09', 6, 13, 12, '5751.mp3', 11, 7, 'RCA'),
(13, 3, 'The Prettiest Star', 1973, 7, '2017-11-23 18:21:57', 6, 13, 12, '740.mp3', 11, 7, 'RCA'),
(14, 3, 'Lets Spend the Night Together', 1973, 8, '2017-11-23 18:23:02', 6, 13, 12, '25421.mp3', 11, 8, 'RCA'),
(15, 4, 'The Jean Genie', 1973, 9, '2017-11-23 18:23:30', 6, 13, 12, '28162.mp3', 11, 7, 'RCA'),
(16, 3, 'Lady Grinning Soul', 1973, 10, '2017-11-23 18:24:03', 6, 13, 12, '8979.mp3', 11, 7, 'RCA'),
(17, 5, 'One More Time', 2001, 1, '2017-11-23 18:39:14', 7, 16, 13, '31083.mp3', 12, 9, 'Virgin'),
(18, 3, 'Aerodynamic', 2001, 2, '2017-11-23 18:42:37', 7, 16, 13, '26960.mp3', 12, 9, 'Virgin'),
(19, 4, 'Digital Love', 2001, 3, '2017-11-23 18:43:24', 7, 16, 13, '26441.mp3', 12, 9, 'Virgin'),
(20, 3, 'Harder, Better, Faster, Stronger', 2001, 4, '2017-11-23 18:44:18', 7, 16, 13, '26702.mp3', 12, 9, 'Virgin'),
(21, 4, 'Give Life Back to Music', 2013, 1, '2017-11-23 18:51:05', 8, 16, 14, '19068.mp3', 12, 9, 'Daft Life'),
(22, 5, 'The Game of Love ', 201, 2, '2017-11-23 18:52:01', 8, 16, 14, '12037.mp3', 12, 9, 'Daft Life'),
(23, 3, 'Dirty Deeds', 1990, 1, '2017-11-23 19:05:57', 9, 13, 15, '24995.mp3', 13, 10, 'Blackheart Records'),
(24, 3, 'Love Hurts', 1990, 2, '2017-11-23 19:06:33', 9, 13, 15, '27808.mp3', 13, 11, 'Blackheart Records'),
(25, 2, 'Bad Reputation', 1980, 1, '2017-11-23 19:10:03', 10, 13, 16, '25630.mp3', 13, 12, 'Blackheart Records'),
(26, 3, 'Jezebel', 1980, 10, '2017-11-23 19:15:25', 10, 13, 16, '23057.mp3', 13, 12, 'Blackheart Records'),
(27, 3, 'Girls Just Want to Have Fun', 1983, 2, '2017-11-23 19:31:42', 11, 14, 18, '21762.mp3', 14, 13, 'Record Plant'),
(28, 4, 'Time After Time', 1983, 4, '2017-11-23 19:32:32', 11, 14, 18, '32275.mp3', 14, 14, 'Record Plant'),
(29, 4, 'Angel of The Morning', 1981, 1, '2017-11-23 19:36:10', 13, 17, 17, '29951.mp3', 15, 15, 'Capitol Records'),
(30, 4, 'Someday', 2010, 5, '2017-11-23 19:45:32', 14, 18, 19, '9258.mp3', 16, 16, 'Interscope');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbuser`
--

CREATE TABLE `tbuser` (
  `Nome` varchar(45) NOT NULL,
  `EMail` varchar(45) NOT NULL,
  `Senha` varchar(45) NOT NULL,
  `idGer` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tbuser`
--

INSERT INTO `tbuser` (`Nome`, `EMail`, `Senha`, `idGer`) VALUES
('Gabriel', 'adm@adm.com', 'adm', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbadmin`
--
ALTER TABLE `tbadmin`
  ADD PRIMARY KEY (`idadmin`),
  ADD UNIQUE KEY `email` (`email`);

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
-- Indexes for table `tbuser`
--
ALTER TABLE `tbuser`
  ADD PRIMARY KEY (`idGer`),
  ADD UNIQUE KEY `E-Mail_UNIQUE` (`EMail`),
  ADD UNIQUE KEY `idForn_UNIQUE` (`idGer`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbadmin`
--
ALTER TABLE `tbadmin`
  MODIFY `idadmin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
-- AUTO_INCREMENT for table `tbmusica`
--
ALTER TABLE `tbmusica`
  MODIFY `idMusica` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tbuser`
--
ALTER TABLE `tbuser`
  MODIFY `idGer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
