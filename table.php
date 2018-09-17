<?php include "conexao.php" ?>	

<html> 
<head>
	<meta charset="utf-8">
	<title>Treinando com Tabelas</title>
	<link rel="stylesheet" type="text/css" href="style.css">
	<style type="text/css"> body{background: white}</style>
</head>
<body>
	<h1><center>Tabela</center></h1>
	<div class="container">
		<table style="width: 800px; max-width: 800px;" >
			<thead>
				<th>Nome</th>		
				<th>Categoria</th>
				<th>Máquina</th>
			</thead>
			<?php 
					//Preenchendo a tabela com os dados
					$query = mysqli_query($conexao, "SELECT * FROM games");

					while ($i = mysqli_fetch_assoc($query)) { 

					echo "<tr><td> {$i['nome']} </td>".
						 "<td> {$i['categoria']} </td>".
						 "<td> {$i['maquina']} </td></tr>";

				}
			?>	
		</table>
		<a class="btn_voltar" href="index.php"><center>Voltar</center></a>
	</div>
	
</body>
</html>

