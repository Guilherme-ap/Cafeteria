<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="pt-br">

<head>
  <script src="../assets/js/color-modes.js"></script>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Cafeteria Kiki</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
  <link href="../assets/dist/css/bootstrap.rtl.min.css" rel="stylesheet">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
  <link rel="canonical" href="https://getbootstrap.com/docs/5.3/examples/carousel-rtl/">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <style>
    /* Estilos adicionais */
    body {
      padding-top: 60px;
    }
    
    .navbar-brand img {
      max-height: 40px;
    }

    .navbar-dark .navbar-toggler-icon {
      background-image: url('data:image/svg+xml;charset=utf-8,%3Csvg viewBox="0 0 30 30" xmlns="http://www.w3.org/2000/svg"%3E%3Cpath stroke="rgba(0, 0, 0, 0.5)" stroke-width="2" stroke-linecap="round" stroke-miterlimit="10" d="M4 7h22M4 15h22M4 23h22"/%3E%3C/svg%3E');
    }

    .navbar-nav .nav-link {
      color: #fff;
      font-weight: bold;
    }

    .navbar-nav .nav-link:hover {
      color: #6c757d;
    }

    .dropdown-menu .dropdown-item {
      color: #212529;
      font-weight: bold;
    }

    .dropdown-menu .dropdown-item:hover {
      color: #007bff;
      background-color: #f8f9fa;
    }
    
    .nav-item a:hover {
    background-color: #ffcccc; 
  }
  </style>
</head>

<body>
  <header>
    <nav class="navbar navbar-expand-md navbar-dark bg-light fixed-top">
      <div class="container">
        <a class="logo mr-5"  href="Home">
          <img src="https://i.pinimg.com/736x/6e/b7/a8/6eb7a802b4a1a747e44b8336ede6bbac.jpg" style=" border-radius: 50%; height: 80px; width:80px" alt="Starbucks Logo">
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
     <div class="collapse navbar-collapse" id="navbarCollapse">
  <ul class="navbar-nav mr-auto">
    <li class="nav-item">
      <a class=" btn nav-link text-dark mr-3" href="#">Menu</a>
      
    </li>
    <li class="nav-item">
      <a class=" btn nav-link text-dark" href="#">Nosso caf�</a>
    </li>
  </ul>
  <ul class="navbar-nav ml-auto">
    <li class="nav-item">
      <a class="btn btn-outline-light  mr-2 text-dark font-weight-bold " href="#">Cadastrar</a>
    </li>
    <li class="nav-item">
      <a><button type="button" class="btn btn-outline-dark">Login</button></a>
    </li>
  </ul>
</div>



        </div>
    </nav>
  </header>
    