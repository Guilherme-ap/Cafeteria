/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.37
 * Generated at: 2023-07-02 17:45:50 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.View;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Footer_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("<div class=\"container \" style=\"margin-top: 80px;\">\r\n");
      out.write("<hr style=\"color:black;\">\r\n");
      out.write("  <footer class=\"py-5\">\r\n");
      out.write("    <div class=\"row\">\r\n");
      out.write("      <div class=\"col-6 col-md-4 mb-3\">\r\n");
      out.write("        <h5>Sobre nós</h5>\r\n");
      out.write("        <ul class=\"nav flex-column\">\r\n");
      out.write("          <li class=\"nav-item mb-2\"><a href=\"Sobre.jsp\" class=\"nav-link p-0 text-body-secondary\" style=\"color:#595959;\">Nossa empresa</a></li>\r\n");
      out.write("          <li class=\"nav-item mb-2\"><a href=\"Sobre.jsp\" class=\"nav-link p-0 text-body-secondary\" style=\"color:#595959;\">Nosso café</a></li>\r\n");
      out.write("          <li class=\"nav-item mb-2\"><a href=\"Sobre.jsp\" class=\"nav-link p-0 text-body-secondary\" style=\"color:#595959;\">Código de Ética e Conduta</a></li>\r\n");
      out.write("         \r\n");
      out.write("        </ul>\r\n");
      out.write("      </div>\r\n");
      out.write("\r\n");
      out.write("      <div class=\"col-6 col-md-4 mb-3\">\r\n");
      out.write("        <h5>Trabalhe Conosco</h5>\r\n");
      out.write("        <ul class=\"nav flex-column\">\r\n");
      out.write("          <li class=\"nav-item mb-2\"><a href=\"Carreira.jsp\" class=\"nav-link p-0 text-body-secondary text-grey\"  style=\"color:#595959;\">Carreira</a></li>\r\n");
      out.write("        </ul>\r\n");
      out.write("      </div>\r\n");
      out.write("\r\n");
      out.write("      <div class=\"col-6 col-md-4 mb-3\">\r\n");
      out.write("        <h5>Contato</h5>\r\n");
      out.write("        <ul class=\"nav flex-column \" >\r\n");
      out.write("          <li class=\"nav-item mb-2\"><a href=\"#\" class=\"nav-link p-0 text-body-secondary\"  style=\"color:#595959;\">Kiki@cafe.com.br</a></li>\r\n");
      out.write("          <li class=\"nav-item mb-2\"><a href=\"#\" class=\"nav-link p-0 text-body-secondary\"  style=\"color:#595959;\">(11) 2444-8696</a></li>\r\n");
      out.write("          <li class=\"nav-item mb-2\"><a href=\"#\" class=\"nav-link p-0 text-body-secondary\"  style=\"color:#595959;\">@kikicafe</a></li>\r\n");
      out.write("        </ul>\r\n");
      out.write("      </div>\r\n");
      out.write("\r\n");
      out.write("      \r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("    <div class=\"d-flex flex-column flex-sm-row justify-content-between py-4 my-4 border-top\">\r\n");
      out.write("      <p class=\"\" style=\"color:#bfbfbf;\" >&copy; 2023 Kiki Coffee Company. Todos os direitos reservados.</p>\r\n");
      out.write("      <ul class=\"list-unstyled d-flex\">\r\n");
      out.write("        <li class=\"ms-3\">\r\n");
      out.write("  <a class=\"link-body-emphasis\" href=\"#\" >\r\n");
      out.write("    <i  class=\"fab fa-whatsapp fa-2x mr-1 text-dark\" ></i>\r\n");
      out.write("  </a>\r\n");
      out.write("</li>\r\n");
      out.write("<li class=\"ms-3\">\r\n");
      out.write("  <a class=\"link-body-emphasis\" href=\"#\">\r\n");
      out.write("    <i class=\"fab fa-instagram fa-2x text-dark\"></i>\r\n");
      out.write("  </a>\r\n");
      out.write("</li>\r\n");
      out.write("      </ul>\r\n");
      out.write("    </div>\r\n");
      out.write("  </footer>\r\n");
      out.write("</div>\r\n");
      out.write("<script src=\"../assets/dist/js/bootstrap.bundle.min.js\"></script>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
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
