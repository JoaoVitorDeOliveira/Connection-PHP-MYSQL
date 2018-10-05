
function inserirDisciplina() {
    var x = prompt("Digite o nome da matéria:", "");
    if (x != null) { 
        document.getElementById("btn").value = x;
    }
}   

function deletaDisciplina(){
    confirm("ATENÇão: Disciplinas com perguntas não serão excluidas");
}

function voltaTelaDeLogin(){
    window.location.href="../html/telaDeLogin.html";            
}