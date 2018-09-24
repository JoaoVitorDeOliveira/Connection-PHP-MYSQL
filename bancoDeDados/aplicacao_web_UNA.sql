-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 24/09/2018 às 04:18
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
  `NOME` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
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
  `DisciplinasID` int(10) NOT NULL,
  `Disciplinas` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `TB_DISCIPLINAS`
--

INSERT INTO `TB_DISCIPLINAS` (`DisciplinasID`, `Disciplinas`) VALUES
(1, 'CÃ¡lculo Integral'),
(2, 'Fisica Mecanica'),
(3, 'Fisica Termodinamica'),
(4, 'Fisica Eletricidade e Magnetismo'),
(5, 'Calculo Diferencial'),
(6, 'Calculo de Varias Variaveis'),
(7, 'Mecanica dos Solidos'),
(8, 'Sinais e Sistemas'),
(9, 'Estatistica e Probabilidade'),
(10, 'G.A.A.L'),
(11, 'P.O.O'),
(12, 'Fenômenos de Transporte'),
(13, 'TESTE'),
(14, 'noJavascrpit');

-- --------------------------------------------------------

--
-- Estrutura para tabela `TB_PERGUNTAS`
--

CREATE TABLE `TB_PERGUNTAS` (
  `PerguntasID` int(11) NOT NULL,
  `DisciplinasID` int(11) NOT NULL,
  `AlunoID` int(11) NOT NULL,
  `Perguntas` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `TB_PERGUNTAS`
--

INSERT INTO `TB_PERGUNTAS` (`PerguntasID`, `DisciplinasID`, `AlunoID`, `Perguntas`) VALUES
(1, 5, 0, 'Qual a derivada de 2x + 3'),
(2, 5, 0, 'O que é derivar ?'),
(3, 5, 0, 'Regra do produto é pra derivada ?'),
(4, 11, 0, 'O que é uma classe ?'),
(5, 11, 0, 'O que é um objeto ?'),
(6, 4, 0, 'O que são eletrons ?');

-- --------------------------------------------------------

--
-- Estrutura para tabela `TB_RESPOSTAS`
--

CREATE TABLE `TB_RESPOSTAS` (
  `RespostasID` int(11) NOT NULL,
  `PerguntasID` int(11) NOT NULL,
  `AlunoID` int(11) NOT NULL,
  `Respostas` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `TB_RESPOSTAS`
--

INSERT INTO `TB_RESPOSTAS` (`RespostasID`, `PerguntasID`, `AlunoID`, `Respostas`) VALUES
(1, 1, 0, 'O resultado da 2'),
(2, 1, 0, 'Tem certeza ?'),
(3, 1, 0, 'Siim!!'),
(4, 3, 0, 'Siim!!');

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
  ADD PRIMARY KEY (`DisciplinasID`);

--
-- Índices de tabela `TB_PERGUNTAS`
--
ALTER TABLE `TB_PERGUNTAS`
  ADD PRIMARY KEY (`PerguntasID`),
  ADD KEY `DisciplinasID` (`DisciplinasID`);

--
-- Índices de tabela `TB_RESPOSTAS`
--
ALTER TABLE `TB_RESPOSTAS`
  ADD PRIMARY KEY (`RespostasID`),
  ADD KEY `PerguntasID` (`PerguntasID`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `TB_DISCIPLINAS`
--
ALTER TABLE `TB_DISCIPLINAS`
  MODIFY `DisciplinasID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de tabela `TB_PERGUNTAS`
--
ALTER TABLE `TB_PERGUNTAS`
  MODIFY `PerguntasID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `TB_RESPOSTAS`
--
ALTER TABLE `TB_RESPOSTAS`
  MODIFY `RespostasID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restrições para dumps de tabelas
--

--
-- Restrições para tabelas `TB_PERGUNTAS`
--
ALTER TABLE `TB_PERGUNTAS`
  ADD CONSTRAINT `TB_PERGUNTAS_ibfk_1` FOREIGN KEY (`DisciplinasID`) REFERENCES `TB_DISCIPLINAS` (`DisciplinasID`);

--
-- Restrições para tabelas `TB_RESPOSTAS`
--
ALTER TABLE `TB_RESPOSTAS`
  ADD CONSTRAINT `TB_RESPOSTAS_ibfk_1` FOREIGN KEY (`PerguntasID`) REFERENCES `TB_PERGUNTAS` (`PerguntasID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
