<?php
    include "conexaoComOMySql.php";
    include "criarTabelasDeDisciplinasGenericas.php";
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Page Title</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" media="screen" href="../css/stylesCriarTabelasGenericas.css" />
    <script >
        function escondeEsconde() {
        var x = document.getElementById("respostas");
        if (x.style.display === "none") {
            x.style.display = "block";
        } else {
            x.style.display = "none";
        }
    }
    </script>
</head>
<body>
    <h1 ><?php echo $nomeDaMateria ?></h1>
    <section>
        <ul>
            <button >+</button>
            <?php 

                $query = mysqli_query($conectar, "SHOW COLUMNS FROM `TB_{$nomeDaMateria}`");
                while($row=mysqli_fetch_assoc($query)){
                    echo "<li>
                            <div>
                                <h2 onclick='escondeEsconde()'> {$row['Field']}</h2>            
                                <ul id='respostas' style='display: none;'>
                                    <li>
                                        //select dados from tb   
                                    </li>
                                    <li>
                                            <form>
                                                <input type='text' />
                                                <input type='submit' value='enviar' />
                                            </form>
                                    </li>
                                </ul>
                            </div>
                        </li>;";
                }
            ?>
        </ul>
    </section>
</body>
</html>