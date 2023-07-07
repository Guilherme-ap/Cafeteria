package testes;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;

import java.math.BigDecimal;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import Controller.ShoppingCartController;
import Model.Item;
import Model.ShoppingCart;

public class ShoppingCartControllerTest {
    private Connection connection;
    private String url = "jdbc:mysql://localhost:3306/cafeteria";
    private String username = "root";
    private String password = "admin";

    @Before
    public void setup() throws SQLException {
        // Estabelecer a conexão com o banco de dados
        connection = DriverManager.getConnection(url, username, password);

        // Criar a tabela ShoppingCart para os testes
        String createTableQuery = "CREATE TABLE ShoppingCart ("
                + "id INT PRIMARY KEY AUTO_INCREMENT, "
                + "userId INT NOT NULL, "
                + "itemName VARCHAR(255) NOT NULL, "
                + "price DECIMAL(10, 2) NOT NULL, "
                + "FOREIGN KEY (userId) REFERENCES usuarios(id)"
                + ")";
        Statement statement = connection.createStatement();
        statement.executeUpdate(createTableQuery);
        statement.close();
    }

    @After
    public void cleanup() throws SQLException {
        // Deletar a tabela ShoppingCart após os testes
        String dropTableQuery = "DROP TABLE ShoppingCart";
        Statement statement = connection.createStatement();
        statement.executeUpdate(dropTableQuery);
        statement.close();

        // Fechar a conexão com o banco de dados
        connection.close();
    }

   
    @Test
    public void testRemoveItemFromCart() {
        ShoppingCartController controller = new ShoppingCartController(1);

        Item item = new Item("Coffee", new BigDecimal("2.99"));
        controller.addItemToCart(item);
        controller.removeItemFromCart(item);

        ShoppingCart shoppingCart = controller.getShoppingCart();
        List<Item> items = shoppingCart.getItems();

        assertEquals(0, items.size());
        assertTrue(!items.contains(item));
    }
}
