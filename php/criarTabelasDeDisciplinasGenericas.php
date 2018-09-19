<?php
    
    include "conexaoComOMySql.php";

    if(isset($_GET["mat"])){
         echo $_GET["mat"]. "<br />"; 
         $nomeDaMateria = $_GET["mat"];
    }else{
        echo "Erro inesperado ocorreu";
    }    

    $query = "CREATE TABLE `aplicacao_web_UNA`.`TB_{$nomeDaMateria}` ( `Qual a sua dúvida ?` TEXT CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL ) ENGINE = InnoDB;";
    mysqli_query($conectar, $query);

    $query = "INSERT INTO `TB_{$nomeDaMateria}`(`Qual a sua dúvida ?`) VALUES('Dessa forma você consegue criar tópicos para começar 
                                                                            discussões sobre a sua dúvida, coloque a pergunta no 
                                                                            titulo e com o tempo outros alunos vão respondendo
                                                                             e ajudando')";
    mysqli_query($conectar, $query);

    $query = mysqli_query($conectar, "SHOW COLUMNS FROM `TB_{$nomeDaMateria}`");
    while($row=mysqli_fetch_assoc($query)){
        echo $row["Field"]."<br />";
    }
?>