<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="Header.jsp" />

<jsp:include page="Assests.jsp" />

<main>

  <article>
    <div id="demo" class="carousel slide" data-bs-ride="carousel">

     
      <ol class="carousel-indicators">
        <li data-bs-target="#demo" data-bs-slide-to="0" class="active"></li>
        <li data-bs-target="#demo" data-bs-slide-to="1"></li>
        <li data-bs-target="#demo" data-bs-slide-to="2"></li>
      </ol>

     
      <div class="carousel-inner">
 		 <div class="carousel-item active">
    		<img src="https://stories.starbucks.com/uploads/sites/25/2021/12/image-1.png" alt="Los Angeles"
     			 class="d-block" style="width:100%; height:80vh;">
 		 </div>
          <div class="carousel-item">
          <img src="https://stories.starbucks.com/uploads/2022/08/MicrosoftTeams-image-7.jpg" alt="Chicago" class="d-block"
           style="width:100%; height:80vh;">
        </div>
        <div class="carousel-item">
          <img src="https://www.cozinhecomomestre.com.br/wp-content/uploads/2022/08/bolo-red-velvet-800x445.jpg" 
          alt="New York" class="d-block" style="width:100%; height:80vh;">
        </div>
      </div>

      
      <a class="carousel-control-prev" href="#demo" role="button" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    
      </a>
      <a class="carousel-control-next" href="#demo" role="button" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        
      </a>
    </div>


    <section class="cafe-section" style="margin-top:80px;">
      <div class="container">
        <div class="row">
          <div class="col-md-6">
            <h2>Bem-vindo Cafeteria Kiki</h2>
            <p> Em nosso café, você será transportado para cenários deslumbrantes e encontrará os personagens cativantes que conquistaram corações ao redor do mundo. Delicie-se com café e chás especiais preparados com maestria, enquanto desfruta de um ambiente acolhedor e encantador. Deixe-se levar por uma experiência única, onde a fantasia se torna realidade e cada visita é uma jornada memorável. No Café Kiki, a magia está presente em cada detalhe, aguardando ansiosamente por sua visita.</p>
            <a href="#" class="btn btn-primary">Conheça nossos produtos</a>
          </div>
          <div class="col-md-6">
            <img src="https://1.bp.blogspot.com/-lmWMErJCXbE/UuLBi_iGUKI/AAAAAAAAETQ/rJNxZUwQyCg/s1600/frappuccino.jpg" alt="Cafeteria" class="img-fluid">
          </div>
        </div>
      </div>
    </section>

    <section class="servicos-section"  style="margin-top:80px;" >
      <div class="container">
        <h2>Nossos Serviços</h2>
        <div class="row" style="margin-top:100px;">
          <div class="col-md-4">
            <div class="servico-item">
              <i class="fas fa-coffee"></i>
              <h3>Variedade de Cafes</h3>
              <p>Explore nossa seleção de cafés exclusivos: do clássico Espresso
               ao suave Cappuccino, do exótico Macchiato ao encorpado Mocha. Delícias para todos os paladares.</p>
            </div>
          </div>
          <div class="col-md-4">
            <div class="servico-item">
              <i class="fas fa-mug-hot"></i>
              <h3>Ambiente Aconchegante</h3>
              <p>Acolhedor, charmoso e relaxante. Um refúgio que transborda conforto e encanto.
               Venha desfrutar do nosso ambiente aconchegante e convidativo.</p>
            </div>
          </div>
          <div class="col-md-4">
            <div class="servico-item">
              <i class="fas fa-birthday-cake"></i>
              <h3>Cafés Personalizados</h3>
              <p>Desfrute de cafés personalizados à sua maneira. Escolha entre ingredientes gourmet,
               diferentes intensidades e opções de adoçantes para criar a sua bebida perfeita.</p>
            </div>
          </div>
        </div>
      </div>
    </section>

  </article>

</main>

<jsp:include page="Footer.jsp" />
