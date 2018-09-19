<?php include "conexaoComOMySql.php" ?>	

<html> 
<head>
	<meta charset="utf-8">
	<title>Treinando com Tabelas</title>
	<link rel="stylesheet" type="text/css" href="../css/stylesDisciplinasTelaPrincipal.css">
	<style type="text/css"> body{background: white}</style>
</head>
<body>
	<h1><center>Tabela</center></h1>
	<div class="container">
		<table style="width: 800px; max-width: 800px;" >
			<thead>
				<th>Disciplinas</th>		
			</thead>
			<?php 
					//Preenchendo a tabela com os dados
					$query = mysqli_query($conectar, "SELECT `Disciplinas` FROM TB_DISCIPLINAS");

					while ($i = mysqli_fetch_assoc($query)) { 

					echo "<tr><td><form action='criarTabelasDeDisciplinasGenericas.php' method='GET'>
							<input type='submit' name='mat' value='{$i['Disciplinas']}'>
						</form></td></tr>";	
				}
			?>	
		</table>
		<a class="btn_voltar" href="../html/telaPrincipal.html"><center>Voltar</center></a>
	</div>
	
</body>
</html>

