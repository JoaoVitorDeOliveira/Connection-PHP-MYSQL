<?php 
    session_start();
    include "conexaoComOMySql.php";
    if(isset($_REQUEST['nome']) && isset($_REQUEST['ra'])){ 
        $nome = $_REQUEST['nome'];
        $ra = $_REQUEST['ra'];

        $_SESSION['nomeDoAluno'] = $nome;
        $_SESSION['raDoAluno'] = $ra;
    }else{
        $nome = $_SESSION['nomeDoAluno'];
        $ra = $_SESSION['raDoAluno'];
    }
?>	

<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Page Title</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" media="screen" href="../css/stylesDisciplinasTelaPrincipal.css" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous"> 
    <script src="../js/funcoesDisciplinasTelaPrincipal.js"></script>
</head>
<body>

    <button class="info" onclick="voltaTelaDeLogin()">
            <?php echo $nome ?> </br></br>
            <?php echo $ra ?>
    </button>
    <h1>Disciplinas</h1>
    <div class="box">
    <ul>
        <div class="crud">
            <form action="inserirDisciplina.php" method="GET" id="insert"></form>
            <button id="btn" name="mat" onclick="inserirDisciplina()" class="add" form="insert">+</button>            
            <input type='text' name='pesq' class='pesquisa' form="pesq"/>
        </div>
            <form action="pesquisarDisciplinasTelaPrincipal.php" method="GET" id="pesq"></form>
            <i id='lupa' class="fas fa-search" form='pesquisa'></i>
		<?php 
            //Preenchendo a tabela com os dados
            $query = mysqli_query($conectar, "SELECT * FROM tb_disciplinas ORDER BY `DisciplinasID` DESC");

            while ($i = mysqli_fetch_assoc($query)) { 

            echo "<li><div><h2><form action='criarTabelasDeDisciplinasGenericas.php' method='GET'>
                    <button onclick='deletaDisciplina()' class='del' form='delete'>x</button>
                    <input class='disciplinas' type='submit' name='mat' value='{$i['Disciplinas']}'>
                    <input name='id' value='{$i['DisciplinasID']}' type='hidden'>
                    </form></h2></div></li>";	

            echo "<form action='deletaDisciplina.php' method='GET' id='delete'>
                    <input name='delete' value='{$i['DisciplinasID']}' type='hidden'>        
                  </form>";        
            }

		?>
    </ul>
    </div>

</body>
</html>

