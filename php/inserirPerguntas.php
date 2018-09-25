<?php 

    session_start();
    include "conexaoComOMySql.php"; 

    echo $_SESSION['nomeDaMateria'];
    echo $_SESSION['idDaMateria'];

    if(isset($_GET['mat']) && isset($_GET['id'])){
        $pergunta = $_GET['mat'];
        $idDaMateria = $_GET['id'];

        mysqli_query($conectar, "INSERT INTO TB_PERGUNTAS(DisciplinasID, Perguntas) VALUES('{$idDaMateria}', '{$pergunta}')");

        header("location:criarTabelasDeDisciplinasGenericas.php");
        
}
?>