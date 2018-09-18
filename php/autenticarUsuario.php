<?php

    include "conexaoComOMySql.php";

    $ra = $_POST['ra'];
    $senha = $_POST['senha'];

    $query = mysqli_query($conectar, "SELECT * FROM TB_CADASTRO_ALUNOS");

    while ($i = mysqli_fetch_assoc($query)) { 
        if($i['RA'] == $ra && $i['SENHA'] == $senha){
            header("Location: disciplinasTelaPrincipal.php");
            exit;
        }
    }
    
    echo "RA ou Senha inválido";
    
?>