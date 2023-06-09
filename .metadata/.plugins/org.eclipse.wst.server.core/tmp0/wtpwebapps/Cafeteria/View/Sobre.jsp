<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

<jsp:include page="Header.jsp" />
  <style>
      .card-body {
      width: 100%;
    }

    .custom-div {
      background-color: #d4edda;
      width: 100%; 
      text-align: center; 
      padding: 20px; 
    }
    
    .card {
      display: flex;
      flex-direction: row-reverse;
      align-items: center;
    }
   
   .custom-font-size {
    font-size: 20px; 
  }
    
  </style>
</head>
<body>

<div id="carouselExample" class="carousel slide" data-ride="carousel">
  <div class="carousel-inner" >
    <div class="carousel-item active">
      <img src="https://starbucks.com.br/public/img/home/may-images/guatemala.jpg" class="d-block w-100" alt="Imagem do Carrossel"  style="max-height: 60vh;">
    </div>
  </div>
</div>

  <div class="custom-div" style="margin-top: 20px;">
    <h3>Nossa Missão</h3>
    <p style="font-size:20px;">Nossa missão é inspirar e nutrir o espírito humano – uma pessoa, uma xícara de café e uma comunidade de cada vez.</p>
  </div>
  
<div class="container-fluid" style="margin-top: 20px; width: 100%; background-color: #d4edda;">
  <div class="card border-0" style="background-color: #d4edda;">
    <div class="row justify-content-end">
      <div class="col-sm-6 align-self-center">
        <div class="card-body bg-lightgreen" style="width: 100%;">
          <h5 class="card-title custom-font-size">Melhor Café</h5>
          <p class="card-text custom-font-size ">Kiki Café tem o melhor café. Experimente nosso café especial, proveniente de fazendas selecionadas, 
            com cuidado em cada etapa do processo, resultando em uma experiência única e inigualável.</p>
        </div>
      </div>
      <div class="col-sm-6 text-right">
        <img src="https://help.grandchef.com.br/wp-content/uploads/2021/11/garcom-servindo-uma-xicara-de-cafe-para-o-cliente_1170-628.jpg" alt="Imagem" class="img-fluid" style="width: 95%; height: 300px;">
      </div>
    </div>
  </div>
</div>




  
 

<div id="carouselExample" class="carousel slide" data-ride="carousel" style="margin-top: 20px;">
  <div class="carousel-inner" >
    <div class="carousel-item active">
      <img src=" https://starbucks.com.br/public/img/home/may-images/banner2.png" class="d-block w-100" alt="Imagem do Carrossel"  style="max-height: 100vh;">
    </div>
  </div>
</div>
<div class="custom-div" style="margin-top: 20px;">
    <h3>Código de Conduta</h3>
    <p style="font-size:20px;">Respeito mútuo, ética, colaboração, diversidade, inclusão, responsabilidade, transparência, segurança, honestidade, profissionalismo e trabalho em equipe são fundamentais.</p>
  </div>


 


  
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<jsp:include page="Footer.jsp" />