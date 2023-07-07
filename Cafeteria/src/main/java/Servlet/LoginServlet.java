package Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Controller.LoginController;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        LoginController loginController = new LoginController();
        boolean isValid = loginController.validateLogin(username, password);

        if (isValid) {
            // Login successful
            response.sendRedirect("welcome.jsp");
        } else {
            // Login failed
            response.sendRedirect("login.jsp?error=invalid");
        }
    }
}
