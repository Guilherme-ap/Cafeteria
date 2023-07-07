<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<jsp:include page="Header.jsp" />



    <div class="container" style="margin-top:100px;">
        <h1>Tela de Pagamento</h1>

        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>Item</th>
                    <th>Preço</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Item 1</td>
                    <td>R$ 0.00</td>
                </tr>
                <tr>
                    <td>Item 2</td>
                    <td>R$ 0.00</td>
                </tr>
                <tr>
                    <td>Item 3</td>
                    <td>R$ 0.00</td>
                </tr>
                <!-- Adicione mais linhas conforme necessário para outros itens -->
            </tbody>
        </table>

        <form id="paymentForm">
            <div class="form-group">
                <label for="cardNumber">Número do Cartão</label>
                <input type="text" class="form-control" id="cardNumber" placeholder="Insira o número do cartão">
            </div>
            <div class="form-group">
                <label for="cardName">Nome no Cartão</label>
                <input type="text" class="form-control" id="cardName" placeholder="Insira o nome no cartão">
            </div>
            <div class="form-row">
                <div class="col-md-6 form-group">
                    <label for="cardExpiration">Validade</label>
                    <input type="text" class="form-control" id="cardExpiration" placeholder="MM/AA">
                </div>
                <div class="col-md-6 form-group">
                    <label for="cardCvv">CVV</label>
                    <input type="text" class="form-control" id="cardCvv" placeholder="CVV">
                </div>
            </div>

            <button type="submit" class="btn btn-primary">Realizar Pagamento</button>
        </form>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script>
        $('#paymentForm').submit(function (event) {
            event.preventDefault();

            var cardNumber = $('#cardNumber').val();
            var cardName = $('#cardName').val();
            var cardExpiration = $('#cardExpiration').val();
            var cardCvv = $('#cardCvv').val();

            // Lógica para realizar o pagamento com os dados do cartão

            alert('Pagamento realizado com sucesso!');
        });
    </script>
</body>
</html>


<jsp:include page="Footer.jsp" />