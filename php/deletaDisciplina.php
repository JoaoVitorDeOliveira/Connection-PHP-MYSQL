<?php

include "conexaoComOMySql.php"; 

if(isset($_GET['delete'])){
        $delete = $_GET['delete'];
        mysqli_query($conectar, "DELETE FROM `tb_disciplinas` WHERE `tb_disciplinas`.`DisciplinasID` = '{$delete}'");
        header("location:disciplinasTelaPrincipal.php");
    }


?>