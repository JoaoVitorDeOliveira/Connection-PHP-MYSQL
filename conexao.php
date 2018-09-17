<?php

	$nome = 'localhost';
	$user = 'root';
	$senha = '';
	$banco = 'joao';

	$conexao = mysqli_connect($nome, $user, $senha, $banco) or die(mysql_errno());

?>	
