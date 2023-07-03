package Servlet;

import com.google.gson.Gson;
import Controller.UsuarioController;
import Model.Usuario;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;

public class UsuarioServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if (action != null && action.equals("cadastrar")) {
            cadastrarUsuario(request, response);
        }
    }

    private void cadastrarUsuario(HttpServletRequest request, HttpServletResponse response) throws IOException {
        StringBuilder jsonBuilder = new StringBuilder();
        String line;
        try {
            BufferedReader reader = request.getReader();
            while ((line = reader.readLine()) != null) {
                jsonBuilder.append(line);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        String jsonString = jsonBuilder.toString();
        Gson gson = new Gson();
        Usuario usuario = gson.fromJson(jsonString, Usuario.class);

        int status = UsuarioController.criarUsuario(usuario);

        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();

        if (status > 0) {
            String successJson = "{\"status\":\"success\", \"message\":\"Usuário cadastrado com sucesso!\"}";
            out.print(successJson);
        } else {
            String errorJson = "{\"status\":\"error\", \"message\":\"Falha ao cadastrar usuário!\"}";
            out.print(errorJson);
        }

        out.flush();
    }
}
