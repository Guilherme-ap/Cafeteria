package testes;

import Controller.LoginController;
import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

public class LoginControllerTest {

    @Test
    public void testValidateLogin_ValidCredentials_ReturnsTrue() {
        // Arrange
        String username = "john";
        String password = "senha";
        LoginController loginController = new LoginController();

        // Act
        boolean result = loginController.validateLogin(username, password);

        // Assert
        assertTrue(result);
    }

    @Test
    public void testValidateLogin_InvalidCredentials_ReturnsFalse() {
        // Arrange
        String username = "john";
        String password = "senha";
        LoginController loginController = new LoginController();

        // Act
        boolean result = loginController.validateLogin(username, password);

        // Assert
        assertFalse(result);
    }
}
