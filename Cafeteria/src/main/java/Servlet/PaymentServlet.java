package Servlet;

import java.io.IOException;
import java.math.BigDecimal;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.time.LocalDate;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class PaymentServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Obter os parâmetros do formulário de pagamento
        int userId = Integer.parseInt(request.getParameter("userId"));
        BigDecimal paymentAmount = new BigDecimal(request.getParameter("paymentAmount"));
        LocalDate paymentDate = LocalDate.parse(request.getParameter("paymentDate"));

        // Realizar a lógica de processamento do pagamento aqui
        boolean paymentSuccessful = processPayment(userId, paymentAmount, paymentDate);

        if (paymentSuccessful) {
            // Pagamento bem-sucedido
            response.getWriter().println("Pagamento realizado com sucesso!");
        } else {
            // Falha no pagamento
            response.getWriter().println("Falha no pagamento. Por favor, tente novamente.");
        }
    }

    private boolean processPayment(int userId, BigDecimal paymentAmount, LocalDate paymentDate) {
        // Configurar a conexão com o banco de dados
        String url = "jdbc:mysql://localhost:3306/cafeteria"; 
        String username = "root"; 
        String password = "admin"; 

        try (Connection connection = DriverManager.getConnection(url, username, password)) {
            // Preparar a instrução SQL para inserir o pagamento na tabela
            String sql = "INSERT INTO Payment (userId, paymentAmount, paymentDate) VALUES (?, ?, ?)";
            try (PreparedStatement statement = connection.prepareStatement(sql)) {
                // Definir os parâmetros na instrução SQL
                statement.setInt(1, userId);
                statement.setBigDecimal(2, paymentAmount);
                statement.setDate(3, Date.valueOf(paymentDate));

                // Executar a instrução SQL
                int rowsAffected = statement.executeUpdate();

                // Verificar se o pagamento foi inserido com sucesso
                return rowsAffected > 0;
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}
