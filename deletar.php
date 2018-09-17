<?php

	include "conexao.php";

	$query = "DELETE FROM games WHERE categoria = 'Corrida'";
	mysqli_query($conexao,$query);

	echo "deletado com sucesso";
?>
