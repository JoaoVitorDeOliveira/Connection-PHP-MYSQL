<?php include "conexaoComOMySql.php" ?>	

<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Page Title</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" media="screen" href="../css/stylesDisciplinasTelaPrincipal.css" />
    <script>
        function inserirDisciplina() {
            var x = prompt("Digite o nome da matéria:", "");
            if (x != null) { 
                document.getElementById("btn").value = x;
            }
        }   
    </script>
</head>
<body>

    <div class="info">
            João Vitor de Oliveira </br></br>
            317113712
    </div>
    <h1>Disciplinas</h1>
    <div class="box">
    <ul>
        <div class="crud">
            <form action="inserirDisciplina.php" method="GET" id="teste"></form>
            <button onclick="" class="del">x</button>
            <button id="btn" name="mat" onclick="inserirDisciplina()" class="add" form="teste">+</button>
        </div>
		<?php 
            //Preenchendo a tabela com os dados
            $query = mysqli_query($conectar, "SELECT * FROM TB_DISCIPLINAS");

            while ($i = mysqli_fetch_assoc($query)) { 

            echo "<li><div><h2><form action='criarTabelasDeDisciplinasGenericas.php' method='GET'>
                    <input type='submit' name='mat' value='{$i['Disciplinas']}'>
                    <input name='id' value='{$i['DisciplinasID']}' style='display: none;'>
                    </form></h2></div></li>";	
            }

		?>
    </ul>
    </div>

</body>
</html>

