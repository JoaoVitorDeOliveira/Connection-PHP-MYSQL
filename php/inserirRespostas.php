<?php 

    session_start();
    include "conexaoComOMySql.php"; 

    if(isset($_GET['pergID']) && isset($_GET['textarea'])){
        $perguntaID = $_GET['pergID'];
        $resposta = $_GET['textarea'];

        mysqli_query($conectar, "INSERT INTO TB_RESPOSTAS(PerguntasID, Respostas) VALUES('{$perguntaID}', '{$resposta}')");

        header("location:criarTabelasDeDisciplinasGenericas.php");
        
}
?>