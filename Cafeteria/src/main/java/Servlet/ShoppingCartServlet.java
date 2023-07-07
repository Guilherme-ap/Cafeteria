package Servlet;

import java.io.IOException;
import java.math.BigDecimal;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Controller.ShoppingCartController;
import Model.Item;
import Model.ShoppingCart;

@WebServlet("/shoppingcart")
public class ShoppingCartServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    private ShoppingCartController shoppingCartController;

    @Override
    public void init() throws ServletException {
        super.init();
      
        int userId = 123; // Exemplo de ID do usuário logado
        shoppingCartController = new ShoppingCartController(userId);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Obter o carrinho de compras do controller
        ShoppingCart shoppingCart = shoppingCartController.getShoppingCart();

        // Obter a lista de itens do carrinho
        List<Item> items = shoppingCart.getItems();

        // Exibir os itens na página
        response.setContentType("text/html");
        response.getWriter().println("<h1>Carrinho de Compras</h1>");
        response.getWriter().println("<ul>");

        for (Item item : items) {
            response.getWriter().println("<li>" + item.getName() + " - R$" + item.getPrice() + "</li>");
        }

        response.getWriter().println("</ul>");
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Obter os parâmetros do formulário
        String itemName = request.getParameter("itemName");
        BigDecimal price = new BigDecimal(request.getParameter("price"));

        // Criar um novo item
        Item item = new Item(itemName, price);

        // Adicionar o item ao carrinho de compras
        shoppingCartController.addItemToCart(item);

        // Redirecionar de volta à página do carrinho de compras
        response.sendRedirect(request.getContextPath() + "/shoppingcart");
    }

}
