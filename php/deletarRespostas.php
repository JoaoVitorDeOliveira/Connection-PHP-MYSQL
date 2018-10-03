<?php

include "conexaoComOMySql.php"; 

if(isset($_REQUEST['id'])){
        $id = $_REQUEST['id'];
        mysqli_query($conectar, "DELETE FROM `tb_respostas` WHERE `tb_respostas`.`RespostasID` = '{$id}'");
        header("location:criarTabelasDeDisciplinasGenericas.php");
    }

?>