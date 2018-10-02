<?php

    session_start();
    include "conexaoComOMySql.php"; 

    $palavra = $_GET['pesq'];
    $idDaMateria =  $_SESSION['idDaMateria'];

    $query = "SELECT tb_disciplinas.Disciplinas, tb_perguntas.Perguntas, tb_respostas.Respostas 
                FROM ((`tb_perguntas` LEFT JOIN tb_respostas ON tb_perguntas.PerguntasID = tb_respostas.PerguntasID)
                LEFT JOIN tb_disciplinas ON tb_disciplinas.DisciplinasID = tb_perguntas.DisciplinasID)
                WHERE (tb_perguntas.Perguntas LIKE '%{$palavra}%' OR `Respostas` LIKE '%{$palavra}%') AND tb_disciplinas.DisciplinasID = {$idDaMateria} ";

    $pesq = mysqli_query($conectar, $query);
?>

<html> 
<head>
	<meta charset="utf-8">
	<title>Treinando com Tabelas</title>
	<link rel="stylesheet" type="text/css" href="../css/stylesPesquisarPorPalavras.css">    
</head>
<body>
	<h1><center>Tabela</center></h1>
	<div class="container">
		<table style="width: 800px; max-width: 800px;" >
			<thead>
				<th>Respostas</th>		
				<th>Perguntas</th>
				<th>Disciplinas</th>
			</thead>
			<?php 
					//Preenchendo a tabela com os dados
					while ($i = mysqli_fetch_assoc($pesq)) { 
					echo "<tr><td> {$i['Respostas']} </td>".
						 "<td> {$i['Perguntas']} </td>".
						 "<td> {$i['Disciplinas']} </td></tr>";
				}
			?>	
		</table>
		<a class="btn_voltar" href="criarTabelasDeDisciplinasGenericas.php"><center>Voltar</center></a>
	</div>
	
</body>
</html>
