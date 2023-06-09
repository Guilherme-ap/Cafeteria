<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:include page="Header.jsp" />

<!DOCTYPE html>
<html lang="en">

<head>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
  <style>
    body {
      background-color: white;
    }

    .trabalhe-conosco-container {
      margin-top: 100px;
      background-color: #ffffff;
      padding: 40px;
      border-radius: 12px;
      box-shadow: 0px 0px 20px 0px rgba(0, 0, 0, 0.1);
    }

    .custom-btn {
      background-color: #ffffff;
      border-color: #000000;
      color: #000000;
    }

    .trabalhe-conosco-form {
      margin-top: 30px;
    }

    .trabalhe-conosco-form h2 {
      margin-bottom: 30px;
    }

    .trabalhe-conosco-form .form-control {
      border-radius: 2px;
    }

    .trabalhe-conosco-form .btn {
      border-radius: 20px;
      transition: all 0.5s;
    }

    .trabalhe-conosco-form .btn:hover {
      transform: scale(1.05);
      background-color: black;
    }

    .trabalhe-conosco-form .btn-block {
      text-transform: uppercase;
    }

    .trabalhe-conosco-form .remember-checkbox {
      margin-top: 10px;
    }

    .trabalhe-conosco-form .forgot-password {
      text-align: right;
      margin-top: 10px;
    }

    .trabalhe-conosco-form .forgot-password a {
      color: #777777;
    }
  </style>
  <script>
    $(document).ready(function() {
      $(".trabalhe-conosco-form").hide().fadeIn(2000);
    });
  </script>
</head>

<body>
  <div class="container">
    <div class="row justify-content-center">
      <div class="col-md-6 trabalhe-conosco-container">
        <form class="trabalhe-conosco-form">
          <h2>Trabalhe Conosco</h2>
          <div class="form-group">
            <label for="nome">Nome</label>
            <input type="text" class="form-control" id="nome" placeholder="Digite seu nome" required>
          </div>
          <div class="form-group">
            <label for="email">Email</label>
            <input type="email" class="form-control" id="email" placeholder="Digite seu email" required>
          </div>
          <div class="form-group">
            <label for="telefone">Telefone</label>
            <input type="text" class="form-control" id="telefone" placeholder="Digite seu telefone" required>
          </div>
          <div class="form-group">
            <label for="mensagem">Por que quer trabalhar aqui?</label>
            <textarea class="form-control" id="mensagem" rows="4" placeholder="Digite sua mensagem" required></textarea>
          </div>
          <button type="submit" class="btn btn-primary btn-block custom-btn">Enviar</button>
        </form>
      </div>
    </div>
  </div>


<jsp:include page="Footer.jsp" />




