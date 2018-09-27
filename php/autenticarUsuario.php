<?php

    include "conexaoComOMySql.php";

    $ra = $_POST['ra'];
    $senha = $_POST['senha'];

    $query = mysqli_query($conectar, "SELECT * FROM TB_CADASTRO_ALUNOS");

    while ($i = mysqli_fetch_assoc($query)) { 
        if($i['RA'] == $ra && $i['SENHA'] == $senha){
            $nome = $i['NOME'];
            header("Location: disciplinasTelaPrincipal.php?ra={$ra}&nome={$nome}");
            exit;
        }
    }
    
    echo "<script>alert('RA ou Senha incorreto!');</script>";
    echo "<script>javascript:window.location='../html/telaDeLogin.html';</script>";  
    
?>