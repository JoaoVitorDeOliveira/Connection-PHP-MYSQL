<?php
    $url = urldecode($_REQUEST['res']);
    $id = $_REQUEST['id'];
?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Page Title</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" media="screen" href="../css/stylesCorrigirResposta.css" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous"> 
    <script>
            $(function(){
            $("#corrige").click(function(){
                var resposta = $("#textarea").val();
                    $.post('respostaCorrigida.php', {
                        res: resposta
                    }, function(response){
                    alert('enviado com sucesso!');
                    });
                });
            });
    </script>
</head>
<body>
    <div class='box'>
        <form>
            <textarea id='textarea'><?php echo "{$url}" ?></textarea>                           
        </form>
        <i id='corrige' class='fas fa-pencil-alt'></i>
        <i style='float:right' class='fas fa-trash-alt'></i> 
    </div>
</body>
</html>