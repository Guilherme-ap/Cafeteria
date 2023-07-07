package Controller;

import Model.Payment;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class PaymentController {
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

    public void addPayment(Payment payment) {
        String query = "INSERT INTO pagamento (userId, paymentAmount, paymentDate) VALUES (?, ?, ?)";

        try {
        	Connection conn = getConnection();
            PreparedStatement statement = conn.prepareStatement(query);
            statement.setInt(1, payment.getUserId());
            statement.setBigDecimal(2, payment.getPaymentAmount());
            statement.setDate(3, java.sql.Date.valueOf(payment.getPaymentDate()));
            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public List<Payment> getUserPayments(int userId) {
        List<Payment> payments = new ArrayList<>();
        String query = "SELECT * FROM pagamento WHERE userId = ?";

        try {
        	Connection conn = getConnection();
            PreparedStatement statement = conn.prepareStatement(query);
            statement.setInt(1, userId);
            ResultSet resultSet = statement.executeQuery();

            while (resultSet.next()) {
                Payment payment = new Payment();
                payment.setId(resultSet.getInt("id"));
                payment.setUserId(resultSet.getInt("userId"));
                payment.setPaymentAmount(resultSet.getBigDecimal("paymentAmount"));
                payment.setPaymentDate(resultSet.getDate("paymentDate").toLocalDate());
                payments.add(payment);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return payments;
    }
}
