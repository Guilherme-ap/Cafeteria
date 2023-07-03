$(document).ready(function() {
  // Captura o evento de envio do formulário
  $("form.login-form").submit(function(event) {
    event.preventDefault(); // Impede o envio padrão do formulário

    // Coleta os valores dos campos do formulário
    var Cadastrar = $("#cadastrar");
    var nome = $("input[name='nome']").val();
    var telefone = $("input[name='telefone']").val();
    var email = $("input[name='email']").val();
    var senha = $("input[name='senha']").val();
    var endereco = $("input[name='endereco']").val();

    // Cria um objeto JSON com os dados do formulário
    var dados = {
      nome: nome,
      telefone: telefone,
      email: email,
      senha: senha,
      endereco: endereco
    };

    // Envia os dados para o backend usando AJAX
    $.ajax({
      url: "CadastrarServelet", // Substitua pela URL correta do seu backend
      type: "POST",
      dataType: "json",
      data: JSON.stringify(dados),
      contentType: "application/json",
      success: function(response) {
        console.log(response);
      },
      error: function(error) {
        console.log(error);
      }
    });
  });
});
