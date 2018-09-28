-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 28-Set-2018 às 21:13
-- Versão do servidor: 10.1.35-MariaDB
-- versão do PHP: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aplicacao_web_una`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_cadastro_alunos`
--

CREATE TABLE `tb_cadastro_alunos` (
  `RA` bigint(20) NOT NULL,
  `NOME` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `SENHA` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_cadastro_alunos`
--

INSERT INTO `tb_cadastro_alunos` (`RA`, `NOME`, `SENHA`) VALUES
(317113712, 'Joao Vitor de Oliveira', 'oliveira'),
(3476584832, 'PEDRO', '123'),
(3476584834, 'MARIA', '987');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_disciplinas`
--

CREATE TABLE `tb_disciplinas` (
  `DisciplinasID` int(10) NOT NULL,
  `Disciplinas` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_disciplinas`
--

INSERT INTO `tb_disciplinas` (`DisciplinasID`, `Disciplinas`) VALUES
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
(11, 'P.O.O');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_perguntas`
--

CREATE TABLE `tb_perguntas` (
  `PerguntasID` int(11) NOT NULL,
  `DisciplinasID` int(11) NOT NULL,
  `AlunoID` int(11) NOT NULL,
  `Perguntas` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `NomesAlunos` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_perguntas`
--

INSERT INTO `tb_perguntas` (`PerguntasID`, `DisciplinasID`, `AlunoID`, `Perguntas`, `NomesAlunos`) VALUES
(1, 5, 0, 'Qual a derivada de 2x + 3', ''),
(3, 5, 0, 'Regra do produto eh pra derivada ?', ''),
(4, 11, 0, 'O que é uma classe ?', ''),
(5, 11, 0, 'O que é um objeto ?', ''),
(6, 4, 0, 'O que são eletrons ?', ''),
(7, 5, 0, 'nova pergunta pa', ''),
(9, 5, 0, 'teste', ''),
(10, 5, 0, 'testando meu nome', 'Joao Vitor de Oliveira');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_respostas`
--

CREATE TABLE `tb_respostas` (
  `RespostasID` int(11) NOT NULL,
  `PerguntasID` int(11) NOT NULL,
  `AlunoID` int(11) NOT NULL,
  `Respostas` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_respostas`
--

INSERT INTO `tb_respostas` (`RespostasID`, `PerguntasID`, `AlunoID`, `Respostas`) VALUES
(1, 1, 0, 'O resultado da 2'),
(2, 1, 0, 'Tem certeza ?'),
(3, 1, 0, 'Siim!!'),
(4, 3, 0, 'Siim!!'),
(5, 7, 0, 'uauu'),
(6, 9, 0, 'ueuuue');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_cadastro_alunos`
--
ALTER TABLE `tb_cadastro_alunos`
  ADD PRIMARY KEY (`RA`);

--
-- Indexes for table `tb_disciplinas`
--
ALTER TABLE `tb_disciplinas`
  ADD PRIMARY KEY (`DisciplinasID`);

--
-- Indexes for table `tb_perguntas`
--
ALTER TABLE `tb_perguntas`
  ADD PRIMARY KEY (`PerguntasID`),
  ADD KEY `DisciplinasID` (`DisciplinasID`);

--
-- Indexes for table `tb_respostas`
--
ALTER TABLE `tb_respostas`
  ADD PRIMARY KEY (`RespostasID`),
  ADD KEY `PerguntasID` (`PerguntasID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_disciplinas`
--
ALTER TABLE `tb_disciplinas`
  MODIFY `DisciplinasID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tb_perguntas`
--
ALTER TABLE `tb_perguntas`
  MODIFY `PerguntasID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tb_respostas`
--
ALTER TABLE `tb_respostas`
  MODIFY `RespostasID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `tb_perguntas`
--
ALTER TABLE `tb_perguntas`
  ADD CONSTRAINT `TB_PERGUNTAS_ibfk_1` FOREIGN KEY (`DisciplinasID`) REFERENCES `tb_disciplinas` (`DisciplinasID`);

--
-- Limitadores para a tabela `tb_respostas`
--
ALTER TABLE `tb_respostas`
  ADD CONSTRAINT `TB_RESPOSTAS_ibfk_1` FOREIGN KEY (`PerguntasID`) REFERENCES `tb_perguntas` (`PerguntasID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
