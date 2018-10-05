     
    function escondeEsconde() {
        var x = document.getElementById('respostas');
        if (x.style.display === 'none') {
            x.style.display = 'block';
            } else {
            x.style.display = 'none';
            }      
        }

    function inserirPergunta() {
        var i = prompt("Digite a sua pergunta:", "");
        if (i != null) { 
            document.getElementById("btn").value = i;
            }
        }

    function voltarDisciplinas(){
            javascript:window.location='disciplinasTelaPrincipal.php';
        }

    function irParaBiblioteca(){
            javascript:window.open('http://una.bv3.digitalpages.com.br/users/publications');
        }

    $(function() { 
            var numToShow = 2;
            var moreLi;
            $('#respostas').children('li').hide().each(function() {
                if ($(this).index() < numToShow) {
                    $(this).show();
                }
            }).parent('ul').append('<li><a href="#" id="showMore">Carregar</a></li>');
        
            $('#showMore').click(function() {
                moreLi = $(this).parent('li');
                moreLi.siblings().show();
                moreLi.remove();
            });
        });