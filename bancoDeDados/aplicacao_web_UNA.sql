-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 01-Out-2018 às 20:46
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
(317113713, 'Maria Clara', '123'),
(317113714, 'Marcus Augusto', '1234'),
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
  `Perguntas` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `NomesAlunos` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_perguntas`
--

INSERT INTO `tb_perguntas` (`PerguntasID`, `DisciplinasID`, `Perguntas`, `NomesAlunos`) VALUES
(1, 5, 'Qual a derivada de 2x + 3', ''),
(3, 5, 'Regra do produto eh pra derivada ?', ''),
(4, 11, 'O que é uma classe ?', ''),
(5, 11, 'O que é um objeto ?', ''),
(6, 4, 'O que são eletrons ?', ''),
(11, 5, 'Qual a Derivada de 3x + 2 ?', 'Joao Vitor de Oliveira'),
(12, 1, 'O que Ã© integrar ?', 'PEDRO'),
(13, 8, 'Como faz transformada em Z ?', 'Maria Clara'),
(14, 5, 'AlguÃ©m tem o link de um livro de CÃ¡lculo ?', 'Maria Clara');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_respostas`
--

CREATE TABLE `tb_respostas` (
  `RespostasID` int(11) NOT NULL,
  `PerguntasID` int(11) NOT NULL,
  `Respostas` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `NomesAlunos` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_respostas`
--

INSERT INTO `tb_respostas` (`RespostasID`, `PerguntasID`, `Respostas`, `NomesAlunos`) VALUES
(1, 1, 'O resultado da 2', ''),
(2, 1, 'Tem certeza ?', ''),
(3, 1, 'Siim!!', ''),
(4, 3, 'Siim!!', ''),
(7, 1, 'Ta certo!', ''),
(8, 1, 'ta nÃ£o', 'Joao Vitor de Oliveira'),
(9, 1, 'vcs nÃ£o sabem de nada', 'PEDRO'),
(10, 12, 'Ã© tipo derivar sÃ³ que contrario', 'Joao Vitor de Oliveira'),
(11, 11, 'o resultado Ã© 3', 'Maria Clara'),
(12, 11, 'ta certo ?', 'Marcus Augusto'),
(13, 12, 'faz sentido', 'Maria Clara'),
(14, 13, 'sÃ³ sei Laplace... :(', 'Marcus Augusto'),
(15, 13, 'e como que faz Laplace ?', 'Joao Vitor de Oliveira'),
(16, 13, 'https://www.todamateria.com.br/teorema-de-laplace/', 'Marcus Augusto'),
(17, 13, 'Valeu!!', 'Joao Vitor de Oliveira'),
(18, 13, 'mas e a transformada em Z gente ?!?!', 'Maria Clara'),
(19, 5, 'https://www.google.com/imgres?imgurl=https%3A%2F%2Fcdn-istoedinheiro-ssl.akamaized.net%2Fwp-content%2Fuploads%2Fsites%2F17%2F2018%2F02%2Fpalio.jpg&imgrefurl=https%3A%2F%2Fwww.istoedinheiro.com.br%2Fcarro-barato-sai-do-foco-e-fiat-aposenta-o-palio%2F&docid=P8jmWe01pS2QiM&tbnid=BH-O6LydDB47FM%3A&vet=10ahUKEwjerYu14OXdAhUKkJAKHa7MDF0QMwgmKAEwAQ..i&w=1024&h=576&client=firefox-b-ab&bih=574&biw=1268&q=carro&ved=0ahUKEwjerYu14OXdAhUKkJAKHa7MDF0QMwgmKAEwAQ&iact=mrc&uact=8', 'Maria Clara'),
(20, 14, 'http://una.bv3.digitalpages.com.br/users/publications/9788543005423/pages/-12', 'Joao Vitor de Oliveira'),
(21, 14, 'Na biblioteca da Una tem esse', 'Joao Vitor de Oliveira'),
(22, 11, 'sim, valeu!!', 'Joao Vitor de Oliveira');

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
  MODIFY `DisciplinasID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tb_perguntas`
--
ALTER TABLE `tb_perguntas`
  MODIFY `PerguntasID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tb_respostas`
--
ALTER TABLE `tb_respostas`
  MODIFY `RespostasID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

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
