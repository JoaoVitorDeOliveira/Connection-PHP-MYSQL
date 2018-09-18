<?php
	//Conectando com o banco de Dados
	$servidor = 'localhost';
	$user = 'root';
	$senha = '';
	$banco = 'joao';

	$conectar = mysqli_connect($servidor, $user, $senha, $banco);
    if(!$conectar){
        die("Falha ao conectar". mysql_errno);
	}	
	//Criar variáveis e pegar valores dos forms
    $nome = '';
    $ra = '';
    $senha = '';

    $nome = $_POST["nome"];
    $ra = $_POST["ra"];
    $senha = $_POST["senha"];
	
	//Criando a query
	$cos = "INSERT INTO cadastrosdealuno(RA, NOME, SENHA) ";
    $cos .= "VALUES ('$ra', '$nome', '$senha')";
	
	    if(isset($_POST["btn_enviar"])){
        $res = mysqli_query($conectar, $cos);
        echo "Enviado com Sucesso";
        exit;
    }
   
    mysqli_close($conectar);

?>