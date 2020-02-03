-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 03-Fev-2020 às 03:49
-- Versão do servidor: 10.4.8-MariaDB
-- versão do PHP: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `StarkTower`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `RegistroPortaria`
--

CREATE TABLE `RegistroPortaria` (
  `RegistroPortariaId` int(10) UNSIGNED NOT NULL,
  `VisitanteId` int(11) NOT NULL,
  `SalaId` int(11) NOT NULL,
  `DataHoraEntrada` datetime DEFAULT NULL,
  `DataHoraSaida` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `RegistroPortaria`
--

INSERT INTO `RegistroPortaria` (`RegistroPortariaId`, `VisitanteId`, `SalaId`, `DataHoraEntrada`, `DataHoraSaida`) VALUES
(1, 1, 1, '2020-01-15 09:27:00', '2020-01-15 10:27:00'),
(3, 2, 2, '2020-01-16 07:00:00', NULL),
(5, 3, 2, '2020-01-17 09:09:00', NULL),
(6, 3, 2, '2020-01-14 09:09:00', NULL),
(7, 3, 2, '2020-01-14 09:09:00', NULL),
(8, 3, 2, '2020-01-14 09:09:00', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `Sala`
--

CREATE TABLE `Sala` (
  `SalaId` int(10) UNSIGNED NOT NULL,
  `Nome` varchar(255) NOT NULL,
  `QtdMaximaVisitantesAtivos` int(10) UNSIGNED NOT NULL DEFAULT 3
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `Sala`
--

INSERT INTO `Sala` (`SalaId`, `Nome`, `QtdMaximaVisitantesAtivos`) VALUES
(1, 'Sala de Reunião 4º andar', 3),
(2, 'Sala de Vídeos 2º andar', 5),
(3, 'Sala de Entrevistas', 8);

-- --------------------------------------------------------

--
-- Estrutura da tabela `Visitante`
--

CREATE TABLE `Visitante` (
  `VisitanteId` int(10) UNSIGNED NOT NULL,
  `Nome` varchar(255) NOT NULL,
  `Cpf` char(11) DEFAULT NULL,
  `DataNascimento` date DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `Visitante`
--

INSERT INTO `Visitante` (`VisitanteId`, `Nome`, `Cpf`, `DataNascimento`, `Email`) VALUES
(1, 'Diego Simas', '05637846385', '1987-11-18', 'diego_simas@hotmail.me'),
(2, 'Pedro dos Santos', '39317306049', '1989-06-21', 'pedro@globo.com'),
(3, 'Vilmar da Silva', '39317301234', '1989-10-18', 'vilmar@globo.com');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `RegistroPortaria`
--
ALTER TABLE `RegistroPortaria`
  ADD PRIMARY KEY (`RegistroPortariaId`);

--
-- Índices para tabela `Sala`
--
ALTER TABLE `Sala`
  ADD PRIMARY KEY (`SalaId`);

--
-- Índices para tabela `Visitante`
--
ALTER TABLE `Visitante`
  ADD PRIMARY KEY (`VisitanteId`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `RegistroPortaria`
--
ALTER TABLE `RegistroPortaria`
  MODIFY `RegistroPortariaId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `Sala`
--
ALTER TABLE `Sala`
  MODIFY `SalaId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `Visitante`
--
ALTER TABLE `Visitante`
  MODIFY `VisitanteId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
