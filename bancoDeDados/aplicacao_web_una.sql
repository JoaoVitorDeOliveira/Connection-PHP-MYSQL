-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 05-Out-2018 às 21:21
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
(317113714, 'Marcus Augusto', '1234'),
(3476584834, 'MARIA', '987'),
(317113713, 'Maria Clara', '123'),
(123, 'NinguÃ©m te', '123'),
(3476584832, 'PEDRO', '123');

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
(6, 4, 'O que são eletrons ?', ''),
(11, 5, 'Qual a Derivada de 3x + 2 ?', 'Joao Vitor de Oliveira'),
(12, 1, 'O que Ã© integrar ?', 'PEDRO'),
(13, 8, 'Como faz transformada em Z ?', 'Maria Clara'),
(14, 5, 'AlguÃ©m tem o link de um livro de CÃ¡lculo ?', 'Maria Clara'),
(15, 8, 'AlguÃ©m tem alguma prova antiga de Sinais ?', 'Marcus Augusto'),
(16, 11, 'O que Ã© uma instancia de uma classe ?', 'Maria Clara');

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
(20, 14, 'http://una.bv3.digitalpages.com.br/users/publications/9788543005423/pages/-12', 'Joao Vitor de Oliveira'),
(21, 14, 'Na biblioteca da Una tem esse', 'Joao Vitor de Oliveira'),
(22, 11, 'sim, valeu!!', 'Joao Vitor de Oliveira'),
(28, 15, 'NÃ£o tenho...', 'Maria Clara'),
(32, 16, 'Uma instÃ¢ncia de uma classe Ã© um novo objeto criado dessa classe, com o operador new. \r\n\r\nInstanciar uma classe Ã© criar um novo objeto do mesmo tipo dessa classe.', 'Joao Vitor de Oliveira'),
(39, 16, 'Em programaÃ§Ã£o orientada a objetos, chama-se instÃ¢ncia de uma classe, um objeto cujo comportamento e estado sÃ£o definidos pela classe.\r\n\"InstÃ¢ncia\" Ã©, neste caso, um anglicismo, significando \"caso\" ou \"exemplo\" (em inglÃªs instance).\r\n\r\nAs instÃ¢ncias de uma classe compartilham o mesmo conjunto de atributos, embora sejam diferentes quanto ao conteÃºdo desses atributos.\r\nPor exemplo, a classe \"Empregado\" descreve os atributos comuns a todas as instÃ¢ncias da classe \"Empregado\". Os objetos dessa classe podem ser semelhantes, mas variam em atributos tais como \"nome\" e \"salÃ¡rio\". A descriÃ§Ã£o da classe contÃ©m os itens correspondentes a esses atributos e define as operaÃ§Ãµes ou aÃ§Ãµes relevantes para a classe, tais como \"aumento de salÃ¡rio\" ou \"mudanÃ§a do nÃºmero de telefone\". Pode-se entÃ£o falar sobre uma instÃ¢ncia com o nome = \"Joana Coelho\" e outra com o nome = \"JoÃ£o Coelho\".\r\n\r\nInstÃ¢ncia Ã© a concretizaÃ§Ã£o de uma classe. Em termos intuitivos, uma classe Ã© como um \"molde\" que gera instÃ¢ncias de um certo tipo; um objeto Ã© algo que existe fisicamente e que foi \"moldado\" na classe.\r\n\r\nAssim, em programaÃ§Ã£o orientada a objetos, a palavra \"instanciar\" significa criar. Quando falamos em \"instanciar um objeto\", criamos fisicamente uma representaÃ§Ã£o concreta da classe. Por exemplo: \"animal\" Ã© uma classe ou um molde; \"cachorro\" Ã© uma instÃ¢ncia de \"animal\" e apesar de carregar todas as caracterÃ­sticas do molde de \"animal\", Ã© completamente independente de outras instÃ¢ncias de \"animal\". Exemplo em C#:', 'Joao Vitor de Oliveira'),
(40, 14, 'O cÃ¡lculo diferencial e integral, ou simplesmente cÃ¡lculo, Ã© um ramo importante da matemÃ¡tica, desenvolvido a partir da Ãlgebra e da Geometria, que se dedica ao estudo de taxas de variaÃ§Ã£o de grandezas (como a inclinaÃ§Ã£o de uma reta) e a acumulaÃ§Ã£o de quantidades (como a Ã¡rea debaixo de uma curva ou o volume de um sÃ³lido). Onde hÃ¡ movimento ou crescimento em que forÃ§as variÃ¡veis agem produzindo aceleraÃ§Ã£o, o cÃ¡lculo Ã© a matemÃ¡tica a ser empregada.\r\n\r\n\r\nO cÃ¡lculo permite calcular a Ã¡rea da regiÃ£o assinalada.\r\nO cÃ¡lculo foi criado como uma ferramenta auxiliar em vÃ¡rias Ã¡reas das ciÃªncias exatas. Desenvolvido simultaneamente por Gottfried Wilhelm Leibniz (1646-1716) e por Isaac Newton (1643-1727), em trabalhos independentes. O CÃ¡lculo Diferencial e o CÃ¡lculo Integral auxiliam em vÃ¡rios conceitos e definiÃ§Ãµes na matemÃ¡tica, quÃ­mica, fÃ­sica clÃ¡ssica, fÃ­sica moderna e economia. O estudante de cÃ¡lculo deve ter um conhecimento em certas Ã¡reas da matemÃ¡tica, como funÃ§Ãµes (modular, exponencial, logarÃ­tmica, par, Ã­mpar, afim e segundo grau, por exemplo) , trigonometria, polinÃ´mios, geometria plana, espacial e analÃ­tica, pois sÃ£o a base do cÃ¡lculo. O cÃ¡lculo tem inicialmente trÃªs \"operaÃ§Ãµes-base\", ou seja, possui Ã¡reas iniciais como o cÃ¡lculo de limites, o cÃ¡lculo de derivadas de funÃ§Ãµes e a integral de diferenciais.\r\n\r\nA integral indefinida tambÃ©m pode ser chamada de antiderivada, uma vez que Ã© um processo que inverte a derivada de funÃ§Ãµes. JÃ¡ a integral definida, inicialmente definida como Soma de Riemann, estabelece limites de integraÃ§Ã£o, ou seja, Ã© um processo estabelecido entre dois intervalos bem definidos, daÃ­ o nome integral definida.\r\n\r\nCom o advento do Teorema Fundamental do CÃ¡lculo, estabeleceu-se uma conexÃ£o entre os dois ramos do cÃ¡lculo: o CÃ¡lculo Diferencial e o CÃ¡lculo Integral. O cÃ¡lculo diferencial surgiu do problema da tangente, enquanto o cÃ¡lculo integral surgiu de um problema aparentemente nÃ£o relacionado, o problema da Ã¡rea. O professor de Isaac Newton em Cambridge, Isaac Barrow, descobriu que esses dois problemas estÃ£o de fato estritamente relacionados, ao perceber que a derivaÃ§Ã£o e a integraÃ§Ã£o sÃ£o processos inversos. Foram Leibniz e Newton que exploraram essa relaÃ§Ã£o e a utilizaram para transformar o cÃ¡lculo em um mÃ©todo matemÃ¡tico sistemÃ¡tico. Particularmente ambos viram que o Teorema Fundamental os capacitou a calcular Ã¡reas e integrais muito mais facilmente, sem que fosse necessÃ¡rio calculÃ¡-las como limites de soma (mÃ©todo descrito pelo matemÃ¡tico Riemann, pupilo de Gauss)', 'Joao Vitor de Oliveira');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_cadastro_alunos`
--
ALTER TABLE `tb_cadastro_alunos`
  ADD PRIMARY KEY (`RA`),
  ADD UNIQUE KEY `NOME` (`NOME`,`SENHA`);

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
  MODIFY `DisciplinasID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tb_perguntas`
--
ALTER TABLE `tb_perguntas`
  MODIFY `PerguntasID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tb_respostas`
--
ALTER TABLE `tb_respostas`
  MODIFY `RespostasID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

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
