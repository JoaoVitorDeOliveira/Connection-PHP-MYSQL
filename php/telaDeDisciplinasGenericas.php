<?php
    include "conexaoComOMySql.php";
    include "criarTabelasDeDisciplinasGenericas.php";

    echo $nomeDaMateria;
    $query = mysqli_query($conectar, "SHOW COLUMNS FROM `TB_{$nomeDaMateria}`");
    while($row=mysqli_fetch_assoc($query)){
        echo $row["Field"]."<br />";
    }


?>