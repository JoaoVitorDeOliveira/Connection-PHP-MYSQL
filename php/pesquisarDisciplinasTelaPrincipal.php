<?php

    include "conexaoComOMySql.php"; 

    $palavra = $_GET['pesq'];

    $query = "SELECT tb_disciplinas.Disciplinas, tb_perguntas.Perguntas, tb_respostas.Respostas, tb_disciplinas.DisciplinasID 
                FROM ((`tb_perguntas` LEFT JOIN tb_respostas ON tb_perguntas.PerguntasID = tb_respostas.PerguntasID)
                LEFT JOIN tb_disciplinas ON tb_disciplinas.DisciplinasID = tb_perguntas.DisciplinasID)
                WHERE tb_disciplinas.Disciplinas LIKE '%{$palavra}%' OR tb_perguntas.Perguntas LIKE '%{$palavra}%' OR `Respostas` LIKE '%{$palavra}%'";

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
				<th>Disciplinas</th>		
				<th>Perguntas</th>
				<th>Respostas</th>
			</thead>
			<?php 
					//Preenchendo a tabela com os dados
					while ($i = mysqli_fetch_assoc($pesq)) { 
					echo "<tr><td> <a href='http://localhost/connection-PHP-MYSQL/php/criarTabelasDeDisciplinasGenericas.php?mat={$i['Disciplinas']}&id={$i['DisciplinasID']}'> {$i['Disciplinas']} </a></td>".
						 "<td> {$i['Perguntas']} </td>".
						 "<td> {$i['Respostas']} </td></tr>";
				}
			?>	
		</table>
		<a class="btn_voltar" href="disciplinasTelaPrincipal.php"><center>Voltar</center></a>
	</div>
	
</body>
</html>
