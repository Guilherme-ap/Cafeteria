package Controller;

import Model.Item;
import Model.ShoppingCart;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

public class ShoppingCartController {
    private ShoppingCart shoppingCart;
    private Connection connection;
    private String url = "jdbc:mysql://localhost:3306/cafeteria";
    private String username = "root";
    private String password = "admin";

    public ShoppingCartController(int userId) {
        this.shoppingCart = new ShoppingCart(userId);
        connectToDatabase();
    }

    private void connectToDatabase() {
        try {
            connection = DriverManager.getConnection(url, username, password);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void addItemToCart(Item item) {
        List<Item> items = shoppingCart.getItems();
        items.add(item);
        shoppingCart.setItems(items);
        
        // Insert the item into the database
        try {
            String query = "INSERT INTO ShoppingCart (userId, itemName, price) VALUES (?, ?, ?)";
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setInt(1, shoppingCart.getUserId());
            statement.setString(2, item.getName());
            statement.setDouble(3, item.getPrice());
            statement.executeUpdate();
            statement.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void removeItemFromCart(Item item) {
        List<Item> items = shoppingCart.getItems();
        items.remove(item);
        shoppingCart.setItems(items);
        
        // Remove the item from the database
        try {
            String query = "DELETE FROM ShoppingCart WHERE userId = ? AND itemName = ?";
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setInt(1, shoppingCart.getUserId());
            statement.setString(2, item.getName());
            statement.executeUpdate();
            statement.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public ShoppingCart getShoppingCart() {
        return shoppingCart;
    }
}
