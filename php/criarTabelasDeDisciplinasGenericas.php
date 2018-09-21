<?php
    
    include "conexaoComOMySql.php";

    if(isset($_GET["mat"])){
         $nomeDaMateria = $_GET["mat"];
    }else{
        echo "Erro inesperado ocorreu";
    }    

    $query = "CREATE TABLE `aplicacao_web_UNA`.`TB_{$nomeDaMateria}` ( `Qual a sua dúvida ?` TEXT CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL ) ENGINE = InnoDB;";
    mysqli_query($conectar, $query);

    $query = "INSERT INTO `TB_{$nomeDaMateria}`(`Qual a sua dúvida ?`) VALUES('Dessa forma você consegue criar tópicos para começar 
                                                                            discussões sobre a sua dúvida, coloque a pergunta no 
                                                                            titulo e com o tempo outros alunos vão respondendo
                                                                             e ajudando')";
    mysqli_query($conectar, $query);
?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Page Title</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" media="screen" href="../css/stylesCriarTabelasGenericas.css" />
</head>
<body>
    <h1 ><?php echo $nomeDaMateria ?></h1>
    <section>
        <ul>
            <button >+</button>
            <?php 
                $query = mysqli_query($conectar, "SHOW COLUMNS FROM `TB_{$nomeDaMateria}`");
                $contar = 0;        
                while($row=mysqli_fetch_assoc($query)){
                    $nomeDaColuna = $row['Field'];
                    
                    $contar = $contar + 1;
                    //Pra cada coluna da tabela, está sendo criado um js com metodo de esconder os valores 
                    echo "
                    <script >
                        function escondeEsconde{$contar}() {
                        var x = document.getElementById('respostas{$contar}');
                        if (x.style.display === 'none') {
                        x.style.display = 'block';
                        } else {
                        x.style.display = 'none';
                        }
                    }
                    </script>";

                    echo "<li>
                            <div>
                                <h2 onclick='escondeEsconde{$contar}()'> {$nomeDaColuna}</h2>            
                                <ul id='respostas{$contar}' style='display: none;'>
                                    <li>" +
                                        mysqli_query($conectar, "SELECT `{$nomeDaColuna}` FROM `TB_{$nomeDaMateria}`");
                                    + "</li>
                                    <li>
                                            <form>
                                                <input type='text' />
                                                <input type='submit' value='enviar' />
                                            </form>
                                    </li>
                                </ul>
                            </div>
                        </li>";
                }
            ?>
        </ul>
    </section>
</body>
</html>