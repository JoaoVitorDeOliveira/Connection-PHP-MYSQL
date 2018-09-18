-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 18/09/2018 às 22:33
-- Versão do servidor: 10.1.30-MariaDB
-- Versão do PHP: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `aplicacao_web_UNA`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `TB_CADASTRO_ALUNOS`
--

CREATE TABLE `TB_CADASTRO_ALUNOS` (
  `RA` bigint(20) NOT NULL,
  `NOME` varchar(255) NOT NULL,
  `SENHA` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `TB_CADASTRO_ALUNOS`
--

INSERT INTO `TB_CADASTRO_ALUNOS` (`RA`, `NOME`, `SENHA`) VALUES
(3476584832, 'PEDRO', '123'),
(3476584834, 'MARIA', '987');

-- --------------------------------------------------------

--
-- Estrutura para tabela `TB_DISCIPLINAS`
--

CREATE TABLE `TB_DISCIPLINAS` (
  `ID` int(10) NOT NULL,
  `Disciplinas` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `TB_CADASTRO_ALUNOS`
--
ALTER TABLE `TB_CADASTRO_ALUNOS`
  ADD PRIMARY KEY (`RA`);

--
-- Índices de tabela `TB_DISCIPLINAS`
--
ALTER TABLE `TB_DISCIPLINAS`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `TB_DISCIPLINAS`
--
ALTER TABLE `TB_DISCIPLINAS`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
