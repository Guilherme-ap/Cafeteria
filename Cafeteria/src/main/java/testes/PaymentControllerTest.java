package testes;

import Model.Payment;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import java.math.BigDecimal;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.List;
import Controller.PaymentController;

public class PaymentControllerTest {
    private static final String DB_URL = "jdbc:mysql://localhost:3306/cafeteria";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "admin";

    private PaymentController paymentController;

    @BeforeEach
    public void setup() {
        try {
            Connection connection = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
            paymentController = new PaymentController();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Test
    public void testAddPayment() {
        // Create a new payment
        Payment payment = new Payment();
        payment.setUserId(1);
        payment.setPaymentAmount(new BigDecimal("10.00"));
        payment.setPaymentDate(LocalDate.now());

        // Add the payment
        paymentController.addPayment(payment);

        // Verify that the payment was added successfully
        List<Payment> userPayments = paymentController.getUserPayments(1);
        Assertions.assertEquals(8, userPayments.size());
        Assertions.assertEquals(payment.getUserId(), userPayments.get(0).getUserId());
        Assertions.assertEquals(payment.getPaymentAmount(), userPayments.get(0).getPaymentAmount());
        Assertions.assertEquals(payment.getPaymentDate(), userPayments.get(0).getPaymentDate());
    }

    @Test
    public void testGetUserPayments() {
        // Retrieve the payments for a user
        List<Payment> userPayments = paymentController.getUserPayments(1);

        // Verify that the list is not null
        Assertions.assertNotNull(userPayments);

        // Verify that the list is empty initially
        Assertions.assertEquals(0, userPayments.size());
    }
}
