<?php

session_start();
include "conexaoComOMySql.php"; 

if(isset($_GET['delPerg'])){
        $delete = $_GET['delPerg'];
        mysqli_query($conectar, "DELETE FROM `tb_perguntas` WHERE `tb_perguntas`.`PerguntasID` = '{$delete}'");
        header("location:criarTabelasDeDisciplinasGenericas.php");
    }


?>