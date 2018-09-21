<?php 

include "conexaoComOMySql.php"; 



mysqli_query($conectar, "INSERT INTO TB_DISCIPLINAS(Disciplinas) VALUES('{$_GET['mat']}')");

echo "<script>alert('Salvo com sucesso!');</script>";
echo "<script>javascript:window.location='disciplinasTelaPrincipal.php';</script>"; 


?>	