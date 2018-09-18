<?php

//Conectando com o banco de Dados
$servidor = 'localhost';
$user = 'root';
$senha = '';
$banco = 'aplicacao_web_UNA';

$conectar = mysqli_connect($servidor, $user, $senha, $banco);
if(!$conectar){
    die("Falha ao conectar". mysql_errno);
}	

?>