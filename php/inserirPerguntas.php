<?php 

include "conexaoComOMySql.php"; 

if(isset($_GET['mat'])){

    mysqli_query("INSERT INTO TB_PERGUNTAS(DisciplinasID, Perguntas) VALUES()");
}
?>