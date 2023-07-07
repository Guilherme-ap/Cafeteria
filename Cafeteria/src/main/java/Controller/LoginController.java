package Controller;

import Model.Login;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LoginController {
	public static Connection getConnection() {
        Connection conn = null;
        String URL = "jdbc:mysql://localhost:3306/cafeteria";
        String USUARIO = "root";
        String SENHA = "admin";

        try {
            conn = DriverManager.getConnection(URL, USUARIO, SENHA);
        } catch (SQLException e) {
            System.out.println(e);
        }

        return conn;
    }
    public boolean validateLogin(String username, String password) {
        String query = "SELECT * FROM login WHERE username = ? AND password = ?";
        try {
            Connection conn = getConnection();
            PreparedStatement statement = conn.prepareStatement(query);
            statement.setString(1, username);
            statement.setString(2, password);
            ResultSet resultSet = statement.executeQuery();
            return resultSet.next(); // true if login is valid, false otherwise
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public void logout() {
        // Perform logout logic here
    }
}
