<jsp:include page="Header.jsp" />


 <style>
    .pink-text {
      color: #FFC0CB;
    }
    
    .link {
    text-decoration:none;
    color:black;
    }
    .link:hover{
    text-decoration:none;
    transition:color 1s;
    color:blue;
    }
    
     .cafe-name {
    font-size: 24px;
    font-weight: bold;
    color: #333;
    margin-bottom: 10px;
  }

  .cafe-info {
    font-size: 16px;
    color: #666;
    margin-bottom: 5px;
  }
  
   .custom-card {
    margin-bottom: 20px;
  }
  
   .card-img-top {
    height: 200px;
    
    max-width: 100%;

  }
  </style>


<body>

<div class="container" style="margin-top: 100px;">
  <div class="row align-items-center">
    <div class="col-md-6">
      <h4 class="cafe-name">Cafeteria Kiki</h4>
      <p class="cafe-info">Endereço: Rua Guilhermino de Lima - 48</p>
      <p class="cafe-info">Telefone: (11) 2444-8696</p>   
      <p class="cafe-info" style="color:green;">Pedido mínimo: R$ 30,00</p>
      <p id="funcionamento" class="cafe-info">Seg-Sex: 8h-20h / Sáb-Dom: 9h-18h</p>
    </div>
    <div class="col-md-6">
      <img src="https://graoespecial.com.br/wp-content/uploads/2018/09/foto3.jpg" alt="Imagem da cafeteria" class="img-fluid" style="border-radius: 20px;">
    </div>
  </div>
</div>

<script>
  var divFuncionamento = document.getElementById("funcionamento");
  var dataHoraAtual = new Date();
  
  var diaSemana = dataHoraAtual.getDay(); // 0 (Domingo) a 6 (Sábado)
  
  var horarioAbertura;
  var horarioFechamento;
  
  if (diaSemana >= 1 && diaSemana <= 5) {
    horarioAbertura = new Date(dataHoraAtual.getFullYear(), dataHoraAtual.getMonth(), dataHoraAtual.getDate(), 8, 0, 0); // 8h
    horarioFechamento = new Date(dataHoraAtual.getFullYear(), dataHoraAtual.getMonth(), dataHoraAtual.getDate(), 20, 0, 0); // 20h
  } else if (diaSemana === 0 || diaSemana === 6) {
    horarioAbertura = new Date(dataHoraAtual.getFullYear(), dataHoraAtual.getMonth(), dataHoraAtual.getDate(), 9, 0, 0); // 9h
    horarioFechamento = new Date(dataHoraAtual.getFullYear(), dataHoraAtual.getMonth(), dataHoraAtual.getDate(), 18, 0, 0); // 18h
  }
  
  if (dataHoraAtual >= horarioAbertura && dataHoraAtual <= horarioFechamento) {
    divFuncionamento.classList.add("text-success");
  } else {
    divFuncionamento.classList.add("text-danger");
  }
</script>

  <div class="container" style="margin-top: 20px;">
    <h2>Menu</h2>
    <div class="container" style="margin-top: 40px;">
        <hr style="background-color: black;">
        <div class="row text-center">
            <div class="col-md-3">
                <h4><a class="link" href="#cafes">Cafés</a></h4>
            </div>
            <div class="col-md-3">
                <h4><a class="link" href="#gelados">Gelados</a></h4>
            </div>
            <div class="col-md-3">
                <h4><a class="link" href="#cappuccinos">Cappuccinos</a></h4>
            </div>
            <div class="col-md-3">
                <h4><a class="link" href="#lanches">Lanches</a></h4>
            </div>
        </div>
        <hr style="background-color: black;">
    </div>
    

           <div style="margin-top:20px; margin-bottom:20px;">
                <h4><a class="link" href="#cafes">Cafés</a></h4>
            </div>

<div class="row">
  <div class="col-md-4">
    <div class="card custom-card" style="width: 100%;">
      <img class="card-img-top" src="https://s3-eu-west-1.amazonaws.com/images-ca-1-0-1-eu/tag_photos/original/1736/expresso-pixabay-coffee-3107235_1280.jpg" alt="Café 1">
      <div class="card-body">
        <h5 class="card-title">Café Expresso</h5>
        <p class="card-text">Café puro, forte e encorpado.</p>
        <p class="card-text">Preço: R$ 5,00</p>
        <a href="#" class="btn btn-primary">Comprar</a>
      </div>
    </div>
  </div>
  <div class="col-md-4">
    <div class="card custom-card" style="width: 100%;">
      <img class="card-img-top" src="https://www.nespresso.com/ncp/res/uploads/recipes/nespresso-recipes-Latte-Macchiato.jpg" alt="Café 2">
      <div class="card-body">
        <h5 class="card-title">Café Latte</h5>
        <p class="card-text">Café com leite cremoso e suave.</p>
        <p class="card-text">Preço: R$ 7,50</p>
        <a href="#" class="btn btn-primary">Comprar</a>
      </div>
    </div>
  </div>
  <div class="col-md-4">
    <div class="card custom-card" style="width: 100%;">
      <img class="card-img-top" src="https://images.ctfassets.net/v601h1fyjgba/4mf4LfyiIKLvOw72oPDgD3/cca493e3a33d080f4a7e6eade04af27a/Caf___Mocha.jpg" alt="Café 3">
      <div class="card-body">
        <h5 class="card-title">Café Mocha</h5>
        <p class="card-text">Café com chocolate e creme de leite.</p>
        <p class="card-text">Preço: R$ 6,50</p>
        <a href="#" class="btn btn-primary">Comprar</a>
      </div>
    </div>
  </div>
</div>

<div class="row">
  <div class="col-md-4">
    <div class="card custom-card" style="width: 100%;">
      <img class="card-img-top" src="https://lojaschluck.com.br/wp-content/uploads/2020/06/drink-com-licor-de-cafe-cappuccino-schluck.jpg" alt="Café 4">
      <div class="card-body">
        <h5 class="card-title">Café Cappuccino</h5>
        <p class="card-text">Café com leite vaporizado e espuma de leite.</p>
        <p class="card-text">Preço: R$ 8,00</p>
        <a href="#" class="btn btn-primary">Comprar</a>
      </div>
    </div>
  </div>
  <div class="col-md-4">
    <div class="card custom-card" style="width: 100%;">
      <img class="card-img-top" src="https://www.receiteria.com.br/wp-content/uploads/receitas-de-frappuccino.jpg" alt="Café 5">
      <div class="card-body">
        <h5 class="card-title">Café Frappuccino</h5>
        <p class="card-text">Café gelado com leite e cobertura de chantilly.</p>
        <p class="card-text">Preço: R$ 9,50</p>
        <a href="#" class="btn btn-primary">Comprar</a>
      </div>
    </div>
  </div>
  <div class="col-md-4">
    <div class="card custom-card" style="width: 100%;">
      <img class="card-img-top" src="https://www.nespresso.com/ncp/res/uploads/recipes/espressomacchiato2BR.jpg" alt="Café 6">
      <div class="card-body">
        <h5 class="card-title">Café Macchiato</h5>
        <p class="card-text">Café com uma pequena quantidade de leite vaporizado.</p>
        <p class="card-text">Preço: R$ 6,00</p>
        <a href="#" class="btn btn-primary">Comprar</a>
      </div>
    </div>
  </div>
</div>

			 <div style="margin-top:20px; margin-bottom:20px;">
                <h4><a class="link" href="#gelados">Gelados</a></h4>
            </div>
<div class="row">
  <div class="col-md-4">
    <div class="card custom-card" style="width: 100%;">
      <img class="card-img-top" src="https://naminhapanela.com/wp-content/uploads/2023/04/Como-fazer-cafe-gelado-735x491.jpg" alt="Café Gelado 1">
      <div class="card-body">
        <h5 class="card-title">Café Gelado Tradicional</h5>
        <p class="card-text">Café gelado refrescante.</p>
        <p class="card-text">Preço: R$ 8,00</p>
        <a href="#" class="btn btn-primary">Comprar</a>
      </div>
    </div>
  </div>
  <div class="col-md-4">
    <div class="card custom-card" style="width: 100%;">
      <img class="card-img-top" src="https://s2-receitas.glbimg.com/LNG92eVzOcqj_bXb2CL1lzFv-AU=/0x0:200x300/984x0/smart/filters:strip_icc()/s.glbimg.com/po/rc/media/2014/04/22/16_19_45_710_cafe_2.jpg" alt="Café Gelado 2">
      <div class="card-body">
        <h5 class="card-title">Café Gelado com Caramelo</h5>
        <p class="card-text">Café gelado com calda de caramelo.</p>
        <p class="card-text">Preço: R$ 9,50</p>
        <a href="#" class="btn btn-primary">Comprar</a>
      </div>
    </div>
  </div>
  <div class="col-md-4">
    <div class="card custom-card" style="width: 100%;">
      <img class="card-img-top" src="https://img.cybercook.com.br/receitas/880/cafe-gelado-3.jpeg" alt="Café Gelado 3">
      <div class="card-body">
        <h5 class="card-title">Café Gelado com Chocolate</h5>
        <p class="card-text">Café gelado com cobertura de chocolate.</p>
        <p class="card-text">Preço: R$ 7,50</p>
        <a href="#" class="btn btn-primary">Comprar</a>
      </div>
    </div>
  </div>
</div>

  <div style="margin-top:20px; margin-bottom:20px;">
                <h4><a class="link" href="#cappuccinos">Cappuccinos</a></h4>
            </div>


<div class="row">
  <div class="col-md-4">
    <div class="card custom-card" style="width: 100%;">
      <img class="card-img-top" src="https://www.tasteofhome.com/wp-content/uploads/2018/01/exps37407_THE1213734_37407_WEB.jpg" alt="Cappuccino 1">
      <div class="card-body">
        <h5 class="card-title">Cappuccino Tradicional</h5>
        <p class="card-text">Cappuccino clássico com café, leite vaporizado e espuma de leite.</p>
        <p class="card-text">Preço: R$ 10,00</p>
        <a href="#" class="btn btn-primary">Comprar</a>
      </div>
    </div>
  </div>
  <div class="col-md-4">
    <div class="card custom-card" style="width: 100%;">
      <img class="card-img-top" src="https://www.receiteria.com.br/wp-content/uploads/receitas-de-capuccino-cremoso-1.jpg" alt="Cappuccino 2">
      <div class="card-body">
        <h5 class="card-title">Cappuccino de Chocolate</h5>
        <p class="card-text">Cappuccino com sabor de chocolate e cobertura de chantilly.</p>
        <p class="card-text">Preço: R$ 12,50</p>
        <a href="#" class="btn btn-primary">Comprar</a>
      </div>
    </div>
  </div>
  <div class="col-md-4">
    <div class="card custom-card" style="width: 100%;">
      <img class="card-img-top" src="https://www.cardamomo.news/__export/1634581877970/sites/debate/img/2021/10/18/caramel_macchiato_frappe.jpeg_1753094345.jpeg" alt="Cappuccino 3">
      <div class="card-body">
        <h5 class="card-title">Cappuccino Caramelado</h5>
        <p class="card-text">Cappuccino com toque de caramelo e chantilly.</p>
        <p class="card-text">Preço: R$ 11,00</p>
        <a href="#" class="btn btn-primary">Comprar</a>
      </div>
    </div>
  </div>
</div>



 <div style="margin-top:20px; margin-bottom:20px;">
                <h4><a class="link" href="#lanches">Lanches</a></h4>
            </div>


<div class="row">
  <div class="col-md-4">
    <div class="card custom-card" style="width: 100%;">
      <img class="card-img-top" src="https://www.confeiteiradesucesso.com/wp-content/uploads/2019/03/hamburguergourmet-fb.jpg" alt="Lanche 1">
      <div class="card-body">
        <h5 class="card-title">Hambúrguer Clássico</h5>
        <p class="card-text">Pão, hambúrguer de carne, queijo, alface e tomate.</p>
        <p class="card-text">Preço: R$ 15,00</p>
        <a href="#" class="btn btn-primary">Comprar</a>
      </div>
    </div>
  </div>
  <div class="col-md-4">
    <div class="card custom-card" style="width: 100%;">
      <img class="card-img-top" src="https://boomi.b-cdn.net/wp-content/uploads/2022/06/lanche-ovo-e-abobrinha.jpg" alt="Lanche 2">
      <div class="card-body">
        <h5 class="card-title">Sanduíche Vegetariano</h5>
        <p class="card-text">Pão integral, alface, tomate, cenoura, queijo e molho especial.</p>
        <p class="card-text">Preço: R$ 12,50</p>
        <a href="#" class="btn btn-primary">Comprar</a>
      </div>
    </div>
  </div>
  <div class="col-md-4">
    <div class="card custom-card" style="width: 100%;">
      <img class="card-img-top" src="https://www.perdigao.com.br/assets/_images/8402c5c5f29ca29d758ca7657d3c4ac29a587edf.webp" alt="Lanche 3">
      <div class="card-body">
        <h5 class="card-title">Wrap de Frango</h5>
        <p class="card-text">Tortilha de trigo, frango grelhado, alface, tomate e maionese.</p>
        <p class="card-text">Preço: R$ 13,00</p>
        <a href="#" class="btn btn-primary">Comprar</a>
      </div>
    </div>
  </div>
  <div class="col-md-4">
    <div class="card custom-card" style="width: 100%;">
      <img class="card-img-top" src="https://i3.wp.com/whatagirleats.com/wp-content/uploads/2016/04/IMG_4392.jpg" alt="Lanche 4">
      <div class="card-body">
        <h5 class="card-title">Panini Caprese</h5>
        <p class="card-text">Pão italiano, queijo mozarela, tomate, manjericão e azeite.</p>
        <p class="card-text">Preço: R$ 11,50</p>
        <a href="#" class="btn btn-primary">Comprar</a>
      </div>
    </div>
  </div>
  <div class="col-md-4">
    <div class="card custom-card" style="width: 100%;">
      <img class="card-img-top" src="https://claudia.abril.com.br/wp-content/uploads/2020/03/club-sandwichcrc3a9dito-ricardo-dc2b4angelo.jpg" alt="Lanche 5">
      <div class="card-body">
        <h5 class="card-title">Club Sandwich</h5>
        <p class="card-text">Pão de forma, frango grelhado, bacon, alface, tomate e maionese.</p>
        <p class="card-text">Preço: R$ 14,00</p>
        <a href="#" class="btn btn-primary">Comprar</a>
      </div>
    </div>
  </div>
</div>



          

  </div>
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha2/js/bootstrap.min.js"></script>
  
  <jsp:include page="Footer.jsp" />
  
