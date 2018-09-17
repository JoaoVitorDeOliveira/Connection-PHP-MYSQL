<?php
    $servidor = 'localhost';
    $nome = 'root';
    $senha = '';
    $banco = 'joao';
    $conectar = mysqli_connect($servidor, $nome, $senha, $banco);
    if(!$conectar){
        die("Falha ao conectar". mysql_errno);
    }

    $n = '';
    $cat = '';
    $maq = '';

    $n = $_POST["nome"];
    $cat = $_POST["categoria"];
    $maq = $_POST["maquina"];

    
/*
    if(empty($n)){
        echo "Algo de errado";        
    }else{
        $res = mysqli_query($conectar, $cos);
        echo "Enviado com Sucesso";
    }*/

    $cos = "INSERT INTO games(nome,categoria,maquina) ";
    $cos .= "VALUES ('$n', '$cat', '$maq')";
    
    if(isset($_POST["btn_enviar"])){
        $res = mysqli_query($conectar, $cos);
        echo "Enviado com Sucesso";
        header("Location: table.php");
        exit;
    }
   
    mysqli_close($conectar);
?>



