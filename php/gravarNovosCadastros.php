<?php

    include "conexaoComOMySql.php";

	//Criar variáveis e pegar valores dos forms
    $ra = $_POST["ra"];
    $nome = $_POST["nome"];
    $senha = $_POST["senha"];
	
	//Criando a query
	$cos = "INSERT INTO TB_CADASTRO_ALUNOS(RA, NOME, SENHA) ";
    $cos .= "VALUES ('$ra', '$nome', '$senha')";
	
	    if(isset($_POST["btn_enviar"])){
        $res = mysqli_query($conectar, $cos);
        echo "Enviado com Sucesso";
        header("location:disciplinasTelaPrincipal.php");
    }

?>