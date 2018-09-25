<?php
    
    session_start();
    include "conexaoComOMySql.php";
    //pegando o nome da materia e a id dela
    if(isset($_GET["mat"]) && isset($_GET["id"])){
         $nomeDaMateria = $_GET["mat"];
         $idDaMateria= $_GET["id"];
    //gravando o valor em variaveis globais 
         $_SESSION['nomeDaMateria'] = $nomeDaMateria;
         $_SESSION['idDaMateria'] =$idDaMateria;
    }else{
        $nomeDaMateria = $_SESSION['nomeDaMateria'];
        $idDaMateria = $_SESSION['idDaMateria'];
    }
?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Page Title</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" media="screen" href="../css/stylesCriarTabelasGenericas.css" /> 
        <script >
            function escondeEsconde() {
            var x = document.getElementById('respostas');
            if (x.style.display === 'none') {
            x.style.display = 'block';
            } else {
            x.style.display = 'none';
            }      
        }

            function inserirPergunta() {
            var i = prompt("Digite a sua pergunta:", "");
            if (i != null) { 
                document.getElementById("btn").value = i;
                }
            }
        </script>
</head>
<body>
    <h1 ><?php echo $nomeDaMateria ?></h1>
    <section>
        <ul>
            <div class="crud">
                <form action="inserirPerguntas.php"method="GET" id="teste">
                    <input type='hidden' name='id' value='<?php echo $idDaMateria;?>'/>
                </form>
                <button onclick="" class="del">x</button>
                <button id="btn" name= "mat" onclick="inserirPergunta()" class="add" form="teste">+</button>
            </div>
            <li>
                <div>
                    <h2 onclick='escondeEsconde()'>Frase padrão entra aqui</h2>
                    <ul id='respostas' style='display: none;'>
                        <li>Item da frase padrão</li>
                        <li>Outro item padrão</li>
                        <li>Mais um item padrão</li>
                    </ul>
                </div>
            </li>

            <?php 
                $query = mysqli_query($conectar, "SELECT * FROM TB_PERGUNTAS WHERE DisciplinasID = {$idDaMateria}");
                $contar = 0;        
                while($perguntas=mysqli_fetch_assoc($query)){ 
                    //variavel usada com o javascript                  
                    $contar = $contar + 1;
                    $idDaPergunta;
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

                echo   "<li>
                            <div>
                                <h2 onclick='escondeEsconde{$contar}()'> {$perguntas['Perguntas']}</h2>            
                                <ul id='respostas{$contar}' style='display: none;'>";

                                    $querys = mysqli_query($conectar, "SELECT * FROM TB_RESPOSTAS WHERE PerguntasID = {$perguntas['PerguntasID']}");                            
                                    while($respostas=mysqli_fetch_assoc($querys)){ 
                                        echo  "<li>{$respostas['Respostas']}</li>";
                                    }

                echo               "<li>
                                        <form action='inserirRespostas.php' method='GET'>
                                            <textarea rows='4' cols='50' name='textarea'></textarea>
                                            <input type='hidden' name='pergID' value='{$perguntas['PerguntasID']}'/>
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