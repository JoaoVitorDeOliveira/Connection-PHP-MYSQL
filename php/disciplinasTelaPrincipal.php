<?php include "conexaoComOMySql.php" ?>	

<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Page Title</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" media="screen" href="../css/stylesDisciplinasTelaPrincipal.css" />
    <script src="main.js"></script>
</head>
<body>

    <div class="info">
            João Vitor de Oliveira </br></br>
            317113712
    </div>
    <div class="lateral"></div>
   <section>
   <h1>Disciplinas</h1>
    <ul>
		<?php 
					//Preenchendo a tabela com os dados
					$query = mysqli_query($conectar, "SELECT `Disciplinas` FROM TB_DISCIPLINAS");

					while ($i = mysqli_fetch_assoc($query)) { 

					echo "<li><div><h2><form action='criarTabelasDeDisciplinasGenericas.php' method='GET'>
							<input type='submit' name='mat' value='{$i['Disciplinas']}'>
						</form></h2></div></li>";	
				}
		?>
    </ul>
	</section>
</body>
</html>

