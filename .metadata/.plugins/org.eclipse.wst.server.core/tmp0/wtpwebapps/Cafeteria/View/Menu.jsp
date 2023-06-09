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
      <p class="cafe-info">Endere�o: Rua Guilhermino de Lima - 48</p>
      <p class="cafe-info">Telefone: (11) 2444-8696</p>   
      <p class="cafe-info" style="color:green;">Pedido m�nimo: R$ 30,00</p>
      <p id="funcionamento" class="cafe-info">Seg-Sex: 8h-20h / S�b-Dom: 9h-18h</p>
    </div>
    <div class="col-md-6">
      <img src="https://graoespecial.com.br/wp-content/uploads/2018/09/foto3.jpg" alt="Imagem da cafeteria" class="img-fluid" style="border-radius: 20px;">
    </div>
  </div>
</div>

<script>
  var divFuncionamento = document.getElementById("funcionamento");
  var dataHoraAtual = new Date();
  
  var diaSemana = dataHoraAtual.getDay(); // 0 (Domingo) a 6 (S�bado)
  
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
 
     <i class="fas fa-shopping-cart"></i>
      <span id="cart-count" class="badge">0</span>
  
    <div class="container" style="margin-top: 40px;">
        <hr style="background-color: black;">
        <div class="row text-center">
            <div class="col-md-3">
                <h4><a class="link" href="#cafes">Caf�s</a></h4>
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
                <h4><a class="link" href="#cafes">Caf�s</a></h4>
            </div>

<div class="row">
  <div class="col-md-4">
    <div class="card custom-card" style="width: 100%;">
      <img class="card-img-top" src="https://s3-eu-west-1.amazonaws.com/images-ca-1-0-1-eu/tag_photos/original/1736/expresso-pixabay-coffee-3107235_1280.jpg" alt="Caf� 1">
      <div class="card-body">
        <h5 class="card-title">Caf� Expresso</h5>
        <p class="card-text">Caf� puro, forte e encorpado.</p>
        <p class="card-text">Pre�o: R$ 5,00</p>
         <div class="form-group">
              <input type="number" id="quantity-expresso" class="form-control" value="1">
            </div>
        <a class="btn btn-primary add-btn" data-index="1">>Comprar</a>
      </div>
    </div>
  </div>
  <div class="col-md-4">
    <div class="card custom-card" style="width: 100%;">
      <img class="card-img-top" src="https://www.nespresso.com/ncp/res/uploads/recipes/nespresso-recipes-Latte-Macchiato.jpg" alt="Caf� 2">
      <div class="card-body">
        <h5 class="card-title">Caf� Latte</h5>
        <p class="card-text">Caf� com leite cremoso e suave.</p>
        
        <p class="card-text">Pre�o: R$ 7,50</p>
        <div class="form-group">
              <input type="number" id="quantity-latte" class="form-control" value="1">
            </div>
         <a class="btn btn-primary add-btn" data-index="2">>Comprar</a>
      </div>
    </div>
  </div>
  <div class="col-md-4">
    <div class="card custom-card" style="width: 100%;">
      <img class="card-img-top" src="https://images.ctfassets.net/v601h1fyjgba/4mf4LfyiIKLvOw72oPDgD3/cca493e3a33d080f4a7e6eade04af27a/Caf___Mocha.jpg" alt="Caf� 3">
      <div class="card-body">
        <h5 class="card-title">Caf� Mocha</h5>
        <p class="card-text">Caf� com chocolate e creme de leite.</p>
        <p class="card-text">Pre�o: R$ 6,50</p>
        <div class="form-group">
              <input type="number" id="quantity-cappuccino" class="form-control" value="1">
            </div>
        <a class="btn btn-primary add-btn" data-index="3">>Comprar</a>
      </div>
    </div>
  </div>
</div>

<div class="row">
  <div class="col-md-4">
    <div class="card custom-card" style="width: 100%;">
      <img class="card-img-top" src="https://lojaschluck.com.br/wp-content/uploads/2020/06/drink-com-licor-de-cafe-cappuccino-schluck.jpg" alt="Caf� 4">
      <div class="card-body">
        <h5 class="card-title">Caf� Cappuccino</h5>
        <p class="card-text">Caf� com leite vaporizado e espuma de leite.</p>
        <p class="card-text">Pre�o: R$ 8,00</p>
        <div class="form-group">
              <input type="number" id="quantity-latte" class="form-control" value="1">
            </div>
       <a class="btn btn-primary add-btn" data-index="3">>Comprar</a>
      </div>
    </div>
  </div>
  <div class="col-md-4">
    <div class="card custom-card" style="width: 100%;">
      <img class="card-img-top" src="https://www.receiteria.com.br/wp-content/uploads/receitas-de-frappuccino.jpg" alt="Caf� 5">
      <div class="card-body">
        <h5 class="card-title">Caf� Frappuccino</h5>
        <p class="card-text">Caf� gelado com leite e cobertura de chantilly.</p>
        <p class="card-text">Pre�o: R$ 9,50</p>
        <div class="form-group">
              <input type="number" id="quantity-latte" class="form-control" value="1">
            </div>
        <a class="btn btn-primary add-btn" data-index="3">>Comprar</a>
      </div>
    </div>
  </div>
  <div class="col-md-4">
    <div class="card custom-card" style="width: 100%;">
      <img class="card-img-top" src="https://www.nespresso.com/ncp/res/uploads/recipes/espressomacchiato2BR.jpg" alt="Caf� 6">
      <div class="card-body">
        <h5 class="card-title">Caf� Macchiato</h5>
        <p class="card-text">Caf� com uma pequena quantidade de leite vaporizado.</p>
        <p class="card-text">Pre�o: R$ 6,00</p>
        <div class="form-group">
              <input type="number" id="quantity-latte" class="form-control" value="1">
            </div>
         <a class="btn btn-primary add-btn" data-index="3">>Comprar</a>
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
      <img class="card-img-top" src="https://naminhapanela.com/wp-content/uploads/2023/04/Como-fazer-cafe-gelado-735x491.jpg" alt="Caf� Gelado 1">
      <div class="card-body">
        <h5 class="card-title">Caf� Gelado Tradicional</h5>
        <p class="card-text">Caf� gelado refrescante.</p>
        <p class="card-text">Pre�o: R$ 8,00</p>
        <div class="form-group">
              <input type="number" id="quantity-latte" class="form-control" value="1">
            </div>
        <a class="btn btn-primary add-btn" data-index="3">>Comprar</a>
      </div>
    </div>
  </div>
  <div class="col-md-4">
    <div class="card custom-card" style="width: 100%;">
      <img class="card-img-top" src="https://s2-receitas.glbimg.com/LNG92eVzOcqj_bXb2CL1lzFv-AU=/0x0:200x300/984x0/smart/filters:strip_icc()/s.glbimg.com/po/rc/media/2014/04/22/16_19_45_710_cafe_2.jpg" alt="Caf� Gelado 2">
      <div class="card-body">
        <h5 class="card-title">Caf� Gelado com Caramelo</h5>
        <p class="card-text">Caf� gelado com calda de caramelo.</p>
        <p class="card-text">Pre�o: R$ 9,50</p>
        <div class="form-group">
              <input type="number" id="quantity-latte" class="form-control" value="1">
            </div>
       <a class="btn btn-primary add-btn" data-index="3">>Comprar</a>
      </div>
    </div>
  </div>
  <div class="col-md-4">
    <div class="card custom-card" style="width: 100%;">
      <img class="card-img-top" src="https://img.cybercook.com.br/receitas/880/cafe-gelado-3.jpeg" alt="Caf� Gelado 3">
      <div class="card-body">
        <h5 class="card-title">Caf� Gelado com Chocolate</h5>
        <p class="card-text">Caf� gelado com cobertura de chocolate.</p>
        <p class="card-text">Pre�o: R$ 7,50</p>
        <div class="form-group">
              <input type="number" id="quantity-latte" class="form-control" value="1">
            </div>
        <a class="btn btn-primary add-btn" data-index="3">>Comprar</a>
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
        <p class="card-text">Cappuccino cl�ssico com caf�, leite vaporizado e espuma de leite.</p>
        <p class="card-text">Pre�o: R$ 10,00</p>
        <a class="btn btn-primary add-btn" data-index="3">>Comprar</a>
      </div>
    </div>
  </div>
  <div class="col-md-4">
    <div class="card custom-card" style="width: 100%;">
      <img class="card-img-top" src="https://www.receiteria.com.br/wp-content/uploads/receitas-de-capuccino-cremoso-1.jpg" alt="Cappuccino 2">
      <div class="card-body">
        <h5 class="card-title">Cappuccino de Chocolate</h5>
        <p class="card-text">Cappuccino com sabor de chocolate e cobertura de chantilly.</p>
        <p class="card-text">Pre�o: R$ 12,50</p>
        <div class="form-group">
              <input type="number" id="quantity-latte" class="form-control" value="1">
            </div>
        <a class="btn btn-primary add-btn" data-index="3">>Comprar</a>
      </div>
    </div>
  </div>
  <div class="col-md-4">
    <div class="card custom-card" style="width: 100%;">
      <img class="card-img-top" src="https://www.cardamomo.news/__export/1634581877970/sites/debate/img/2021/10/18/caramel_macchiato_frappe.jpeg_1753094345.jpeg" alt="Cappuccino 3">
      <div class="card-body">
        <h5 class="card-title">Cappuccino Caramelado</h5>
        <p class="card-text">Cappuccino com toque de caramelo e chantilly.</p>
        <p class="card-text">Pre�o: R$ 11,00</p>
        <div class="form-group">
              <input type="number" id="quantity-latte" class="form-control" value="1">
            </div>
       <a class="btn btn-primary add-btn" data-index="3">>Comprar</a>
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
        <h5 class="card-title">Hamb�rguer Cl�ssico</h5>
        <p class="card-text">P�o, hamb�rguer de carne, queijo, alface e tomate.</p>
        <p class="card-text">Pre�o: R$ 15,00</p>
        <div class="form-group">
              <input type="number" id="quantity-latte" class="form-control" value="1">
            </div>
        <a class="btn btn-primary add-btn" data-index="3">>Comprar</a>
      </div>
    </div>
  </div>
  <div class="col-md-4">
    <div class="card custom-card" style="width: 100%;">
      <img class="card-img-top" src="https://boomi.b-cdn.net/wp-content/uploads/2022/06/lanche-ovo-e-abobrinha.jpg" alt="Lanche 2">
      <div class="card-body">
        <h5 class="card-title">Sandu�che Vegetariano</h5>
        <p class="card-text">P�o integral, alface, tomate, cenoura, queijo e molho especial.</p>
        <p class="card-text">Pre�o: R$ 12,50</p>
        <div class="form-group">
              <input type="number" id="quantity-latte" class="form-control" value="1">
            </div>
        <a class="btn btn-primary add-btn" data-index="3">>Comprar</a>
      </div>
    </div>
  </div>
  <div class="col-md-4">
    <div class="card custom-card" style="width: 100%;">
      <img class="card-img-top" src="https://www.perdigao.com.br/assets/_images/8402c5c5f29ca29d758ca7657d3c4ac29a587edf.webp" alt="Lanche 3">
      <div class="card-body">
        <h5 class="card-title">Wrap de Frango</h5>
        <p class="card-text">Tortilha de trigo, frango grelhado, alface, tomate e maionese.</p>
        <p class="card-text">Pre�o: R$ 13,00</p>
        <div class="form-group">
              <input type="number" id="quantity-latte" class="form-control" value="1">
            </div>
        <a class="btn btn-primary add-btn" data-index="3">>Comprar</a>
      </div>
    </div>
  </div>
  <div class="col-md-4">
    <div class="card custom-card" style="width: 100%;">
      <img class="card-img-top" src="https://i3.wp.com/whatagirleats.com/wp-content/uploads/2016/04/IMG_4392.jpg" alt="Lanche 4">
      <div class="card-body">
        <h5 class="card-title">Panini Caprese</h5>
        <p class="card-text">P�o italiano, queijo mozarela, tomate, manjeric�o e azeite.</p>
        <p class="card-text">Pre�o: R$ 11,50</p>
        <div class="form-group">
              <input type="number" id="quantity-latte" class="form-control" value="1">
            </div>
         <a class="btn btn-primary add-btn" data-index="3">>Comprar</a>
      </div>
    </div>
  </div>
  <div class="col-md-4">
    <div class="card custom-card" style="width: 100%;">
      <img class="card-img-top" src="https://claudia.abril.com.br/wp-content/uploads/2020/03/club-sandwichcrc3a9dito-ricardo-dc2b4angelo.jpg" alt="Lanche 5">
      <div class="card-body">
        <h5 class="card-title">Club Sandwich</h5>
        <p class="card-text">P�o de forma, frango grelhado, bacon, alface, tomate e maionese.</p>
        <p class="card-text">Pre�o: R$ 14,00</p>
        <div class="form-group">
              <input type="number" id="quantity-latte" class="form-control" value="1">
            </div>
        <a class="btn btn-primary add-btn" data-index="3">>Comprar</a>
      </div>
    </div>
  </div>
</div>
</div>
<div id="cart" style="margin-top: 20px;">
  <h2>Carrinho de Compras</h2>
  <ul id="cart-items"></ul>
  <p>Total: R$ <span id="cart-total">0.00</span></p>
</div>


 <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>

<script>
    $(document).ready(function() {
      var cartItems = [];
      var cartCount = 0;
      var itemList = [
        { name: 'Caf� Expresso', price: 5.00 },
        { name: 'Caf� Latte', price: 7.50 },
        { name: 'Caf� Mocha', price: 6.50 },
        { name: 'Caf� Cappuccino', price: 8.00 },
      ];

      function updateCart() {
        $('#cart-items').empty();
        var total = 0;

        for (var i = 0; i < cartItems.length; i++) {
          var item = cartItems[i];
          var subtotal = item.price * item.quantity;
          total += subtotal;

          var row = '<tr>';
          row += '<td>' + item.product + '</td>';
          row += '<td>R$' + item.price.toFixed(2) + '</td>';
          row += '<td>' + item.quantity + '</td>';
          row += '<td><button class="btn btn-danger btn-sm remove-btn" data-index="' + i + '">Remover</button></td>';
          row += '</tr>';

          $('#cart-items').append(row);
        }

        $('#total').text('Total: R$' + total.toFixed(2));
      }

      function updateCartCount() {
        $('#cart-count').text(cartCount);
      }

      function addItemToCart(product, price, quantity) {
        var newItem = {
          product: product,
          price: price,
          quantity: quantity
        };

        cartItems.push(newItem);
        cartCount += quantity;

        updateCart();
        updateCartCount();
      }

      for (var i = 0; i < itemList.length; i++) {
        var item = itemList[i];

        var card = '<div class="col-md-3">';
        card += '<div class="card">';
        card += '<div class="card-body">';
        card += '<h5 class="card-title">' + item.name + '</h5>';
        card += '<p class="card-text">R$' + item.price.toFixed(2) + '</p>';
        card += '<div class="form-group">';
        card += '<input type="number" id="quantity-' + i + '" class="form-control" value="1">';
        card += '</div>';
        card += '<button class="btn btn-primary add-btn" data-index="' + i + '">Comprar</button>';
        card += '</div>';
        card += '</div>';
        card += '</div>';

        $('#item-list').append(card);
      }

      $(document).on('click', '.add-btn', function() {
        var index = $(this).data('index');
        var quantity = parseInt($('#quantity-' + index).val());

        if (quantity && quantity > 0) {
          var item = itemList[index];
          addItemToCart(item.name, item.price, quantity);
          $('#quantity-' + index).val('1');
        }
      });

      $(document).on('click', '.remove-btn', function() {
        var index = $(this).data('index');
        var item = cartItems[index];
        cartCount -= item.quantity;
        cartItems.splice(index, 1);
        updateCart();
        updateCartCount();
      });

      $(document).on('click', '#checkout-btn', function() {
        var total = 0;

        for (var i = 0; i < cartItems.length; i++) {
          var item = cartItems[i];
          var subtotal = item.price * item.quantity;
          total += subtotal;
        }

        var expirationDate = new Date();
        expirationDate.setFullYear(expirationDate.getFullYear() + 1);

        document.cookie = 'total=' + total.toFixed(2) + '; expires=' + expirationDate.toUTCString() + '; path=/';

        alert('Pedido realizado! Total: R$' + total.toFixed(2));
      });
    });
  </script>
  <script>
  // Fun��o para adicionar um item ao carrinho
  function addToCart(itemIndex) {
    var item;
    switch (itemIndex) {
      case 1:
        item = {
          name: 'Caf� Expresso',
          price: 5.00
        };
        break;
      case 2:
        item = {
          name: 'Caf� Latte',
          price: 7.50
        };
        break;
      case 3:
        item = {
          name: 'Caf� Mocha',
          price: 6.50
        };
        break;
      case 4:
        item = {
          name: 'Caf� Cappuccino',
          price: 8.00
        };
        break;
      case 5:
        item = {
          name: 'Caf� Frappuccino',
          price: 9.50
        };
        break;
      case 6:
        item = {
          name: 'Caf� Macchiato',
          price: 6.00
        };
        break;
      case 7:
        item = {
          name: 'Caf� Gelado',
          price: 5.00
        };
        break;
      case 8:
        item = {
          name: 'Caf� com Leite',
          price: 4.50
        };
        break;
      case 9:
        item = {
          name: 'Caf� Descafeinado',
          price: 5.50
        };
        break;
      case 10:
        item = {
          name: 'Caf� Americano',
          price: 4.00
        };
        break;
    }

    // Cria um elemento <li> para exibir o item no carrinho
    var listItem = document.createElement('li');
    listItem.textContent = item.name + ' - R$ ' + item.price.toFixed(2);

    // Adiciona o item ao carrinho
    var cartItems = document.getElementById('cart-items');
    cartItems.appendChild(listItem);

    // Atualiza o total do carrinho
    var cartTotal = document.getElementById('cart-total');
    var currentTotal = parseFloat(cartTotal.textContent);
    var newTotal = currentTotal + item.price;
    cartTotal.textContent = newTotal.toFixed(2);
  }

  // Adiciona o evento de clique aos bot�es "Comprar"
  var addButtons = document.getElementsByClassName('add-btn');
  for (var i = 0; i < addButtons.length; i++) {
    addButtons[i].addEventListener('Desculpe, mas parece que houve um problema de formata��o na resposta anterior. Aqui est� o c�digo corrigido para adicionar um carrinho de compras aos itens do menu:

```html
<script>
  // Fun��o para adicionar um item ao carrinho
  function addToCart(itemIndex) {
    var item;
    switch (itemIndex) {
      case 1:
        item = {
          name: 'Caf� Expresso',
          price: 5.00
        };
        break;
      case 2:
        item = {
          name: 'Caf� Latte',
          price: 7.50
        };
        break;
      case 3:
        item = {
          name: 'Caf� Mocha',
          price: 6.50
        };
        break;
      case 4:
        item = {
          name: 'Caf� Cappuccino',
          price: 8.00
        };
        break;
      case 5:
        item = {
          name: 'Caf� Frappuccino',
          price: 9.50
        };
        break;
      case 6:
        item = {
          name: 'Caf� Macchiato',
          price: 6.00
        };
        break;
      case 7:
        item = {
          name: 'Caf� Gelado',
          price: 5.00
        };
        break;
      case 8:
        item = {
          name: 'Caf� com Leite',
          price: 4.50
        };
        break;
      case 9:
        item = {
          name: 'Caf� Descafeinado',
          price: 5.50
        };
        break;
      case 10:
        item = {
          name: 'Caf� Americano',
          price: 4.00
        };
        break;
    }

    // Cria um elemento <li> para exibir o item no carrinho
    var listItem = document.createElement('li');
    listItem.textContent = item.name + ' - R$ ' + item.price.toFixed(2);

    // Adiciona o item ao carrinho
    var cartItems = document.getElementById('cart-items');
    cartItems.appendChild(listItem);

    // Atualiza o total do carrinho
    var cartTotal = document.getElementById('cart-total');
    var currentTotal = parseFloat(cartTotal.textContent);
    var newTotal = currentTotal + item.price;
    cartTotal.textContent = newTotal.toFixed(2);
  }

  // Adiciona o evento de clique aos bot�es "Comprar"
  var addButtons = document.getElementsByClassName('add-btn');
  for (var i = 0; i < addButtons.length; i++) {
    addButtons[i].addEventListener('click', function(event) {
      var itemIndex = parseInt(event.target.getAttribute('data-index'));
      addToCart(itemIndex);
    });
  }
</script>
            

  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha2/js/bootstrap.min.js"></script>
  
  <jsp:include page="Footer.jsp" />
  
