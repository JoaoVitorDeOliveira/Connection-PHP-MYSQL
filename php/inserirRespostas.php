<?php 

    session_start();
    include "conexaoComOMySql.php"; 

    if(isset($_GET['pergID']) && isset($_GET['textarea'])){
        $perguntaID = $_GET['pergID'];
        $resposta = $_GET['textarea'];
        $nomeDoAluno = $_SESSION['nomeDoAluno'];

        mysqli_query($conectar, "INSERT INTO TB_RESPOSTAS(PerguntasID, Respostas, NomesAlunos) VALUES('{$perguntaID}', '{$resposta}', '{$nomeDoAluno}')");

        header("location:criarTabelasDeDisciplinasGenericas.php");
        
}
?>