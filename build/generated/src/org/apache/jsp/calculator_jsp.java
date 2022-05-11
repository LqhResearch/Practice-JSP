package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class calculator_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Máy tính cá nhân</title>\n");
      out.write("    </head>\n");
      out.write("    ");

        String ans = "", a = "", b = "";
        if (request.getParameter("a") != "" && request.getParameter("b") != "" && request.getParameter("c") != "") {
            a = request.getParameter("a");
            b = request.getParameter("b");
            String pt = request.getParameter("pt");
            ans = Process.Calculator(Integer.parseInt(a), Integer.parseInt(b), pt.charAt(0));
        }
    
      out.write("\n");
      out.write("    <body>\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("\n");
      out.write("        <div class=\"container mt-5\">\n");
      out.write("            <form action=\"\" method=\"GET\">\n");
      out.write("                <div class=\"input-group my-3\">\n");
      out.write("                    <span class=\"input-group-text\">Số a = </span>\n");
      out.write("                    <input type=\"text\" class=\"form-control\" value=\"");
      out.print(a);
      out.write("\" name=\"a\">\n");
      out.write("                </div>\n");
      out.write("                <div class=\"input-group my-3\">\n");
      out.write("                    <span class=\"input-group-text\">Số b = </span>\n");
      out.write("                    <input type=\"text\" class=\"form-control\" value=\"");
      out.print(b);
      out.write("\" name=\"b\">\n");
      out.write("                </div>\n");
      out.write("                <div class=\"input-group my-3\">\n");
      out.write("                    <span class=\"input-group-text\">Phép toán</span>\n");
      out.write("                    <select class=\"form-select\" name=\"pt\">\n");
      out.write("                        <option value=\"+\">Cộng</option>\n");
      out.write("                        <option value=\"-\">Trừ</option>\n");
      out.write("                        <option value=\"*\">Nhân</option>\n");
      out.write("                        <option value=\"/\">Chia</option>\n");
      out.write("                    </select>\n");
      out.write("                </div>\n");
      out.write("                <button class=\"btn btn-primary\">Kết quả</button>\n");
      out.write("            </form>\n");
      out.write("            <div class=\"input-group my-3\">\n");
      out.write("                <span class=\"input-group-text\">Kết quả = </span>\n");
      out.write("                <input type=\"text\" class=\"form-control\" value=\"");
      out.print(ans);
      out.write("\" disabled>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}