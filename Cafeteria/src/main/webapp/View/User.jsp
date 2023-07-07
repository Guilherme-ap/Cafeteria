<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<jsp:include page="Header.jsp" />



 <div class="container mt-4">
        <h1 style="margin-top:100px;">Seja bem vindo!</h1>

        <!-- Verifica se o usu�rio est� logado -->
        <div id="userLoggedIn">
            <ul class="nav nav-tabs mt-4" id="userTabs">
                <li class="nav-item">
                    <a class="nav-link active" id="profile-tab" data-toggle="tab" href="#profile">Perfil</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="update-tab" data-toggle="tab" href="#update">Atualizar Dados</a>
                </li>
            </ul>

            <div class="tab-content mt-4">
                <!-- Aba: Perfil -->
                <div class="tab-pane fade show active" id="profile">
                    <h4>Perfil do Usu�rio</h4>
                    <p>Nome: <span id="userName"></span></p>
                    <p>Email: <span id="userEmail"></span></p>
                    <!-- Adicione outros campos do perfil do usu�rio aqui -->
                </div>

                <!-- Aba: Atualizar Dados -->
                <div class="tab-pane fade" id="update">
                    <h4>Atualizar Dados do Usu�rio</h4>
                    <form id="updateForm">
                        <div class="form-group">
                            <label for="name">Nome</label>
                            <input type="text" class="form-control" id="name" placeholder="Digite seu nome">
                        </div>
                        <div class="form-group">
                            <label for="email">Email</label>
                            <input type="email" class="form-control" id="email" placeholder="Digite seu email">
                        </div>
                        <!-- Adicione outros campos do formul�rio de atualiza��o aqui -->
                        <button type="submit" class="btn btn-primary">Atualizar</button>
                    </form>
                </div>
            </div>
        </div>

        <!-- Se o usu�rio n�o estiver logado -->
        <div id="userNotLoggedIn">
            <p>Voc� precisa estar logado para acessar esta p�gina.</p>
            <!-- Adicione um link de login aqui -->
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <script>
        $(document).ready(function () {
            // Verifica se o usu�rio est� logado
            var userLoggedIn = true; // Defina como true ou false dependendo do estado do usu�rio

            if (userLoggedIn) {
                // Mostra a tela do usu�rio
                $("#userLoggedIn").show();
                $("#userNotLoggedIn").hide();

                // Atualiza os dados do usu�rio
                $("#```html
				userName").text("Nome do Usu�rio");
                $("#userEmail").text("email@example.com");

                // Manipula o envio do formul�rio de atualiza��o
                $("#updateForm").submit(function (event) {
                    event.preventDefault();
                    // Obtenha os valores dos campos do formul�rio
                    var name = $("#name").val();
                    var email = $("#email").val();
                    // Fa�a a l�gica para atualizar os dados do usu�rio no servidor
                    // ...

                    // Exiba uma mensagem de sucesso ou redirecione para outra p�gina
                    // ...

                    // Limpa os campos do formul�rio
                    $("#name").val("");
                    $("#email").val("");
                });
            } else {
                // Mostra a mensagem de usu�rio n�o logado
                $("#userLoggedIn").hide();
                $("#userNotLoggedIn").show();
            }
        });
    </script>


<jsp:include page="Footer.jsp" />