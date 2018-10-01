<?php 

include "conexaoComOMySql.php"; 



mysqli_query($conectar, "INSERT INTO TB_DISCIPLINAS(Disciplinas) VALUES('{$_GET['mat']}')");

header("location:disciplinasTelaPrincipal.php");


?>	