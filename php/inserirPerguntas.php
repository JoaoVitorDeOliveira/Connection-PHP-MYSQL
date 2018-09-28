<?php 

    session_start();
    include "conexaoComOMySql.php"; 

    echo $_SESSION['nomeDaMateria'];
    echo $_SESSION['idDaMateria'];

    if(isset($_GET['mat']) && isset($_GET['id']) && isset($_SESSION['nomeDoAluno'])){
        $pergunta = $_GET['mat'];
        $idDaMateria = $_GET['id'];
        $nomeDoAluno = $_SESSION['nomeDoAluno'];

        mysqli_query($conectar, "INSERT INTO TB_PERGUNTAS(DisciplinasID, Perguntas, NomesAlunos) VALUES('{$idDaMateria}', '{$pergunta}', '{$nomeDoAluno}')");

        header("location:criarTabelasDeDisciplinasGenericas.php");
        
}
?>