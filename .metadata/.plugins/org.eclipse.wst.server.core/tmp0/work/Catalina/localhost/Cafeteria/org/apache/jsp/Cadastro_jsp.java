/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.37
 * Generated at: 2023-06-18 16:43:45 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Cadastro_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET, POST or HEAD. Jasper also permits OPTIONS");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=ISO-8859-1");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write('\r');
      out.write('\n');
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "Header.jsp", out, false);
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("\r\n");
      out.write("<head>\r\n");
      out.write("  <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css\">\r\n");
      out.write("  <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css\">\r\n");
      out.write("  <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js\"></script>\r\n");
      out.write("  <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js\"></script>\r\n");
      out.write("  <style>\r\n");
      out.write("    body {\r\n");
      out.write("      background-image: url(\"https://i.pinimg.com/originals/81/b2/34/81b234e6d4a79f243357e9f0d928135e.png\");\r\n");
      out.write("      background-size: cover;\r\n");
      out.write("      background-position: center;\r\n");
      out.write("      backdrop-filter: blur(10px);\r\n");
      out.write("    }\r\n");
      out.write("\r\n");
      out.write("    .login-container {\r\n");
      out.write("      margin-top: 100px;\r\n");
      out.write("    }\r\n");
      out.write("\r\n");
      out.write("    .custom-btn {\r\n");
      out.write("      background-color: #ffffff;\r\n");
      out.write("      border-color: #000000;\r\n");
      out.write("      color: #000000;\r\n");
      out.write("    }\r\n");
      out.write("\r\n");
      out.write("    .login-form {\r\n");
      out.write("      background-color: rgba(255, 255, 255, 1);\r\n");
      out.write("      padding: 40px;\r\n");
      out.write("      border-radius: 12px;\r\n");
      out.write("      box-shadow: 0px 0px 20px 0px rgba(0, 0, 0, 0.1);\r\n");
      out.write("    }\r\n");
      out.write("\r\n");
      out.write("    .login-form h2 {\r\n");
      out.write("      margin-bottom: 30px;\r\n");
      out.write("    }\r\n");
      out.write("\r\n");
      out.write("    .login-form .form-control {\r\n");
      out.write("      border-radius: 2px;\r\n");
      out.write("    }\r\n");
      out.write("\r\n");
      out.write("    .login-form .btn {\r\n");
      out.write("      border-radius: 20px;\r\n");
      out.write("      transition: all 0.5s;\r\n");
      out.write("    }\r\n");
      out.write("\r\n");
      out.write("    .login-form .btn:hover {\r\n");
      out.write("      transform: scale(1.05);\r\n");
      out.write("      background-color: black;\r\n");
      out.write("    }\r\n");
      out.write("\r\n");
      out.write("    .login-form .btn-block {\r\n");
      out.write("      text-transform: uppercase;\r\n");
      out.write("    }\r\n");
      out.write("\r\n");
      out.write("    .login-form .remember-checkbox {\r\n");
      out.write("      margin-top: 10px;\r\n");
      out.write("    }\r\n");
      out.write("\r\n");
      out.write("    .login-form .forgot-password {\r\n");
      out.write("      text-align: right;\r\n");
      out.write("      margin-top: 10px;\r\n");
      out.write("    }\r\n");
      out.write("\r\n");
      out.write("    .login-form .forgot-password a {\r\n");
      out.write("      color: #777777;\r\n");
      out.write("    }\r\n");
      out.write("  </style>\r\n");
      out.write("  <script>\r\n");
      out.write("    $(document).ready(function() {\r\n");
      out.write("      $(\".login-form\").hide().fadeIn(2000);\r\n");
      out.write("    });\r\n");
      out.write("  </script>\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("  <div class=\"container\">\r\n");
      out.write("    <div class=\"row justify-content-center\">\r\n");
      out.write("      <div class=\"col-md-6 login-container\">\r\n");
      out.write("        <form class=\"login-form\">\r\n");
      out.write("          <h2>Cadastro</h2>\r\n");
      out.write("          <div class=\"form-group\">\r\n");
      out.write("            <label for=\"nome\">Nome</label>\r\n");
      out.write("            <input type=\"text\" class=\"form-control\" id=\"nome\" placeholder=\"Digite seu nome\" required>\r\n");
      out.write("          </div>\r\n");
      out.write("          <div class=\"form-group\">\r\n");
      out.write("            <label for=\"telefone\">Telefone</label>\r\n");
      out.write("            <input type=\"text\" class=\"form-control\" id=\"telefone\" placeholder=\"Digite seu telefone\" required>\r\n");
      out.write("          </div>\r\n");
      out.write("          <div class=\"form-group\">\r\n");
      out.write("            <label for=\"email\">Email</label>\r\n");
      out.write("            <input type=\"email\" class=\"form-control\" id=\"email\" placeholder=\"Digite seu email\" required>\r\n");
      out.write("          </div>\r\n");
      out.write("          <div class=\"form-group\">\r\n");
      out.write("            <label for=\"senha\">Senha</label>\r\n");
      out.write("            <input type=\"password\" class=\"form-control\" id=\"senha\" placeholder=\"Digite sua senha\" required>\r\n");
      out.write("          </div>\r\n");
      out.write("          <div class=\"form-group\">\r\n");
      out.write("            <label for=\"endereco\">Endereço</label>\r\n");
      out.write("            <input type=\"text\" class=\"form-control\" id=\"endereco\" placeholder=\"Digite seu endereço\" required>\r\n");
      out.write("          </div>\r\n");
      out.write("          <button type=\"submit\" class=\"btn btn-primary custom-btn\">Cadastrar</button>\r\n");
      out.write("          <p style=\"margin-top:20px;\">Já tem uma conta? <a href=\"#\">Faça login</a></p>\r\n");
      out.write("        </form>\r\n");
      out.write("        <div class=\"text-center mt-3\">\r\n");
      out.write("          \r\n");
      out.write("        </div>\r\n");
      out.write("      </div>\r\n");
      out.write("    </div>\r\n");
      out.write("  </div>\r\n");
      out.write("</body>\r\n");
      out.write("\r\n");
      out.write("</html>\r\n");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
