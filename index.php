<!DOCTYPE html>
<html lang="pt_br">
<head>
    <meta charset="UTF-8">
    <title>Games</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <h1 style='text-align:center; color:white'>Nome do Game</h1>
    <div class="box"> 
        <form action="dados.php" method="post">
            <label style="color:white; font-weight:bold">Nome:</label><br>
            <input type="text" name="nome" placeholder="Ex: Need For Speed"><br>
            <label style="color:white; font-weight:bold">Categoria:</label><br>
            <input type="text" name="categoria" placeholder="Ex: Corrida"><br>
            <label style="color:white; font-weight:bold">Console:</label><br>
            <input type="text" name="maquina" placeholder="Ex: PS1/PC"><br>
            <input type="submit" value="Enviar" name="btn_enviar">
        </form> 

        <form action="table.php" method="post">
            <button name="btn_consulta">Consultar</button>
        </form>
        <form action="deletar.php" method="post">
            <button name="btn_deleta">Deletar</button>
        </form>
        <form action="#" method="post">    
            <button name="btn_atualizar">Atualizar</button>
        </form>   
    </div>
   
    <div class="sideBar">
        

    </div>    
</body>
</html>
